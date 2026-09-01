Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.13?download=true
inline.NumInlined: 2319
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvMs_NtCs5JE7FSNhGyr_15futures_bounded11futures_mapINtB5_10FuturesMapNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtNtCskKLDkoKarTP_4core6result6ResultINtB19_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB2b_2io5error5ErrorEE8try_pushINtNtB2b_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputB26_NtNtB2b_6marker4SendEL_EEECs2Bxje7pdMIr_13libp2p_server:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !align !10, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  store ptr null, ptr %i.i, align 8
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call { ptr, ptr } @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB7_6future6future6Futurep6OutputINtNtB7_6result6ResultINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB7_2io5error5ErrorENtNtB7_6marker4SendEL_EENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6
  invoke void %i.q(ptr noundef %i.l)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20 = load ptr, ptr %i.r, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = icmp eq ptr %.val20, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val20, i64 96
  %i.u = load i64, ptr %i.t, align 8, !noundef !6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.04.0.i = phi i64 [ %i.u, %bb.g ], [ 0, %bb.f ]
  store ptr %.val20, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.04.0.i, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.w = invoke noundef align 8 ptr @_RNvXs2_NtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iterINtB5_7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1p_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultINtB2p_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3N_2io5error5ErrorENtNtB3N_6marker4SendEL_EEEEENtNtNtNtB3N_4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit ; 6 uses

.noexc:                                           ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !range !197, !alias.scope !278, !noalias !281, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !278, !noalias !281
  %i.y = icmp ne i64 %.val.i.i.i.i, %2
  %i.z = icmp ne i64 %.val1.i.i.i.i, %3
  %spec.select.i.i.i.not.i.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %spec.select.i.i.i.not.i.i, label %bb.i, label %_RINvYINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iter7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1k_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3I_6future6future6Futurep6OutputINtNtB3I_6result6ResultINtB2k_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3I_2io5error5ErrorENtNtB3I_6marker4SendEL_EEEEENtNtNtNtB3I_4iter6traits8iterator8Iterator8try_folduNCINvNvB7P_4find5checkQB1h_NCNvMs_B1k_INtB1k_10FuturesMapB2i_B5m_E6remove0E0INtNtNtB3I_3ops12control_flow11ControlFlowB91_EECs2Bxje7pdMIr_13libp2p_server.exit.i

_RINvYINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iter7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1k_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3I_6future6future6Futurep6OutputINtNtB3I_6result6ResultINtB2k_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3I_2io5error5ErrorENtNtB3I_6marker4SendEL_EEEEENtNtNtNtB3I_4iter6traits8iterator8Iterator8try_folduNCINvNvB7P_4find5checkQB1h_NCNvMs_B1k_INtB1k_10FuturesMapB2i_B5m_E6remove0E0INtNtNtB3I_3ops12control_flow11ControlFlowB91_EECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !6, !align !10, !noundef !6
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8
  store ptr @124, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i8 1, ptr %i.ae, align 8
  br label %bb.l

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvYINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iter7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1k_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3I_6future6future6Futurep6OutputINtNtB3I_6result6ResultINtB2k_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3I_2io5error5ErrorENtNtB3I_6marker4SendEL_EEEEENtNtNtNtB3I_4iter6traits8iterator8Iterator8try_folduNCINvNvB7P_4find5checkQB1h_NCNvMs_B1k_INtB1k_10FuturesMapB2i_B5m_E6remove0E0INtNtNtB3I_3ops12control_flow11ControlFlowB91_EECs2Bxje7pdMIr_13libp2p_server.exit.i
  %.sroa.3.0.i = phi ptr [ %i.ad, %_RINvYINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iter7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1k_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3I_6future6future6Futurep6OutputINtNtB3I_6result6ResultINtB2k_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3I_2io5error5ErrorENtNtB3I_6marker4SendEL_EEEEENtNtNtNtB3I_4iter6traits8iterator8Iterator8try_folduNCINvNvB7P_4find5checkQB1h_NCNvMs_B1k_INtB1k_10FuturesMapB2i_B5m_E6remove0E0INtNtNtB3I_3ops12control_flow11ControlFlowB91_EECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ undef, %bb.k ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.ab, %_RINvYINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4iter7IterMutINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1k_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3I_6future6future6Futurep6OutputINtNtB3I_6result6ResultINtB2k_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3I_2io5error5ErrorENtNtB3I_6marker4SendEL_EEEEENtNtNtNtB3I_4iter6traits8iterator8Iterator8try_folduNCINvNvB7P_4find5checkQB1h_NCNvMs_B1k_INtB1k_10FuturesMapB2i_B5m_E6remove0E0INtNtNtB3I_3ops12control_flow11ControlFlowB91_EECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ null, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = invoke { ptr, ptr } @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB7_6future6future6Futurep6OutputINtNtB7_6result6ResultINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB7_2io5error5ErrorENtNtB7_6marker4SendEL_EENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt5boxedCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 3 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !6, !align !10, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !6, !nonnull !6
  invoke void %i.an(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %i.aj)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs2Bxje7pdMIr_13libp2p_server(ptr %i.ah, ptr nonnull %i.ai) #37
          to label %bb.q unwind label %bb.w

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.c, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ah, ptr %i.aq, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ai, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvMs4_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs5JE7FSNhGyr_15futures_bounded11futures_map12TaggedFutureNtNtCsfoiTdJnOWBy_23libp2p_request_response7handler9RequestIdINtB1s_13TimeoutFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3Q_6future6future6Futurep6OutputINtNtB3Q_6result6ResultINtB2s_5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB3Q_2io5error5ErrorENtNtB3Q_6marker4SendEL_EEEEE4pushCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.c)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.ao, %bb.o ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEEECs2Bxje7pdMIr_13libp2p_server(ptr %.sroa.0.0.i, ptr %.sroa.3.0.i) #37
          to label %.thread unwind label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not16 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not16, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i) ]
  store i64 1, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0.i, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.d
  ret void

