Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.03?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1667
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests:bb.a
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i ], [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.ag, i64 %i.ab ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !alias.scope !2480, !noalias !2481
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i.epil.preheader, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i
  %unroll_iter = and i64 %i.af, 288230376151711742
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new ], [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i ]
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.al, ptr %i.ak, align 8, !alias.scope !2480, !noalias !2481
  %i.am = xor i64 %.sroa.0.016.i.i, -2
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.ag, i64 %i.am ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !2477, !noalias !2478
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !2479
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !alias.scope !2480, !noalias !2481
  %i.ar = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE7reverseCs44McOc0n4RX_13interop_tests.exit.loopexit.unr-lcssa, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE12split_at_mutCs44McOc0n4RX_13interop_tests.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 28823037615171175) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 32
  %.sroa.0.0.val13 = load i8, ptr %i.n, align 8, !range !32, !noundef !10
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 32
  %.sroa.04.0.val14 = load i8, ptr %i.o, align 8, !range !32, !noundef !10 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.val13, 0        ; 2 uses
  %i.p = icmp ne i8 %.sroa.04.0.val14, 0          ; 2 uses
  %i.q = and i1 %.not.i, %i.p
  %i.r = getelementptr i8, ptr %.sroa.08.0, i64 32
  %.sroa.08.0.val12 = load i8, ptr %i.r, align 8, !range !32, !noundef !10
  %i.s = icmp ne i8 %.sroa.08.0.val12, 0          ; 2 uses
  %i.t = xor i1 %i.p, %i.s
  %i.u = and i1 %.not.i, %i.t
  %.not.i16 = icmp eq i8 %.sroa.04.0.val14, 0
  %i.v = and i1 %.not.i16, %i.s
  %i.w = xor i1 %i.q, %i.v
  %..i = select i1 %i.w, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.u, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load i64, ptr %.sroa.0.0, align 8, !noundef !10 ; 4 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val18 = load i64, ptr %i.n, align 8  ; 2 uses
  %.sroa.04.0.val19 = load i64, ptr %.sroa.04.0, align 8, !noundef !10 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val20 = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.q = icmp ult i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.r = icmp ult i64 %.sroa.0.0.val18, %.sroa.04.0.val20
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q ; 2 uses
  %.sroa.08.0.val15 = load i64, ptr %.sroa.08.0, align 8, !noundef !10 ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val16 = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.u = icmp ult i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.v = icmp ult i64 %.sroa.0.0.val18, %.sroa.08.0.val16
  %.sroa.0.0.i.i21 = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i21
  br i1 %i.w, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.y = icmp ult i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.z = icmp ult i64 %.sroa.04.0.val20, %.sroa.08.0.val16
  %.sroa.0.0.i.i22 = select i1 %i.x, i1 %i.z, i1 %i.y
  %i.aa = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i22
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i84 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cc, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ca, %bb.y ] ; 3 uses
  %i.k = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit
  %.sroa.021.0 = phi i8 [ %i.at, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph58, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i8, ptr %i.p, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i8, ptr %i.q, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10
  %.not.i37 = icmp eq i8 %.val10.i, 0
  %i.r = icmp ne i8 %.val11.i, 0
  %i.s = and i1 %.not.i37, %i.r                   ; 2 uses
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  %.not64 = icmp eq i64 %i.m, 2
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i48 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i48
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val8.i = load i8, ptr %i.u, align 8, !range !32, !alias.scope !2488, !noalias !2489, !noundef !10 ; 2 uses
  %.not.i36 = icmp eq i8 %.val8.i, 0
  %i.v = icmp ne i8 %.val9.i, 0
  %i.w = and i1 %.not.i36, %i.v
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i.i48, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i, label %.lr.ph

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i: ; preds = %bb.l, %.lr.ph, %bb.k
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.k ], [ %.sroa.01.0.i.i48, %.lr.ph ], [ %i.m, %bb.l ] ; 7 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i84, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit

bb.m:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i
  br i1 %i.s, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit

bb.n:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.o:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2486
  %i.aa = shl nuw nsw i64 %..i33, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i4245 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit.i.thread ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.017.i.i, -1
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ai = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.q, !noalias !2489

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #34, !noalias !2489
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCs44McOc0n4RX_13interop_tests.exit ], [ %i.ab, %bb.o ], [ %i.z, %bb.n ] ; 2 uses
  %i.al = lshr i64 %.sroa.023.0, 1
  %i.am = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.an = sub nsw i64 %factor, %i.al
  %i.ao = add nuw nsw i64 %i.am, %factor
  %i.ap = mul i64 %i.an, %.sroa.0.0
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false)
  %i.at = trunc nuw nsw i64 %i.as to i8
  br label %bb.g

