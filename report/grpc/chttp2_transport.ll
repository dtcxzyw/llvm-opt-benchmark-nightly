inline.NumInlined: 14543
inline.NumDeleted: 7137
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL26init_keepalive_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_:bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !512
  %.not.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.not.i.i, label %.critedge.i.i, label %bb.b, !prof !350

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.14, i32 noundef 3318, ptr noundef nonnull @.str.461) #45
          to label %.noexc.i unwind label %bb.ai, !inline_history !3149

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.c, !inline_history !3149

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %.noexc.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #42, !inline_history !3149
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #42, !inline_history !3149
  unreachable

.critedge.i.i:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 3 uses
  %i.f = invoke noundef zeroext i1 @_ZN17grpc_event_engine12experimentalneERKNS0_11EventEngine10TaskHandleES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) @_ZN17grpc_event_engine12experimental11EventEngine10TaskHandle8kInvalidE)
          to label %.noexc2.i unwind label %bb.ai, !inline_history !3149

.noexc2.i:                                        ; preds = %.critedge.i.i
  br i1 %i.f, label %.critedge31.i.i, label %bb.d, !prof !350

bb.d:                                             ; preds = %.noexc2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.14, i32 noundef 3319, ptr noundef nonnull @.str.462) #45
          to label %.noexc3.i unwind label %bb.ai, !inline_history !3149

.noexc3.i:                                        ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit33.i.i unwind label %bb.e, !inline_history !3149

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit33.i.i: ; preds = %.noexc3.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #42, !inline_history !3149
  unreachable

bb.e:                                             ; preds = %.noexc3.i
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #42, !inline_history !3149
  unreachable

.critedge31.i.i:                                  ; preds = %.noexc2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) @_ZN17grpc_event_engine12experimental11EventEngine10TaskHandle8kInvalidE, i64 16, i1 false), !tbaa.struct !511
  %.not.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge31.i.i
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i unwind label %bb.ai, !inline_history !3149

_ZN9grpc_core9Timestamp3NowEv.exit.i.i:           ; preds = %bb.f, %.critedge31.i.i
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !497  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc5.i unwind label %bb.ai, !inline_history !3149 ; 6 uses

.noexc5.i:                                        ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2832 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !69 ; 9 uses
  store i64 -9223372036854775808, ptr %i.m, align 8, !tbaa !69
  %i.n = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.o = and i64 %i.n, 1048576
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread.i.i

bb.g:                                             ; preds = %.noexc5.i
  %.not4.i.i.i.i.i = icmp sgt i64 %i.n, -1
  br i1 %.not4.i.i.i.i.i, label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.i.i, label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i

_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.i.i: ; preds = %bb.g
  %i.p = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 20)
          to label %.noexc6.i unwind label %bb.ai, !inline_history !3149

.noexc6.i:                                        ; preds = %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.i.i
  br i1 %i.p, label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread.i.i, label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i

_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread.i.i: ; preds = %.noexc6.i, %.noexc5.i
  %i.q = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, %i.l
  br label %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i

_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i: ; preds = %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread.i.i, %.noexc6.i, %bb.g
  %i.r = phi i1 [ false, %.noexc6.i ], [ %i.q, %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread.i.i ], [ false, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2983
  %i.t = load i8, ptr %i.s, align 1, !tbaa !851
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.thread13.i.i
  store i32 2, ptr %i.b, align 4, !tbaa !512
  br label %bb.ae

bb.j:                                             ; preds = %bb.h
  br i1 %i.r, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2981
  %i.y = load i8, ptr %i.x, align 1, !tbaa !735, !range !80, !noundef !81
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !351
  %.not.i.i.i = icmp ult i64 %i.ab, 131072
  br i1 %.not.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.b, align 4, !tbaa !512
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.af = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !3150 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store ptr @_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL21finish_keepalive_pingNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_, ptr %i.ah, align 8, !tbaa !487
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store ptr %0, ptr %i.ai, align 8, !tbaa !488
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i64 0, ptr %i.aj, align 8, !tbaa !78
  store ptr %i.ag, ptr %2, align 16, !tbaa !1272
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRN12_GLOBAL__N_118PingClosureWrapperEJEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE, ptr %i.ak, align 8, !tbaa !434
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIN12_GLOBAL__N_118PingClosureWrapperEEEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES7_, ptr %i.al, align 16, !tbaa !406
  invoke void @_ZN9grpc_core19Chttp2PingCallbacks9OnPingAckEN4absl12lts_2025051212AnyInvocableIFvvEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 16 %2)
          to label %bb.n unwind label %.body.thread.i.i, !inline_history !3157

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !406
  call void %i.am(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %2) #44, !inline_history !3158
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.an = atomicrmw sub ptr %i.ac, i64 1 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i.i, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %0, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %0) #44, !inline_history !3159
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i.i

