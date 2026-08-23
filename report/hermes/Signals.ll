Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Signals?download=true
inline.NumInlined: 135
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_:bb.a
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZL19insertSignalHandlerPFvPvES_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #20
  unreachable

_ZL19insertSignalHandlerPFvPvES_.exit:            ; preds = %bb.a, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i
  %.lcssa22.i = phi ptr [ @_ZL14CallBacksToRun, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i ] ; 2 uses
  %.lcssa.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i ]
  store ptr %0, ptr %.lcssa22.i, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa22.i, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !12
  store atomic i32 2, ptr %.lcssa.i seq_cst, align 4
  tail call fastcc void @_ZL16RegisterHandlersv()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh3sys15PrintStackTraceERNS_11raw_ostreamE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh3sys27DisableSystemDialogsOnCrashEv() local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @_ZL5Argv0, align 8, !tbaa !54
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Argv0, i64 8), align 8, !tbaa !37
  %i.a = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i: ; preds = %bb.a
  %i.c = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i
  %i.e = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i
  %i.g = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i
  %i.i = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i

_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i: ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i
  %i.o = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), i32 0, i32 1 seq_cst seq_cst, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i
  tail call void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef nonnull @.str.3, i1 noundef zeroext true) #20
  unreachable

_ZN4llvh3sys16AddSignalHandlerEPFvPvES1_.exit:    ; preds = %bb.a, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i, %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i
  %.lcssa22.i.i = phi ptr [ @_ZL14CallBacksToRun, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 24), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 48), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 72), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 96), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 120), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 144), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 168), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 16), %bb.a ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 40), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 64), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 88), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.3.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 112), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.4.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 136), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.5.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 160), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.6.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14CallBacksToRun, i64 184), %_ZNSt6atomicIN17CallbackAndCookie6StatusEE23compare_exchange_strongERS1_S1_St12memory_orderS4_.exit.7.i.i ]
  store ptr @_ZL28PrintStackTraceSignalHandlerPv, ptr %.lcssa22.i.i, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa22.i.i, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !12
  store atomic i32 2, ptr %.lcssa.i.i seq_cst, align 4
  tail call fastcc void @_ZL16RegisterHandlersv()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28PrintStackTraceSignalHandlerPv(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 0 uses
  ret void
}

declare void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv() #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !55
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(13) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigaltstack(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL13SignalHandleri(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %i.a = load atomic i32, ptr @_ZL20NumRegisteredSignals seq_cst, align 4 ; 2 uses
  %.not5.i = icmp eq i32 %i.a, 0
  br i1 %.not5.i, label %_ZL18UnregisterHandlersv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = zext i32 %i.a to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [160 x i8], ptr @_ZL20RegisteredSignalInfo, i64 %indvars.iv.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call i32 @sigaction(i32 noundef %i.e, ptr noundef nonnull %i.c, ptr noundef null) #16 ; 0 uses
  %i.g = atomicrmw sub ptr @_ZL20NumRegisteredSignals, i32 1 seq_cst, align 4 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %.not.i, label %_ZL18UnregisterHandlersv.exit, label %.lr.ph.i, !llvm.loop !56

_ZL18UnregisterHandlersv.exit:                    ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.h = call i32 @sigfillset(ptr noundef nonnull %1) #16 ; 0 uses
  %i.i = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #16 ; 0 uses
  %i.j = load atomic ptr, ptr @_ZN12_GLOBAL__N_126FilesToRemoveInterruptFuncE.0 seq_cst, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL18UnregisterHandlersv.exit
  call void @_ZL19RemoveFilesToRemovev() #16
  br label %bb.c

bb.c:                                             ; preds = %_ZL18UnregisterHandlersv.exit, %bb.b
  switch i32 %0, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12 [
    i32 1, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 2, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 13, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 15, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 12, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
    i32 10, label %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  ]

_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread:         ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.k = atomicrmw xchg ptr @_ZL17InterruptFunction, ptr null seq_cst, align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.k, null
  br i1 %.not7, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  call void %i.k() #16
  br label %bb.e

.critedge:                                        ; preds = %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread
  %i.l = call i32 @raise(i32 noundef %0) #16      ; 0 uses
  br label %bb.e

_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12:       ; preds = %bb.c
  call void @_ZN4llvh3sys17RunSignalHandlersEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt4findIPKiiET_S2_S2_RKT0_.exit.thread12, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZN4llvh18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvh14object_creatorIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEv() #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvh14object_deleterIN12_GLOBAL__N_120FilesToRemoveCleanupEE4callEPv(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr @_ZN12_GLOBAL__N_113FilesToRemoveE, ptr null seq_cst, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #19
  br label %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit

_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_120FilesToRemoveCleanupD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw xchg ptr %i.a, ptr null seq_cst, align 8 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_116FileToRemoveListD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = atomicrmw xchg ptr %0, ptr null seq_cst, align 8 ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS17CallbackAndCookie", !9, i64 0, !9, i64 8, !10, i64 16}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSSt6atomicIN17CallbackAndCookie6StatusEE", !11, i64 0}
!11 = !{!"_ZTSN17CallbackAndCookie6StatusE", !5, i64 0}
!12 = !{!8, !9, i64 8}
!13 = !{!14, !4, i64 8}
!14 = !{!"_ZTSN4llvh3sys10SmartMutexILb1EEE", !15, i64 0, !4, i64 8, !16, i64 12}
!15 = !{!"_ZTSN4llvh3sys9MutexImplE", !9, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!18, !4, i64 8}
!18 = !{!"_ZTS7stack_t", !9, i64 0, !4, i64 8, !19, i64 16}
!19 = !{!"long", !5, i64 0}
!20 = !{!18, !9, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!18, !19, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!25, !4, i64 136}
!25 = !{!"_ZTS9sigaction", !5, i64 0, !26, i64 8, !4, i64 136, !9, i64 144}
!26 = !{!"_ZTS10__sigset_t", !5, i64 0}
!27 = !{!28, !4, i64 152}
!28 = !{!"_ZTS3$_1", !25, i64 0, !4, i64 152}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!31 = distinct !{!31, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !9, i64 0}
!35 = !{!36, !19, i64 8}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !19, i64 8, !5, i64 16}
!37 = !{!19, !19, i64 0}
!38 = !{!36, !34, i64 0}
!39 = !{!40, !34, i64 0}
!40 = !{!"_ZTSSt13__atomic_baseIPcE", !34, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSSt13__atomic_baseIPN12_GLOBAL__N_116FileToRemoveListEE", !43, i64 0}
!43 = !{!"p1 _ZTSN12_GLOBAL__N_116FileToRemoveListE", !9, i64 0}
end_hunk_0
