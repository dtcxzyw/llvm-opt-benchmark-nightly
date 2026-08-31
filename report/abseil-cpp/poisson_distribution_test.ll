Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/poisson_distribution_test?download=true
inline.NumInlined: 6098
inline.NumDeleted: 2285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt15_Sp_counted_ptrIPN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_124PoissonDistributionZTestEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_124PoissonDistributionZTestEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret ptr null
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #40, !inline_history !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #40, !inline_history !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN7testing8internal19TestMetaFactoryBaseIN12_GLOBAL__N_16ZParamEED2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestEE17CreateTestFactoryENS2_6ZParamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly byval(%"struct.(anonymous namespace)::ZParam") align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #41 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE10parameter_E, align 8, !tbaa !95
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #41 ; 11 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 16 dereferenceable(80) %i.b)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEEE, i64 16), ptr %i.b, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEEE, i64 80), ptr %i.c, align 8, !tbaa !31
  %i.d = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE8GetParamEv()
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(80) %i.b) #40
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load double, ptr %i.d, align 8, !tbaa !97
  store double %i.g, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 3337843704530833496, ptr %i.i, align 16, !tbaa !35
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 5843272855002366918, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestE, i64 16), ptr %i.b, align 16, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestE, i64 80), ptr %i.c, align 16, !tbaa !31
  ret ptr %i.b

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.e, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #38
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 16            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_112PoissonModelD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load ptr, ptr %i.b, align 16
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.e) #38
  br label %_ZN12_GLOBAL__N_112PoissonModelD2Ev.exit

_ZN12_GLOBAL__N_112PoissonModelD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #40
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.a, align 16          ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load ptr, ptr %i.b, align 16
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.e) #38
  br label %_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit

_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(80) %0) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #38
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_Test8TestBodyEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(80) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %1 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"class.absl::lts_20260526::poisson_distribution", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 14 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"struct.absl::lts_20260526::random_internal::DistributionMoments", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.o = tail call fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE8GetParamEv() ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !106  ; 2 uses
  %i.r = sitofp i32 %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !107 ; 2 uses
  %i.u = fmul double %i.t, %i.r
  %i.v = tail call double @llvm.ceil.f64(double %i.u)
  %i.w = fptosi double %i.v to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  store i32 %.sroa.speculated, ptr %i.m, align 4, !tbaa !52
  %i.x = tail call noundef double @_ZN4absl12lts_2026052615random_internal26RequiredSuccessProbabilityEdi(double noundef %i.t, i32 noundef %i.q) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #40
  store i32 0, ptr %i.n, align 4, !tbaa !52
  %i.y = load i32, ptr %i.p, align 8, !tbaa !106
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit
  %.pre = load i32, ptr %i.m, align 4, !tbaa !52, !noalias !108
  %i.ap = icmp sgt i32 %i.ji, %.pre
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  br i1 %i.ap, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.c:                                             ; preds = %._crit_edge
  call void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @.str.38)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.b, %bb.c
  %i.aq = load i8, ptr %6, align 8, !tbaa !111, !range !120, !noundef !121
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.bt, label %bb.bk

bb.d:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit
  %.01386 = phi i32 [ 0, %.lr.ph ], [ %i.jj, %_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit ]
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !122 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %.val31.i = load double, ptr %i.ab, align 8, !tbaa !99
  call void @_ZN4absl12lts_2026052620poisson_distributionIiE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(49) %2, double noundef %.val31.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i64 1, ptr %3, align 8
  %i.at = icmp ugt i64 %i.as, 1152921504606846975
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #39
          to label %.noexc.i unwind label %.thread.i.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i16 = icmp eq i64 %i.as, 0
  br i1 %.not.i16, label %._crit_edge.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %bb.f
  %i.au = shl nuw nsw i64 %i.as, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #41
          to label %.lr.ph.i unwind label %.thread.i.loopexit ; 3 uses

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.as
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i
  %i.ax = ptrtoint ptr %.sroa.12.2.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %.sroa.19.0.lcssa.i = phi ptr [ null, %bb.f ], [ %.sroa.19.3.i, %._crit_edge.i.loopexit ] ; 2 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.ax, %._crit_edge.i.loopexit ]
  %.sroa.087.0.lcssa.i = phi ptr [ null, %bb.f ], [ %.sroa.087.3.i, %._crit_edge.i.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ay = ptrtoint ptr %.sroa.087.0.lcssa.i to i64 ; 2 uses
  %i.az = sub i64 %.sroa.12.0.lcssa.i, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %4, ptr %.sroa.087.0.lcssa.i, i64 %i.ba)
          to label %bb.ae unwind label %bb.aw

.thread.i.loopexit:                               ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit82.i