_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i.i: ; preds = %bb.o, %bb.n
  invoke void @_Z26grpc_chttp2_initiate_writeP21grpc_chttp2_transport33grpc_chttp2_initiate_write_reason(ptr noundef nonnull %0, i32 noundef 18)
          to label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i._crit_edge.i unwind label %bb.ai, !inline_history !3149

_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i._crit_edge.i: ; preds = %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i.i
  %.pre.i = load i64, ptr %7, align 8, !tbaa !17
  br label %bb.ae

.body.thread.i.i:                                 ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %i.al, align 16, !tbaa !406
  call void %i.at(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %2) #44, !inline_history !3158
  %i.au = atomicrmw sub ptr %i.ac, i64 1 acq_rel, align 8
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.p, label %bb.aj, !prof !97

bb.p:                                             ; preds = %.body.thread.i.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %0) #44, !inline_history !3159
  br label %bb.aj

bb.q:                                             ; preds = %bb.j
  switch i64 %i.l, label %.thread.i.i.i [
    i64 -9223372036854775808, label %bb.r
    i64 9223372036854775807, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %.not12.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i

bb.s:                                             ; preds = %bb.q
  %.not.i38.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 9223372036854775807
  %spec.select.i.i.i = select i1 %.not.i38.i.i, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.r, %bb.q
  %i.az = sub i64 0, %i.l                         ; 2 uses
  %i.ba = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 9223372036854775807
  %i.bb = icmp eq i64 %i.l, -9223372036854775807
  %or.cond.i.i.i.i = or i1 %i.bb, %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %.thread.i.i.i
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -9223372036854775808
  %i.bd = icmp eq i64 %i.l, -9223372036854775808
  %or.cond9.i.i.i.i = or i1 %i.bd, %i.bc
  br i1 %or.cond9.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = sub nuw nsw i64 9223372036854775807, %.sroa.0.0.copyload.i.i.i.i
  %i.bg = icmp slt i64 %i.bf, %i.az
  br i1 %i.bg, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bh = sub nsw i64 -9223372036854775808, %.sroa.0.0.copyload.i.i.i.i
  %i.bi = icmp sgt i64 %i.bh, %i.az
  br i1 %i.bi, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = sub i64 %.sroa.0.0.copyload.i.i.i.i, %i.l
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i: ; preds = %bb.v, %.thread.i.i.i, %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !401
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  br label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i:       ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.l
  %.sroa.07.0.i.i = phi i64 [ 0, %bb.l ], [ %spec.select.i.i.i, %bb.s ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %bb.t ], [ %i.bj, %bb.x ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !401 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.bo, align 8, !tbaa !69 ; 6 uses
  %i.bp = icmp eq i64 %.sroa.01.0.copyload.i.i, 9223372036854775807
  %i.bq = icmp eq i64 %.sroa.07.0.i.i, 9223372036854775807
  %or.cond.i.i39.i.i = or i1 %i.bq, %i.bp
  br i1 %or.cond.i.i39.i.i, label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i
  %i.br = icmp eq i64 %.sroa.01.0.copyload.i.i, -9223372036854775808
  %i.bs = icmp eq i64 %.sroa.07.0.i.i, -9223372036854775808
  %or.cond9.i.i40.i.i = or i1 %i.bs, %i.br
  br i1 %or.cond9.i.i40.i.i, label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = icmp sgt i64 %.sroa.01.0.copyload.i.i, 0
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bu = sub nuw nsw i64 9223372036854775807, %.sroa.01.0.copyload.i.i
  %i.bv = icmp sgt i64 %.sroa.07.0.i.i, %i.bu
  br i1 %i.bv, label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bw = sub nsw i64 -9223372036854775808, %.sroa.01.0.copyload.i.i
  %i.bx = icmp slt i64 %.sroa.07.0.i.i, %i.bw
  br i1 %i.bx, label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.by = add nsw i64 %.sroa.01.0.copyload.i.i, %.sroa.07.0.i.i
  br label %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i

_ZN9grpc_coreplENS_8DurationES0_.exit.i.i:        ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i
  %i.bz = phi ptr [ %i.bn, %bb.y ], [ %i.bn, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i ], [ %i.bn, %bb.ab ], [ %i.bn, %bb.ac ], [ %i.bn, %bb.aa ], [ %i.bl, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ -9223372036854775808, %bb.y ], [ 9223372036854775807, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i ], [ -9223372036854775808, %bb.ab ], [ %i.by, %bb.ac ], [ 9223372036854775807, %bb.aa ], [ 9223372036854775807, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i ]
  store i64 %.0.i.i.i.i, ptr %5, align 8
  %i.ca = invoke i64 @_ZNK9grpc_core8DurationcvNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ad unwind label %bb.ai, !inline_history !3149

bb.ad:                                            ; preds = %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i64 1 monotonic, align 8 ; 0 uses
  store ptr %0, ptr %6, align 16, !tbaa !367
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEENS0_6StatusEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.cd, align 8, !tbaa !434
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEENS0_6StatusEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESB_", ptr %i.ce, align 16, !tbaa !406
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke { i64, i64 } %i.ch(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 %i.ca, ptr noundef nonnull align 16 %6)
          to label %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i" unwind label %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit46.i.i", !inline_history !3149 ; 2 uses

"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i": ; preds = %bb.ad
  %i.cj = extractvalue { i64, i64 } %i.ci, 0
  %i.ck = extractvalue { i64, i64 } %i.ci, 1
  store i64 %i.cj, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i64 %i.ck, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !78
  %i.cl = load ptr, ptr %i.ce, align 16, !tbaa !406
  call void %i.cl(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %6) #44, !inline_history !3160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.ae

"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit46.i.i": ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %i.ce, align 16, !tbaa !406
  call void %i.cn(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %6) #44, !inline_history !3160
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.aj

bb.ae:                                            ; preds = %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i", %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i._crit_edge.i, %bb.i
  %i.co = phi i64 [ %.pre.i, %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i._crit_edge.i ], [ %i.a, %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i" ], [ %i.a, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cp = trunc i64 %i.co to i1
  br i1 %i.cp, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = inttoptr i64 %i.co to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cq)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.ag, !inline_history !3161

bb.ag:                                            ; preds = %bb.af
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #42, !inline_history !3161
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.af, %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 acq_rel, align 8
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL26init_keepalive_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit, !prof !97

bb.ah:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.cw = load ptr, ptr %0, align 8, !tbaa !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %0) #44, !inline_history !3162
  br label %_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL26init_keepalive_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit

bb.ai:                                            ; preds = %_ZN9grpc_coreplENS_8DurationES0_.exit.i.i, %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit.i.i, %_ZN9grpc_core32IsKeepAlivePingTimerBatchEnabledEv.exit.i.i, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, %bb.f, %bb.d, %.critedge.i.i, %bb.b
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit46.i.i", %bb.p, %.body.thread.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cz, %bb.ai ], [ %i.cm, %"_ZZL26init_keepalive_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit46.i.i" ], [ %i.as, %bb.p ], [ %i.as, %.body.thread.i.i ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #44, !inline_history !3161
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = atomicrmw sub ptr %i.da, i64 1 acq_rel, align 8
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ak, label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i, !prof !97

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %0, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %0) #44, !inline_history !3162
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i

