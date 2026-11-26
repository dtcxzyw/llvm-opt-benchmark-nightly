Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/statusor_test?download=true
inline.NumInlined: 18650
inline.NumDeleted: 6202
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEEA4_cEENS_15AssertionResultEPKcS9_RKT_RKT0_:bb.a
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1740
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !146    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !149
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.g = load ptr, ptr %5, align 8, !tbaa !146    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !149
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !146    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !149
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.s = load ptr, ptr %5, align 8, !tbaa !146    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !149
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_TestE, i64 16), ptr %i.a, align 8, !tbaa !114
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::StatusOr.401", align 8 ; 22 uses
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %2 = alloca %"class.std::unique_ptr.126", align 8 ; 7 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.415", align 8 ; 16 uses
  %5 = alloca %"class.absl_testing::lts_20260526::status_internal::IsOkAndHoldsMatcher.416", align 8 ; 13 uses
  %6 = alloca %"class.testing::internal::VariadicMatcher.417", align 8 ; 16 uses
  %7 = alloca %"class.testing::PolymorphicMatcher.427", align 8 ; 11 uses
  %8 = alloca %"class.testing::internal::ElementsAreMatcher", align 4 ; 7 uses
  %9 = alloca %"class.testing::PolymorphicMatcher.422", align 8 ; 11 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.absl::lts_20260526::Status", align 8 ; 8 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = alloca [3 x i32], align 4                ; 7 uses
  %25 = alloca %"class.std::unique_ptr.126", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.415", align 8 ; 16 uses
  %28 = alloca %"class.absl_testing::lts_20260526::status_internal::IsOkAndHoldsMatcher.416", align 8 ; 13 uses
  %29 = alloca %"class.testing::internal::VariadicMatcher.417", align 8 ; 16 uses
  %30 = alloca %"class.testing::PolymorphicMatcher.427", align 8 ; 11 uses
  %31 = alloca %"class.testing::internal::ElementsAreMatcher", align 4 ; 7 uses
  %32 = alloca %"class.testing::PolymorphicMatcher.422", align 8 ; 11 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #31, !noalias !1751 ; 3 uses
  store i32 13, ptr %i.e, align 4, !tbaa !126, !noalias !1751
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #31
          to label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit unwind label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit8.i.i ; 5 uses

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit8.i.i: ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 4) #30
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit95

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  store ptr %i.g, ptr %i.f, align 8, !tbaa !311
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !312
  store i32 10, ptr %i.g, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 11, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 12, ptr %.sroa.6.0..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !313
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store i64 %i.i, ptr %i.m, align 8, !tbaa !128
  store i64 1, ptr %1, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 1, ptr %i.a, align 4, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 2, ptr %i.n, align 4, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 3, ptr %i.o, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.p = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #31
          to label %bb.b unwind label %bb.ai, !noalias !1752 ; 2 uses

bb.b:                                             ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit
  store i32 4, ptr %i.p, align 4, !tbaa !126, !noalias !1752
  store ptr %i.p, ptr %2, align 8, !tbaa !128, !alias.scope !1752
  invoke fastcc void @_ZN4absl12lts_202605268StatusOrIN12_GLOBAL__N_113InPlaceHelperEE7emplaceIiJSt10unique_ptrIiSt14default_deleteIiEEETnNSt9enable_ifIXsr3std16is_constructibleIS3_RSt16initializer_listIT_EDpOT0_EE5valueEiE4typeELi0EEERS3_SD_SH_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %.not.i85 = icmp eq ptr %i.q, null
  br i1 %.not.i85, label %bb.d, label %_ZNKSt14default_deleteIiEclEPi.exit.i86

