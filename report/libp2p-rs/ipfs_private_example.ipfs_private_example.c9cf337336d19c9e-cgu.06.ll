Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.06?download=true
inline.NumInlined: 1188
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB34_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example:bb.a
  br label %.loopexit12

.loopexit12:                                      ; preds = %._crit_edge.i.i22.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i
  %.sroa.06.0.i.i = phi double [ %i.bt, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i ]
  %i.bu = fcmp olt double %.sroa.01.0.ph.i.i, %.sroa.06.0.i.i
  br i1 %i.bu, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.f, %.loopexit12, %.lr.ph59, %bb.e
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i57, %.loopexit12 ], [ %.sroa.0.0.i57, %.lr.ph59 ]
  %i.bv = load i64, ptr %i.a, align 8, !noalias !1272
  store i64 %i.bv, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.loopexit:                                        ; preds = %.lr.ph.i.i19.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit9 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.k, %bb.g
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit9, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp10, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bw = load i64, ptr %i.a, align 8, !noalias !1273
  store i64 %i.bw, ptr %.sroa.0.0.i57, align 8, !noalias !1273
  resume { ptr, i32 } %lpad.phi

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.d, %.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTyjENvYB1m_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.05 = phi ptr [ %i.q, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 8, !noundef !5 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i64, ptr %i.e, align 8         ; 3 uses
  %.val13.i = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val14.i = load i64, ptr %i.f, align 8
  %i.g = icmp eq i64 %.val11.i, %.val13.i
  %i.h = icmp ult i64 %.val11.i, %.val13.i
  %i.i = icmp ult i64 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.g, i1 %i.i, i1 %i.h
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = icmp eq ptr %i.d, %0
  br i1 %i.j, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.l, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val9.i = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.0.i8, i64 -8
  %.val10.i = load i64, ptr %i.m, align 8
  %i.n = icmp eq i64 %.val11.i, %.val9.i
  %i.o = icmp ult i64 %.val11.i, %.val9.i
  %i.p = icmp ult i64 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.n, i1 %i.p, i1 %i.o
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ] ; 2 uses
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1278
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1278
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTyjENvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.021.0 = phi i8 [ %i.at, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph58, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 6 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 72
  %.val10.i = load i8, ptr %i.p, align 8, !range !12, !alias.scope !1285, !noalias !1286, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 32
  %.val11.i = load i8, ptr %i.q, align 8, !range !12, !alias.scope !1285, !noalias !1286, !noundef !5
  %.not.i37 = icmp eq i8 %.val10.i, 0
  %i.r = icmp ne i8 %.val11.i, 0
  %i.s = and i1 %.not.i37, %i.r                   ; 2 uses
  br i1 %i.s, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  %.not64 = icmp eq i64 %i.m, 2
  br i1 %.not64, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i48 = phi i64 [ %i.x, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i48
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %.val8.i = load i8, ptr %i.u, align 8, !range !12, !alias.scope !1285, !noalias !1286, !noundef !5 ; 2 uses
  %.not.i36 = icmp eq i8 %.val8.i, 0
  %i.v = icmp ne i8 %.val9.i, 0
  %i.w = and i1 %.not.i36, %i.v
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw i64 %.sroa.01.0.i.i48, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.l, %.lr.ph, %bb.k
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.k ], [ %.sroa.01.0.i.i48, %.lr.ph ], [ %i.m, %bb.l ] ; 7 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.m

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i84, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.m:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i
  br i1 %i.s, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.o:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1283
  %i.aa = shl nuw nsw i64 %..i33, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %bb.j, %bb.p, %bb.m
  %.sroa.0.0.i.i4245 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keybNCINvMB15_INtB15_10NameServerB27_E3newATNtNtB2d_4xfer8ProtocolINtNtB4V_12dns_exchange11DnsExchangeB27_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ak, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ag = xor i64 %.sroa.0.017.i.i, -1
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ai = getelementptr [40 x i8], ptr %i.af, i64 %i.ag
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i unwind label %bb.q, !noalias !1286

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #31, !noalias !1286
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ak = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.ae
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keybNCINvMB16_INtB16_10NameServerB28_E3newATNtNtB2e_4xfer8ProtocolINtNtB4W_12dns_exchange11DnsExchangeB28_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE7reverseCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.ab, %bb.o ], [ %i.z, %bb.n ] ; 2 uses
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