_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i: ; preds = %bb.ak, %bb.aj
  resume { ptr, i32 } %eh.lpad-body.i

_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL26init_keepalive_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

declare void @_ZN9grpc_core19Chttp2PingCallbacks9OnPingAckEN4absl12lts_2025051212AnyInvocableIFvvEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef align 16) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL28finish_keepalive_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_(ptr noundef %0, ptr nofree noundef align 8 captures(none) %1) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AnyInvocable.317", align 16 ; 11 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = load i64, ptr %1, align 8, !tbaa !17     ; 4 uses
  store i64 %i.a, ptr %5, align 8, !tbaa !17
  store i64 55, ptr %1, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !512
  %i.d = icmp eq i32 %i.c, 1
  %i.e = icmp eq i64 %i.a, 1
  %or.cond.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core10http_traceE, i64 8) monotonic, align 8, !range !80, !noundef !81
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core20http_keepalive_traceE, i64 8) monotonic, align 8, !range !80, !noundef !81
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.g, !prof !97
end_hunk_0
begin_hunk_1_@_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL25write_action_begin_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_:bb.a
  %4 = alloca %"class.grpc_event_engine::experimental::EventEngine::Endpoint::WriteArgs", align 16 ; 16 uses
  %5 = alloca %"class.std::shared_ptr.1354", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.1667", align 8 ; 8 uses
  %7 = alloca %"class.grpc_event_engine::experimental::EventEngine::Endpoint::WriteEventSink", align 16 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.1667", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AnyInvocable.1670", align 16 ; 7 uses
  %10 = alloca %class.anon.1678, align 8          ; 12 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 9 uses
  %12 = alloca %"class.grpc_event_engine::experimental::EventEngine::Endpoint::WriteArgs", align 16 ; 12 uses
  %13 = alloca %"class.grpc_core::latent_see::Scope", align 8 ; 14 uses
  %14 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %struct.grpc_chttp2_begin_write_result, align 8 ; 13 uses
  %16 = alloca %struct.grpc_chttp2_begin_write_result, align 8 ; 8 uses
  %17 = alloca %"class.std::vector.1656", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %20 = alloca %"class.grpc_core::RefCountedPtr.314", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.d = load i64, ptr %1, align 8, !tbaa !17
  store i64 %i.d, ptr %21, align 8, !tbaa !17
  store i64 55, ptr %1, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.e = load atomic ptr, ptr @_ZN9grpc_core10latent_see8Appender12active_sink_E acquire, align 8 ; 2 uses
  store ptr %i.e, ptr %13, align 8, !tbaa !361
  %.not6.i.i = icmp eq ptr %i.e, null
  br i1 %.not6.i.i, label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit.i.i, label %bb.b, !prof !350

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @"_ZZZL25write_action_begin_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEENK3$_0clEvE8metadata", ptr %i.f, align 8, !tbaa !3193
  %i.g = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %.noexc.i unwind label %bb.dx, !inline_history !3195

