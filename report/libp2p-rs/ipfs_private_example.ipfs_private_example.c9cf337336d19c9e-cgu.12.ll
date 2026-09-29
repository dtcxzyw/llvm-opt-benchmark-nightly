Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.12?download=true
inline.NumInlined: 1807
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB6_23FullyNegotiatedOutboundINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperIB1l_IB1Q_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigEIB1Q_IB1l_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB8_15stream_protocol14StreamProtocolEB3C_EEEEIB1Q_B3C_EEIB1l_IB1l_uuEuEE9transposeCshke30g4Hb4g_20ipfs_private_example:bb.a
bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #46
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %1, align 8, !range !40, !noundef !8
  %.not = icmp eq i64 %i.i, -2
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.d
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB3b_5types8PeerKindEIBC_B2n_B2n_EEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(304) %1) #43
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(136) %i.j) #43
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs6b9j1MKPRPC_12libp2p_swarm7handler6selectINtB6_23FullyNegotiatedOutboundINtCscu2bAJ62uie_6either6EitherINtNtB8_7upgrade11SendWrapperNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigEIB1Q_IB1l_INtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB8_15stream_protocol14StreamProtocolEB3s_EEEIB1l_uuEE9transposeCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(312) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !28, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d, !prof !35

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e, !prof !34

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @41, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #46
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %1, align 8, !range !28, !noundef !8
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.d
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB2h_5types8PeerKindEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamB1v_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(144) %i.j) #43
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB2h_5types8PeerKindEECshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsjYje7j88m19_18asynchronous_codec6framed6FramedNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14GossipsubCodecENtNtB2h_5types8PeerKindEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5627, !noalias !5628, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5627, !noalias !5628, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(400) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit
    i64 0, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc3vec3VechEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 24                           ; 5 uses
  %or.cond = icmp ult i64 %1, 384307168202282326
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.l, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.l = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48, label %bb.l, !prof !44

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 384307168202282326
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5631
  store i64 0, ptr %i.a, align 8, !noalias !5631
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !5631
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5631
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5635, !noalias !5636, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5635, !noalias !5636, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit
    i64 0, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val71 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val71   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.j = icmp ult i64 %1, 3
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not45 = icmp eq i64 %i.c, %1
  br i1 %.not45, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.l, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit
  %or.cond66 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond66, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47, label %bb.l, !prof !44

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5639
  store i64 0, ptr %i.a, align 8, !noalias !5639
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5639
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshke30g4Hb4g_20ipfs_private_example.exit47 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5643, !noalias !5644, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5643, !noalias !5644, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(656) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit
    i64 0, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(656) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBL_7sharded8RegistryEj10_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.j = icmp ult i64 %1, 17
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.l, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48, label %bb.l, !prof !44

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5647
  store i64 0, ptr %i.a, align 8, !noalias !5647
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !5647
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5647
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtBG_7sharded8RegistryEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noalias !5654, !noundef !8 ; 7 uses
  %i.d = icmp ugt i64 %i.c, 1                     ; 3 uses
  br i1 %i.d, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !5654, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.f, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink12.i7, 0               ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 2 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.o, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit.i, !prof !34

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5655)
  %i.m = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8
  %.pre = load i64, ptr %i.n, align 8
  %i.q = select i1 %i.d, i64 %.pre, i64 %i.c      ; 5 uses
  %.sink12.i.i = select i1 %i.d, ptr %i.p, ptr %i.n ; 4 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 3 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41, !noalias !5655
  unreachable

bb.c:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit.i
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.r = shl nuw nsw i64 %i.l, 5                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.j, 288230376151711743
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.n, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.f
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i
  %or.cond67.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond67.i, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit48.i, label %bb.n, !prof !44

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5655
  %i.s = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef 8) #45, !noalias !5655 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.j

_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit48.i: ; preds = %bb.g
  %i.u = shl nuw nsw i64 %.sink.i.i, 5
  %i.v = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.u, i64 noundef 8, i64 noundef %i.r) #45 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.j, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.s, %bb.j ], [ %i.v, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !5655
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !5655
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !5655
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !5655
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit

bb.j:                                             ; preds = %bb.h
  %i.x = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %.sink12.i.i, i64 %i.x, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !5655
  %i.y = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink12.i.i, i64 %i.y, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !5655
  %or.cond.i.i = icmp ult i64 %i.c, 288230376151711744
  br i1 %or.cond.i.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.l, !prof !44

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5656
  store i64 0, ptr %i.a, align 8, !noalias !5656
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5656
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.k
  %i.z = shl nuw nsw i64 %.sink.i.i, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i.i, i64 noundef %i.z, i64 noundef 8) #45
  br label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit

bb.m:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit48.i, %bb.h
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.r) #46
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %_RINvCsczYENlYh6wI_8smallvec10deallocateNtCsbli3iz7XG76_9multiaddr9MultiaddrECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.d, %bb.i, %bb.e
  ret void