.lr.ph58:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.02.157 = phi i64 [ %i.au, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.156 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.au = add i64 %.sroa.02.157, -1               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.aw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, %.lr.ph58, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.156, %.lr.ph58 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.157, %.lr.ph58 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ay, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph58
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5 ; 3 uses
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
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bh, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bm = or i64 %i.bb, 1
  %i.bn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1284
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bb
  %i.bs = or i64 %i.bc, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 230584300921369396) %i.bc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1284
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keybNCINvMB10_INtB10_10NameServerB22_E3newATNtNtB28_4xfer8ProtocolINtNtB4P_12dns_exchange11DnsExchangeB22_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 0, 230584300921369396) %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.bx = shl nuw nsw i64 %i.bd, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keybNCINvMB19_INtB19_10NameServerB2b_E3newATNtNtB2h_4xfer8ProtocolINtNtB4Z_12dns_exchange11DnsExchangeB2b_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.t, %bb.x
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
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1284
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2C_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cg, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !1293, !noalias !1294, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1C_9Behaviour9heartbeats2_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n) #37, !noalias !1295, !inline_history !1291 ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78, label %.lr.ph49

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader43 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.s = getelementptr [80 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.t = getelementptr i8, ptr %i.s, i64 -80
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1C_9Behaviour9heartbeats2_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.t) #37, !noalias !1295, !inline_history !1291
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.x = getelementptr [80 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.y = getelementptr i8, ptr %i.x, i64 -80
  %i.z = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1C_9Behaviour9heartbeats2_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.y) #37, !noalias !1295, !inline_history !1291
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.aa = add nuw i64 %.sroa.01.1.i.i48, 1        ; 2 uses
  %exitcond65.not = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ] ; 5 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ac, 0
  %or.cond.not = and i1 %.not.i.i, %i.q
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2M_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1291
  %i.ae = shl nuw nsw i64 %..i33, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2J_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread78 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.am = getelementptr [80 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 10)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i unwind label %bb.q, !noalias !1295

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #31, !noalias !1295
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.02.154 = phi i64 [ %i.ay, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ay = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 5 uses
  %i.bg = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 5 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.bi ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.153 to i1
  %i.bm = or i64 %i.be, %.sroa.023.153
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bl, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2M_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 115292150460684698) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1292
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2M_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 115292150460684698) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1292
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2D_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 115292150460684698) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cb = shl nuw nsw i64 %i.bh, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cc, %bb.x ], [ %i.bp, %bb.t ] ; 2 uses
  %i.cd = icmp ugt i64 %i.ay, 1
  br i1 %i.cd, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ce = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cf = lshr i64 %.sroa.018.0, 1
  %i.cg = add nuw i64 %i.cf, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ch = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ch, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = or i64 %1, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2M_9Behaviour9heartbeats2_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1292
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYBW_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ag, label %bb.b

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
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ac, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ac ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.ac ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ac ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345), !noalias !1340
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1346, !noalias !1347, !noundef !5 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1348, !noalias !1349, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.r, %i.t
  %i.v = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.l, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit38

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.x = load i8, ptr %i.w, align 8, !alias.scope !1346, !noalias !1347, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.z = load i8, ptr %i.y, align 8, !alias.scope !1348, !noalias !1349, !noundef !5 ; 2 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  %i.ab = icmp ult i8 %i.x, %i.z
  br i1 %i.aa, label %.split, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit38

.split:                                           ; preds = %bb.l
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.n, i64 64), !alias.scope !1350, !noalias !1340
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader, label %.preheader51