.noexc.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !3196
  br label %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit.i.i

_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit.i.i: ; preds = %.noexc.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %i.j = load i32, ptr %i.i, align 4, !tbaa !509
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i, !prof !97

bb.c:                                             ; preds = %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.14, i32 noundef 1184, ptr noundef nonnull @.str.468) #45
          to label %bb.d unwind label %bb.e, !inline_history !3195

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.f, !inline_history !3195

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #42, !inline_history !3195
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %bb.do

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #42, !inline_history !3195
  unreachable

.critedge.i.i:                                    ; preds = %_ZN9grpc_core10latent_see5ScopeC2EPKNS0_8MetadataE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %.thread.i.i

.thread.i.i:                                      ; preds = %.critedge.i.i
  store i8 0, ptr %15, align 8, !tbaa !3197
  br label %bb.dd

bb.g:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #44
  invoke void @_Z23grpc_chttp2_begin_writeP21grpc_chttp2_transport(ptr dead_on_unwind nonnull writable sret(%struct.grpc_chttp2_begin_write_result) align 8 %16, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.h, !inline_history !3195

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit46.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !3204 ; 7 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !3204
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3205 ; 7 uses
  store ptr %i.w, ptr %i.s, align 8, !tbaa !3205
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3206 ; 2 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !3206
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  %.pre.i.i = load i8, ptr %15, align 8, !tbaa !3197, !range !80
  %i.z = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.z, label %bb.j, label %bb.dd

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !3207, !range !80, !noundef !81
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %.str.473..str.474.i.i.i = select i1 %i.ac, ptr @.str.473, ptr @.str.474
  invoke fastcc void @_ZL15set_write_stateP21grpc_chttp2_transport23grpc_chttp2_write_statePKc(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef nonnull %.str.473..str.474.i.i.i)
          to label %bb.k unwind label %bb.ch, !inline_history !3195

bb.k:                                             ; preds = %bb.j
  store ptr %i.u, ptr %17, align 8, !tbaa !3204
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.w, ptr %i.ae, align 8, !tbaa !3205
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.af, align 8, !tbaa !3206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %0, ptr %i.b, align 8, !tbaa !400
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !110 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #47
          to label %.noexc.i.i unwind label %bb.ci, !inline_history !3208 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !110
  br label %bb.m

bb.m:                                             ; preds = %.noexc.i.i, %bb.k
  %.0.i.i.i = phi ptr [ %i.ah, %.noexc.i.i ], [ null, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i8 0, ptr %i.an, align 16, !tbaa !3209
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !673 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %spec.store.select.i.i.i = select i1 %i.as, i32 2147483647, i32 %i.ar
  %i.at = sext i32 %spec.store.select.i.i.i to i64
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !3211
  store ptr %.0.i.i.i, ptr %i.ao, align 16, !tbaa !3217
  %.not.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i, label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i.i.i.i unwind label %bb.w, !inline_history !3208

_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.au = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !497 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i unwind label %bb.w, !inline_history !3218 ; 9 uses

_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i:         ; preds = %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 2 uses
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.az, align 16, !tbaa !69 ; 5 uses
  switch i64 %.sroa.09.0.copyload.i.i.i, label %.thread.i.i.i.i [
    i64 -9223372036854775808, label %bb.o
    i64 9223372036854775807, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i
  %.not12.i.i.i.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not12.i.i.i.i, label %.thread.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i

bb.p:                                             ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ay, 9223372036854775807
  br i1 %.not.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.o, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i.i
  %i.ba = sub i64 0, %.sroa.09.0.copyload.i.i.i   ; 2 uses
  %i.bb = icmp eq i64 %i.ay, 9223372036854775807
  %i.bc = icmp eq i64 %.sroa.09.0.copyload.i.i.i, -9223372036854775807
  %or.cond.i.i.i.i.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i, label %bb.q

bb.q:                                             ; preds = %.thread.i.i.i.i
  %i.bd = icmp eq i64 %i.ay, -9223372036854775808
  %i.be = icmp eq i64 %.sroa.09.0.copyload.i.i.i, -9223372036854775808
  %or.cond9.i.i.i.i.i = or i1 %i.bd, %i.be
  br i1 %or.cond9.i.i.i.i.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp sgt i64 %i.ay, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = sub nuw nsw i64 9223372036854775807, %i.ay
  %i.bh = icmp slt i64 %i.bg, %i.ba
  br i1 %i.bh, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = sub nsw i64 -9223372036854775808, %i.ay
  %i.bj = icmp sgt i64 %i.bi, %i.ba
  br i1 %i.bj, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i:     ; preds = %bb.t, %bb.s
  %i.bk = sub i64 %i.ay, %.sroa.09.0.copyload.i.i.i
  %i.bl = icmp sgt i64 %i.bk, 100
  br i1 %i.bl, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i: ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i, %bb.s, %.thread.i.i.i.i, %bb.p, %bb.o
  store i64 %i.ay, ptr %i.az, align 16, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3016 ; 2 uses
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %.not.i42.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i42.i.i.i, label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i
  %i.bo = load atomic ptr, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %.noexc44.i.i.i unwind label %bb.w, !inline_history !3208

.noexc44.i.i.i:                                   ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !351
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i unwind label %bb.v, !inline_history !3208

.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i: ; preds = %.noexc44.i.i.i
  %.not.i.i43.i.i.i = icmp ugt i64 %i.br, 131071
  %.pre9.i.i = load ptr, ptr %17, align 8, !tbaa !3219
  %.pre10.i.i = load ptr, ptr %i.ae, align 8, !tbaa !3219
  br label %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i

bb.v:                                             ; preds = %.noexc44.i.i.i
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #42, !inline_history !3208
  unreachable

bb.w:                                             ; preds = %bb.bp, %.noexc66.i.i.i, %bb.bo, %.critedge40.i.i.i, %bb.u, %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i.i.i.i, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit71.i.i.i

_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i: ; preds = %.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i, %bb.t, %bb.q, %bb.p
  %i.bv = phi ptr [ %i.w, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i ], [ %.pre10.i.i, %.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i ], [ %i.w, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i ], [ %i.w, %bb.p ], [ %i.w, %bb.t ], [ %i.w, %bb.q ] ; 3 uses
  %i.bw = phi ptr [ %i.u, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i ], [ %.pre9.i.i, %.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i ], [ %i.u, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i ], [ %i.u, %bb.p ], [ %i.u, %bb.t ], [ %i.u, %bb.q ] ; 3 uses
  %.028.i.i.i = phi i1 [ false, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i.i ], [ %.not.i.i43.i.i.i, %.noexc44.i._ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i_crit_edge.i.i ], [ false, %_ZN9grpc_coremiENS_9TimestampES0_.exit.thread.i.i.i ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.q ] ; 2 uses
  %i.bx = icmp ne ptr %i.bw, %i.bv
  %or.cond.i.i.i = or i1 %.028.i.i.i, %i.bx
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.bi

bb.x:                                             ; preds = %_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8IsActiveEv.exit.i.i.i
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !400 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !398
  %i.cb = invoke noundef ptr @_ZN17grpc_event_engine12experimental38grpc_get_wrapped_event_engine_endpointEP13grpc_endpoint(ptr noundef %i.ca)
          to label %bb.y unwind label %bb.av, !inline_history !3208 ; 3 uses

bb.y:                                             ; preds = %bb.x
  %.not30.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not30.i.i.i, label %bb.bi, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !52
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1354") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %bb.aa unwind label %bb.aw, !inline_history !3208

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %5, align 8, !tbaa !3071  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %bb.ba, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1667") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %bb.ac unwind label %bb.ax, !inline_history !3208

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load ptr, ptr %6, align 8, !tbaa !3220  ; 2 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !3220
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !102 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !102
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !102
  store ptr null, ptr %6, align 8, !tbaa !3220
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  store ptr %i.bw, ptr %10, align 8, !tbaa !3204
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bv, ptr %i.cn, align 8, !tbaa !3205
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !3206 ; 2 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !3206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !3071  ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !3071
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !102 ; 2 uses
  store ptr null, ptr %i.ct, align 8, !tbaa !102
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !102
  store ptr null, ptr %5, align 8, !tbaa !3071
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 3016
  %i.cx = select i1 %.028.i.i.i, ptr %i.cw, ptr null ; 2 uses
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !3223
  %i.cy = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #47
          to label %_ZN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkC2ESt10shared_ptrINS2_10MetricsSetEESt16initializer_listINS0_8internal10WriteEventEEN4absl12lts_2025051212AnyInvocableIKFvS9_NSC_4TimeESt6vectorINS2_11WriteMetricESaISG_EEEEE.exit.i.i.i unwind label %bb.ay, !inline_history !3208 ; 8 uses

_ZN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkC2ESt10shared_ptrINS2_10MetricsSetEESt16initializer_listINS0_8internal10WriteEventEEN4absl12lts_2025051212AnyInvocableIKFvS9_NSC_4TimeESt6vectorINS2_11WriteMetricESaISG_EEEEE.exit.i.i.i: ; preds = %bb.ac
  store ptr %i.bw, ptr %i.cy, align 8, !tbaa !3204
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.bv, ptr %i.cz, align 8, !tbaa !3205
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.cp, ptr %i.da, align 8, !tbaa !3206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 24, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cr, ptr %i.db, align 8, !tbaa !3071
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr null, ptr %i.cs, align 8, !tbaa !102
  store ptr %i.cu, ptr %i.dc, align 8, !tbaa !102
  store ptr null, ptr %i.cq, align 8, !tbaa !3071
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr %i.cx, ptr %i.dd, align 8, !tbaa !3223
  store ptr %i.cy, ptr %9, align 16, !tbaa !78
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.cj, ptr %7, align 16, !tbaa !3220
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !102
  store ptr %i.cm, ptr %i.dg, align 8, !tbaa !102
  store ptr null, ptr %8, align 8, !tbaa !3220
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.cy, ptr %i.di, align 16, !tbaa !78
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZL12write_actionP21grpc_chttp2_transportSt6vectorI23TcpCallTracerWithOffsetSaIS6_EEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESC_", ptr %i.dj, align 16, !tbaa !3226
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRKZL12write_actionP21grpc_chttp2_transportSt6vectorI23TcpCallTracerWithOffsetSaIS6_EEE3$_0JN17grpc_event_engine12experimental8internal10WriteEventENS0_4TimeES5_INSD_11EventEngine8Endpoint11WriteMetricESaISJ_EEEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.dk, align 8, !tbaa !3228
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.de, align 16, !tbaa !3226
  store ptr null, ptr %i.df, align 8, !tbaa !3228
  store i64 31, ptr %i.dh, align 16, !tbaa !69
  %i.dl = call noundef nonnull align 16 dereferenceable(80) ptr @_ZNSt8optionalIN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_(ptr noundef nonnull align 16 dereferenceable(96) %4, ptr noundef nonnull align 16 dereferenceable(64) %7) #44, !inline_history !3208 ; 0 uses
  %i.dm = load ptr, ptr %i.dj, align 16, !tbaa !3226
  call void %i.dm(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.di, ptr noundef nonnull align 16 dereferenceable(32) %i.di) #44, !inline_history !3229
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !102 ; 8 uses
  %.not.i.i.i.i34.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i34.i.i, label %_ZN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkD2Ev.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkC2ESt10shared_ptrINS2_10MetricsSetEESt16initializer_listINS0_8internal10WriteEventEEN4absl12lts_2025051212AnyInvocableIKFvS9_NSC_4TimeESt6vectorINS2_11WriteMetricESaISG_EEEEE.exit.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.do, align 8, !tbaa !105
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !107
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #44, !inline_history !3230
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #44, !inline_history !3230
  br label %_ZN17grpc_event_engine12experimental11EventEngine8Endpoint14WriteEventSinkD2Ev.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_:bb.a
bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.critedge.i.i unwind label %bb.i, !inline_history !3442

.critedge.i.i:                                    ; preds = %bb.e
  %i.p = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.critedge.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !78
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #43, !inline_history !3442
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46, !inline_history !3442
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %.pre.i = load i64, ptr %10, align 8, !tbaa !17
  br label %.critedge36.i.i

.critedge36.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a
  %i.u = phi i64 [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.a, %bb.a ]
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %.critedge36.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.ab

bb.g:                                             ; preds = %bb.c, %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi25EEERS2_RAT__Kc.exit.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !76    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !78
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #43, !inline_history !3442
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i, %bb.g
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i ], [ %i.z, %bb.g ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #46, !inline_history !3442
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %.sink.split.i

bb.k:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2985 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1873, !range !80, !noundef !81
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.p, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i.i: ; preds = %bb.k
  store i64 1, ptr %5, align 8, !tbaa !17
  store i64 55, ptr %10, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !352
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store ptr @_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_, ptr %i.an, align 8, !tbaa !487
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store ptr %0, ptr %i.ao, align 16, !tbaa !488
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2632
  store i64 0, ptr %i.ap, align 8, !tbaa !78
  store i64 1, ptr %2, align 8, !tbaa !17
  invoke void @_ZN9grpc_core8Combiner3RunEP12grpc_closureN4absl12lts_202505126StatusE(ptr noundef nonnull align 8 dereferenceable(184) %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 %2)
          to label %bb.l unwind label %.body.thread16.i, !inline_history !3443

bb.l:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i.i
  %i.aq = load i64, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = inttoptr i64 %i.aq to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %bb.o unwind label %bb.n, !inline_history !3443

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #42, !inline_history !3443
  unreachable

.body.thread16.i:                                 ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #44, !inline_history !3443
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #44, !inline_history !3442
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #44, !inline_history !3444
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i

bb.o:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.p:                                             ; preds = %bb.k
  store i8 0, ptr %i.ah, align 1, !tbaa !1873
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.ax = invoke i64 @_ZN9grpc_core12BdpEstimator12CompletePingEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %.noexc2.i unwind label %.body.thread21.i, !inline_history !3442 ; 8 uses

.noexc2.i:                                        ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2280
  invoke void @_ZN9grpc_core6chttp220TransportFlowControl14PeriodicUpdateEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::chttp2::FlowControlAction") align 4 %6, ptr noundef nonnull align 8 dereferenceable(184) %i.ay)
          to label %.noexc3.i unwind label %.body.thread21.i, !inline_history !3442

.noexc3.i:                                        ; preds = %.noexc2.i
  invoke void @_Z33grpc_chttp2_act_on_flowctl_actionRKN9grpc_core6chttp217FlowControlActionEP21grpc_chttp2_transportP18grpc_chttp2_stream(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull %0, ptr noundef null)
          to label %.noexc4.i unwind label %.body.thread21.i, !inline_history !3442

.noexc4.i:                                        ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.ba = invoke noundef zeroext i1 @_ZN17grpc_event_engine12experimentaleqERKNS0_11EventEngine10TaskHandleES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) @_ZN17grpc_event_engine12experimental11EventEngine10TaskHandle8kInvalidE)
          to label %.noexc5.i unwind label %.body.thread21.i, !inline_history !3442

.noexc5.i:                                        ; preds = %.noexc4.i
  br i1 %i.ba, label %.critedge38.i.i, label %bb.q, !prof !350

bb.q:                                             ; preds = %.noexc5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.14, i32 noundef 3231, ptr noundef nonnull @.str.514) #45
          to label %.noexc6.i unwind label %.body.thread21.i, !inline_history !3442