.thread.i.loopexit.split-lp:                      ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit82.i

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i ]
  %.sroa.087.0124.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.087.3.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i ] ; 5 uses
  %.sroa.12.0123.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.sroa.12.2.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i ] ; 6 uses
  %.sroa.19.0122.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.sroa.19.3.i, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #40
  %i.bb = load i32, ptr %i.ag, align 8, !tbaa !123 ; 3 uses
  %.not.i28 = icmp eq i32 %i.bb, 0
  br i1 %.not.i28, label %bb.k, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.g
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph.i, label %_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i

.preheader.lr.ph.i:                               ; preds = %.preheader56.i
  %.promoted59.i = load i64, ptr %i.ac, align 16
  %i.bd = load double, ptr %i.ah, align 8, !tbaa !125
  %.sroa.22.0..sroa_idx.i.i.i.promoted64.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.preheader.lr.ph.i
  %.narrow.i.i.i.i.i.lcssa65.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.promoted64.i, %.preheader.lr.ph.i ], [ %.narrow.i.i.i.i.i.i, %bb.j ]
  %.03463.i = phi i32 [ %i.bb, %.preheader.lr.ph.i ], [ %i.ca, %bb.j ] ; 2 uses
  %.03562.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.136.i, %bb.j ]
  %.lcssa576061.i = phi i64 [ %.promoted59.i, %.preheader.lr.ph.i ], [ %i.bl, %bb.j ]
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i, %.preheader.i
  %.narrow.i.i.i.i.i58.i = phi i64 [ %.narrow.i.i.i.i.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i ], [ %.narrow.i.i.i.i.i.lcssa65.i, %.preheader.i ]
  %i.be = phi i64 [ %i.bl, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i ], [ %.lcssa576061.i, %.preheader.i ]
  %.136.i = phi i32 [ %i.by, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i ], [ %.03562.i, %.preheader.i ] ; 3 uses
  %.033.i = phi double [ %i.bx, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i ], [ 1.000000e+00, %.preheader.i ]
  %i.bf = zext i64 %.narrow.i.i.i.i.i58.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = zext i64 %i.be to i128
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 5 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 6 uses
  %i.bn = icmp eq i64 %.narrow.i.i.i.i.i.i, %i.bl
  br i1 %i.bn, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = xor i64 %.narrow.i.i.i.i.i.i, %i.bl     ; 2 uses
  %i.bp = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bp) ; 2 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.br = shl i64 %.0.i.i.i.i.i.i.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bq, 52
  %reass.sub = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi double [ %i.bw, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bx = fmul double %.033.i, %.0.i.i            ; 2 uses
  %i.by = add nsw i32 %.136.i, 1
  %i.bz = fcmp ogt double %i.bx, %i.bd
  br i1 %i.bz, label %bb.h, label %bb.j, !llvm.loop !126

bb.j:                                             ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i
  %i.ca = add nsw i32 %.03463.i, -1
  %i.cb = icmp sgt i32 %.03463.i, 1
  br i1 %i.cb, label %.preheader.i, label %..thread.loopexit_crit_edge.i, !llvm.loop !127

bb.k:                                             ; preds = %bb.g
  %i.cc = load double, ptr %2, align 8, !tbaa !128
  %i.cd = fadd double %i.cc, 5.000000e-01
  %i.ce = load double, ptr %i.ai, align 8, !tbaa !129
  %.promoted.i = load i64, ptr %i.ac, align 16, !tbaa !35
  %.sroa.22.0..sroa_idx.i.i.i42.promoted.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  %i.cf = load double, ptr %i.aj, align 8
  %i.cg = load double, ptr %i.ak, align 8
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %.narrow.i.i.i.i.i5167.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i42.promoted.i, %bb.k ], [ %.narrow.i.i.i.i.i51.i, %.backedge ]
  %i.ch = phi i64 [ %.promoted.i, %bb.k ], [ %i.dg, %.backedge ]
  %i.ci = zext i64 %.narrow.i.i.i.i.i5167.i to i128
  %i.cj = shl nuw i128 %i.ci, 64
  %i.ck = zext i64 %i.ch to i128
  %i.cl = or disjoint i128 %i.cj, %i.ck
  %i.cm = mul i128 %i.cl, 47026247687942121848144207491837523525
  %i.cn = add i128 %i.cm, 1442695040888963407     ; 3 uses
  %i.co = trunc i128 %i.cn to i64
  %i.cp = lshr i128 %i.cn, 64
  %.tr.i.i.i.i.i44.i = trunc nuw i128 %i.cp to i64
  %.narrow.i.i.i.i.i45.i = add i64 %.tr.i.i.i.i.i44.i, 6364136223846793005 ; 3 uses
  %i.cq = lshr i64 %.narrow.i.i.i.i.i45.i, 58
  %i.cr = xor i64 %.narrow.i.i.i.i.i45.i, %i.co   ; 2 uses
  %.0.i.i.i.i.i.i46.i = call noundef i64 @llvm.fshr.i64(i64 %i.cr, i64 %i.cr, i64 %i.cq) ; 2 uses
  %i.cs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i46.i, i1 false) ; 2 uses
  %i.ct = and i64 %i.cs, 63
  %i.cu = shl i64 %.0.i.i.i.i.i.i46.i, %i.ct
  %i.cv = lshr i64 %i.cu, 11
  %i.cw = and i64 %i.cv, 4503599627370495
  %i.cx = shl nuw nsw i64 %i.cs, 52
  %reass.sub88 = sub nsw i64 %i.cw, %i.cx
  %i.cy = add nsw i64 %reass.sub88, 4602678819172646912
  %i.cz = bitcast i64 %i.cy to double             ; 2 uses
  %i.da = zext i64 %.narrow.i.i.i.i.i45.i to i128
  %i.db = shl nuw i128 %i.da, 64
  %i.dc = and i128 %i.cn, 18446744073709551615
  %i.dd = or disjoint i128 %i.db, %i.dc
  %i.de = mul i128 %i.dd, 47026247687942121848144207491837523525
  %i.df = add i128 %i.de, 1442695040888963407     ; 2 uses
  %i.dg = trunc i128 %i.df to i64                 ; 3 uses
  %i.dh = lshr i128 %i.df, 64
  %.tr.i.i.i.i.i50.i = trunc nuw i128 %i.dh to i64
  %.narrow.i.i.i.i.i51.i = add i64 %.tr.i.i.i.i.i50.i, 6364136223846793005 ; 4 uses
  %i.di = lshr i64 %.narrow.i.i.i.i.i51.i, 58
  %i.dj = xor i64 %.narrow.i.i.i.i.i51.i, %i.dg   ; 2 uses
  %.0.i.i.i.i.i.i52.i = call noundef i64 @llvm.fshr.i64(i64 %i.dj, i64 %i.dj, i64 %i.di) ; 3 uses
  %i.dk = and i64 %.0.i.i.i.i.i.i52.i, -9223372036854775808
  %i.dl = and i64 %.0.i.i.i.i.i.i52.i, 9223372036854775807
  %i.dm = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 false) ; 2 uses
  %i.dn = and i64 %i.dm, 63
  %i.do = shl i64 %.0.i.i.i.i.i.i52.i, %i.dn
  %i.dp = lshr i64 %i.do, 11
  %i.dq = shl nuw nsw i64 %i.dm, 52
  %i.dr = or disjoint i64 %i.dq, %i.dk
  %i.ds = and i64 %i.dp, 4503599627370495
  %i.dt = or disjoint i64 %i.ds, %i.dr
  %i.du = xor i64 %i.dt, 4607182418800017408
  %i.dv = bitcast i64 %i.du to double
  %i.dw = fmul double %i.ce, %i.dv
  %i.dx = fdiv double %i.dw, %i.cz
  %i.dy = fadd double %i.cd, %i.dx
  %i.dz = call double @llvm.floor.f64(double %i.dy) ; 10 uses
  %i.ea = fcmp olt double %i.dz, 0.000000e+00
  br i1 %i.ea, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eb = fmul double %i.cf, %i.dz
  %i.ec = fcmp ugt double %i.dz, 1.000000e+00
  br i1 %i.ec, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ed = fcmp oeq double %i.dz, 2.000000e+00
  br i1 %i.ed, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = call double @llvm.log.f64(double %i.dz) ; 2 uses
  %i.ef = fdiv double 1.000000e+00, %i.dz         ; 4 uses
  %i.eg = fneg double %i.dz
  %i.eh = call double @llvm.fmuladd.f64(double %i.dz, double %i.ee, double %i.eg)
  %i.ei = fadd double %i.ee, f0x3FFD67F1C864BEB5
  %i.ej = call double @llvm.fmuladd.f64(double %i.ei, double 5.000000e-01, double %i.eh)
  %i.ek = call double @llvm.fmuladd.f64(double %i.ef, double f0x3FB5555555555555, double %i.ej)
  %i.el = fmul double %i.ef, f0x3F66C16C16C16C17
  %i.em = fneg double %i.ef
  %i.en = fmul double %i.el, %i.em
  %i.eo = call noundef double @llvm.fmuladd.f64(double %i.en, double %i.ef, double %i.ek)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ep = phi double [ 0.000000e+00, %bb.m ], [ %i.eo, %bb.o ], [ f0x3FE62E42FEFA39EC, %bb.n ]
  %i.eq = call double @llvm.log.f64(double %i.cz)
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double 2.000000e+00, double %i.cg)
  %i.es = fadd double %i.er, %i.ep
  %i.et = fcmp olt double %i.es, %i.eb
  br i1 %i.et, label %bb.q, label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.l
  br label %bb.l, !llvm.loop !130

