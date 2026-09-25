Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/civil_time_test?download=true
inline.NumInlined: 11821
inline.NumDeleted: 2364
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIA24_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.g = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !69
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA24_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !68     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.s = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !69
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIA26_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !636
  store ptr %3, ptr %i.a, align 8, !tbaa !85, !noalias !637
  call void @_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !636
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit
  %i.b = load ptr, ptr %6, align 8, !tbaa !68     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.g = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !69
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA26_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !68     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.s = load ptr, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !69
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126CivilTime_RangeLimits_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126CivilTime_RangeLimits_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_126CivilTime_RangeLimits_TestE, i64 16), ptr %i.a, align 8, !tbaa !52
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126CivilTime_RangeLimits_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_126CivilTime_RangeLimits_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.60", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.60", align 8 ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %7 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.59", align 8 ; 7 uses
  %8 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.59", align 8 ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 7 uses
  %13 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.58", align 8 ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.57", align 8 ; 7 uses
  %18 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.57", align 8 ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.56", align 8 ; 10 uses
  %23 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time.56", align 8 ; 5 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %27 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 10 uses
  %28 = alloca %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", align 8 ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 7 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %41 = alloca %"class.testing::Message", align 8 ; 7 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 9223372036854775807, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i40 257, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  store i64 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 257, ptr %i.c, align 8
  %i.d = icmp eq i64 %i.b, 9223372036854775807
  br i1 %i.d, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i: ; preds = %bb.a
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %bb.a
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8year_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.i.i, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8year_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.e = load i8, ptr %1, align 8, !tbaa !79, !range !80, !noundef !81
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.i, %bb.d ], [ @.str.100, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 156, ptr noundef %i.j)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.k = load ptr, ptr %4, align 8, !tbaa !84     ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.k, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit75

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.r = load ptr, ptr %4, align 8, !tbaa !84     ; 3 uses
  %.not.i.i73 = icmp eq ptr %i.r, null
  br i1 %.not.i.i73, label %_ZN7testing7MessageD2Ev.exit75, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.j
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit75

_ZN7testing7MessageD2Ev.exit75:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ei

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !82   ; 4 uses
  %.not.i.i76 = icmp eq ptr %i.w, null
  br i1 %.not.i.i76, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !69
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 9223372036854775807, ptr %7, align 8
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i40 268, ptr %.sroa.2.0..sroa_idx.i.i78, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ac = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.ac, 1 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = and i64 %.fca.1.extract.i.i.i, 255
  %.sroa.2.8.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i.i.i, 256
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  store i64 %i.ad, ptr %8, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i, ptr %i.ae, align 8
  %i.af = load i64, ptr %7, align 8, !tbaa !96, !noalias !658
  %i.ag = icmp eq i64 %i.af, %i.ad
  %i.ah = trunc i64 %.fca.1.extract.i.i.i to i8
  %i.ai = load <4 x i8>, ptr %.sroa.2.0..sroa_idx.i.i78, align 8
  %i.aj = insertelement <4 x i8> <i8 poison, i8 1, i8 0, i8 0>, i8 %i.ah, i64 0
  %i.ak = icmp eq <4 x i8> %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.am = load i8, ptr %i.al, align 4
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = freeze <4 x i1> %i.ak
  %i.ap = bitcast <4 x i1> %i.ao to i4
  %i.aq = icmp eq i4 %i.ap, -1
  %i.ar = and i1 %i.ag, %i.aq
  %op.rdx614.a = select i1 %i.ar, i1 %i.an, i1 false
  br i1 %op.rdx614.a, label %bb.m, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.m:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_9month_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.m, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_9month_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.as = load i8, ptr %6, align 8, !tbaa !79, !range !80, !noundef !81
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_126CivilTime_RangeLimits_Test8TestBodyEv:bb.a

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_9month_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit84
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i88, label %_ZN7testing15AssertionResultD2Ev.exit92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89: ; preds = %bb.x
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !69
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit92

