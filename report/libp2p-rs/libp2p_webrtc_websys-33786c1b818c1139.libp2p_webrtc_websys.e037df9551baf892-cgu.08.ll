Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc_websys-33786c1b818c1139.libp2p_webrtc_websys.e037df9551baf892-cgu.08?download=true
inline.NumInlined: 146
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxedINtB4_4WrapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys10connection10ConnectionENtB6_11StreamMuxer12poll_inboundB11_:bb.a
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_Cs2BiPHMJCe0P_12send_wrapperINtB5_11SendWrapperINtNtCs6NOj3pT9ZIN_19libp2p_webrtc_utils6stream6StreamNtNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream17poll_data_channel15PollDataChannelEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamEBF_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamEBF_.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.k

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamE3newBI_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.i, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.m, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @34, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamE3newBI_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxedINtB4_4WrapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys10connection10ConnectionENtB6_11StreamMuxer13poll_outboundB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [224 x i8], align 8               ; 4 uses
  %i.c = alloca [224 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtCsjfvwIE9w8og_20libp2p_webrtc_websys10connectionNtB5_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer13poll_outbound(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load i8, ptr %i.d, align 8, !range !287, !noundef !5
  switch i8 %i.e, label %bb.d [
    i8 -2, label %bb.b
    i8 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.622.0..sroa_idx, i64 80, i1 false)
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.420.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.019.0.copyload, ptr %i.a, align 8
  store <2 x ptr> %i.f, ptr %.sroa.5.0..sroa_idx3, align 8
  %i.g = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorEB1m_(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %.sroa.426.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !291
  %i.i = tail call noundef align 8 dereferenceable_or_null(224) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 224, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !291 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamE3newBI_.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 224) #23
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_Cs2BiPHMJCe0P_12send_wrapperINtB5_11SendWrapperINtNtCs6NOj3pT9ZIN_19libp2p_webrtc_utils6stream6StreamNtNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream17poll_data_channel15PollDataChannelEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamEBF_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamEBF_.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.k

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamE3newBI_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.i, ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.m, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @34, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamE3newBI_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core6muxing5boxedINtB4_4WrapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys10connection10ConnectionENtB6_11StreamMuxer4pollB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtCsjfvwIE9w8og_20libp2p_webrtc_websys10connectionNtB5_10ConnectionNtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer4poll(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.c = load i8, ptr %i.b, align 8, !range !294, !noundef !5
  switch i8 %i.c, label %bb.c [
    i8 -2, label %bb.b
    i8 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  %i.d = call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorEB1m_(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCshuexzQAPOo_12libp2p_noise2io6OutputNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys6stream6StreamEENtB35_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB3K_(ptr dead_on_unwind noalias nofree noundef writable sret([648 x i8]) align 8 captures(address) dereferenceable(648) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !29, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.c(ptr noalias nofree noundef nonnull sret([648 x i8]) align 8 captures(address) dereferenceable(648) %0, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys10connection10ConnectionENtNtB34_5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollB34_(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !29, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.c(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %0, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #27
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 80) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = add i64 %i.b, 17                         ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !295

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !296
  %i.l = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !296 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !296
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !296
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @36, i64 32, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %i.h, %bb.g ], [ %.pre, %bb.f ]
  %.sroa.5.0 = phi i64 [ %i.b, %bb.g ], [ %.sroa.7.0.ph.i, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.p, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.q = load ptr, ptr %1, align 8, !alias.scope !301, !noalias !304, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.q, i64 %.pre-phi, i1 false), !noalias !306
  %i.r = xor i64 %i.b, -1
  %i.s = getelementptr [80 x i8], ptr %i.q, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = xor i64 %.sroa.5.0, -1
  %i.u = getelementptr [80 x i8], ptr %.sroa.0.0, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = mul i64 %.sroa.5.0, 80
  %i.w = add i64 %i.v, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.s, i64 %i.w, i1 false), !noalias !306
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !301, !noalias !304
  store <2 x i64> %i.y, ptr %.sroa.93.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtCsh4z5MoDg5zc_11prost_codec5ErrorE4fromCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtCsh4z5MoDg5zc_11prost_codec5ErrorE3newCsjfvwIE9w8og_20libp2p_webrtc_websys.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsh4z5MoDg5zc_11prost_codec5ErrorECsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtCsh4z5MoDg5zc_11prost_codec5ErrorE3newCsjfvwIE9w8og_20libp2p_webrtc_websys.exit: ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @38, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsbZN1VVVQjZP_5prost5error16UnknownEnumValueE4fromCsjfvwIE9w8og_20libp2p_webrtc_websys(i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.a = tail call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #22 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #23
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i32 %0, ptr %i.a, align 4
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @40, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorE4fromB2o_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !307
  %i.a = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !307 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorE3newBI_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys5error5ErrorE3newBI_.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @42, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjfvwIE9w8og_20libp2p_webrtc_websys.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 80                       ; 2 uses
  %i.d = add i64 %i.c, 80                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjfvwIE9w8og_20libp2p_webrtc_websys.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub i64 -80, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #22
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsjfvwIE9w8og_20libp2p_webrtc_websys.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtCsbZN1VVVQjZP_5prost5errorNtB5_16UnknownEnumValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsh4z5MoDg5zc_11prost_codec5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsh4z5MoDg5zc_11prost_codec5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsh4z5MoDg5zc_11prost_codec5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @46, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsbZN1VVVQjZP_5prost5error16UnknownEnumValueNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @45, i64 40 }
}
end_hunk_0
