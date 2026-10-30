Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http2_server_transport?download=true
inline.NumInlined: 18827
inline.NumDeleted: 9060
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN9grpc_core5http221IncomingMetadataState11UpdateStateERKNS_22Http2ContinuationFrameE:bb.a
.critedge:                                        ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !644    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !541  ; 2 uses
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.e, !prof !179

bb.d:                                             ; preds = %.critedge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !645, !range !406, !noundef !407
  %i.j = xor i8 %i.i, 1
  store i8 %i.j, ptr %0, align 4, !tbaa !540
  ret void

bb.e:                                             ; preds = %.critedge
  %i.k = zext i32 %i.d to i64
  %i.l = zext i32 %i.f to i64
  %i.m = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.328)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.239, i32 noundef 125, ptr noundef nonnull %i.m) #47
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit12 unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit12: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46
  unreachable
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN9grpc_core14promise_detail11PromiseLikeINS0_6TrySeqINS2_INS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSI_8ReadLoopEvENK3$_0clEvEUlvE_EEEvED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1333
  switch i8 %i.b, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit" [
    i8 0, label %bb.b
    i8 1, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !690
  switch i8 %i.d, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit" [
    i8 0, label %bb.c
    i8 1, label %bb.h
    i8 2, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 8, !tbaa !687, !range !406, !noundef !407
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !688  ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 -1 acq_rel, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i", label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", !prof !166

bb.f:                                             ; preds = %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = atomicrmw add ptr %i.l, i64 -1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i", label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", !prof !166

bb.h:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !658 ; 4 uses
  %i.p = icmp ugt ptr %.val.i.i.i, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit"

bb.i:                                             ; preds = %bb.h
  %i.q = atomicrmw add ptr %.val.i.i.i, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit"

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !664
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i)
          to label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit" unwind label %bb.k, !inline_history !12

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #46
  unreachable

bb.l:                                             ; preds = %bb.b
  %.val1.i.i.i = load i8, ptr %0, align 8, !tbaa !687, !range !406, !noundef !407
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !688 ; 5 uses
  %i.x = trunc nuw i8 %.val1.i.i.i to i1
  %.not.i.i.i.i.i.i3.i.i.i = icmp eq ptr %.val2.i.i.i, null ; 2 uses
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i.i3.i.i.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i", label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", !prof !166

bb.o:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i.i3.i.i.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i", label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", !prof !166

"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i": ; preds = %bb.p, %bb.n, %bb.g, %bb.e
  %.val2.sink6.i.i.i = phi ptr [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %.val2.i.i.i, %bb.p ], [ %.val2.i.i.i, %bb.n ] ; 2 uses
  %i.ae = load ptr, ptr %.val2.sink6.i.i.i, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(336) %.val2.sink6.i.i.i) #44, !inline_history !3351
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit"

bb.q:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i8, ptr %i.ah, align 8, !tbaa !1335
  %i.ai = add i8 %.val1.i, 1
  %switch.i.i.i.i = icmp ult i8 %i.ai, 2
  %i.aj = trunc i64 %.val.i to i1
  %or.cond.i.i.i = select i1 %switch.i.i.i.i, i1 true, i1 %i.aj, !prof !1336
  br i1 %or.cond.i.i.i, label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit", label %bb.r, !prof !1336

bb.r:                                             ; preds = %bb.q
  %i.ak = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit" unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #46
  unreachable