.noexc6.i:                                        ; preds = %bb.q
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit45.i.i unwind label %bb.r, !inline_history !3442

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit45.i.i: ; preds = %.noexc6.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #42, !inline_history !3442
  unreachable

bb.r:                                             ; preds = %.noexc6.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #42, !inline_history !3442
  unreachable

.critedge38.i.i:                                  ; preds = %.noexc5.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !401 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %.not.i.i46.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i46.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.critedge38.i.i
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i unwind label %.body.thread21.i, !inline_history !3442

_ZN9grpc_core9Timestamp3NowEv.exit.i.i:           ; preds = %bb.s, %.critedge38.i.i
  %i.be = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !497 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %.noexc8.i unwind label %.body.thread21.i, !inline_history !3442 ; 5 uses

.noexc8.i:                                        ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i
  switch i64 %i.bi, label %.thread.i.i.i [
    i64 -9223372036854775808, label %bb.t
    i64 9223372036854775807, label %bb.u
  ]

bb.t:                                             ; preds = %.noexc8.i
  %.not12.i.i.i = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

bb.u:                                             ; preds = %.noexc8.i
  %.not.i47.i.i = icmp eq i64 %i.ax, 9223372036854775807
  %spec.select.i.i.i = select i1 %.not.i47.i.i, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