bb.q:                                             ; preds = %bb.p
  store i64 %i.dg, ptr %i.ac, align 16, !tbaa !35
  store i64 %.narrow.i.i.i.i.i51.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  %.inv.i = fcmp oge double %i.dz, f0x41DFFFFFFFC00000
  %spec.select55.i = select i1 %.inv.i, double f0x41DFFFFFFFC00000, double %i.dz
  %spec.select.i = fptosi double %spec.select55.i to i32
  br label %_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i

..thread.loopexit_crit_edge.i:                    ; preds = %bb.j
  store i64 %.narrow.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  store i64 %i.bl, ptr %i.ac, align 16, !tbaa !35
  br label %_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i

_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i: ; preds = %..thread.loopexit_crit_edge.i, %bb.q, %.preheader56.i
  %.pre.i43 = phi i32 [ %spec.select.i, %bb.q ], [ %.136.i, %..thread.loopexit_crit_edge.i ], [ 0, %.preheader56.i ] ; 6 uses
  store i32 %.pre.i43, ptr %i.l, align 4, !tbaa !52
  %i.eu = load i64, ptr %3, align 8, !noalias !131 ; 6 uses
  %i.ev = and i64 %i.eu, 254
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i
  %i.ex = icmp ult i64 %i.eu, 562949953552384
  call void @llvm.assume(i1 %i.ex)
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.eu, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i, label %bb.s

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.ey = or i64 %i.eu, 131328
  store i64 %i.ey, ptr %3, align 8, !noalias !138
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread

