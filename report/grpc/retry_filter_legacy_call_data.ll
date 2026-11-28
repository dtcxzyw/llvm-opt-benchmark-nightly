Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/retry_filter_legacy_call_data?download=true
inline.NumInlined: 4472
inline.NumDeleted: 2154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData41AddClosuresForDeferredCompletionCallbacksEPNS_23CallCombinerClosureListE:bb.a

bb.ae:                                            ; preds = %bb.ad, %bb.n, %bb.g
  %.sink = phi ptr [ %6, %bb.ad ], [ %4, %bb.n ], [ %2, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.am, %bb.n ], [ %i.u, %bb.g ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData40AddClosuresToFailUnstartedPendingBatchesEN4absl12lts_202505126StatusEPNS_23CallCombinerClosureListE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14
  %.016 = phi i64 [ 0, %bb.a ], [ %i.bk, %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.016 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !278  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !289  ; 3 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !282  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i8, ptr %i.p, align 8               ; 3 uses
  %i.r = trunc i8 %i.q to i1
  %.not8.i = xor i1 %i.r, true
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 3384
  %i.t = load i16, ptr %i.s, align 8              ; 2 uses
  %i.u = trunc i16 %i.t to i1
  %or.cond.i = select i1 %.not8.i, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.f, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = and i8 %i.q, 4
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 3352
  %i.x = load i64, ptr %i.w, align 8, !tbaa !283
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !184
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 992
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !228
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp ult i64 %i.x, %i.ac
  br i1 %i.ad, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit

_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit: ; preds = %bb.f, %bb.g
  %i.ae = and i8 %i.q, 2
  %.not6.i = icmp ne i8 %i.ae, 0
  %i.af = and i16 %i.t, 4
  %.not7.i = icmp eq i16 %i.af, 0
  %or.cond11.i = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %or.cond11.i, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread, label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14

_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread: ; preds = %bb.g, %bb.e, %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit
  %i.ag = load i64, ptr %1, align 8, !tbaa !188   ; 3 uses
  store i64 %i.ag, ptr %3, align 8, !tbaa !188
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread
  %i.ai = inttoptr i64 %i.ag to ptr
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.a, align 8, !tbaa !308
  store ptr @.str.67, ptr %i.b, align 8, !tbaa !303
  %i.ak = load i64, ptr %2, align 8, !tbaa !228, !noalias !479 ; 2 uses
  %i.al = trunc i64 %i.ak to i1                   ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !noalias !479
  %.sink.i.i.i.i = select i1 %i.al, i64 %i.am, i64 6
  %.sink1.i.i.i.i = lshr i64 %i.ak, 1             ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sink1.i.i.i.i, %.sink.i.i.i.i
  br i1 %.not.i.i.i, label %bb.l, label %bb.i, !prof !201

bb.i:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.an = load ptr, ptr %i.i, align 8, !noalias !479
  %.sink2.i.i.i.i = select i1 %i.al, ptr %i.an, ptr %i.i
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %.sink1.i.i.i.i ; 6 uses
  %i.ap = load i64, ptr %3, align 8, !tbaa !188   ; 4 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %_ZNSt15__new_allocatorIN9grpc_core23CallCombinerClosureList19CallCombinerClosureEE9constructIS2_JRP12grpc_closureRN4absl12lts_202505126StatusERPKcEEEvPT_DpOT0_.exit.thread.i.i.i, label %bb.j

_ZNSt15__new_allocatorIN9grpc_core23CallCombinerClosureList19CallCombinerClosureEE9constructIS2_JRP12grpc_closureRN4absl12lts_202505126StatusERPKcEEEvPT_DpOT0_.exit.thread.i.i.i: ; preds = %bb.i
  store ptr %i.n, ptr %i.ao, align 8, !tbaa !310
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !188
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr @.str.67, ptr %i.as, align 8, !tbaa !311
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.at = inttoptr i64 %i.ap to ptr               ; 3 uses
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  store ptr %i.n, ptr %i.ao, align 8, !tbaa !310
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ap, ptr %i.av, align 8, !tbaa !188
  %i.aw = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr @.str.67, ptr %i.ax, align 8, !tbaa !311
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.at)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i:     ; preds = %bb.j, %_ZNSt15__new_allocatorIN9grpc_core23CallCombinerClosureList19CallCombinerClosureEE9constructIS2_JRP12grpc_closureRN4absl12lts_202505126StatusERPKcEEEvPT_DpOT0_.exit.thread.i.i.i
  %i.ba = load i64, ptr %2, align 8, !tbaa !228
  %i.bb = add i64 %i.ba, 2
  store i64 %i.bb, ptr %2, align 8, !tbaa !228
  br label %bb.m

bb.l:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core23CallCombinerClosureList19CallCombinerClosureELm6ESaIS5_EE15EmplaceBackSlowIJRP12grpc_closureRNS0_6StatusERPKcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i64, ptr %3, align 8, !tbaa !188   ; 2 uses
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = inttoptr i64 %i.bd to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bf)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.m, %bb.n
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !278
  store ptr null, ptr %i.bi, align 8, !tbaa !282
  call void @_ZN9grpc_core11RetryFilter14LegacyCallData22MaybeClearPendingBatchEPNS1_12PendingBatchE(ptr noundef nonnull align 16 dereferenceable(1728) %i.f, ptr noundef nonnull %i.j)
  br label %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14

