begin_hunk_0
inline.NumInlined: 1078
inline.NumDeleted: 615
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox7process8Profiler18interruptibleSleepEi:bb.a
  store i8 1, ptr @_ZN8facebook5velox7process8Profiler13sleepPromise_E, align 8, !tbaa !22, !noalias !140
  %i.aq = load ptr, ptr %1, align 8, !tbaa !138
  invoke void @_ZN5folly10SemiFutureIbE23releaseDeferredExecutorEPNS_7futures6detail4CoreIbEE(ptr noundef %i.aq)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN5folly7PromiseIbE13getSemiFutureEv.exit
  %i.ar = load ptr, ptr %1, align 8, !tbaa !138   ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i29, label %_ZN5folly10SemiFutureIbED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.ar) #32
  br label %_ZN5folly10SemiFutureIbED2Ev.exit

bb.n:                                             ; preds = %_ZN5folly7PromiseIbE13getSemiFutureEv.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #31
  unreachable

_ZN5folly10SemiFutureIbED2Ev.exit:                ; preds = %bb.m, %bb.l
  store ptr %i.ab, ptr %1, align 8, !tbaa !138
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #32 ; 0 uses
  %i.av = load i8, ptr @_ZN8facebook5velox7process8Profiler11shouldStop_E, align 1, !tbaa !137, !range !23, !noundef !24
  %i.aw = trunc nuw i8 %i.av to i1
end_hunk_1