.thread.i.i.i:                                    ; preds = %bb.t, %.noexc8.i
  %i.bj = sub i64 0, %i.bi                        ; 2 uses
  %i.bk = icmp eq i64 %i.ax, 9223372036854775807
  %i.bl = icmp eq i64 %i.bi, -9223372036854775807
  %or.cond.i.i.i.i = or i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i
  %i.bm = icmp eq i64 %i.ax, -9223372036854775808
  %i.bn = icmp eq i64 %i.bi, -9223372036854775808
  %or.cond9.i.i.i.i = or i1 %i.bm, %i.bn
  br i1 %or.cond9.i.i.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = icmp sgt i64 %i.ax, 0
  br i1 %i.bo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = sub nuw nsw i64 9223372036854775807, %i.ax
  %i.bq = icmp slt i64 %i.bp, %i.bj
  br i1 %i.bq, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.br = sub nsw i64 -9223372036854775808, %i.ax
  %i.bs = icmp sgt i64 %i.br, %i.bj
  br i1 %i.bs, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = sub i64 %i.ax, %i.bi
  br label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i:       ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %.thread.i.i.i, %bb.u, %bb.t
  %.sroa.04.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.u ], [ 9223372036854775807, %bb.t ], [ -9223372036854775808, %bb.v ], [ 9223372036854775807, %.thread.i.i.i ], [ -9223372036854775808, %bb.y ], [ %i.bt, %bb.z ], [ 9223372036854775807, %bb.x ]
  store i64 %.sroa.04.0.i.i.i, ptr %8, align 8
  %i.bu = invoke i64 @_ZNK9grpc_core8DurationcvNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %.body.thread21.i, !inline_history !3442