_ZN7testing15AssertionResultD2Ev.exit92:          ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 0, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.bq, 1
  %.fca.0.extract.i93 = extractvalue { i64, i64 } %i.bq, 0
  %.sroa.2.8.insert.insert.i.i.i95 = and i64 %.fca.1.extract.i.i, 65535
  store i64 %.fca.0.extract.i93, ptr %12, align 8
  %.sroa.2.0..sroa_idx.i.i96 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i97 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i95 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i97, ptr %.sroa.2.0..sroa_idx.i.i96, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.br = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i98 = extractvalue { i64, i64 } %i.br, 1 ; 3 uses
  %.sroa.2.8.insert.insert.i.i.i.i99 = and i64 %.fca.1.extract.i.i.i98, 65535
  %i.bs = extractvalue { i64, i64 } %i.br, 0      ; 2 uses
  store i64 %i.bs, ptr %13, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i99, ptr %i.bt, align 8
  %i.bu = load i64, ptr %12, align 8, !tbaa !98, !noalias !659
  %i.bv = icmp eq i64 %i.bu, %i.bs
  %i.bw = lshr i64 %.fca.1.extract.i.i.i98, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = trunc i64 %.fca.1.extract.i.i.i98 to i8
  %i.bz = load i8, ptr %.sroa.2.0..sroa_idx.i.i96, align 8
  %i.ca = icmp eq i8 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 9
  %i.cc = load <4 x i8>, ptr %i.cb, align 1
  %i.cd = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %i.bx, i64 0
  %i.ce = icmp eq <4 x i8> %i.cc, %i.cd
  %i.cf = freeze <4 x i1> %i.ce
  %i.cg = bitcast <4 x i1> %i.cf to i4
  %i.ch = icmp eq i4 %i.cg, -1
  %i.ci = and i1 %i.bv, %i.ch
  %op.rdx612.a = select i1 %i.ci, i1 %i.ca, i1 false
  br i1 %op.rdx612.a, label %bb.y, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit92
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit92
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_7day_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.y, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_7day_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.cj = load i8, ptr %11, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !82 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i101, label %_ZNK7testing15AssertionResult15failure_messageEv.exit102, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit102

_ZNK7testing15AssertionResult15failure_messageEv.exit102: ; preds = %bb.ab, %bb.aa
  %i.co = phi ptr [ %i.cn, %bb.ab ], [ @.str.100, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 158, ptr noundef %i.co)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit102
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cp = load ptr, ptr %14, align 8, !tbaa !84   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit105, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit105