_ZNKSt14default_deleteIiEclEPi.exit.i86:          ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 4) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i86, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 3, ptr %8, align 4, !alias.scope !1753
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 2, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !1753
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !1753
  invoke fastcc void @_ZN7testing5FieldIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEENS_8internal18ElementsAreMatcherISt5tupleIJiiiEEEEEENS_18PolymorphicMatcherINS7_12FieldMatcherIT_T0_EEEEMSE_SF_RKT1_(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 4 dereferenceable(12) %8)
          to label %bb.e unwind label %bb.ak

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke fastcc void @_ZN7testing5FieldIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEENS_8internal14PointeeMatcherIiEEEENS_18PolymorphicMatcherINS7_12FieldMatcherIT_T0_EEEEMSC_SD_RKT1_(ptr dead_on_unwind noalias writable align 8 %9, i32 4)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN7testing5AllOfIJNS_18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS1_INS3_IS5_St10unique_ptrIiSt14default_deleteIiEEEEEEEEENS2_15VariadicMatcherINS2_16AllOfMatcherImplEJDpNSt5decayIRKT_E4typeEEEEDpSN_(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN12absl_testing12lts_2026052612IsOkAndHoldsIN7testing8internal15VariadicMatcherINS3_16AllOfMatcherImplEJNS2_18PolymorphicMatcherINS3_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS6_INS7_IS9_St10unique_ptrIiSt14default_deleteIiEEEEEEEEEEENS0_15status_internal19IsOkAndHoldsMatcherINSt5decayIT_E4typeEEEOSQ_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.h unwind label %bb.an

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_ZN7testing8internal33MakePredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS8_INS9_ISB_St10unique_ptrIiSt14default_deleteIiEEEEEEEEEEEEENS0_29PredicateFormatterFromMatcherIT_EESR_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef align 8 %5)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal19IsOkAndHoldsMatcherINS0_15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS8_INS9_ISB_St10unique_ptrIiSt14default_deleteIiEEEEEEEEEEEEclIN4absl12lts_202605268StatusOrISB_EEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.j unwind label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i203: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !149
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i204: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i203
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEEE, i64 16), ptr %i.x, align 8, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !316  ; 2 uses
  %.not.i.i.i.i.i.i.i.i205 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i205, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i206

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i204
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !318
  %.not.i.i.i.i.i.i.i207 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i207, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208, label %bb.k

bb.k:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i206
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !149
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.l, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !316
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !318
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !149
  invoke void %i.ai(ptr noundef %i.aj)
          to label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208 unwind label %bb.m, !inline_history !25

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #29, !inline_history !319
  unreachable

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208: ; preds = %bb.l, %bb.k, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i204
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !146 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i209: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !149
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i210: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i209
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEEE, i64 16), ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i.i3.i.i211 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i3.i.i211, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216, label %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i212

_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i210
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !324
  %.not.i.i.i.i.i4.i.i213 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i4.i.i213, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216, label %bb.n

bb.n:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i212
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.o, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !322
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !324
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !149
  invoke void %i.bd(ptr noundef %i.be)
          to label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216 unwind label %bb.p, !inline_history !26

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29, !inline_history !325
  unreachable

_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i210, %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i212, %bb.n, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !146 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i217: ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !149
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i218: ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i217
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEEE, i64 16), ptr %i.bn, align 8, !tbaa !114
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i.i.i.i.i.i219 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i219, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i220

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i218
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !318
  %.not.i.i.i.i.i.i.i221 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i221, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222, label %bb.q

bb.q:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i220
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !149
  %i.bu = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.r, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !316
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !318
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !149
  invoke void %i.by(ptr noundef %i.bz)
          to label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222 unwind label %bb.s, !inline_history !25

bb.s:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #29, !inline_history !319
  unreachable

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222: ; preds = %bb.r, %bb.q, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i218
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !146 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i223: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !149
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i224: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i223
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_Test8TestBodyEv:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !318
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !149
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.x, label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !316
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !318
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !149
  invoke void %i.do(ptr noundef %i.dp)
          to label %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i unwind label %bb.y, !inline_history !25

bb.y:                                             ; preds = %bb.x
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #29, !inline_history !319
  unreachable

_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i: ; preds = %bb.x, %bb.w, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !146 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !149
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i: ; preds = %_ZNSt10_Head_baseILm0EN7testing18PolymorphicMatcherINS0_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEELb0EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEEE, i64 16), ptr %i.dy, align 8, !tbaa !114
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i.i3.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i.i3.i.i, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !324
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !149
  %i.ef = atomicrmw add ptr %i.ee, i32 -1 acq_rel, align 4
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.aa, label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !322
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !324
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !149
  invoke void %i.ej(ptr noundef %i.ek)
          to label %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit unwind label %bb.ab, !inline_history !26

bb.ab:                                            ; preds = %bb.aa
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #29, !inline_history !325
  unreachable