bb.s:                                             ; preds = %bb.r
  %i.ez = load i32, ptr %i.ad, align 8, !tbaa !52, !noalias !138
  %i.fa = icmp eq i32 %i.ez, %.pre.i43
  br i1 %i.fa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40, !noalias !138
  store ptr %3, ptr %1, align 8, !tbaa !143, !noalias !138
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !145, !noalias !138
  %i.fb = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc37.i unwind label %bb.ac

.noexc37.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40, !noalias !138
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !19, !noalias !138
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i, i64 %i.fb
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread

bb.u:                                             ; preds = %_ZN4absl12lts_2026052620poisson_distributionIiEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEiRT_.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !19, !noalias !147 ; 3 uses
  %i.fd = and i64 %i.eu, 255
  %notmask.i.i.i.i.i.i22 = shl nsw i64 -1, %i.fd
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !147
  %i.fe = lshr i64 %i.eu, 8
  %i.ff = and i64 %i.fe, 255
  %i.fg = zext i32 %.pre.i43 to i64
  %i.fh = xor i64 %i.ff, %i.fg
  %i.fi = zext nneg i64 %i.fh to i128
  %i.fj = mul nuw nsw i128 %i.fi, 8779197792823184629 ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = xor i128 %i.fk, %i.fj
  %i.fm = trunc i128 %i.fl to i64                 ; 3 uses
  %i.fn = xor i64 %notmask.i.i.i.i.i.i22, -1      ; 2 uses
  %i.fo = lshr i64 %i.fm, 57
  %i.fp = trunc nuw nsw i64 %i.fo to i8
  %.sroa.0.0.copyload.i.i.i3.i = load ptr, ptr %i.af, align 8, !tbaa !19, !noalias !147 ; 3 uses
  %i.fq = insertelement <16 x i8> poison, i8 %i.fp, i64 0
  %i.fr = shufflevector <16 x i8> %i.fq, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.pn.i23 = phi i64 [ %i.fm, %bb.u ], [ %i.gp, %bb.x ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.u ], [ %i.go, %bb.x ] ; 2 uses
  %.sroa.639.0.i = and i64 %.pn.i23, %i.fn        ; 5 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %.sroa.639.0.i
  call void @llvm.prefetch.p0(ptr %i.fs, i32 0, i32 3, i32 1), !noalias !147
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.639.0.i
  %i.fu = load <16 x i8>, ptr %i.ft, align 1, !tbaa !19, !noalias !147 ; 2 uses
  %i.fv = icmp eq <16 x i8> %i.fr, %i.fu
  %i.fw = bitcast <16 x i1> %i.fv to i16
  %i.fx = zext i16 %i.fw to i32
  %i.fy = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.fx) #43, !srcloc !150 ; 2 uses
  %.not67.i = icmp eq i32 %i.fy, 0
  br i1 %.not67.i, label %._crit_edge.i26, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.v, %.critedge.i.i
  %.sroa.024.068.i = phi i32 [ %i.gh, %.critedge.i.i ], [ %i.fy, %bb.v ] ; 3 uses
  %i.fz = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.068.i, i1 true)
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = add nuw i64 %.sroa.639.0.i, %i.ga
  %i.gc = and i64 %i.gb, %i.fn                    ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !52, !noalias !147
  %i.gf = icmp eq i32 %i.ge, %.pre.i43
  br i1 %i.gf, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i, label %.critedge.i.i, !prof !151

