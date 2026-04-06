begin_hunk_0
inline.NumInlined: 1121
inline.NumDeleted: 565
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory22ArbitrationParticipant16startArbitrationEPNS1_20ArbitrationOperationE:bb.a
_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.l
  %i.at = load ptr, ptr %3, align 8, !tbaa !164
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.at)
          to label %bb.n unwind label %7

bb.n:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i33, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.au) #22
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

7:                                                ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #31
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.n, %bb.o
  store ptr %i.as, ptr %3, align 8, !tbaa !164
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !189 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_1
begin_hunk_2_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 16, !tbaa !24
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.c, align 16, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8, !tbaa !164, !alias.scope !341
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %5

5:                                                ; preds = %bb.c
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #31
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.c
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %3, ptr %4, align 8, !tbaa !344
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !191
  store i8 1, ptr %9, align 8, !tbaa !182
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %8, align 8, !tbaa !192
  store ptr %i.c, ptr %10, align 8, !tbaa !188
  invoke void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.l = load ptr, ptr %10, align 8, !tbaa !188   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %9, align 8, !tbaa !182, !range !183, !noundef !187
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.l) #22
  %.pre.i.i.i = load ptr, ptr %10, align 8, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_3
begin_hunk_4_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
bb.n:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  ret void

bb.o:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
end_hunk_4
