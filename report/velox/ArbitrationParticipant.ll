inline.NumInlined: 1123
inline.NumDeleted: 565
begin_hunk_0_@_ZN8facebook5velox6memory22ArbitrationParticipant16startArbitrationEPNS1_20ArbitrationOperationE:bb.a
_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.l
  %i.at = load ptr, ptr %3, align 8, !tbaa !178
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.at)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !178   ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i33, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.au) #21
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit

bb.p:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #30
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.n, %bb.o
  store ptr %i.as, ptr %3, align 8, !tbaa !178
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !204 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_0
begin_hunk_1_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 16, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.c, align 16, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.c, ptr %2, align 8, !tbaa !178, !alias.scope !367
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %3, ptr %4, align 8, !tbaa !370
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !206
  store i8 1, ptr %6, align 8, !tbaa !197
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !207
  store ptr %i.c, ptr %7, align 8, !tbaa !203
  invoke void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %7, align 8, !tbaa !203    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %6, align 8, !tbaa !197, !range !198, !noundef !202
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.l) #21
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !203
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
bb.n:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  ret void

bb.o:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
end_hunk_3