_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i2.i.i, %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i.i.i.i, %bb.z, %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !146 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !149
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEEE, i64 16), ptr %i.et, align 8, !tbaa !114
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !324
  %.not.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !149
  %i.fa = atomicrmw add ptr %i.ez, i32 -1 acq_rel, align 4
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ad, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !322
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !324
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !149
  invoke void %i.fe(ptr noundef %i.ff)
          to label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit unwind label %bb.ae, !inline_history !26

bb.ae:                                            ; preds = %bb.ad
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #29, !inline_history !325
  unreachable

_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE8IsSharedEv.exit.i.i.i.i, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !146 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !149
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i89: ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEEE, i64 16), ptr %i.fo, align 8, !tbaa !114
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !316 ; 2 uses
  %.not.i.i.i.i.i90 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i90, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i89
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !318
  %.not.i.i.i.i91 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i91, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !149
  %i.fv = atomicrmw add ptr %i.fu, i32 -1 acq_rel, align 4
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.ag, label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr %i.fp, align 8, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !318
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !149
  invoke void %i.fz(ptr noundef %i.ga)
          to label %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit unwind label %bb.ah, !inline_history !25

bb.ah:                                            ; preds = %bb.ag
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #29, !inline_history !319
  unreachable

_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i89, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE8IsSharedEv.exit.i.i.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.gd = load i8, ptr %3, align 8, !tbaa !140, !range !141, !noundef !155
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.be, label %bb.av

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98

bb.aj:                                            ; preds = %bb.b
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %.not.i96 = icmp eq ptr %i.gh, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98, label %_ZNKSt14default_deleteIiEclEPi.exit.i97

_ZNKSt14default_deleteIiEclEPi.exit.i97:          ; preds = %bb.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 4) #30
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i97, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.ai ], [ %i.gg, %bb.aj ], [ %i.gg, %_ZNKSt14default_deleteIiEclEPi.exit.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.gb

bb.ak:                                            ; preds = %bb.d
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.al:                                            ; preds = %bb.e
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.am:                                            ; preds = %bb.f
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %bb.g
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.h
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #28
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn42 = phi { ptr, i32 } [ %i.gn, %bb.ap ], [ %i.gm, %bb.ao ]
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.aq ], [ %i.gl, %bb.an ]
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #28
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.ar ], [ %i.gk, %bb.am ]
  call fastcc void @_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %bb.as ], [ %i.gj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call fastcc void @_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ak
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %bb.at ], [ %i.gi, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.bt

bb.av:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !142 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !146
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ax, %bb.aw
  %i.gr = phi ptr [ %i.gq, %bb.ax ], [ @.str.258, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 398, ptr noundef %i.gr)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.gs = load ptr, ptr %10, align 8, !tbaa !148  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.az
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !114
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(128) %i.gs) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit102

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn48 = phi { ptr, i32 } [ %i.gy, %bb.bc ], [ %i.gx, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.gz = load ptr, ptr %10, align 8, !tbaa !148  ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.bd
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !114
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, %bb.bd, %bb.ba
  %.pn48.pn = phi { ptr, i32 } [ %i.gw, %bb.ba ], [ %.pn48, %bb.bd ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  br label %bb.bt

bb.be:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !142 ; 4 uses
  %.not.i.i103 = icmp eq ptr %i.he, null
  br i1 %.not.i.i103, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !146 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bf
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !149
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 32) #30
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %12, i64 3, ptr nonnull @.str.395, i64 399, ptr nonnull @.str.2)
          to label %bb.bh unwind label %bb.bu

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i.i = load i64, ptr %1, align 8, !tbaa !130
  %i.hk = icmp eq i64 %.val.i.i.i, 1
  br i1 %i.hk, label %bb.bi, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE5ClearEv.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i.i.i104 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i104, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i:    ; preds = %bb.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 4) #30
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i, %bb.bi
  %i.hm = load ptr, ptr %i.f, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i.i.i.i.i105 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i105, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE5ClearEv.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i
  %i.hn = load ptr, ptr %i.k, align 8, !tbaa !312
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #30
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_136StatusOr_EmplaceInitializerList_Test8TestBodyEv:bb.a
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %27) #28
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn71 = phi { ptr, i32 } [ %i.tv, %bb.ff ], [ %i.tu, %bb.fe ]
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %28) #28
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fd
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %bb.fg ], [ %i.tt, %bb.fd ]
  call fastcc void @_ZN7testing8internal15VariadicMatcherINS0_16AllOfMatcherImplEJNS_18PolymorphicMatcherINS0_12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEEENS3_INS4_IS6_St10unique_ptrIiSt14default_deleteIiEEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %29) #28
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fc
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.fh ], [ %i.ts, %bb.fc ]
  call fastcc void @_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperESt10unique_ptrIiSt14default_deleteIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %32) #28
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fb
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %bb.fi ], [ %i.tr, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  call fastcc void @_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #28
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fa
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.fj ], [ %i.tq, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.ga

bb.fl:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  %i.tw = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !142 ; 2 uses
  %.not.i.i188 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i188, label %_ZNK7testing15AssertionResult15failure_messageEv.exit189, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !146
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit189

_ZNK7testing15AssertionResult15failure_messageEv.exit189: ; preds = %bb.fn, %bb.fm
  %i.tz = phi ptr [ %i.ty, %bb.fn ], [ @.str.258, %bb.fm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 406, ptr noundef %i.tz)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit189
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fp unwind label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.ua = load ptr, ptr %33, align 8, !tbaa !148  ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.fp
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !114
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(128) %i.ua) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %bb.fp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.fu