bb.w:                                             ; preds = %bb.q, %bb.o, %bb.x
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.e, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecENtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs2Bxje7pdMIr_13libp2p_server(ptr nonnull %4, ptr nonnull %5) #37
          to label %.thread unwind label %bb.w

.thread:                                          ; preds = %bb.q, %bb.x
  %.pn1735 = phi { ptr, i32 } [ %.pn, %bb.q ], [ %lpad.phi, %bb.x ]
  resume { ptr, i32 } %.pn1735
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [112 x i8], align 8               ; 5 uses
  %i.s = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq i64 %i.s, 2
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
          to label %bb.f unwind label %bb.am

bb.c:                                             ; preds = %bb.a, %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.am, %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bx, %bb.w ], [ %lpad.thr_comm, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.p, align 8, !noundef !6
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  store ptr %i.ad, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.af, ptr %i.ae, align 8
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.am

bb.j:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !range !284, !noundef !6 ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 1000000001
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %i.aj, -1000000000
  %i.am = icmp samesign ugt i32 %i.aj, 999999999
  %narrow = select i1 %i.am, i32 %i.al, i32 1
  switch i32 %narrow, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %.invoke
    i32 3, label %bb.m
    i32 4, label %bb.m
  ]

default.unreachable82:                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  unreachable

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.j

bb.n:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.n
  %i.aq = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.am

bb.o:                                             ; preds = %.invoke
  %i.ar = extractvalue { ptr, ptr } %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 1000000004, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !211, !noundef !6 ; 2 uses
  %i.aw = add i64 %i.av, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ax = load ptr, ptr %i.y, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.ax, null                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.az, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.bb, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.m, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ax, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ax, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.bd = invoke noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef range(i64 0, -1) %i.aw)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.o
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.q

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %.noexc
  %i.be = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc53 unwind label %bb.am  ; 2 uses