"_ZN9grpc_core14promise_detail6TrySeqINS1_INS_3MapINS2_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS4_4ReadEmEUlvE0_EEZNS4_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSA_INS_5SliceEEEE_EEJZNSH_22ReadAndProcessOneFrameEvE3$_1ZNSH_22ReadAndProcessOneFrameEvE3$_0ZNSH_22ReadAndProcessOneFrameEvE3$_2EEEJZZNSH_8ReadLoopEvENK3$_0clEvEUlvE_EED2Ev.exit": ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.m, %bb.n, %bb.o, %bb.p, %"_ZN9grpc_core14promise_detail8SeqStateINS0_12TrySeqTraitsENS_3MapINS3_INS_2IfIbZNS_15PromiseEndpoint4ReadEmEUlvE_ZNS5_4ReadEmEUlvE0_EEZNS5_9ReadSliceEmEUlON4absl12lts_202505128StatusOrINS_11SliceBufferEEEE_EEZNS_5http220Http2ServerTransport17EndpointReadSliceEmEUlONSB_INS_5SliceEEEE_EEJZNSI_22ReadAndProcessOneFrameEvE3$_1ZNSI_22ReadAndProcessOneFrameEvE3$_0ZNSI_22ReadAndProcessOneFrameEvE3$_2EED2Ev.exit.sink.split.i.i.i", %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core8ContinueEN4absl12lts_202505126StatusEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1335
  %.off = add i8 %i.b, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.b, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core8ContinueEN4absl12lts_202505126StatusEEE8_M_resetEv.exit, !prof !475

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !408    ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core8ContinueEN4absl12lts_202505126StatusEEE8_M_resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.c to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core8ContinueEN4absl12lts_202505126StatusEEE8_M_resetEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #46
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core8ContinueEN4absl12lts_202505126StatusEEE8_M_resetEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core5Party15ParticipantImplINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEZNS8_15SpawnInfallibleISO_EEvNS_13RefCountedPtrIS0_EESt17basic_string_viewIcSt11char_traitsIcEESL_EUlSH_E_E22PollParticipantPromiseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.grpc_core::Waker::WakeableAndArg", align 8 ; 4 uses
  %2 = alloca %"class.grpc_core::Waker", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !735, !range !406, !noundef !407
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge, label %3

._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1338
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit

3:                                                ; preds = %bb.a
  %4 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !705 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load i8, ptr %5, align 8, !tbaa !709, !range !406, !noundef !407
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb.b, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvEC2EOSP_.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvEC2EOSP_.exit: ; preds = %3
  %8 = inttoptr i64 %4 to ptr
  store i8 1, ptr %i.a, align 8, !tbaa !735
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit

bb.b:                                             ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %10 = load ptr, ptr %9, align 8, !tbaa !647
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %11, align 8, !tbaa !443
  %i.e = inttoptr i64 %4 to ptr
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %10, ptr %12, align 8, !tbaa !647
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %13, align 8, !tbaa !443
  store i8 1, ptr %i.a, align 8, !tbaa !735
  br label %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit: ; preds = %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge, %bb.b, %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvEC2EOSP_.exit
  %14 = phi ptr [ %.pre, %._ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit_crit_edge ], [ %i.e, %bb.b ], [ %8, %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvEC2EOSP_.exit ] ; 2 uses
  %i.f = load i8, ptr %14, align 2, !tbaa !837, !range !406, !noundef !407
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread.thread, label %bb.c

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread.thread: ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !709, !range !406, !noundef !407
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.x, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i1.i

bb.c:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEvED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i13, label %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTHN9grpc_core8Activity19g_current_activity_E()
  br label %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i

_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i: ; preds = %bb.d, %bb.c
  %i.l = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E) ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !161
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i16 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m), !inline_history !77
  %i.r = load i16, ptr %i.k, align 2, !tbaa !838
  %i.s = or i16 %i.r, %i.q
  store i16 %i.s, ptr %i.k, align 2, !tbaa !838
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !709, !range !406, !noundef !407
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ServerTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit

_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ServerTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit: ; preds = %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i
  store i8 1, ptr %i.u, align 8, !tbaa !709
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !3367, !noalias !3368 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3384
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !647, !noalias !3368 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !3369 ; 0 uses
  %i.ad = ptrtoint ptr %i.y to i64
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !647
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !443
  br label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core14promise_detail11PromiseLikeINS_3MapIZNS_20SecurityFrameHandler27WaitForSecurityFrameSendingEvEUlvE_ZZNS_5http220Http2ServerTransport17SecurityFrameLoopEvENKUlvE_clEvEUlNS_5EmptyEE_EEvED2Ev.exit, %_ZN9grpc_core19IntraActivityWaiter7pendingEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, %bb.e
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !647, !noalias !3370 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 185
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !736, !noalias !3370
  switch i8 %i.ak, label %bb.k [
    i8 3, label %.critedge48
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al), !noalias !3370
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !647, !noalias !3370 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !425, !noalias !3370
  %.not.not.i = icmp eq i64 %i.ao, 0              ; 2 uses
  br i1 %.not.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 185
  store i8 1, ptr %i.ap, align 1, !tbaa !736, !noalias !3370
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i unwind label %bb.j, !noalias !3370

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #46, !noalias !3370
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit.i:      ; preds = %bb.i
  br i1 %.not.not.i, label %bb.k, label %.critedge48

