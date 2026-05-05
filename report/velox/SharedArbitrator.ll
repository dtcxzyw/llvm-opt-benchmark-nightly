inline.NumInlined: 7733
inline.NumDeleted: 3262
begin_hunk_0_@_ZN8facebook5velox6memory16SharedArbitrator29startAndWaitGlobalArbitrationERNS1_20ArbitrationOperationE:bb.a
_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.w
  %i.cp = load ptr, ptr %9, align 8, !tbaa !637
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.cp)
          to label %bb.y unwind label %26

bb.y:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.cq = load ptr, ptr %9, align 8, !tbaa !637   ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i125, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.cq) #28
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

26:                                               ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #43
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.y, %bb.z
  store ptr %i.co, ptr %9, align 8, !tbaa !637
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #43
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
  store <2 x ptr> %i.uh, ptr %i.uc, align 8, !tbaa !118, !noalias !791
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i:      ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit.i, %bb.gd, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ui = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.sk) #28, !noalias !791 ; 0 uses
  %.val.i = load ptr, ptr %i.jt, align 8, !tbaa !117, !noalias !791
  %.not.i.i.not.i39.i = icmp eq ptr %.val.i, null
end_hunk_1
begin_hunk_2_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i8 1, ptr %5, align 8, !tbaa !659, !noalias !1900
  store ptr %i.d, ptr %6, align 8, !tbaa !637, !alias.scope !1903
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %9

9:                                                ; preds = %bb.c
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #43
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %13 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.d unwind label %bb.aq      ; 6 uses

bb.d:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 1, ptr %i.m, align 8, !tbaa !136, !noalias !1906
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !138, !noalias !1906
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly6fibers5BatonESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %13, align 8, !tbaa !38, !noalias !1906
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !1774, !noalias !1906
  store ptr %13, ptr %12, align 8, !tbaa !139, !alias.scope !1906
  store ptr %i.o, ptr %7, align 8, !tbaa !1909, !alias.scope !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.o, ptr %8, align 8, !tbaa !1911
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %13, ptr %i.p, align 8, !tbaa !139
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
bb.ac:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bu = load ptr, ptr %12, align 8, !tbaa !139  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly6fibers5BatonELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

end_hunk_3
begin_hunk_4_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.at

bb.aq:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.av
end_hunk_4