_ZN7testing7MessageD2Ev.exit105:                  ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit108

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit102
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn40 = phi { ptr, i32 } [ %i.cv, %bb.ag ], [ %i.cu, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cw = load ptr, ptr %14, align 8, !tbaa !84   ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i106, label %_ZN7testing7MessageD2Ev.exit108, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107: ; preds = %bb.ah
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit108

_ZN7testing7MessageD2Ev.exit108:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107, %bb.ah, %bb.ae
  %.pn40.pn = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %.pn40, %bb.ah ], [ %.pn40, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ei

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_7day_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit105
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !82 ; 4 uses
  %.not.i.i109 = icmp eq ptr %i.db, null
  br i1 %.not.i.i109, label %_ZN7testing15AssertionResultD2Ev.exit113, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110: ; preds = %bb.aj
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !69
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i110
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit113

_ZN7testing15AssertionResultD2Ev.exit113:         ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.dh = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 0, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i301 = extractvalue { i64, i64 } %i.dh, 1
  %.fca.0.extract.i114 = extractvalue { i64, i64 } %i.dh, 0
  %.sroa.2.8.insert.insert.i.i.i116 = and i64 %.fca.1.extract.i.i301, 16777215
  store i64 %.fca.0.extract.i114, ptr %17, align 8
  %.sroa.2.0..sroa_idx.i.i117 = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i118 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i116 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i118, ptr %.sroa.2.0..sroa_idx.i.i117, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.di = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i119 = extractvalue { i64, i64 } %i.di, 1 ; 4 uses
  %.sroa.2.8.insert.insert.i.i.i.i120 = and i64 %.fca.1.extract.i.i.i119, 16777215
  %i.dj = extractvalue { i64, i64 } %i.di, 0      ; 2 uses
  store i64 %i.dj, ptr %18, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i120, ptr %i.dk, align 8
  %i.dl = load i64, ptr %17, align 8, !tbaa !100, !noalias !660
  %i.dm = icmp eq i64 %i.dl, %i.dj
  %i.dn = trunc i64 %.fca.1.extract.i.i.i119 to i8
  %i.do = load i8, ptr %.sroa.2.0..sroa_idx.i.i117, align 8
  %i.dp = icmp eq i8 %i.do, %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 9
  %49 = lshr i64 %.fca.1.extract.i.i.i119, 16
  %50 = lshr i64 %.fca.1.extract.i.i.i119, 8
  %51 = trunc i64 %49 to i8
  %52 = trunc i64 %50 to i8
  %53 = load <4 x i8>, ptr %i.dq, align 1
  %54 = insertelement <4 x i8> poison, i8 %52, i64 0
  %55 = insertelement <4 x i8> %54, i8 %51, i64 1
  %56 = shufflevector <4 x i8> %55, <4 x i8> <i8 poison, i8 poison, i8 0, i8 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %57 = icmp eq <4 x i8> %53, %56
  %58 = freeze <4 x i1> %57
  %59 = bitcast <4 x i1> %58 to i4
  %60 = icmp eq i4 %59, -1
  %61 = and i1 %i.dm, %60
  %op.rdx610.a = select i1 %61, i1 %i.dp, i1 false
  br i1 %op.rdx610.a, label %bb.ak, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit113
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit113
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_8hour_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.ak, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_8hour_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.dr = load i8, ptr %16, align 8, !tbaa !79, !range !80, !noundef !81
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.au, label %bb.al

bb.al:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !82 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.du, null
  br i1 %.not.i.i122, label %_ZNK7testing15AssertionResult15failure_messageEv.exit123, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit123

_ZNK7testing15AssertionResult15failure_messageEv.exit123: ; preds = %bb.an, %bb.am
  %i.dw = phi ptr [ %i.dv, %bb.an ], [ @.str.100, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.dw)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.dx = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ap
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(128) %i.dx) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit129

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit123
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn43 = phi { ptr, i32 } [ %i.ed, %bb.as ], [ %i.ec, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ee = load ptr, ptr %19, align 8, !tbaa !84   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit129, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.at
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit129

_ZN7testing7MessageD2Ev.exit129:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128, %bb.at, %bb.aq
  %.pn43.pn = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %.pn43, %bb.at ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ei

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8hour_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit126
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82 ; 4 uses
  %.not.i.i130 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i130, label %_ZN7testing15AssertionResultD2Ev.exit134, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !68 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131: ; preds = %bb.av
  %i.en = load i64, ptr %i.el, align 8, !tbaa !69
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i131
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit134

_ZN7testing15AssertionResultD2Ev.exit134:         ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.ep = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 0) #20 ; 2 uses
  %.fca.1.extract.i.i321 = extractvalue { i64, i64 } %i.ep, 1
  %.fca.0.extract.i135 = extractvalue { i64, i64 } %i.ep, 0
  %.sroa.2.8.insert.insert.i.i.i137 = and i64 %.fca.1.extract.i.i321, 4294967295
  store i64 %.fca.0.extract.i135, ptr %22, align 8
  %.sroa.2.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i139 = trunc nuw nsw i64 %.sroa.2.8.insert.insert.i.i.i137 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i139, ptr %.sroa.2.0..sroa_idx.i.i138, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.eq = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i140 = extractvalue { i64, i64 } %i.eq, 1 ; 5 uses
  %.sroa.2.8.insert.insert.i.i.i.i141 = and i64 %.fca.1.extract.i.i.i140, 4294967295
  %i.er = extractvalue { i64, i64 } %i.eq, 0      ; 2 uses
  store i64 %i.er, ptr %23, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i141, ptr %i.es, align 8
  %i.et = load i64, ptr %22, align 8, !tbaa !102, !noalias !661
  %62 = icmp eq i64 %i.et, %i.er
  %63 = lshr i64 %.fca.1.extract.i.i.i140, 8
  %64 = trunc i64 %63 to i8
  %65 = lshr i64 %.fca.1.extract.i.i.i140, 16
  %66 = trunc i64 %65 to i8
  %67 = lshr i64 %.fca.1.extract.i.i.i140, 24
  %68 = trunc i64 %67 to i8
  %69 = trunc i64 %.fca.1.extract.i.i.i140 to i8
  %70 = load i8, ptr %.sroa.2.0..sroa_idx.i.i138, align 8
  %i.eu = icmp eq i8 %70, %69
  %or.cond582 = select i1 %62, i1 %i.eu, i1 false
  %71 = getelementptr inbounds nuw i8, ptr %22, i64 9
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, %64
  %or.cond585 = select i1 %or.cond582, i1 %73, i1 false
  %i.ev = getelementptr inbounds nuw i8, ptr %22, i64 10
  %i.ew = load i8, ptr %i.ev, align 2
  %i.ex = icmp eq i8 %i.ew, %66
  %or.cond588 = select i1 %or.cond585, i1 %i.ex, i1 false
  %74 = getelementptr inbounds nuw i8, ptr %22, i64 11
  %75 = load i8, ptr %74, align 1
  %i.ey = icmp eq i8 %75, %68
  %or.cond591 = select i1 %or.cond588, i1 %i.ey, i1 false
  %76 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %77 = load i8, ptr %76, align 4
  %78 = icmp eq i8 %77, 0
  %or.cond594 = select i1 %or.cond591, i1 %78, i1 false
  br i1 %or.cond594, label %bb.aw, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.aw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit134
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit134
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10minute_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.aw, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10minute_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.ez = load i8, ptr %21, align 8, !tbaa !79, !range !80, !noundef !81
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !82 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i143, label %_ZNK7testing15AssertionResult15failure_messageEv.exit144, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit144