.critedge.i.i:                                    ; preds = %.lr.ph.i24
  %i.gg = add i32 %.sroa.024.068.i, -1
  %i.gh = and i32 %i.gg, %.sroa.024.068.i         ; 2 uses
  %.not.i25 = icmp eq i32 %i.gh, 0
  br i1 %.not.i25, label %._crit_edge.i26, label %.lr.ph.i24

._crit_edge.i26:                                  ; preds = %.critedge.i.i, %bb.v
  %i.gi = icmp eq <16 x i8> %i.fu, splat (i8 -128)
  %i.gj = bitcast <16 x i1> %i.gi to i16
  %i.gk = zext i16 %i.gj to i32
  %i.gl = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gk) #43, !srcloc !150 ; 2 uses
  %.not61.i = icmp eq i32 %i.gl, 0
  br i1 %.not61.i, label %bb.x, label %bb.w, !prof !57

bb.w:                                             ; preds = %._crit_edge.i26
  %i.gm = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.fm, i32 %i.gl, i64 %.sroa.639.0.i, i64 %.sroa.14.0.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread44 unwind label %bb.ac

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread44: ; preds = %bb.w
  %.sroa.0.0.copyload.i.i.i2.i.pre.i = load ptr, ptr %i.af, align 8, !tbaa !19, !noalias !147
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.pre.i, i64 %i.gm
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread

bb.x:                                             ; preds = %._crit_edge.i26
  %i.go = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.gp = add i64 %i.go, %.sroa.639.0.i
  br label %bb.v

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %.lr.ph.i24
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i3.i, i64 %i.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i, %.noexc37.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread44
  %.sroa.2.0.copyload.i.pre138.i37 = phi ptr [ %i.gn, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread44 ], [ %i.ad, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i ], [ %i.fc, %.noexc37.i ] ; 3 uses
  %.pre.i39 = load i32, ptr %i.l, align 4, !tbaa !52 ; 2 uses
  store i32 %.pre.i39, ptr %.sroa.2.0.copyload.i.pre138.i37, align 4, !tbaa !152
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pre138.i37, i64 4
  store i32 0, ptr %i.gr, align 4, !tbaa !154
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40: ; preds = %bb.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread
  %.pre.i38 = phi i32 [ %.pre.i39, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread ], [ %.pre.i43, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i43, %bb.s ]
  %.sroa.2.0.copyload.i.i = phi ptr [ %.sroa.2.0.copyload.i.pre138.i37, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread ], [ %i.gq, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i ], [ %i.ad, %bb.s ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !52
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !52
  %i.gv = sitofp i32 %.pre.i38 to double          ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.0123.i, %.sroa.19.0122.i
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40
  store double %i.gv, ptr %.sroa.12.0123.i, align 8, !tbaa !155
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.thread40
  %i.gw = ptrtoint ptr %.sroa.12.0123.i to i64
  %i.gx = ptrtoint ptr %.sroa.087.0124.i to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775800
  br i1 %i.gz, label %bb.aa, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #39
          to label %.noexc39.i unwind label %.loopexit.split-lp.i

.noexc39.i:                                       ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.z
  %i.ha = ashr exact i64 %i.gy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 1152921504606846975)
  %i.he = select i1 %i.hc, i64 1152921504606846975, i64 %i.hd ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.hf = shl nuw nsw i64 %i.he, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #41
          to label %.noexc40.i unwind label %.loopexit.i ; 4 uses

.noexc40.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gy ; 2 uses
  store double %i.gv, ptr %i.hh, align 8, !tbaa !155
  %i.hi = icmp sgt i64 %i.gy, 0
  br i1 %i.hi, label %bb.ab, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i

bb.ab:                                            ; preds = %.noexc40.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr align 8 %.sroa.087.0124.i, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i: ; preds = %bb.ab, %.noexc40.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0124.i, i64 noundef %i.gy) #38
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i

_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, %bb.y
  %.sroa.19.3.i = phi ptr [ %i.hj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.19.0122.i, %bb.y ] ; 2 uses
  %.pn106.i = phi ptr [ %i.hh, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.12.0123.i, %bb.y ]
  %.sroa.087.3.i = phi ptr [ %i.hg, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i ], [ %.sroa.087.0124.i, %bb.y ] ; 2 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.pn106.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.as
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %bb.g, !llvm.loop !156

