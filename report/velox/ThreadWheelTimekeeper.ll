begin_hunk_0
inline.NumInlined: 642
inline.NumDeleted: 417
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%class.anon.162 = type { %"class.std::shared_ptr.115", %"class.std::optional.122", %"class.folly::exception_wrapper" }
%"class.folly::FutureAlreadyRetrieved" = type { %"class.folly::PromiseException" }
%"class.std::unique_ptr.147" = type { %"struct.std::__uniq_ptr_data.148" }
%"struct.std::__uniq_ptr_data.148" = type { %"class.std::__uniq_ptr_impl.149" }
%"class.std::__uniq_ptr_impl.149" = type { %"class.std::tuple.150" }
%"class.std::tuple.150" = type { %"struct.std::_Tuple_impl.151" }
%"struct.std::_Tuple_impl.151" = type { %"struct.std::_Head_base.154" }
%"struct.std::_Head_base.154" = type { ptr }

$_ZN5folly10TimekeeperD2Ev = comdat any

end_hunk_1
begin_hunk_2
$_ZN5folly22FutureAlreadyRetrievedD0Ev = comdat any

$_ZNK5folly22FutureAlreadyRetrieved4whatEv = comdat any

$_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE = comdat any

$_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

end_hunk_2
begin_hunk_3_@_ZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !16, !align !17
  call void @_ZN5folly10WTCallbackINS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEE6createEPNS_9EventBaseE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %3, ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !11, !nonnull !16, !align !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_3
begin_hunk_4_@_ZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  %i.l = call noundef i64 %i.k(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef null) #16 ; 0 uses
  br label %"_ZZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEN3$_0D2Ev.exit"

"_ZZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEN3$_0D2Ev.exit": ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.c, align 16, !tbaa !33
  store ptr %i.m, ptr %0, align 8, !tbaa !33
  store ptr null, ptr %i.c, align 16, !tbaa !33
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %5 unwind label %8

5:                                                ; preds = %"_ZZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEN3$_0D2Ev.exit"
  %6 = load ptr, ptr %i.c, align 16, !tbaa !33    ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i3, label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i, label %7

7:                                                ; preds = %5
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %6) #16
  br label %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i

8:                                                ; preds = %"_ZZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEN3$_0D2Ev.exit"
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #24
  unreachable

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i:      ; preds = %7, %5
  %11 = load ptr, ptr %i.e, align 8, !tbaa !36    ; 8 uses
  %.not.i.i.i4 = icmp eq ptr %11, null
  br i1 %.not.i.i.i4, label %_ZNSt4pairISt10shared_ptrIN5folly10WTCallbackINS1_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !39
  %i.s = load ptr, ptr %11, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %11) #16, !call_target !42
  %i.v = load ptr, ptr %11, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %11) #16, !call_target !74
  br label %_ZNSt4pairISt10shared_ptrIN5folly10WTCallbackINS1_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_ZN5folly25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE:bb.a
  br i1 %i.ab, label %bb.h, label %_ZNSt4pairISt10shared_ptrIN5folly10WTCallbackINS1_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit, !prof !111

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  br label %_ZNSt4pairISt10shared_ptrIN5folly10WTCallbackINS1_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit

_ZNSt4pairISt10shared_ptrIN5folly10WTCallbackINS1_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEEENS1_10SemiFutureINS1_4UnitEEEED2Ev.exit: ; preds = %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}
end_hunk_6
begin_hunk_7_@_ZN5folly10WTCallbackINS_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEE6createEPNS_9EventBaseE:bb.a
  store <2 x ptr> %i.at, ptr %0, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %i.au, align 8, !tbaa !33
  invoke void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef null)
          to label %_ZNSt12__shared_ptrIN5folly10WTCallbackINS0_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %4

4:                                                ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #24
  unreachable

_ZNSt12__shared_ptrIN5folly10WTCallbackINS0_16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly7PromiseINS_4UnitEE13getSemiFutureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

end_hunk_7
begin_hunk_8_@_ZNK5folly22FutureAlreadyRetrieved4whatEv:bb.a
  ret ptr @.str.12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly10SemiFutureINS_4UnitEE23releaseDeferredExecutorEPNS_7futures6detail4CoreIS1_EE(ptr noundef %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::unique_ptr.147", align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = load atomic i8, ptr %4 acquire, align 1
  %6 = and i8 %5, 108
  %.not6 = icmp eq i8 %6, 0
  br i1 %.not6, label %7, label %19

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.147") align 8 %2, ptr noundef nonnull align 16 dereferenceable(136) %0)
  %8 = load ptr, ptr %2, align 8, !tbaa !3432
  %.not4 = icmp ne ptr %8, null
  %9 = zext i1 %.not4 to i32
  call void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef %9) #16
  %10 = load ptr, ptr %2, align 8, !tbaa !3432    ; 2 uses
  %.not7 = icmp eq ptr %10, null
  br i1 %.not7, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %11

11:                                               ; preds = %7
  invoke void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112) %10)
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %11
  %.pr = load ptr, ptr %2, align 8, !tbaa !3432   ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %15

15:                                               ; preds = %14
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit unwind label %16

16:                                               ; preds = %15
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #24
  unreachable

_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit: ; preds = %7, %14, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %19

19:                                               ; preds = %1, %3, %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit
  ret void
}

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.147") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #4

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !3432     ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2)
          to label %4 unwind label %5

4:                                                ; preds = %3, %1
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #24
  unreachable
}

declare void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_8
begin_hunk_9_@"_ZN5folly6detail8function5call_IZNS_25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE":bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = tail call noalias noundef nonnull dereferenceable(16712) ptr @_Znwm(i64 noundef 16712) #25, !noalias !3434 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !3434
  invoke void @_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEC1EPNS_14TimeoutManagerES5_NS7_12InternalEnumES5_(ptr noundef nonnull align 8 dereferenceable(16712) %i.g, ptr noundef nonnull align 16 dereferenceable(632) %i.c, i64 %.sroa.0.0.copyload.i.i.i, i32 noundef 1, i64 -1)
          to label %_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i.i unwind label %bb.c, !noalias !3434

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 16712) #23, !noalias !3434
  resume { ptr, i32 } %i.h

_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_.exit.i.i: ; preds = %bb.b
end_hunk_9
begin_hunk_10_@"_ZN5folly6detail8function5call_IZNS_25EventBaseThreadTimekeeper5afterENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE":bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !599
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3437 ; 2 uses
  %i.u = sdiv i64 %i.t, 1000                      ; 2 uses
  %i.v = mul nsw i64 %i.u, 1000
  %i.w = icmp slt i64 %i.v, %i.t
end_hunk_10
begin_hunk_11_@llvm.experimental.noalias.scope.decl
!3429 = !{!3430}
!3430 = distinct !{!3430, !3431, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!3431 = distinct !{!3431, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!3432 = !{!3433, !3433, i64 0}
!3433 = !{!"p1 _ZTSN5folly7futures6detail16DeferredExecutorE", !15, i64 0}
!3434 = !{!3435}
!3435 = distinct !{!3435, !3436, !"_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_: argument 0"}
!3436 = distinct !{!3436, !"_ZN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8newTimerIJPNS_9EventBaseERKS5_EEESt10unique_ptrIS6_NS_18DelayedDestruction10DestructorEEDpOT_"}
!3437 = !{!27, !28, i64 0}
end_hunk_11