.preheader:                                       ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit38, %.split
  %.not70 = icmp eq i64 %i.m, 2
  br i1 %.not70, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph57

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit38: ; preds = %bb.k, %bb.l
  %.sroa.0.0.i.i.i.i37 = phi i1 [ %i.v, %bb.k ], [ %i.ab, %bb.l ]
  br i1 %.sroa.0.0.i.i.i.i37, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit38, %.split
  %.not69 = icmp eq i64 %i.m, 2
  br i1 %.not69, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader51, %bb.n
  %i.ae = phi i64 [ %i.ak, %bb.n ], [ %i.r, %.preheader51 ] ; 2 uses
  %.sroa.01.0.i.i53 = phi i64 [ %i.av, %bb.n ], [ 2, %.preheader51 ] ; 5 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.0.i.i53 ; 3 uses
  %i.ag = add nsw i64 %.sroa.01.0.i.i53, -1       ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.m
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358), !noalias !1340
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1359, !noalias !1360, !noundef !5 ; 3 uses
  %i.al = icmp eq i64 %i.ak, %i.ae
  %i.am = icmp ult i64 %i.ak, %i.ae
  br i1 %i.al, label %bb.m, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36

bb.m:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ao = load i8, ptr %i.an, align 8, !alias.scope !1359, !noalias !1360, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !alias.scope !1361, !noalias !1362, !noundef !5 ; 2 uses
  %i.ar = icmp eq i8 %i.ao, %i.aq
  %i.as = icmp ult i8 %i.ao, %i.aq
  br i1 %i.ar, label %.split41, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36

.split41:                                         ; preds = %bb.m
  %i.at = tail call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ai, i64 64), !alias.scope !1363, !noalias !1340
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.n

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36: ; preds = %.lr.ph, %bb.m
  %.sroa.0.0.i.i.i.i35 = phi i1 [ %i.am, %.lr.ph ], [ %i.as, %bb.m ]
  br i1 %.sroa.0.0.i.i.i.i35, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.n

bb.n:                                             ; preds = %.split41, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36
  %i.av = add nuw i64 %.sroa.01.0.i.i53, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.p
  %i.aw = phi i64 [ %i.bc, %bb.p ], [ %i.r, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i56 = phi i64 [ %i.bn, %bb.p ], [ 2, %.preheader ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.01.1.i.i56 ; 3 uses
  %i.ay = add nsw i64 %.sroa.01.1.i.i56, -1       ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.m
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1370), !noalias !1340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371), !noalias !1340
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !1372, !noalias !1373, !noundef !5 ; 3 uses
  %i.bd = icmp eq i64 %i.bc, %i.aw
  %i.be = icmp ult i64 %i.bc, %i.aw
  br i1 %i.bd, label %bb.o, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit

bb.o:                                             ; preds = %.lr.ph57
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load i8, ptr %i.bf, align 8, !alias.scope !1372, !noalias !1373, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bi = load i8, ptr %i.bh, align 8, !alias.scope !1374, !noalias !1375, !noundef !5 ; 2 uses
  %i.bj = icmp eq i8 %i.bg, %i.bi
  %i.bk = icmp ult i8 %i.bg, %i.bi
  br i1 %i.bj, label %.split42, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit

.split42:                                         ; preds = %bb.o
  %i.bl = tail call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ba, i64 64), !alias.scope !1376, !noalias !1340
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.p, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.lr.ph57, %bb.o
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.be, %.lr.ph57 ], [ %i.bk, %bb.o ]
  br i1 %.sroa.0.0.i.i.i.i, label %bb.p, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.p:                                             ; preds = %.split42, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.bn = add nuw i64 %.sroa.01.1.i.i56, 1        ; 2 uses
  %exitcond74.not = icmp eq i64 %i.bn, %i.m
  br i1 %exitcond74.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph57

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.n, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36, %.split41, %bb.p, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit, %.split42, %.preheader51, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %.preheader51 ], [ true, %bb.p ], [ true, %.split42 ], [ true, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit ], [ false, %.split41 ], [ false, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36 ], [ false, %bb.n ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader51 ], [ %i.m, %bb.p ], [ %.sroa.01.1.i.i56, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.01.1.i.i56, %.split42 ], [ %i.m, %bb.n ], [ %.sroa.01.0.i.i53, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit36 ], [ %.sroa.01.0.i.i53, %.split41 ] ; 7 uses
  %i.bo = icmp ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bo)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.t, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.r:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 %.sroa.01.0)
  %i.bp = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