bb.k:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44, !noalias !3370
  br i1 %.not.i.i.i.i.i.i13, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTHN9grpc_core8Activity19g_current_activity_E(), !noalias !3370
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i: ; preds = %bb.l, %bb.k
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !445, !noalias !3370 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !161, !noalias !3370
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !3370
  call void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Waker") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !3370, !inline_history !3360
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !647, !noalias !3370
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !448, !noalias !3370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !448, !noalias !3370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !448, !noalias !3370
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !449, !noalias !3370 ; 2 uses
  %i.az = load i16, ptr %i.ah, align 8, !tbaa !450, !noalias !3370
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !161, !noalias !3370
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !3370
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i16 noundef zeroext %i.az)
          to label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit unwind label %bb.m, !noalias !3370, !inline_history !9

bb.m:                                             ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #46, !noalias !3370
  unreachable

.critedge48:                                      ; preds = %bb.f, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.i
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !3372, !noalias !3370 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3384
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !647, !noalias !3370
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 185 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !736, !noalias !3370
  switch i8 %i.bj, label %bb.n [
    i8 1, label %_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i
    i8 3, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread
  ]

_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i: ; preds = %.critedge48
  store i8 2, ptr %i.bi, align 1, !tbaa !736, !noalias !3370
  br label %bb.n

bb.n:                                             ; preds = %.critedge48, %_ZN9grpc_core20SecurityFrameHandler25TriggerWriteSecurityFrameEv.exit.thread.i
  %i.bk = tail call noundef zeroext i1 @_ZN9grpc_core5http220Http2ServerTransport30TriggerWriteCycleOrHandleErrorENS_13DebugLocationE(ptr noundef nonnull align 8 dereferenceable(3424) %i.bf), !noalias !3370
  br i1 %i.bk, label %bb.o, label %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !647 ; 4 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i15, label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 acq_rel, align 8
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.q, label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit, !prof !166

bb.q:                                             ; preds = %bb.p
  tail call void @_ZNK9grpc_core11UnrefDeleteclIKNS_20SecurityFrameHandlerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
  br label %_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit

_ZN9grpc_core4PollISt7variantIJNS_8ContinueENS_5EmptyEEEED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !3367, !noalias !3373 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3384
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !647, !noalias !3373 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !3374 ; 0 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  store ptr %i.br, ptr %i.af, align 8, !tbaa !647
  store i64 %i.bu, ptr %i.ag, align 8, !tbaa !443
  br label %bb.f

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44, !noalias !3370
  br label %.critedge

_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread: ; preds = %bb.n, %.critedge48
  %.pre49 = load i8, ptr %i.a, align 8, !tbaa !735, !range !406
  %i.bv = trunc nuw i8 %.pre49 to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !709, !range !406, !noundef !407
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZN9grpc_core4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS6_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSC_EUlSF_E_EESA_EEclEv.exit.thread
  br i1 %i.by, label %bb.s, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !647 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i64 -1 acq_rel, align 8
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i, !prof !166

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNK9grpc_core11UnrefDeleteclIKNS_20SecurityFrameHandlerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
  br label %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i

_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core5Party15ParticipantImplINS_4RaceIJNS_3MapIZNS_5LatchIvE4WaitEvEUlvE_ZNS_5http220Http2ServerTransport20UntilTransportClosedINS_4LoopIZNS8_17SecurityFrameLoopEvEUlvE_Lb0EEETnNSt9enable_ifIXsr3stdE9is_same_vIDTclclsr3stdE7declvalIT_EEEENS_4PollINS_5EmptyEEEEEbE4typeELb1EEEDaOSE_EUlSH_E_EESC_EEEZNS8_15SpawnInfallibleISO_EEvNS_13RefCountedPtrIS0_EESt17basic_string_viewIcSt11char_traitsIcEESL_EUlSH_E_ED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN9grpc_core4RaceIJNS_4LoopIZNS_5http220Http2ServerTransport17SecurityFrameLoopEvEUlvE_Lb0EEEEED2Ev.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
end_hunk_0