bb.o:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5660, !noalias !5661, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5660, !noalias !5661, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit
    i64 0, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdja_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATINtCscu2bAJ62uie_6either6EitherIBK_IBK_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBK_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2o_EEB2o_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.j = icmp ult i64 %1, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 6                    ; 4 uses
  %or.cond = icmp ult i64 %1, 144115188075855872
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.l, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit
  %or.cond67 = icmp ult i64 %i.c, 144115188075855872
  br i1 %or.cond67, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, label %bb.l, !prof !44

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.l = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 6
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 144115188075855872
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherIBD_IBD_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBD_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2h_EEB2h_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5683
  store i64 0, ptr %i.a, align 8, !noalias !5683
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5683
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherIBD_IBD_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBD_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2h_EEB2h_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherIBD_IBD_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBD_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2h_EEB2h_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherIBD_IBD_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBD_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2h_EEB2h_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateTINtCscu2bAJ62uie_6either6EitherIBD_IBD_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBD_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2h_EEB2h_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTINtCscu2bAJ62uie_6either6EitherIBF_IBF_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBF_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB2j_EEB2j_ENtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E21reserve_one_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5687, !noalias !5688, !noundef !8 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  br i1 %i.c, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5687, !noalias !5688, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.e, label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, !prof !42

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  %.sink12.i7 = phi i64 [ %i.e, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i64 %.sink12.i7, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i7, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.e, label %bb.b, !prof !34

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(336) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 -1, label %_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit
    i64 0, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsczYENlYh6wI_8smallvec10infallibleuECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit.thread, %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E6tripleCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E8try_growCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 6 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !34

bb.a:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecATReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEj8_E10triple_mutCshke30g4Hb4g_20ipfs_private_example.exit
  %i.j = icmp ult i64 %1, 9
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = mul i64 %1, 40                           ; 5 uses
  %or.cond = icmp ult i64 %1, 230584300921369396
  br i1 %or.cond, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.l, !prof !44

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit
  %i.l = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond65 = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond65, label %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, label %bb.l, !prof !44

bb.g:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.m = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #45 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.i

_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48: ; preds = %bb.f
  %i.o = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.k) #45 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.m, %bb.i ], [ %i.o, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %i.s = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.i = icmp ult i64 %i.c, 230584300921369396
  br i1 %or.cond.i, label %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.k, !prof !44

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5691
  store i64 0, ptr %i.a, align 8, !noalias !5691
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.t, align 8, !noalias !5691
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #41, !noalias !5691
  unreachable

_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48, %bb.g, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsczYENlYh6wI_8smallvec10deallocateTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsczYENlYh6wI_8smallvec12layout_arrayTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEECshke30g4Hb4g_20ipfs_private_example.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCs6b9j1MKPRPC_12libp2p_swarm10connection11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB1n_IB1n_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB1n_NtNtBv_15stream_protocol14StreamProtocolB34_EEB34_EEINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherIBr_IBr_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBr_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1N_EEB1N_EINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0), !noalias !5694 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherIBr_IBr_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIBr_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1N_EEB1N_EINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 1
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsc_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB15_IB15_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB15_NtNtB7_15stream_protocol14StreamProtocolB2M_EEB2M_EENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i64 } %i.c, 0
  %i.g = extractvalue { ptr, i64 } %i.a, 0
  %bcmp.i = tail call i32 @bcmp(ptr %i.g, ptr %i.f, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i, 0
  br label %_RNvXsc_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB15_IB15_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB15_NtNtB7_15stream_protocol14StreamProtocolB2M_EEB2M_EENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit

_RNvXsc_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB5_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB15_IB15_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB15_NtNtB7_15stream_protocol14StreamProtocolB2M_EEB2M_EENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5703)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5702, !noalias !5703, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5703, !noalias !5702, !noundef !8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5704)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !alias.scope !5705, !noalias !5703, !noundef !8 ; 3 uses
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = icmp ult i8 %i.g, 65
  br i1 %i.i, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.h, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #41, !noalias !5706
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5707)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i8, ptr %i.j, align 8, !alias.scope !5708, !noalias !5702, !noundef !8 ; 3 uses
  %i.l = icmp ult i8 %i.k, 65
  br i1 %i.l, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit1.i, label %bb.d, !prof !39

bb.d:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit.i
  %i.m = zext i8 %i.k to i64
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #41, !noalias !5709
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit1.i: ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit.i
  %i.n = icmp eq i8 %i.g, %i.k
  br i1 %i.n, label %bb.e, label %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit

bb.e:                                             ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit1.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 8 dereferenceable(80) %0, ptr nonnull readonly align 8 dereferenceable(80) %1, i64 %i.h), !alias.scope !5710
  %i.o = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit

