begin_hunk_0
inline.NumInlined: 4655
inline.NumDeleted: 2099
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11AsyncSourceIiE4moveEv:bb.a
  tail call void @__clang_call_terminate(ptr %i.bd) #37
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.ah, %bb.ai
  store ptr %i.az, ptr %3, align 8, !tbaa !520
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %6

6:                                                ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #37
  unreachable

bb.ak:                                            ; preds = %bb.ag, %bb.ae
  %i.be = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox11AsyncSourceIiE4moveEv:bb.a
  store <2 x ptr> %i.bo, ptr %i.bg, align 8, !tbaa !308
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.au
  %i.bp = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #34 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !252
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox11AsyncSourceIiE5closeEv:bb.a
_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.l
  %i.ah = load ptr, ptr %1, align 8, !tbaa !520
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.ah)
          to label %bb.n unwind label %2

bb.n:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !520   ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i27, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.ai) #34
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

2:                                                ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #37
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.n, %bb.o
  store ptr %i.ag, ptr %1, align 8, !tbaa !520
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #37
  unreachable

bb.q:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #34 ; 0 uses
  invoke void @_ZN8facebook5velox11AsyncSourceIiE8makeWaitEON5folly10SemiFutureINS3_4UnitEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.r unwind label %bb.y
end_hunk_3