_ZNK7testing15AssertionResult15failure_messageEv.exit144: ; preds = %bb.az, %bb.ay
  %i.fe = phi ptr [ %i.fd, %bb.az ], [ @.str.100, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.fe)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.ff = load ptr, ptr %24, align 8, !tbaa !84   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.bb
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit150

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn46 = phi { ptr, i32 } [ %i.fl, %bb.be ], [ %i.fk, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.fm = load ptr, ptr %24, align 8, !tbaa !84   ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %bb.bf
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, %bb.bf, %bb.bc
  %.pn46.pn = phi { ptr, i32 } [ %i.fj, %bb.bc ], [ %.pn46, %bb.bf ], [ %.pn46, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.ei

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10minute_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit147
  %i.fq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !82 ; 4 uses
  %.not.i.i151 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i151, label %_ZN7testing15AssertionResultD2Ev.exit155, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !68 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %bb.bh
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !69
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit155

_ZN7testing15AssertionResultD2Ev.exit155:         ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.fx = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i341 = extractvalue { i64, i64 } %i.fx, 1
  %.fca.0.extract.i156 = extractvalue { i64, i64 } %i.fx, 0
  store i64 %.fca.0.extract.i156, ptr %27, align 8
  %.sroa.2.0..sroa_idx.i.i158 = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i159 = trunc i64 %.fca.1.extract.i.i341 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i159, ptr %.sroa.2.0..sroa_idx.i.i158, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.fy = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #20 ; 2 uses
  %.fca.1.extract.i.i.i160 = extractvalue { i64, i64 } %i.fy, 1 ; 6 uses
  %.sroa.2.8.insert.ext.i = and i64 %.fca.1.extract.i.i.i160, 1099511627775
  %i.fz = extractvalue { i64, i64 } %i.fy, 0      ; 2 uses
  store i64 %i.fz, ptr %28, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %i.ga, align 8
  %i.gb = load i64, ptr %27, align 8, !tbaa !104, !noalias !662
  %i.gc = icmp eq i64 %i.gb, %i.fz
  %79 = lshr i64 %.fca.1.extract.i.i.i160, 8
  %80 = trunc i64 %79 to i8
  %81 = lshr i64 %.fca.1.extract.i.i.i160, 16
  %82 = trunc i64 %81 to i8
  %83 = lshr i64 %.fca.1.extract.i.i.i160, 24
  %84 = trunc i64 %83 to i8
  %i.gd = lshr i64 %.fca.1.extract.i.i.i160, 32
  %85 = trunc i64 %i.gd to i8
  %i.ge = trunc i64 %.fca.1.extract.i.i.i160 to i8
  %86 = load i8, ptr %.sroa.2.0..sroa_idx.i.i158, align 8
  %87 = icmp eq i8 %86, %i.ge
  %or.cond597 = select i1 %i.gc, i1 %87, i1 false
  %88 = getelementptr inbounds nuw i8, ptr %27, i64 9
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, %80
  %or.cond600 = select i1 %or.cond597, i1 %90, i1 false
  %i.gf = getelementptr inbounds nuw i8, ptr %27, i64 10
  %i.gg = load i8, ptr %i.gf, align 2
  %i.gh = icmp eq i8 %i.gg, %82
  %or.cond603 = select i1 %or.cond600, i1 %i.gh, i1 false
  %91 = getelementptr inbounds nuw i8, ptr %27, i64 11
  %92 = load i8, ptr %91, align 1
  %i.gi = icmp eq i8 %92, %84
  %or.cond606 = select i1 %or.cond603, i1 %i.gi, i1 false
  %93 = getelementptr inbounds nuw i8, ptr %27, i64 12
  %94 = load i8, ptr %93, align 4
  %95 = icmp eq i8 %94, %85
  %or.cond609 = select i1 %or.cond606, i1 %95, i1 false
  br i1 %or.cond609, label %bb.bi, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.bi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit155
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit155
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.212, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28)
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.bi, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.gj = load i8, ptr %26, align 8, !tbaa !79, !range !80, !noundef !81
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !82 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i162, label %_ZNK7testing15AssertionResult15failure_messageEv.exit163, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit163

_ZNK7testing15AssertionResult15failure_messageEv.exit163: ; preds = %bb.bl, %bb.bk
  %i.go = phi ptr [ %i.gn, %bb.bl ], [ @.str.100, %bb.bk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef %i.go)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit163
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.gp = load ptr, ptr %29, align 8, !tbaa !84   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.bn
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !52
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(128) %i.gp) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bj
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit169

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit163
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn49 = phi { ptr, i32 } [ %i.gv, %bb.bq ], [ %i.gu, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.gw = load ptr, ptr %29, align 8, !tbaa !84   ; 3 uses
  %.not.i.i167 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i167, label %_ZN7testing7MessageD2Ev.exit169, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168: ; preds = %bb.br
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !52
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(128) %i.gw) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit169

