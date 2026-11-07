Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.228?download=true
inline.NumInlined: 190
inline.NumDeleted: 33
begin_hunk_0_@_RINvMNtNtCsgwvynAR9gqy_2h25proto9ping_pongNtB3_8PingPong17send_pending_pingINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatNtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1k_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEECsl8OoimOLbh_6qdrant:bb.a
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e
  store i8 1, ptr %i.e, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.i, %bb.b, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit27, %bb.j, %bb.a, %bb.d, %bb.c
  %.sroa.6.0 = phi ptr [ %i.l, %bb.d ], [ undef, %bb.i ], [ undef, %bb.c ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.j ], [ null, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit27 ], [ null, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit ], [ %i.ab, %bb.k ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.i ], [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit27 ], [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit ], [ 0, %bb.k ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.6.0, 1
  ret { i64, ptr } %i.q

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load atomic i64, ptr %i.r acquire, align 8
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.v = tail call { i64, ptr } @_RNvMNtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatNtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE10poll_readyCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %1, align 8, !nonnull !10, !align !15, !noundef !10
  tail call void @_RNvMCs6UHBrWLyCs8_12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa)
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.ab = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %.not24 = icmp eq ptr %i.ab, null
  br i1 %.not24, label %bb.l, label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.ac, align 1
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i64 -5470036214019294149, ptr %.sroa.422.0..sroa_idx, align 2
  store i8 5, ptr %i.c, align 8
  %i.ad = call noundef i8 @_RNvMs_NtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE6bufferCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i26 = icmp eq i8 %i.ad, -1
  br i1 %.not.i26, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit27, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !281
  store i8 %i.ad, ptr %i.a, align 1, !noalias !281
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit27: ; preds = %bb.l
  %i.ae = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store atomic i64 2, ptr %i.af release, align 8
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtCsgwvynAR9gqy_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatINtNtNtCslfxrBSw8aGw_10hyper_util6common6rewind6RewindINtNtNtB29_2rt5tokio7TokioIoINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1k_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(960) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.01.0.copyload = load i8, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 0, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.sroa.01.0.copyload to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = tail call { i64, ptr } @_RNvMNtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatINtNtNtCslfxrBSw8aGw_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoINtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport6server7service2io8ServerIoNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE10poll_readyCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.j, align 1
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i64 %.sroa.6.0.copyload, ptr %.sroa.415.0..sroa_idx, align 2
  store i8 5, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.l = call noundef i8 @_RNvMs_NtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE6bufferCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.l, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !285
  store i8 %i.l, ptr %i.a, align 1, !noalias !285
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.a
  %.sroa.4.1 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ undef, %bb.c ], [ null, %bb.e ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.e ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMNtNtCsgwvynAR9gqy_2h25proto9ping_pongNtB3_8PingPong17send_pending_pongINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatNtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service2io7BoxedIoEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1k_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(912) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [296 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.01.0.copyload = load i8, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 0, ptr %i.c, align 8
  %i.d = trunc nuw i8 %.sroa.01.0.copyload to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.f = tail call { i64, ptr } @_RNvMNtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB2_11FramedWriteINtNtNtNtCs3WWrd2JY12C_5hyper6common2io6compat6CompatNtNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB6_5proto7streams10prioritize11PrioritizedINtNtNtB19_5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE10poll_readyCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(344) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, ptr } %i.f, 1        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.j, align 1
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i64 %.sroa.6.0.copyload, ptr %.sroa.415.0..sroa_idx, align 2
  store i8 5, ptr %i.b, align 8
  %i.k = call noundef i8 @_RNvMs_NtNtCsgwvynAR9gqy_2h25codec12framed_writeINtB4_7EncoderINtNtNtNtB8_5proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEEE6bufferCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(296) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.k, -1
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  store i8 %i.k, ptr %i.a, align 1, !noalias !289
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCsgwvynAR9gqy_2h25codec5error9UserErrorE6expectCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.a
  %.sroa.4.1 = phi ptr [ null, %bb.a ], [ %i.i, %bb.d ], [ undef, %bb.c ], [ null, %bb.e ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.e ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19quantization_configNtB6_12Quantization5mergeQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 4 dereferenceable(28) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 7 uses
  %i.c = alloca [28 x i8], align 4                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [24 x i8], align 4                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.f, align 4
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ], !prof !290

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !range !291, !noundef !10
  %.not29 = icmp eq i32 %i.g, 2
  br i1 %.not29, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !range !291, !noundef !10
  %.not26 = icmp eq i32 %i.h, 3
  br i1 %.not26, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 4, !range !291, !noundef !10 ; 3 uses
  %.not24 = icmp eq i32 %i.i, -1
  br i1 %.not24, label %bb.q, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 4, !range !291, !noundef !10
  %.not = icmp eq i32 %i.j, 5
  br i1 %.not, label %bb.v, label %bb.u

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.k, align 4
  store i32 0, ptr %i.e, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i8 2, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.m, align 4
  %i.n = call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ScalarQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ScalarQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.o, %bb.m, %bb.k, %bb.h
  %.sroa.0.0 = phi ptr [ %i.p, %bb.h ], [ %i.n, %bb.k ], [ %i.u, %bb.m ], [ %i.s, %bb.o ], [ %i.aa, %bb.r ], [ %i.z, %bb.t ], [ %i.af, %bb.v ], [ %i.ad, %bb.x ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %i.e, i64 24, i1 false)
  store i32 2, ptr %0, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 2, ptr %i.r, align 4
  store i32 0, ptr %i.d, align 4
  %i.s = call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ProductQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not28 = icmp eq ptr %i.s, null
  br i1 %.not28, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ProductQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.i

bb.n:                                             ; preds = %bb.l
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  store i32 3, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.p:                                             ; preds = %bb.e
  %i.v = icmp ne i32 %i.i, 4
  tail call void @llvm.assume(i1 %i.v)
  %.inv = icmp samesign ult i32 %i.i, 2
  br i1 %.inv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 2, ptr %i.w, align 4
  store i32 0, ptr %i.c, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 2, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.y, align 4
  %i.z = call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18BinaryQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not25 = icmp eq ptr %i.z, null
  br i1 %.not25, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.aa = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18BinaryQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %i.c, i64 28, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 2, ptr %i.ab, align 4
  store i32 0, ptr %i.b, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.ac, align 4
  %i.ad = call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17TurboQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = tail call noundef align 8 ptr @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message5mergeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17TurboQuantizationQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufECsl8OoimOLbh_6qdrant(i8 noundef %2, ptr noalias nofree noundef nonnull align 4 dereferenceable(20) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.i

bb.w:                                             ; preds = %bb.u
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  store i32 5, ptr %0, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19quantization_configNtB6_12Quantization6encodeNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(28) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !292, !noundef !10 ; 3 uses
  %i.b = icmp ne i32 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %.inv = icmp samesign ult i32 %i.a, 2
  %narrow = select i1 %.inv, i32 2, i32 %i.c
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ScalarQuantizationNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ProductQuantizationNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef 2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18BinaryQuantizationNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant17TurboQuantizationNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsl8OoimOLbh_6qdrant(i32 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB5_8Settings9poll_sendINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtNtB7_7streams10prioritize11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEB3A_NtNtB9_6server4PeerE0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  tail call void @_RNvMNtCs2QK82Vyr5sR_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2QK82Vyr5sR_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 4
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  store i64 5, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCs7A8gjpeJ2x1_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !10, !nonnull !10
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #17
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs15BaZ5TwNj2_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB5_8Settings9poll_sendINtNtNtCsb7qiAEi3wj_9actix_tls6accept11rustls_0_239TlsStreamNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamEINtNtNtB7_7streams10prioritize11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEB3A_NtNtB9_6server4PeerEs_0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_sends_10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  tail call void @_RNvMNtCs2QK82Vyr5sR_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2QK82Vyr5sR_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 4
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_sends_10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  store i64 5, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCs7A8gjpeJ2x1_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !10, !nonnull !10
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #17
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs15BaZ5TwNj2_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB5_8Settings9poll_sendNtNtNtNtCsjZG7hsAZr3B_5tokio3net3tcp6stream9TcpStreamINtNtNtB7_7streams10prioritize11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEB2B_NtNtB9_6server4PeerE0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10
  tail call void @_RNvMNtCs2QK82Vyr5sR_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2QK82Vyr5sR_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 4
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvMNtNtCs1EZwNlLr5NN_2h25proto8settingsNtB4_8Settings9poll_send10___CALLSITE, align 8, !nonnull !10, !align !15, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  store i64 5, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCs7A8gjpeJ2x1_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !10, !nonnull !10
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #17
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs15BaZ5TwNj2_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
end_hunk_0