bb.ac:                                            ; preds = %bb.w, %bb.t
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp.i:                             ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.ac
  %.sroa.19.0122132.i = phi ptr [ %.sroa.19.0122.i, %bb.ac ], [ %.sroa.12.0123.i, %.loopexit.i ], [ %.sroa.12.0123.i, %.loopexit.split-lp.i ]
  %.pn27.i = phi { ptr, i32 } [ %i.hk, %bb.ac ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #40
  br label %bb.bi

bb.ae:                                            ; preds = %._crit_edge.i
  %i.hl = invoke noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef %i.x)
          to label %bb.af unwind label %bb.ax     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.val30.i = load double, ptr %i.ab, align 8, !tbaa !99
  %i.hm = invoke noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %.val30.i, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.ag unwind label %bb.ay     ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.hn = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 1, ptr nonnull @.str.28, double noundef %i.hm, double noundef 0.000000e+00, double noundef %i.hl)
          to label %bb.ah unwind label %bb.az     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.hn, label %bb.bd, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 288) #44
          to label %bb.aj unwind label %bb.ba

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 2, ptr nonnull @.str.29)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double %i.x, ptr %i.k, align 8, !tbaa !155
  %i.ho = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ak unwind label %bb.bb     ; 2 uses

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 9, ptr nonnull @.str.30)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store double %i.hl, ptr %i.j, align 8, !tbaa !155
  %i.hp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.al unwind label %bb.bb     ; 2 uses

bb.al:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i64 7, ptr nonnull @.str.31)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i: ; preds = %bb.al
  %i.hq = load double, ptr %i.al, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store double %i.hq, ptr %i.i, align 8, !tbaa !155
  %i.hr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.am unwind label %bb.bb     ; 2 uses

bb.am:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 5, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i: ; preds = %bb.am
  %.val.i = load double, ptr %i.ab, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double %.val.i, ptr %i.h, align 8, !tbaa !155
  %i.hs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.an unwind label %bb.bb     ; 2 uses

bb.an:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 9, ptr nonnull @.str.33)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit53.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit53.i: ; preds = %bb.an
  %i.ht = load double, ptr %i.am, align 8, !tbaa !159
  %i.hu = call double @sqrt(double noundef %i.ht) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store double %i.hu, ptr %i.g, align 8, !tbaa !155
  %i.hv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.ao unwind label %bb.bb     ; 2 uses

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 5, ptr nonnull @.str.32)
          to label %bb.ap unwind label %bb.bb

bb.ap:                                            ; preds = %bb.ao
  %.val32.i = load double, ptr %i.ab, align 8, !tbaa !99
  %i.hw = call noundef double @sqrt(double noundef %.val32.i) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %i.hw, ptr %i.f, align 8, !tbaa !155
  %i.hx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.aq unwind label %bb.bb     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 11, ptr nonnull @.str.34)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.aq
  %i.hy = load double, ptr %i.an, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %i.hy, ptr %i.e, align 8, !tbaa !155
  %i.hz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ar unwind label %bb.bb     ; 2 uses

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 5, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit64.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit64.i: ; preds = %bb.ar
  %.val33.i = load double, ptr %i.ab, align 8, !tbaa !99
  %i.ia = fdiv double 1.000000e+00, %.val33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.ia, ptr %i.d, align 8, !tbaa !155
  %i.ib = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.as unwind label %bb.bb     ; 2 uses

bb.as:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 11, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit68.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit68.i: ; preds = %bb.as
  %i.ic = load double, ptr %i.ao, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.ic, ptr %i.c, align 8, !tbaa !155
  %i.id = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.at unwind label %bb.bb     ; 2 uses

bb.at:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 5, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit72.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit72.i: ; preds = %bb.at
  %.val34.i = load double, ptr %i.ab, align 8, !tbaa !99
  %i.ie = fdiv double 1.000000e+00, %.val34.i
  %i.if = fadd double %i.ie, 3.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.if, ptr %i.b, align 8, !tbaa !155
  %i.ig = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.au unwind label %bb.bb     ; 2 uses

bb.au:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 4, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i unwind label %bb.bb

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.hm, ptr %i.a, align 8, !tbaa !155
  %i.ih = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ih)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.bb

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.av
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.bd

bb.aw:                                            ; preds = %._crit_edge.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ax:                                            ; preds = %bb.ae
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ay:                                            ; preds = %bb.af
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.az:                                            ; preds = %bb.ag
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ba:                                            ; preds = %bb.ai
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i, %bb.au, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit72.i, %bb.at, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit68.i, %bb.as, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit64.i, %bb.ar, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i, %bb.aq, %bb.ap, %bb.ao, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit53.i, %bb.an, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i, %bb.am, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i, %bb.al, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i, %bb.ak, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.aj
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #45
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn.i = phi { ptr, i32 } [ %i.in, %bb.bb ], [ %i.im, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.bh

bb.bd:                                            ; preds = %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %.not.i.i.i.i = icmp eq ptr %.sroa.087.0.lcssa.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.io = ptrtoint ptr %.sroa.19.0.lcssa.i to i64
  %i.ip = sub i64 %i.io, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0.lcssa.i, i64 noundef %i.ip) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.be, %bb.bd
  %i.iq = load i64, ptr %3, align 8               ; 4 uses
  %i.ir = and i64 %i.iq, 255                      ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ir    ; 4 uses
  %i.is = add nsw i64 %notmask.i.i.i.i.i.i, 8589934591
  %i.it = or i64 %i.is, %notmask.i.i.i.i.i.i
  %i.iu = icmp eq i64 %i.it, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %i.iv)
  %i.iw = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.iw)
  %i.ix = and i64 %i.iq, 254
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %bb.bf, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i.i.i