bb.p:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  resume { ptr, i32 } %i.bj

_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit.thread14: ; preds = %bb.d, %_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt36PendingBatchContainsUnstartedSendOpsEPNS1_12PendingBatchE.exit, %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.c
  %i.bk = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !478
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData27RunClosuresForCompletedCallEN4absl12lts_202505126StatusE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readonly align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::CallCombinerClosureList", align 8 ; 11 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 3 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i64 0, ptr %2, align 8, !tbaa !194
  %i.a = load i64, ptr %1, align 8, !tbaa !188    ; 4 uses
  store i64 %i.a, ptr %3, align 8, !tbaa !188
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %bb.b, %bb.a
  invoke void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData43MaybeAddClosureForRecvTrailingMetadataReadyEN4absl12lts_202505126StatusEPNS_23CallCombinerClosureListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.c, %bb.d
  invoke void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData41AddClosuresForDeferredCompletionCallbacksEPNS_23CallCombinerClosureListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.h = load i64, ptr %1, align 8, !tbaa !188    ; 4 uses
  store i64 %i.h, ptr %4, align 8, !tbaa !188
  %i.i = trunc i64 %i.h to i1                     ; 2 uses
  br i1 %i.i, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = inttoptr i64 %i.h to ptr
  %i.k = atomicrmw add ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit4

_ZN4absl12lts_202505126StatusC2ERKS1_.exit4:      ; preds = %bb.g, %bb.f
  invoke void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData40AddClosuresToFailUnstartedPendingBatchesEN4absl12lts_202505126StatusEPNS_23CallCombinerClosureListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 %4, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit4
  br i1 %i.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = inttoptr i64 %i.h to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit5 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit5:          ; preds = %bb.h, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !239
  invoke void @_ZN9grpc_core23CallCombinerClosureList11RunClosuresEPNS_12CallCombinerE(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef %i.t)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit5
  %i.u = load i64, ptr %2, align 8, !tbaa !228
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN9grpc_core23CallCombinerClosureListD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core23CallCombinerClosureList19CallCombinerClosureELm6ESaIS5_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %_ZN9grpc_core23CallCombinerClosureListD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN9grpc_core23CallCombinerClosureListD2Ev.exit:  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.n:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit5, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #33
  br label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit4
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.y, %bb.n ], [ %5, %bb.p ], [ %i.z, %bb.o ]
  call void @_ZN9grpc_core23CallCombinerClosureListD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchData25RecvTrailingMetadataReadyEPvN4absl12lts_202505126StatusE(ptr noundef %0, ptr noundef align 8 %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca ptr, align 8                      ; 16 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 12 uses
  %6 = alloca %"class.std::optional.82", align 8  ; 12 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 2 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.92", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.92", align 1 ; 4 uses
  %14 = alloca %"class.grpc_core::CallCombinerClosureList", align 8 ; 12 uses
  %15 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %16 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %17 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %18 = alloca %"class.std::vector.140", align 8  ; 7 uses
  %19 = alloca %"class.absl::lts_20250512::Status", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !289  ; 3 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184
  store ptr %i.k, ptr %i.d, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core11retry_traceE, i64 8) monotonic, align 8, !range !33, !noundef !34
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.j, !prof !201

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 1080) #35
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 6, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core11RetryFilterEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.d unwind label %bb.n       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 7, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core11RetryFilter14LegacyCallDataEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.n       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 9, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core11RetryFilter14LegacyCallData11CallAttemptEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 12, ptr nonnull @.str.53)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %bb.f
  store ptr %0, ptr %i.e, align 8, !tbaa !312
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPN9grpc_core11RetryFilter14LegacyCallData11CallAttempt9BatchDataEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 42, ptr nonnull @.str.68)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN9grpc_core14StatusToStringB5cxx11ERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.critedge unwind label %bb.q

.critedge:                                        ; preds = %bb.i
  %i.t = load ptr, ptr %5, align 8, !tbaa !306    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.w = load i64, ptr %i.u, align 8, !tbaa !186
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %.critedge131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !196
  br label %.critedge131

.critedge131:                                     ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.y = phi ptr [ %i.i, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3384 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8
  %i.ab = or i16 %i.aa, 128
  store i16 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 3496
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, 2
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.u, label %bb.k

bb.k:                                             ; preds = %.critedge131
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !239
  invoke void @_ZN9grpc_core12CallCombiner4StopEPKc(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull @.str.69)
          to label %.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.u, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split278

bb.m:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !306   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !186
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.p
  %.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %i.an, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.ak, %bb.n ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.s
end_hunk_0