_ZN7testing7MessageD2Ev.exit169:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168, %bb.br, %bb.bo
  %.pn49.pn = phi { ptr, i32 } [ %i.gt, %bb.bo ], [ %.pn49, %bb.br ], [ %.pn49, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ei

bb.bs:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit166
  %i.ha = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !82 ; 4 uses
  %.not.i.i170 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i170, label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !68 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171: ; preds = %bb.bt
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !69
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i171
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef 32) #22
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179: ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
  %.pre = load i8, ptr %31, align 8, !tbaa !79, !range !80
  %i.hh = trunc nuw i8 %.pre to i1
  br i1 %i.hh, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_8year_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.hi = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !82 ; 2 uses
  %.not.i.i180 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !68
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bw, %bb.bv
  %i.hl = phi ptr [ %i.hk, %bb.bw ], [ @.str.100, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef %i.hl)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.hm = load ptr, ptr %32, align 8, !tbaa !84   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.by
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !52
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(128) %i.hm) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bu
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit187

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn52 = phi { ptr, i32 } [ %i.hs, %bb.cb ], [ %i.hr, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.ht = load ptr, ptr %32, align 8, !tbaa !84   ; 3 uses
  %.not.i.i185 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i185, label %_ZN7testing7MessageD2Ev.exit187, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i186

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i186: ; preds = %bb.cc
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !52
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(128) %i.ht) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit187

end_hunk_1