bb.bf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.iz = icmp ult i64 %i.iq, 562949953552384
  call void @llvm.assume(i1 %i.iz)
  br label %_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %9 = xor i64 %notmask.i.i.i.i.i.i, -1
  %10 = and i64 %i.iq, 65536
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.ja = icmp ne i64 %10, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %9, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %i.ja)
          to label %_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i.i.i
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #42
  unreachable

bb.bh:                                            ; preds = %bb.bc, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ii, %bb.aw ], [ %i.ij, %bb.ax ], [ %i.ik, %bb.ay ], [ %.pn.i, %bb.bc ], [ %i.il, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ad
  %.sroa.19.0119.i = phi ptr [ %.sroa.19.0122132.i, %bb.ad ], [ %.sroa.19.0.lcssa.i, %bb.bh ]
  %.sroa.087.0110.i = phi ptr [ %.sroa.087.0124.i, %bb.ad ], [ %.sroa.087.0.lcssa.i, %bb.bh ] ; 3 uses
  %.pn27.pn.i = phi { ptr, i32 } [ %.pn27.i, %bb.ad ], [ %.pn.pn.pn.pn.pn.i, %bb.bh ] ; 2 uses
  %.not.i.i.i81.i = icmp eq ptr %.sroa.087.0110.i, null
  br i1 %.not.i.i.i81.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit82.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = ptrtoint ptr %.sroa.19.0119.i to i64
  %i.je = ptrtoint ptr %.sroa.087.0110.i to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.087.0110.i, i64 noundef %i.jf) #38
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit82.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit20, %_ZNSt6vectorIdSaIdEED2Ev.exit82.i
  %common.resume.op = phi { ptr, i32 } [ %.pn27.pn105.i, %_ZNSt6vectorIdSaIdEED2Ev.exit82.i ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit20 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIdSaIdEED2Ev.exit82.i:                ; preds = %.thread.i.loopexit, %.thread.i.loopexit.split-lp, %bb.bj, %bb.bi
  %.pn27.pn105.i = phi { ptr, i32 } [ %.pn27.pn.i, %bb.bj ], [ %.pn27.pn.i, %bb.bi ], [ %lpad.loopexit, %.thread.i.loopexit ], [ %lpad.loopexit.split-lp, %.thread.i.loopexit.split-lp ]
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %common.resume

_ZN12_GLOBAL__N_124PoissonDistributionZTest11SingleZTestIN4absl12lts_2026052620poisson_distributionIiEEEEbdm.exit: ; preds = %bb.bf, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %not. = xor i1 %i.hn, true
  %i.jg = zext i1 %not. to i32
  %i.jh = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ji = add nsw i32 %i.jh, %i.jg                ; 2 uses
  store i32 %i.ji, ptr %i.n, align 4, !tbaa !52
  %i.jj = add nuw nsw i32 %.01386, 1              ; 2 uses
  %i.jk = load i32, ptr %i.p, align 8, !tbaa !106
  %i.jl = icmp slt i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.d, label %._crit_edge, !llvm.loop !162

bb.bk:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !163 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !14
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.bm, %bb.bl
  %i.jp = phi ptr [ %i.jo, %bb.bm ], [ @.str, %bb.bl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef %i.jp)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.jq = load ptr, ptr %7, align 8, !tbaa !164   ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i17, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bo
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !31
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jq) #40, !inline_history !166
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.bo, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bk
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit20

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #40
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.jw, %bb.br ], [ %i.jv, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  %i.jx = load ptr, ptr %7, align 8, !tbaa !164   ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19: ; preds = %bb.bs
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !31
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #40, !inline_history !166
  br label %_ZN7testing7MessageD2Ev.exit20

_ZN7testing7MessageD2Ev.exit20:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19, %bb.bs, %bb.bp
  %.pn.pn = phi { ptr, i32 } [ %i.ju, %bb.bp ], [ %.pn, %bb.bs ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #40
  br label %common.resume

bb.bt:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !163 ; 4 uses
  %.not.i.i21 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i21, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !14 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bu
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !19
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef 32) #38
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.bt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD1Ev(ptr noundef %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.e) #38
  br label %_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit

_ZN12_GLOBAL__N_124PoissonDistributionZTestD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(80) %i.f) #40
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD0Ev(ptr noundef %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.a, align 8         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.val1.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i to i64
  %i.e = sub i64 %i.c, %i.d
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.e) #38
  br label %_ZN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD0Ev.exit