bb.s:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 115292150460684698) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull %5) #36, !inline_history !1335
  %i.bq = shl nuw nsw i64 %..i33, 1
  %i.br = or disjoint i64 %i.bq, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %bb.j, %bb.t, %bb.q
  %.sroa.0.0.i.i4750 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i ]
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i.i4750, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

bb.t:                                             ; preds = %bb.q
  %i.bu = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ca, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bw = xor i64 %.sroa.0.017.i.i, -1
  %i.bx = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.by = getelementptr [80 x i8], ptr %i.bv, i64 %i.bw
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, i64 noundef 10)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i unwind label %bb.u, !noalias !1340

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #31, !noalias !1340
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ca = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bu
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB13_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bt, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.br, %bb.s ], [ %i.bp, %bb.r ] ; 2 uses
  %i.cb = lshr i64 %.sroa.023.0, 1
  %i.cc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cd = sub nsw i64 %factor, %i.cb
  %i.ce = add nuw nsw i64 %i.cc, %factor
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  br label %bb.g

.lr.ph63:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.02.162 = phi i64 [ %i.ck, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ck = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.cm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit, %.lr.ph63, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %.lr.ph63 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.co, align 1
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.v:                                             ; preds = %.lr.ph63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !5 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 5 uses
  %i.cs = lshr i64 %.sroa.023.161, 1              ; 3 uses
  %i.ct = add nuw i64 %i.cr, %i.cs                ; 5 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct
  %i.cv = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.cu ; 3 uses
  %i.cw = icmp samesign ugt i64 %i.ct, %3
  %i.cx = trunc i64 %.sroa.023.161 to i1
  %i.cy = or i64 %i.cq, %.sroa.023.161
  %i.cz = trunc i64 %i.cy to i1
  %or.cond3.i = or i1 %i.cw, %i.cz
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.db = shl nuw nsw i64 %i.ct, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.cx, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 115292150460684698) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull %5) #36, !inline_history !1336
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.cr
  %i.di = or i64 %i.cs, 1
  %i.dj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 115292150460684698) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull %5) #36, !inline_history !1336
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYBX_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 115292150460684698) %i.ct, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i64 noundef %i.cr, ptr noalias nofree noundef nonnull %5)
  %i.dn = shl nuw nsw i64 %i.ct, 1
  %i.do = or disjoint i64 %i.dn, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB16_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.x, %bb.ab
  %.sroa.0.0.i = phi i64 [ %i.do, %bb.ab ], [ %i.db, %bb.x ] ; 2 uses
  %i.dp = icmp ugt i64 %i.ck, 1
  br i1 %i.dp, label %.lr.ph63, label %._crit_edge

bb.ac:                                            ; preds = %._crit_edge
  %i.dq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dr = lshr i64 %.sroa.018.0, 1
  %i.ds = add nuw i64 %i.dr, %.sroa.09.0
  br label %bb.f

bb.ad:                                            ; preds = %._crit_edge
  %i.dt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dt, 0
  br i1 %.not30, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = or i64 %1, 1
  %i.dv = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = xor i32 %i.dx, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 115292150460684698) %3, i32 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(80) null, ptr noalias nofree noundef nonnull %5) #36, !inline_history !1336
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2D_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i74 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i79 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cr, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cp, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val8.i = load ptr, ptr %5, align 8, !alias.scope !1390, !noalias !1391, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #37, !noalias !1392, !inline_history !1381 ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77, label %.lr.ph49