bb.aa:                                            ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8 ; 0 uses
  store ptr %0, ptr %9, align 16, !tbaa !367
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEENS0_6StatusEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.bx, align 8, !tbaa !434
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable22LocalManagerNontrivialIZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEENS0_6StatusEE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESB_", ptr %i.by, align 16, !tbaa !406
  %i.bz = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke { i64, i64 } %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 %i.bu, ptr noundef nonnull align 16 %9)
          to label %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i" unwind label %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit51.i.i", !inline_history !3442 ; 2 uses

"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i": ; preds = %bb.aa
  %i.cd = extractvalue { i64, i64 } %i.cc, 0
  %i.ce = extractvalue { i64, i64 } %i.cc, 1
  store i64 %i.cd, ptr %i.az, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2736
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !78
  %i.cf = load ptr, ptr %i.by, align 16, !tbaa !406
  call void %i.cf(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #44, !inline_history !3445
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %bb.ab

"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit51.i.i": ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %i.by, align 16, !tbaa !406
  call void %i.ch(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9) #44, !inline_history !3445
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %.sink.split.i

bb.ab:                                            ; preds = %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i", %bb.o, %bb.f, %.critedge36.i.i
  %.sroa.0.1.i = phi ptr [ %0, %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit.i.i" ], [ null, %bb.o ], [ %0, %bb.f ], [ %0, %.critedge36.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ci = load i64, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = inttoptr i64 %i.ci to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ck)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.ad, !inline_history !3444

bb.ad:                                            ; preds = %bb.ac
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #42, !inline_history !3444
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.ac, %bb.ab
  %.not.i.i = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not.i.i, label %_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 8
  %i.co = atomicrmw sub ptr %i.cn, i64 1 acq_rel, align 8
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.af, label %_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit, !prof !97

bb.af:                                            ; preds = %bb.ae
  %i.cq = load ptr, ptr %.sroa.0.1.i, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i) #44, !inline_history !3446
  br label %_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit

.body.thread21.i:                                 ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, %bb.s, %bb.q, %.noexc4.i, %.noexc3.i, %.noexc2.i, %bb.p
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.body.i:                                          ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #44, !inline_history !3444
  %.not.i10.i = icmp eq ptr %0, null
  br i1 %.not.i10.i, label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i, label %bb.ag

.sink.split.i:                                    ; preds = %.body.thread21.i, %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit51.i.i", %bb.j
  %eh.lpad-body14.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread21.i ], [ %.pn.pn.i.i, %bb.j ], [ %i.cg, %"_ZZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEN3$_0D2Ev.exit51.i.i" ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #44, !inline_history !3444
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i, %.body.i
  %eh.lpad-body14.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body14.ph.i, %.sink.split.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 acq_rel, align 8
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i, !prof !97

bb.ah:                                            ; preds = %bb.ag
  %i.cw = load ptr, ptr %0, align 8, !tbaa !52
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %0) #44, !inline_history !3446
  br label %_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i