.noexc53:                                         ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc53
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load i64, ptr %i.bc, align 8, !alias.scope !288, !noalias !285, !noundef !6
  %i.bi = add i64 %i.bh, %i.av
  store i64 %i.bi, ptr %i.bc, align 8, !alias.scope !288, !noalias !285
  store ptr %i.bf, ptr %.sroa.3, align 8, !alias.scope !285, !noalias !288
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc53, %.noexc
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.p ], [ %.sroa.3, %.noexc ], [ %.sroa.3, %.noexc53 ]
  %.sink.i = phi ptr [ %i.bg, %bb.p ], [ null, %.noexc ], [ null, %.noexc53 ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !285, !noalias !288
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not46 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !298, !noalias !299, !noundef !6 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i55, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr %i.ay, align 8, !alias.scope !298, !noalias !299, !noundef !6 ; 2 uses
  %i.bl = load i64, ptr %i.ba, align 8, !alias.scope !298, !noalias !299, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !296
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !296
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bk, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !296
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !296
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bj, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !296
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bk, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !296
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.t, %bb.s
  %.sink19.i.i = phi i64 [ 1, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bl, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !296
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bm, align 8, !noalias !296
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bn, align 8, !noalias !296
  %i.bo = invoke { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.am

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  %3 = extractvalue { ptr, ptr } %i.bo, 0         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.r, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs2Bxje7pdMIr_13libp2p_server.exit
  %.merged.i85 = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.r ], [ %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs2Bxje7pdMIr_13libp2p_server.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i85, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs2Bxje7pdMIr_13libp2p_server.exit, %bb.u
  %i.bp = load i64, ptr %i.ba, align 8, !noundef !6
  %i.bq = load i64, ptr %i.au, align 8, !range !211, !noundef !6
  %.sroa.065.0.copyload = load i64, ptr %2, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  %i.br = icmp ult i64 %.sroa.567.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.br)
  %.idx = mul nuw nsw i64 %.sroa.567.0.copyload, 80
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 %.idx
  %i.bt = icmp ult i64 %i.bp, %i.bq
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.466.0.copyload, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.466.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.065.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bv = icmp eq i64 %.sroa.567.0.copyload, 0
  br i1 %i.bv, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.x

bb.w:                                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.al

bb.x:                                             ; preds = %.lr.ph, %bb.ak
  %i.by = phi ptr [ %.sroa.466.0.copyload, %.lr.ph ], [ %i.cm, %bb.ak ] ; 2 uses
  %.sroa.07.079 = phi i8 [ %i.bu, %.lr.ph ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !300, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.by, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
          to label %bb.ac unwind label %bb.w

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.ak, %bb.v
  %.sroa.07.0.lcssa = phi i8 [ %i.bu, %bb.v ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ca = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.ca, label %default.unreachable82 [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.cb = trunc nuw i8 %.sroa.07.0.lcssa to i1
  %i.cc = load i64, ptr %i.t, align 8
  %i.cd = add i64 %i.cc, 1
  %.sroa.011.0 = select i1 %i.cb, i64 0, i64 %i.cd ; 2 uses
  %i.ce = load i64, ptr %i.at, align 8, !range !211, !noundef !6
  %.not48 = icmp uge i64 %.sroa.011.0, %i.ce
  %spec.select52 = zext i1 %.not48 to i64
  br label %bb.aa

bb.z:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.cf = xor i8 %.sroa.07.0.lcssa, 1
  %.50 = zext nneg i8 %i.cf to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, %bb.z
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.y ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ 0, %bb.z ]
  %.sroa.010.0 = phi i64 [ %spec.select52, %bb.y ], [ %i.ca, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ %.50, %bb.z ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.0.2 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server.exit ], [ true, %bb.aa ]
  ret i1 %.sroa.0.2

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
          to label %bb.ad unwind label %bb.w

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ae unwind label %bb.w

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = load ptr, ptr %i.g, align 8, !noundef !6
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %bb.ag
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.w      ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cj = invoke noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aj unwind label %bb.w

bb.aj:                                            ; preds = %bb.ai
  %i.ck = icmp slt i8 %i.cj, 0
  %spec.select = select i1 %i.ck, i8 1, i8 %.sroa.07.079
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.sroa.07.1 = phi i8 [ %.sroa.07.079, %bb.af ], [ %spec.select, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !305, !noalias !303, !nonnull !6, !noundef !6
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !305, !noalias !303, !nonnull !6, !noundef !6 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.x

bb.al:                                            ; preds = %bb.w, %bb.am
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.am:                                            ; preds = %.invoke, %bb.o, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i, %bb.g, %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #37
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %i.f, align 8, !noundef !6
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  store ptr %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load <2 x i64>, ptr %i.p, align 8
  store <2 x i64> %i.s, ptr %i.r, align 8
  %i.t = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load i32, ptr %i.v, align 8, !range !284, !noundef !6 ; 3 uses
  %i.x = icmp ne i32 %i.w, 1000000001
  call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i32 %i.w, -1000000000
  %i.z = icmp samesign ugt i32 %i.w, 999999999
  %narrow = select i1 %i.z, i32 %i.y, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

default.unreachable56:                            ; preds = %.critedge
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.ad = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 1000000004, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !211, !noundef !6 ; 2 uses
  %i.aj = add i64 %i.ai, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load ptr, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.ak, null                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.am, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ao, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.d, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ak, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ak, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.aq = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef range(i64 0, -1) %i.aj), !noalias !307
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h
  %i.ar = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !307 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !310, !noalias !307, !noundef !6
  %i.av = add i64 %i.au, %i.ai
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !310, !noalias !307
  store ptr %i.as, ptr %.sroa.3, align 8, !alias.scope !307, !noalias !310
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sink.i = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !307, !noalias !310
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  br i1 %.not44, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !320, !noalias !321, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.al, align 8, !alias.scope !320, !noalias !321, !noundef !6 ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !alias.scope !320, !noalias !321, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !318
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ax, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.aw, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ax, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.k, %bb.j
  %.sink19.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !318
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.az, align 8, !noalias !318
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.ba, align 8, !noalias !318
  %i.bb = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !318 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  br label %.critedge

.critedge:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = load i64, ptr %i.an, align 8, !noundef !6
  %i.bd = load i64, ptr %i.ah, align 8, !range !211, !noundef !6
  %i.be = icmp uge i64 %i.bc, %i.bd               ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.bf, label %default.unreachable56 [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %.critedge
  %i.bg = load i64, ptr %i.i, align 8
  %i.bh = add i64 %i.bg, 1
  %.sroa.011.0 = select i1 %i.be, i64 %i.bh, i64 0 ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !range !211, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.bi
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %.47 = zext i1 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.l ], [ undef, %.critedge ], [ 0, %bb.m ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.l ], [ %i.bf, %.critedge ], [ %.47, %bb.m ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_5chain5ChainINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerEB30_ENCINvMs0_NtBb_9behaviourINtB44_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3X_s_0EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [112 x i8], align 8               ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.r, 2
  br i1 %i.t, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
  %i.w = load ptr, ptr %i.p, align 8, !noundef !6
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ac, ptr %i.ab, align 8
  %i.ad = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !range !284, !noundef !6 ; 3 uses
  %i.ah = icmp ne i32 %i.ag, 1000000001
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nsw i32 %i.ag, -1000000000
  %i.aj = icmp samesign ugt i32 %i.ag, 999999999
  %narrow = select i1 %i.aj, i32 %i.ai, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.sink.split

default.unreachable63:                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.an = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.ao = extractvalue { ptr, ptr } %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  store i32 1000000004, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !211, !noundef !6 ; 2 uses
  %i.at = add i64 %i.as, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.au = load ptr, ptr %i.v, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.au, null                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.aw, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ay, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.m, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.au, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.au, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ba = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef range(i64 0, -1) %i.at), !noalias !322
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h
  %i.bb = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m), !noalias !322 ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load i64, ptr %i.az, align 8, !alias.scope !325, !noalias !322, !noundef !6
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.az, align 8, !alias.scope !325, !noalias !322
  store ptr %i.bc, ptr %.sroa.3, align 8, !alias.scope !322, !noalias !325
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sink.i = phi ptr [ %i.bd, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !322, !noalias !325
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  %i.bg = load ptr, ptr %i.v, align 8, !alias.scope !335, !noalias !336, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.av, align 8, !alias.scope !335, !noalias !336, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %i.ax, align 8, !alias.scope !335, !noalias !336, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !333
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bg, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !333
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bh, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !333
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !333
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bg, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !333
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bh, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !333
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.k, %bb.l
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !333
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bj, align 8, !noalias !333
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bk, align 8, !noalias !333
  %i.bl = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !333
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not45 = icmp eq ptr %i.bm, null
  br i1 %.not45, label %bb.m, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  %.merged.i = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.j ], [ %i.bm, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bn = load i64, ptr %i.ax, align 8, !noundef !6
  %i.bo = load i64, ptr %i.ar, align 8, !range !211, !noundef !6
  %i.bp = icmp ult i64 %i.bn, %i.bo
  %i.bq = zext i1 %i.bp to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bs = call fastcc noundef align 8 ptr @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB10_ENtNtNtB9_6traits8iterator8Iterator4findQNCINvMs0_NtB1u_9behaviourINtB34_9BehaviourNtNtNtNtB1u_6record5store6memory11MemoryStoreE10discoveredBO_E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #36 ; 2 uses
  %.not.i5258 = icmp eq ptr %i.bs, null
  br i1 %.not.i5258, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.u
  %i.bu = phi ptr [ %i.bs, %.lr.ph ], [ %i.ch, %bb.u ]
  %.sroa.07.059 = phi i8 [ %i.bq, %.lr.ph ], [ %.sroa.07.1, %bb.u ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bw = load ptr, ptr %i.g, align 8, !noundef !6
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.s, label %bb.t

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.u, %bb.m
  %.sroa.07.0.lcssa = phi i8 [ %i.bq, %bb.m ], [ %.sroa.07.1, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.by = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.by, label %default.unreachable63 [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.bz = trunc nuw i8 %.sroa.07.0.lcssa to i1
  %i.ca = load i64, ptr %i.s, align 8
  %i.cb = add i64 %i.ca, 1
  %.sroa.011.0 = select i1 %i.bz, i64 0, i64 %i.cb ; 2 uses
  %i.cc = load i64, ptr %i.aq, align 8, !range !211, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.cc
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.cd = xor i8 %.sroa.07.0.lcssa, 1
  %.47 = zext nneg i8 %i.cd to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, %bb.p
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.o ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ 0, %bb.p ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.o ], [ %i.by, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ %.47, %bb.p ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.q ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
  %i.ce = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  %i.cg = icmp slt i8 %i.cf, 0
  %spec.select = select i1 %i.cg, i8 1, i8 %.sroa.07.059
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.07.1 = phi i8 [ %.sroa.07.059, %bb.s ], [ %spec.select, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ch = call fastcc noundef align 8 ptr @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB10_ENtNtNtB9_6traits8iterator8Iterator4findQNCINvMs0_NtB1u_9behaviourINtB34_9BehaviourNtNtNtNtB1u_6record5store6memory11MemoryStoreE10discoveredBO_E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(32) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #36, !noalias !337 ; 2 uses
  %.not.i52 = icmp eq ptr %i.ch, null
  br i1 %.not.i52, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerENCINvMs0_NtBb_9behaviourINtB3E_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3x_s_0EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [112 x i8], align 8               ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.r, 2
  br i1 %i.t, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = load ptr, ptr %i.o, align 8, !noundef !6
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ac, ptr %i.ab, align 8
  %i.ad = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !range !284, !noundef !6 ; 3 uses
  %i.ah = icmp ne i32 %i.ag, 1000000001
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nsw i32 %i.ag, -1000000000
  %i.aj = icmp samesign ugt i32 %i.ag, 999999999
  %narrow = select i1 %i.aj, i32 %i.ai, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.sink.split

default.unreachable86:                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.an = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.ao = extractvalue { ptr, ptr } %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  store i32 1000000004, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !211, !noundef !6 ; 2 uses
  %i.at = add i64 %i.as, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.au = load ptr, ptr %i.v, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.au, null                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.aw, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ay, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.l, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.au, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.au, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ba = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l, i64 noundef range(i64 0, -1) %i.at), !noalias !340
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h
  %i.bb = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l), !noalias !340 ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load i64, ptr %i.az, align 8, !alias.scope !343, !noalias !340, !noundef !6
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.az, align 8, !alias.scope !343, !noalias !340
  store ptr %i.bc, ptr %.sroa.3, align 8, !alias.scope !340, !noalias !343
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sink.i = phi ptr [ %i.bd, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !340, !noalias !343
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !351
  %i.bg = load ptr, ptr %i.v, align 8, !alias.scope !353, !noalias !354, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %i.av, align 8, !alias.scope !353, !noalias !354, !noundef !6 ; 2 uses
  %i.bi = load i64, ptr %i.ax, align 8, !alias.scope !353, !noalias !354, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !351
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bg, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !351
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bh, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !351
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !351
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bg, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !351
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bh, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !351
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.k, %bb.l
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !351
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bj, align 8, !noalias !351
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bk, align 8, !noalias !351
  %i.bl = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not45 = icmp eq ptr %i.bm, null
  br i1 %.not45, label %bb.m, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  %.merged.i = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.j ], [ %i.bm, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bn = load i64, ptr %i.ax, align 8, !noundef !6
  %i.bo = load i64, ptr %i.ar, align 8, !range !211, !noundef !6
  %i.bp = icmp ult i64 %i.bn, %i.bo
  %i.bq = zext i1 %i.bp to i8
  %.sroa.055.0.copyload = load ptr, ptr %2, align 8, !alias.scope !355
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !355, !nonnull !6, !noundef !6
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.556.0.copyload = load ptr, ptr %.sroa.556.0..sroa_idx, align 8, !alias.scope !355
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.sroa.054.0 = phi ptr [ %.sroa.055.0.copyload, %bb.m ], [ %i.bu, %bb.aa ]
  %.sroa.07.0 = phi i8 [ %i.bq, %bb.m ], [ %.sroa.07.1, %bb.aa ] ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, %bb.n
  %i.bs = phi ptr [ %i.bu, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.sroa.054.0, %bb.n ] ; 5 uses
  %i.bt = icmp eq ptr %i.bs, %.sroa.4.0.copyload
  br i1 %i.bt, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 112 ; 2 uses
  %i.bv = load ptr, ptr %.sroa.556.0.copyload, align 8, !noalias !359, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !368, !noalias !373, !noundef !6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !371, !noalias !374, !noundef !6
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !378, !noalias !373, !noundef !6 ; 3 uses
  %i.ce = zext i8 %i.cd to i64                    ; 2 uses
  %i.cf = icmp ult i8 %i.cd, 65
  br i1 %i.cf, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i, label %bb.r, !prof !261

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ce, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41, !noalias !379
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !383, !noalias !374, !noundef !6 ; 3 uses
  %i.ci = icmp ult i8 %i.ch, 65
  br i1 %i.ci, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit1.i.i.i.i.i.i, label %bb.s, !prof !261

bb.s:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %i.cj = zext i8 %i.ch to i64
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41, !noalias !384
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit1.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i.i.i.i
  %i.ck = icmp eq i8 %i.cd, %i.ch
  br i1 %i.ck, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.t

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit1.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 8 dereferenceable(80) %i.bw, ptr nonnull readonly align 8 dereferenceable(80) %i.bv, i64 %i.ce), !alias.scope !385, !noalias !359
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.t

bb.t:                                             ; preds = %bb.p, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit1.i.i.i.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtBX_9BehaviourNtNtNtNtBZ_6record5store6memory11MemoryStoreE10discoveredINtNtNtBb_5slice4iter4IterNtNtBZ_8protocol7KadPeerEE0INtB7_5FnMutTRRB3a_EE8call_mutCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.bw, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = load ptr, ptr %i.g, align 8, !noundef !6
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.y, label %bb.z

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.o
  %i.cn = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.cn, label %default.unreachable86 [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.co = trunc nuw i8 %.sroa.07.0 to i1
  %i.cp = load i64, ptr %i.s, align 8
  %i.cq = add i64 %i.cp, 1
  %.sroa.011.0 = select i1 %i.co, i64 0, i64 %i.cq ; 2 uses
  %i.cr = load i64, ptr %i.aq, align 8, !range !211, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.cr
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.w

bb.v:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  %i.cs = xor i8 %.sroa.07.0, 1
  %.47 = zext nneg i8 %i.cs to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit, %bb.v
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.u ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ 0, %bb.v ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.u ], [ %i.cn, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit ], [ %.47, %bb.v ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.w ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
  %i.ct = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cu = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
  %i.cv = icmp slt i8 %i.cu, 0
  %spec.select = select i1 %i.cv, i8 1, i8 %.sroa.07.0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.07.1 = phi i8 [ %.sroa.07.0, %bb.y ], [ %spec.select, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter11with_configINtNtBb_7kbucket11ClosestIterINtNtB1y_3key3KeyNtNtBb_6record3KeyEIB1Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBb_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB2y_B3s_E12closest_keysB1Y_E0B2y_EB1Y_ECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2496) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2512 x i8], align 8              ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB4_8KeyBytesINtNtCskKLDkoKarTP_4core7convert4FromINtB4_3KeyNtNtB8_6record3KeyEE4fromCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2496) %i.a, ptr noundef nonnull align 8 dereferenceable(2496) %3, i64 2496, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2496
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2504
  store i64 20, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB19_B20_EE9from_iterINtNtNtB2J_8adapters4take4TakeINtNtB42_3map3MapINtB1d_11ClosestIterINtB1b_3KeyNtNtB1f_6record3KeyEIB53_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1f_9addresses9AddressesNCINvMs1_B1d_INtB1d_13KBucketsTableB5x_B6r_E12closest_keysB52_E0B5x_ENCINvMs_B22_NtB22_16ClosestPeersIter11with_configB4I_B52_E0EEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2512) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %3, align 8, !range !5, !alias.scope !386, !noundef !6
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_ENtNtNtBN_3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(2496) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
end_hunk_0