_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit1.i, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.o, %bb.e ], [ false, %bb.a ], [ false, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCshke30g4Hb4g_20ipfs_private_example.exit1.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !8
  %.val1 = load i64, ptr %1, align 8, !noundef !8
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5715)
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !5714, !noalias !5715, !noundef !8 ; 2 uses
  %.sroa.33.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.33.0.i = load i64, ptr %.sroa.33.0.in.i, align 8, !alias.scope !5715, !noalias !5714, !noundef !8
  %i.a = icmp eq i64 %.sroa.3.0.i, %.sroa.33.0.i
  br i1 %i.a, label %bb.b, label %_RNvXs4_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5715, !noalias !5714, !nonnull !8
  %i.d = load i64, ptr %1, align 8, !range !15, !alias.scope !5715, !noalias !5714, !noundef !8
  %.sroa.02.0.idx.i = shl nuw nsw i64 %i.d, 4
  %.sroa.02.0.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.02.0.idx.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5714, !noalias !5715, !nonnull !8
  %i.g = load i64, ptr %0, align 8, !range !15, !alias.scope !5714, !noalias !5715, !noundef !8
  %.sroa.01.0.idx.i = shl nuw nsw i64 %i.g, 4
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.0.idx.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.01.0.i, ptr nonnull %.sroa.02.0.i, i64 %.sroa.3.0.i), !noalias !5716
  %i.h = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs4_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs4_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs9Bqz0CSWZZv_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !32, !noundef !8
  %.val1 = load i64, ptr %1, align 8, !range !32, !noundef !8
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs9Bqz0CSWZZv_12tracing_core8callsite10IdentifierINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %.val1 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = icmp eq ptr %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtB2_11SendWrapperIBF_IB1H_INtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtBJ_6denied13DeniedUpgradeEEIB1H_IBF_INtNtBJ_5ready12ReadyUpgradeNtNtB4_15stream_protocol14StreamProtocolEB4g_EEEEIB1H_B4g_EENtB2_15UpgradeInfoSend13protocol_infoCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5726
  call void @_RNvXs1_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtB5_11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeIBI_INtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtB15_6denied13DeniedUpgradeEEIBI_IB11_INtNtB15_5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolEB4f_EEEENtB15_11UpgradeInfo13protocol_infoCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %1), !noalias !5727
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_IB4_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1I_EEB1I_E4Left0Cshke30g4Hb4g_20ipfs_private_example, ptr %i.c, align 8, !alias.scope !5728, !noalias !5729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5726
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RNvXs1_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtB5_11SendWrapperINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolEENtB15_11UpgradeInfo13protocol_infoCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6selectINtB4_13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBP_IB1a_INtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtB6_6denied13DeniedUpgradeEEIB1a_IBP_INtNtB6_5ready12ReadyUpgradeNtNtB1e_15stream_protocol14StreamProtocolEB4i_EEEEIB1a_B4i_EENtB6_11UpgradeInfo13protocol_infoCshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.c, !noalias !5727

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_5chain5ChainIBC_INtCscu2bAJ62uie_6either6EitherIBC_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdEFB2U_EIB1y_B2U_ReEEIBC_INtNtNtBI_7sources5empty5EmptyB45_EFB45_EB3W_EEFB3W_EIB1y_B3W_IB1y_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB5i_EEEIBC_IB1a_IBC_INtNtB4i_4once4OnceB5i_EFB5i_EB5d_EB6B_EFB5d_EB54_EEFB54_EIB1y_B54_B5i_EEECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(128) %i.b) #43
          to label %bb.b unwind label %bb.d, !noalias !5727

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !5727
  unreachable

_RNvXs_NtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6selectINtB4_13SelectUpgradeINtNtCs6b9j1MKPRPC_12libp2p_swarm7upgrade11SendWrapperIBP_IB1a_INtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtB6_6denied13DeniedUpgradeEEIB1a_IBP_INtNtB6_5ready12ReadyUpgradeNtNtB1e_15stream_protocol14StreamProtocolEB4i_EEEEIB1a_B4i_EENtB6_11UpgradeInfo13protocol_infoCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5726
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5726
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_RNcNtINtCscu2bAJ62uie_6either6EitherIB4_IB4_NtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol10ProtocolIdReEIB4_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolB1I_EEB1I_E5Right0Cshke30g4Hb4g_20ipfs_private_example, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5730
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtB2_11SendWrapperINtCscu2bAJ62uie_6either6EitherNtNtCs1pSuea8KFR7_16libp2p_gossipsub8protocol14ProtocolConfigNtNtBJ_6denied13DeniedUpgradeEEIB1H_IBF_INtNtBJ_5ready12ReadyUpgradeNtNtB4_15stream_protocol14StreamProtocolEB47_EEENtB2_15UpgradeInfoSend13protocol_infoCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5744
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
end_hunk_1