_ZN12_GLOBAL__N_153PoissonDistributionZTest_AbslPoissonDistribution_TestD0Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(80) %i.f) #40
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(80) %i.f, i64 noundef 80) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE8GetParamEv() unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load ptr, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE10parameter_E, align 8, !tbaa !95
  %i.b = icmp ne ptr %i.a, null
  %i.c = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.b)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #40
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 1707)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.23, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  br label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #40
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.h = load ptr, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_16ZParamEE10parameter_E, align 8, !tbaa !95
  ret ptr %i.h
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #40
  ret void
}

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.trap() #42
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED1Ev(ptr noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.a) #40
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_16ZParamEED0Ev(ptr nofree readnone captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  tail call void @llvm.trap() #42
  unreachable
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #20

declare noundef double @_ZN4absl12lts_2026052615random_internal26RequiredSuccessProbabilityEdi(double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #38
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #38
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8, ptr, i64) local_unnamed_addr #2

declare noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef) local_unnamed_addr #2

declare noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64, ptr, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %1 = xor i64 %notmask.i.i.i.i, -1
  %2 = and i64 %i.a, 65536
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i.a, align 8, !tbaa !19
  %i.k = icmp ne i64 %2, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 8, i64 noundef 4, i1 noundef zeroext %i.k)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE7deallocEv.exit.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052620poisson_distributionIiE10param_typeC2Ed(ptr noundef nonnull align 8 dereferenceable(44) %0, double noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !123
  %i.b = fcmp olt double %1, 1.000000e+01
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !123
  %i.c = fneg double %1
  %i.d = tail call double @exp(double noundef %i.c) #40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %1, 5.000000e+01
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fdiv double %1, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !123
  %i.i = fneg double %1
  %i.j = sitofp i32 %i.h to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = tail call double @exp(double noundef %i.k) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = tail call double @llvm.log.f64(double %1) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !167
  %i.o = fadd double %1, 5.000000e-01
  %i.p = fmul double %i.o, f0x3FE78B56362CEF37
  %i.q = tail call double @sqrt(double noundef %i.p) #40
  %i.r = fadd double %i.q, f0x3FDCC3EBD3BC7118
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.r, ptr %i.s, align 8, !tbaa !129
  %i.t = tail call double @llvm.ceil.f64(double %1)
  %i.u = fadd double %i.t, -1.000000e+00          ; 5 uses
  %i.v = tail call double @log(double noundef %i.u) #40 ; 2 uses
  %i.w = fdiv double 1.000000e+00, %i.u           ; 4 uses
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.v, double %i.x)
  %i.z = fadd double %i.v, f0x3FFD67F1C864BEB5
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 5.000000e-01, double %i.y)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FB5555555555555, double %i.aa)
  %i.ac = fmul double %i.w, f0x3F66C16C16C16C17
  %i.ad = fneg double %i.w
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.w, double %i.ab)
  %i.ag = fneg double %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.m, double %i.u, double %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink6 = phi i64 [ 8, %bb.d ], [ 32, %bb.e ], [ 8, %bb.b ]
  %.sink = phi double [ %i.l, %bb.d ], [ %i.ah, %bb.e ], [ %i.d, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %.sink, ptr %i.ai, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !52
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #13 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #2

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #43, !srcloc !150 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !168

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bh, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !52
  %i.ad = zext i32 %i.ac to i64
  %i.ae = xor i64 %i.ab, %i.ad
  %i.af = zext nneg i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 6 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8           ; 2 uses
  %i.am = sub i64 %i.x, %i.aj                     ; 2 uses
  %i.an = and i64 %i.i, %i.am
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.e, !prof !151

bb.d:                                             ; preds = %.lr.ph
  %i.ap = and i64 %i.am, 15
  %i.aq = add i64 %i.ap, %i.aj
  %i.ar = and i64 %i.aq, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.as = and i64 %i.d, %i.aj
  %.not.i = icmp ult i64 %i.as, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !151

bb.f:                                             ; preds = %bb.e
  %i.at = and i64 %i.aj, %i.c                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !19
  %i.aw = icmp slt <16 x i8> %i.av, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32
  %i.az = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ay) #43, !srcloc !150 ; 2 uses
  %.not26.i = icmp eq i32 %i.az, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !57

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.az, i1 true)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw i64 %i.at, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.al, i64 noundef %i.x, i64 noundef %i.aj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bc, %bb.g ], [ %i.ar, %bb.d ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.al, ptr %i.bd, align 1, !tbaa !169
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.bf = load i64, ptr %i.y, align 4
  store i64 %i.bf, ptr %i.be, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = add i32 %.sroa.052.061, -1
  %i.bh = and i32 %i.bg, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171, !nonnull !121, !align !173
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %1, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #26

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #2

declare void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !164   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #40, !inline_history !174
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !164   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #40, !inline_history !174
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
end_hunk_0
