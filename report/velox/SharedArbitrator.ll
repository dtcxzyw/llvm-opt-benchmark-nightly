begin_hunk_0
inline.NumInlined: 7733
inline.NumDeleted: 3262
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory16SharedArbitrator29startAndWaitGlobalArbitrationERNS1_20ArbitrationOperationE:bb.a
_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit: ; preds = %bb.w
  %i.cp = load ptr, ptr %9, align 8, !tbaa !614
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %i.cp)
          to label %bb.y unwind label %26

bb.y:                                             ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %i.cq = load ptr, ptr %9, align 8, !tbaa !614   ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i125, label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.cq) #29
  br label %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit

26:                                               ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #44
  unreachable

_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit:     ; preds = %bb.y, %bb.z
  store ptr %i.co, ptr %9, align 8, !tbaa !614
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #44
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
  store <2 x ptr> %i.uk, ptr %i.uf, align 8, !tbaa !117, !noalias !766
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i:      ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit.i, %bb.gd, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ul = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.sn) #29, !noalias !766 ; 0 uses
  %.val.i = load ptr, ptr %i.jt, align 8, !tbaa !116, !noalias !766
  %.not.i.i.not.i39.i = icmp eq ptr %.val.i, null
end_hunk_2
begin_hunk_3_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i8 1, ptr %5, align 8, !tbaa !636, !noalias !1766
  store ptr %i.d, ptr %6, align 8, !tbaa !614, !alias.scope !1769
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit unwind label %9

9:                                                ; preds = %bb.c
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #44
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit:        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %13 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43
          to label %bb.d unwind label %bb.aq      ; 6 uses

bb.d:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 1, ptr %i.m, align 8, !tbaa !135, !noalias !1772
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !137, !noalias !1772
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly6fibers5BatonESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %13, align 8, !tbaa !38, !noalias !1772
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !1652, !noalias !1772
  store ptr %13, ptr %12, align 8, !tbaa !138, !alias.scope !1772
  store ptr %i.o, ptr %7, align 8, !tbaa !1775, !alias.scope !1772
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.o, ptr %8, align 8, !tbaa !1777
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %13, ptr %i.p, align 8, !tbaa !138
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e
end_hunk_3
begin_hunk_4_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
bb.ac:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEEaSEOS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.bu = load ptr, ptr %12, align 8, !tbaa !138  ; 8 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly6fibers5BatonELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

end_hunk_4
begin_hunk_5_@_ZN5folly7futures6detail8waitImplINS_10SemiFutureINS_4UnitEEES4_EEvRT_NSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.at

bb.aq:                                            ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.av
end_hunk_5