.lr.ph58:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit
  %.sroa.02.157 = phi i64 [ %i.au, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.156 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.au = add i64 %.sroa.02.157, -1               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !10
  %.not28 = icmp ult i8 %i.aw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit, %.lr.ph58, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.156, %.lr.ph58 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.157, %.lr.ph58 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ay, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph58
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.ba = load i64, ptr %i.az, align 8, !noundef !10 ; 3 uses
  %i.bb = lshr i64 %i.ba, 1                       ; 5 uses
  %i.bc = lshr i64 %.sroa.023.156, 1              ; 3 uses
  %i.bd = add nuw i64 %i.bb, %i.bc                ; 5 uses
  %i.be = sub i64 %.sroa.09.0, %i.bd
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bg = icmp samesign ugt i64 %i.bd, %3
  %i.bh = trunc i64 %.sroa.023.156 to i1
  %i.bi = or i64 %i.ba, %.sroa.023.156
  %i.bj = trunc i64 %i.bi to i1
  %or.cond3.i = or i1 %i.bg, %i.bj
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = trunc i64 %i.ba to i1
  br i1 %i.bk, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bl = shl nuw nsw i64 %i.bd, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bm = or i64 %i.bb, 1
  %i.bn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bb
  %i.bs = or i64 %i.bc, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 230584300921369396) %i.bc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keybNCINvMB10_INtB10_10NameServerB22_E3newATNtNtB28_4xfer8ProtocolINtNtB4P_12dns_exchange11DnsExchangeB22_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bx = shl nuw nsw i64 %i.bd, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.by, %bb.x ], [ %i.bl, %bb.t ] ; 2 uses
  %i.bz = icmp ugt i64 %i.au, 1
  br i1 %i.bz, label %.lr.ph58, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ca = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cb = lshr i64 %.sroa.018.0, 1
  %i.cc = add nuw nsw i64 %i.cb, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cd = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cd, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = or i64 %1, 1
  %i.cf = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #35, !inline_history !2487
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph98 = phi ptr [ %i.ct, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph97 = phi i64 [ %i.ce, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph96 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph95 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph98, i64 32
  %i.d = ptrtoint ptr %.sroa.0.0.ph98 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph95, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph95, i64 32
  %i.f = icmp eq i32 %.sroa.025.0.ph96, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph221

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs44McOc0n4RX_13interop_tests.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph221

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs44McOc0n4RX_13interop_tests.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa89 = phi ptr [ %i.cf, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph98, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs44McOc0n4RX_13interop_tests.exit ], [ %i.ct, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs44McOc0n4RX_13interop_tests.exit ], [ %i.ce, %.outer ]
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests
declare hidden void @_RNvXNtNtCsgrcu2UPjJtD_14futures_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6server9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([1208 x i8]) align 8 captures(none) dereferenceable(1208), ptr noalias nofree noundef align 8 dereferenceable(1208), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxShENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs5hzaM3VbZx4_5redis(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexNtNtNtCsjouRnuJWSBB_5yamux10connection3rtt8RttInnerEE9drop_slowB2d_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsBXGTqM1ILm_8lock_api5mutex5MutexNtNtCsbNxlIVSzhBv_11parking_lot9raw_mutex8RawMutexjEE9drop_slowCsjouRnuJWSBB_5yamux(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEE9drop_slowB3i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerINtNtNtCskFgHTArva8k_13netlink_proto8protocol7request7RequestNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageINtBJ_15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageB2A_EEEEE9drop_slowCsg1Z0Dwl4khT_9rtnetlink(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc14UnboundedInnerTINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskGfSpwhqogB_11netlink_sys4addr10SocketAddrEEE9drop_slowCsg1Z0Dwl4khT_9rtnetlink(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxed14StreamMuxerBoxEE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsa5che6Tt9cA_4moka4sync10base_cache5InnerNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEE9drop_slowB2l_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsa5che6Tt9cA_4moka4sync17value_initializer16ValueInitializerNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEE9drop_slowB2E_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerbEE9drop_slowCsaRn6AFvch86_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicmEE9drop_slowCsjouRnuJWSBB_5yamux(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCsjouRnuJWSBB_5yamux6ConfigE9drop_slowBI_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsdV5RFaui74W_12libp2p_mplex2io12NotifierReadE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsdV5RFaui74W_12libp2p_mplex2io13NotifierWriteE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsa5che6Tt9cA_4moka6common10concurrent11housekeeper11HousekeeperE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherNtNtBP_15stream_protocol14StreamProtocolIB1H_B2b_B2b_EEEbENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataNtB5_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 31160040665049919), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtB5_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 32940614417338486), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEENtNtCskKLDkoKarTP_4core7default7Default7defaultCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3set7HashSetTNtNtNtCskKLDkoKarTP_4core3net7ip_addr6IpAddrtEEENtNtB1L_7default7Default7defaultCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtB6_4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE3lenCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtB6_6string6StringE3lenCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSIBy_ShEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata4tsig4TSIGEE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryINtB5_14SlicePartialEqBC_E17equal_same_lengthCs44McOc0n4RX_13interop_tests(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj20_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuithENCINvMBO_BL_10wrap_mut_1uNCNvXNtNtCs1oStim3y6Gv_7tinyvec5array18const_generic_implAhBz_NtB20_5Array7default0E0ECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 1 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCskKLDkoKarTP_4core5arrayAuj18_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuithENCINvMBO_BL_10wrap_mut_1uNCNvXNtNtCs1oStim3y6Gv_7tinyvec5array18const_generic_implAhBz_NtB20_5Array7default0E0ECs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 1 captures(address) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metrics11RouteMetricINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route9neighbour9attribute18NeighbourAttributeINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link10proto_info5inet618LinkProtoInfoInet6INtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBI_13SvcParamValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_requestNtB4_10DnsRequest10from_query(ptr dead_on_unwind noalias nofree noundef writable sret([280 x i8]) align 8 captures(address) dereferenceable(280), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCskeoOuuhwsQF_12sharded_slab4page4slotINtB5_4SlotNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE3newCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCs5hzaM3VbZx4_5redis5typesNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_14FromRedisValue16from_redis_value(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { inlinehint }
attributes #34 = { cold noreturn nounwind }
attributes #35 = { noinline }
attributes #36 = { cold }
attributes #37 = { noinline noreturn }
attributes #38 = { noreturn }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 2, !"RtLibUseGOT", i32 1}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!10 = !{}
!11 = !{i64 8}
!12 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!13 = !{i64 0, i64 3}
!14 = !{i64 0, i64 2}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{i64 1, i64 536870913}
!17 = !{i64 -1, i64 -9223372036854775808}
!18 = !{i8 0, i8 3}
!19 = !{i64 -2, i64 3}
!20 = !{i64 -1, i64 3}
!21 = !{i8 0, i8 4}
!22 = !{i8 0, i8 6}
!23 = !{i16 0, i16 3}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{i8 -5, i8 12}
!26 = !{i64 -1, i64 4}
!27 = !{i64 -2, i64 4}
!28 = !{i16 0, i16 2}
!29 = !{i64 0, i64 -9223372036854775806}
!30 = !{i64 -2, i64 -9223372036854775808}
!31 = !{i64 0, i64 5}
!32 = !{i8 0, i8 2}
!33 = !{i8 0, i8 5}
!34 = !{i32 0, i32 13}
!35 = !{i8 0, i8 10}
!36 = !{i64 0, i64 -9223372036854775795}
!37 = !{i64 0, i64 -9223372036854775803}
!38 = !{!"address", !"read_provenance"}
!39 = !{i64 0, i64 -9223372036854775720}
!40 = !{i64 0, i64 -9223372036854775727}
!41 = !{i8 0, i8 12}
!42 = !{i64 0, i64 -9223372036854775781}
!43 = !{i64 0, i64 -9223372036854775710}
!44 = !{i16 0, i16 29}
!45 = !{i16 0, i16 12}
!46 = !{i8 -1, i8 22}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{i16 0, i16 39}
!50 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{i64 4}
!53 = !{i16 0, i16 7}
!54 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!55 = !{i32 -2, i32 18}
!56 = !{i64 -1, i64 5}
!57 = !{i8 -6, i8 12}
!58 = !{i64 2}
!59 = distinct !{!59, !"_RINvNtCscIBp6mpAwK8_3log13___private_api8log_implNtB2_12GlobalLoggerECs44McOc0n4RX_13interop_tests"}
!60 = distinct !{!60, !59, !"_RINvNtCscIBp6mpAwK8_3log13___private_api8log_implNtB2_12GlobalLoggerECs44McOc0n4RX_13interop_tests: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs44McOc0n4RX_13interop_tests"}
!63 = distinct !{!63, !62, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs44McOc0n4RX_13interop_tests: argument 0"}
!64 = distinct !{!64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs44McOc0n4RX_13interop_tests"}
!65 = distinct !{!65, !64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbli3iz7XG76_9multiaddr9MultiaddrECs44McOc0n4RX_13interop_tests: argument 0"}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs44McOc0n4RX_13interop_tests"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs44McOc0n4RX_13interop_tests: argument 0"}
!68 = distinct !{!68, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!69 = distinct !{!69, !68, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!70 = !{i32 0, i32 18}
!71 = !{!63}
!72 = !{!65}
!73 = !{!67}
!74 = !{!69}
!75 = !{!69, !67, !65}
!76 = distinct !{!76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECs44McOc0n4RX_13interop_tests"}
!77 = distinct !{!77, !76, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEEECs44McOc0n4RX_13interop_tests: argument 0"}
!78 = distinct !{!78, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests"}
!79 = distinct !{!79, !78, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests: argument 0"}
!80 = distinct !{!80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests"}
!81 = distinct !{!81, !80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests: argument 0"}
!82 = distinct !{!82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests: argument 0"}
!84 = distinct !{!84, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests"}
!85 = distinct !{!85, !84, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests: argument 0"}
!86 = distinct !{!86, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!87 = distinct !{!87, !86, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!88 = distinct !{!88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB1Y_EEECs44McOc0n4RX_13interop_tests"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtBG_15stream_protocol14StreamProtocolEB1Y_EEECs44McOc0n4RX_13interop_tests: argument 0"}
!90 = distinct !{!90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEB16_EECs44McOc0n4RX_13interop_tests"}
!91 = distinct !{!91, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEB16_EECs44McOc0n4RX_13interop_tests: argument 0"}
!92 = distinct !{!92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests"}
!93 = distinct !{!93, !92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests: argument 0"}
!94 = distinct !{!94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests"}
!95 = distinct !{!95, !94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests: argument 0"}
!96 = distinct !{!96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests"}
!97 = distinct !{!97, !96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests: argument 0"}
!98 = distinct !{!98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests"}
!99 = distinct !{!99, !98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests: argument 0"}
!100 = distinct !{!100, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!101 = distinct !{!101, !100, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests"}
!103 = distinct !{!103, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs44McOc0n4RX_13interop_tests: argument 0"}
!104 = distinct !{!104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests"}
!105 = distinct !{!105, !104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs44McOc0n4RX_13interop_tests: argument 0"}
!106 = distinct !{!106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests"}
!107 = distinct !{!107, !106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs44McOc0n4RX_13interop_tests: argument 0"}
!108 = distinct !{!108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests"}
!109 = distinct !{!109, !108, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs44McOc0n4RX_13interop_tests: argument 0"}
!110 = distinct !{!110, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!111 = distinct !{!111, !110, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!112 = !{!77}
!113 = !{!79}
!114 = !{!81}
!115 = !{!83}
!116 = !{!83, !81, !79, !77}
!117 = !{!85}
!118 = !{!87}
!119 = !{!87, !85, !83, !81, !79, !77}
!120 = !{!89}
!121 = !{!91}
!122 = !{!93}
!123 = !{!95}
!124 = !{!97}
!125 = !{!97, !95, !93, !91, !89}
!126 = !{!99}
!127 = !{!101}
!128 = !{!101, !99, !97, !95, !93, !91, !89}
!129 = !{!103}
!130 = !{!105}
!131 = !{!107}
!132 = !{!107, !105, !103, !91, !89}
!133 = !{!109}
!134 = !{!111}
!135 = !{!111, !109, !107, !105, !103, !91, !89}
!136 = distinct !{!136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests"}
!137 = distinct !{!137, !136, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests: argument 0"}
!138 = distinct !{!138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsknXHD0xsxtc_16libp2p_websocket6framed10ConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests"}
!139 = distinct !{!139, !138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsknXHD0xsxtc_16libp2p_websocket6framed10ConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEECs44McOc0n4RX_13interop_tests: argument 0"}
!140 = distinct !{!140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs44McOc0n4RX_13interop_tests"}
!141 = distinct !{!141, !140, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!142 = !{!137}
!143 = !{!139}
!144 = !{!139, !137}
!145 = !{!141}
!146 = distinct !{null}
!147 = distinct !{!147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtB12_6stream6StreamIB2u_B3n_B3n_EEIB1W_zIB1W_zzEEEEECs44McOc0n4RX_13interop_tests"}
!148 = distinct !{!148, !147, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection13StreamUpgradeINtCscu2bAJ62uie_6either6EitheruuEINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtB12_6stream6StreamIB2u_B3n_B3n_EEIB1W_zIB1W_zzEEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!149 = distinct !{!149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECs44McOc0n4RX_13interop_tests"}
!150 = distinct !{!150, !149, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtB1A_5timer14ScheduledTimerEEEECs44McOc0n4RX_13interop_tests: argument 0"}
end_hunk_1