bb.fq:                                            ; preds = %bb.fl
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit195

bb.fr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit189
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fo
  %i.ug = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #28
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.pn77 = phi { ptr, i32 } [ %i.ug, %bb.fs ], [ %i.uf, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.uh = load ptr, ptr %33, align 8, !tbaa !148  ; 3 uses
  %.not.i.i193 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i193, label %_ZN7testing7MessageD2Ev.exit195, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i194

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i194: ; preds = %bb.ft
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !114
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(128) %i.uh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit195

_ZN7testing7MessageD2Ev.exit195:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i194, %bb.ft, %bb.fq
  %.pn77.pn = phi { ptr, i32 } [ %i.ue, %bb.fq ], [ %.pn77, %bb.ft ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #28
  br label %bb.ga

bb.fu:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal12FieldMatcherIN12_GLOBAL__N_113InPlaceHelperEKSt6vectorIiSaIiEEEEED2Ev.exit184, %_ZN7testing7MessageD2Ev.exit192
  %i.ul = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !142 ; 4 uses
  %.not.i.i196 = icmp eq ptr %i.um, null
  br i1 %.not.i.i196, label %_ZN7testing15AssertionResultD2Ev.exit200, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !146 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 16 ; 2 uses
  %i.up = icmp eq ptr %i.un, %i.uo
  br i1 %i.up, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197: ; preds = %bb.fv
  %i.uq = load i64, ptr %i.uo, align 8, !tbaa !149
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.ur) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i197
  call void @_ZdlPvm(ptr noundef nonnull %i.um, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit200

_ZN7testing15AssertionResultD2Ev.exit200:         ; preds = %bb.fu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %.val.i = load i64, ptr %1, align 8, !tbaa !130 ; 3 uses
  %i.us = icmp eq i64 %.val.i, 1
  br i1 %i.us, label %_ZN4absl12lts_202605266StatusD2Ev.exit.i, label %bb.fx

_ZN4absl12lts_202605266StatusD2Ev.exit.i:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit200
  %i.ut = load ptr, ptr %i.m, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i201 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i201, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i:        ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ut, i64 noundef 4) #30
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i, %_ZN4absl12lts_202605266StatusD2Ev.exit.i
  %i.uu = load ptr, ptr %i.f, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i.i.i202 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i.i.i202, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i
  %i.uv = load ptr, ptr %i.k, align 8, !tbaa !312
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.uu to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uy) #30
  br label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev.exit