_ZN9grpc_core13RefCountedPtrI21grpc_chttp2_transportED2Ev.exit11.i: ; preds = %bb.ah, %bb.ag, %.body.i, %.body.thread16.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body14.i, %bb.ag ], [ %eh.lpad-body14.i, %bb.ah ], [ %i.av, %.body.thread16.i ]
  resume { ptr, i32 } %eh.lpad-body15.i

_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL22finish_bdp_ping_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENKUlPvS7_E_clESA_S7_.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  ret void
}

declare i64 @_ZN9grpc_core12BdpEstimator12CompletePingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable12LocalInvokerILb0EvRZL22finish_bdp_ping_lockedN9grpc_core13RefCountedPtrI21grpc_chttp2_transportEENS0_6StatusEE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %2 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !465
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !474
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E(), !inline_history !3447
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !475
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !476
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !80, !noundef !81
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i, !prof !97

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv(), !inline_history !3447
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E(), !inline_history !3447
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i

_ZN9grpc_core7ExecCtxC2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i.i.i.i.i.i
  store ptr %2, ptr %i.e, align 8, !tbaa !475
  %i.j = load ptr, ptr %0, align 8, !tbaa !367    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !352
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !3448 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2544
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2552
  store ptr @_ZZN9grpc_core12_GLOBAL__N_120InitTransportClosureIXadL_ZL34next_bdp_ping_timer_expired_lockedNS_13RefCountedPtrI21grpc_chttp2_transportEEN4absl12lts_202505126StatusEEEEEP12grpc_closureS4_S9_ENUlPvS7_E_8__invokeESA_S7_, ptr %i.p, align 8, !tbaa !487
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2560
end_hunk_2
