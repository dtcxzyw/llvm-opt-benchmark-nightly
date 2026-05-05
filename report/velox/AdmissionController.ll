inline.NumInlined: 2528
inline.NumDeleted: 1389
begin_hunk_0_@_ZN8facebook5velox6common19AdmissionController6acceptEm:bb.a
  store i64 %1, ptr %5, align 8, !tbaa !56
  store i8 1, ptr %i.aa, align 8, !tbaa !59, !noalias !60
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef nonnull %i.a)
          to label %bb.j unwind label %9

bb.j:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.ao = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i41, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.ao) #22
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

9:                                                ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #33
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.j, %bb.k
  store ptr %i.ac, ptr %3, align 8, !tbaa !25
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_0
begin_hunk_1_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 16, !tbaa !7
end_hunk_1
begin_hunk_2_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.c, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.c, ptr %2, align 8, !tbaa !25, !alias.scope !734
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %5

5:                                                ; preds = %bb.c
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #33
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.c
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %3, ptr %4, align 8, !tbaa !737
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !65
  store i8 1, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %8, align 8, !tbaa !68
  store ptr %i.c, ptr %10, align 8, !tbaa !51
  invoke void @_ZN5folly7futures6detail10FutureBaseINS_4UnitEE12setCallback_IZNS1_8waitImplINS_10SemiFutureIS3_EES3_EEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS3_EEE_EEvOS9_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.l = load ptr, ptr %10, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %9, align 8, !tbaa !59, !range !66, !noundef !67
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.l) #22
  %.pre.i.i.i = load ptr, ptr %10, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_:bb.a
bb.n:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseINS_4UnitEE7isReadyEv.exit, %_ZN5folly7PromiseINS_4UnitEED2Ev.exit
  ret void

bb.o:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryIS4_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
end_hunk_3