bb.fx:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit200
  %i.uz = trunc i64 %.val.i to i1
  br i1 %i.uz, label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev.exit, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.va = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.va)
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev.exit unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.vb = landingpad { ptr, i32 }
          catch ptr null
  %i.vc = extractvalue { ptr, i32 } %i.vb, 0
  call void @__clang_call_terminate(ptr %i.vc) #29
  unreachable

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i, %bb.fw, %bb.fx, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.ga:                                            ; preds = %_ZN7testing7MessageD2Ev.exit195, %bb.fk
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn71.pn.pn.pn.pn, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit187, %bb.ex, %bb.dd, %_ZN7testing7MessageD2Ev.exit114, %bb.bw, %bb.bt, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %bb.ga ], [ %.pn69, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit187 ], [ %.pn65.pn.pn, %bb.ex ], [ %.pn61.pn.pn, %bb.dd ], [ %.pn54.pn.pn, %_ZN7testing7MessageD2Ev.exit114 ], [ %.pn52, %bb.bw ], [ %.pn48.pn.pn, %bb.bt ], [ %.pn, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit98 ]
  call fastcc void @_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #28
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit95

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit95: ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit8.i.i, %bb.gb
  %.pn77.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn.pn, %bb.gb ], [ %i.h, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit8.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_202605268StatusOrIN12_GLOBAL__N_113InPlaceHelperEE7emplaceIiJSt10unique_ptrIiSt14default_deleteIiEEETnNSt9enable_ifIXsr3std16is_constructibleIS3_RSt16initializer_listIT_EDpOT0_EE5valueEiE4typeELi0EEERS3_SD_SH_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((16, 24)) %0, ptr nofree nonnull readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !tbaa !130
  %i.a = icmp eq i64 %.val, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  br i1 %i.a, label %bb.b, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i9

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i:        ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 4) #30
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i, %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !311  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !312
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i
  %i.k = load i64, ptr %2, align 8, !tbaa !128    ; 3 uses
  store ptr null, ptr %2, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 24, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #31
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !311  ; 3 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i4.i.i.i.i, label %.body.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !312
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.d
  %.not.i4.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %.body.i.i, %.body.i.i11
  %.sink.in = phi i64 [ %i.w, %.body.i.i11 ], [ %i.k, %.body.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.y, %.body.i.i11 ], [ %i.m, %.body.i.i ]
  %.sink = inttoptr i64 %.sink.in to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 4) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body.i.i11, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %.body.i.i ], [ %i.y, %.body.i.i11 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i
  store ptr %i.l, ptr %i.b, align 8, !tbaa !311
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.v, align 8, !tbaa !313
  store i64 %i.k, ptr %i.c, align 8, !tbaa !128
  br label %_ZN4absl12lts_202605266StatusD2Ev.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i9: ; preds = %bb.a
  %i.w = load i64, ptr %2, align 8, !tbaa !128    ; 3 uses
  store ptr null, ptr %2, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #31
          to label %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit18 unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i9
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !311  ; 3 uses
  %.not.i.i4.i.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4.i.i.i.i10, label %.body.i.i11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !312
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #30
  br label %.body.i.i11

.body.i.i11:                                      ; preds = %bb.g, %bb.f
  %.not.i4.i.i12 = icmp eq i64 %i.w, 0
  br i1 %.not.i4.i.i12, label %common.resume, label %common.resume.sink.split

_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit18: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i9
  store ptr %i.x, ptr %i.b, align 8, !tbaa !311
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !313
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.w, ptr %i.ai, align 8, !tbaa !128
  %i.aj = load i64, ptr %0, align 8, !tbaa !130   ; 3 uses
  %.not.i = icmp eq i64 %i.aj, 1
  br i1 %.not.i, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit18
  store i64 1, ptr %0, align 8, !tbaa !130
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = inttoptr i64 %i.aj to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.al)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #29
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit18, %bb.h, %bb.i, %_ZN4absl12lts_2026052617internal_statusor12StatusOrDataIN12_GLOBAL__N_113InPlaceHelperEE9MakeValueIJRSt16initializer_listIiESt10unique_ptrIiSt14default_deleteIiEEEEEvDpOT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134StatusOr_TestCopyCtorStatusOk_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134StatusOr_TestCopyCtorStatusOk_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_134StatusOr_TestCopyCtorStatusOk_TestE, i64 16), ptr %i.a, align 8, !tbaa !114
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_134StatusOr_TestCopyCtorStatusOk_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_134StatusOr_TestCopyCtorStatusOk_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::StatusOr.190", align 8 ; 9 uses
  %2 = alloca %"class.absl::lts_20260526::StatusOr.190", align 8 ; 10 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.546", align 1 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 4, ptr %i.a, align 8, !tbaa !149
  store i64 1, ptr %1, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 4, ptr %i.b, align 8, !tbaa !126
  store i64 1, ptr %2, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherIN12absl_testing12lts_2026052615status_internal11IsOkMatcherEEclIN4absl12lts_202605266StatusEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.404, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_2