.lr.ph:                                           ; preds = %.preheader43, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader43 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) #37, !noalias !1392, !inline_history !1381
  br i1 %i.u, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val8.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y) #37, !noalias !1392, !inline_history !1381
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.aa = add nuw i64 %.sroa.01.1.i.i48, 1        ; 2 uses
  %exitcond65.not = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph49
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i45, %.lr.ph ], [ %i.m, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77: ; preds = %.preheader
  br i1 %.not5.i79, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i74, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1381
  %i.ad = shl nuw nsw i64 %..i33, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i, %middle.block, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread ], [ %.sroa.0.0.i.i758286, %middle.block ], [ %.sroa.0.0.i.i758286, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393), !noalias !1392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394), !noalias !1392
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77 ] ; 4 uses
  %.sroa.0.0.i.i758286 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2K_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i.thread77 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.0.i.i758286 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i
  %n.vec = and i64 %i.ai, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = xor i64 %index, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !1395, !noalias !1396
  %wide.load91 = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !1395, !noalias !1396
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %i.ap = getelementptr i8, ptr %i.am, i64 -24
  %wide.load92 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !1397, !noalias !1398
  %wide.load93 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !1397, !noalias !1398
  %reverse = shufflevector <2 x i64> %wide.load92, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse94 = shufflevector <2 x i64> %wide.load93, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %reverse, ptr %i.al, align 8, !alias.scope !1395, !noalias !1396
  store <2 x i64> %reverse94, ptr %i.aq, align 8, !alias.scope !1395, !noalias !1396
  %i.ar = getelementptr i8, ptr %i.am, i64 -8
  %i.as = getelementptr i8, ptr %i.am, i64 -24
  %reverse95 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse96 = shufflevector <2 x ptr> %wide.load91, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse95, ptr %i.ar, align 8, !alias.scope !1397, !noalias !1398
  store <2 x ptr> %reverse96, ptr %i.as, align 8, !alias.scope !1397, !noalias !1398
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.az, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i.preheader ] ; 3 uses
  %i.au = xor i64 %.sroa.0.016.i.i, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !alias.scope !1395, !noalias !1396, !nonnull !5, !align !10, !noundef !5
  %i.ay = load i64, ptr %i.aw, align 8, !alias.scope !1397, !noalias !1398
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !1395, !noalias !1396
  store ptr %i.ax, ptr %i.aw, align 8, !alias.scope !1397, !noalias !1398
  %i.az = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId12split_at_mutCshke30g4Hb4g_20ipfs_private_example.exit11.i.i, !llvm.loop !1388

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2L_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCskKLDkoKarTP_4core5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7reverseCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1
  %i.bb = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba
  %i.bd = add nuw nsw i64 %i.bb, %factor
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bi = trunc nuw nsw i64 %i.bh to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.02.154 = phi i64 [ %i.bj, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bj = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bn, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !5 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1                       ; 5 uses
  %i.br = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bs = add nuw i64 %i.bq, %i.br                ; 5 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt ; 3 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3
  %i.bw = trunc i64 %.sroa.023.153 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.153
  %i.by = trunc i64 %i.bx to i1
  %or.cond3.i = or i1 %i.bv, %i.by
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = shl nuw nsw i64 %i.bs, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bw, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cb = or i64 %i.bq, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1389
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bq
  %i.ch = or i64 %i.br, 1
  %i.ci = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1389
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2E_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cm = shl nuw nsw i64 %i.bs, 1
  %i.cn = or disjoint i64 %i.cm, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2O_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cn, %bb.x ], [ %i.ca, %bb.t ] ; 2 uses
  %i.co = icmp ugt i64 %i.bj, 1
  br i1 %i.co, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cq = lshr i64 %.sroa.018.0, 1
  %i.cr = add nuw i64 %i.cq, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cs = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cs, 0
end_hunk_0
