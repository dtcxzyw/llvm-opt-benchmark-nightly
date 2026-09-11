Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/beta_distribution_test?download=true
inline.NumInlined: 4806
inline.NumDeleted: 2042
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #39, !inline_history !334
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal19TestMetaFactoryBaseISt5tupleIJddEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestEE17CreateTestFactoryESt5tupleIJddEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !58
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr @_ZN7testing18WithParamInterfaceISt5tupleIJddEEE10parameter_E, align 8, !tbaa !98
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40 ; 11 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.c)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7testing13TestWithParamISt5tupleIJddEEEE, i64 16), ptr %i.c, align 8, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing13TestWithParamISt5tupleIJddEEEE, i64 80), ptr %i.d, align 8, !tbaa !58
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing18WithParamInterfaceISt5tupleIJddEEE8GetParamEv()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load <2 x double>, ptr %i.e, align 8
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.h, ptr %i.f, align 8, !tbaa !100
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_120BetaDistributionTestE, i64 16), ptr %i.c, align 16, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_120BetaDistributionTestE, i64 80), ptr %i.d, align 16, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(64) %i.c) #39
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load i32, ptr %i.a, align 16, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !96
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = zext i32 %i.k to i128
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !96
  %i.s = zext i32 %i.r to i64
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = zext i64 %i.t to i128
  %i.v = shl nuw i128 %i.p, 96
  %i.w = shl nuw nsw i128 %i.u, 32                ; 2 uses
  %i.x = trunc i128 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !96
  %i.aa = zext i32 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa
  %.masked.i.i.i.i.i.i.i.i = and i128 %i.w, 79228162495817593519834398720
  %i.ac = or disjoint i128 %.masked.i.i.i.i.i.i.i.i, %i.v
  %i.ad = zext i64 %i.ab to i128
  %i.ae = add nuw nsw i128 %i.ad, 1442695040888963407 ; 2 uses
  %i.af = add i128 %i.ac, %i.ae
  %i.ag = lshr i128 %i.af, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ag to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.ah = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.ai = shl nuw i128 %i.ah, 64
  %i.aj = and i128 %i.ae, 18446744073709551615
  %i.ak = or disjoint i128 %i.ai, %i.aj
  %i.al = mul i128 %i.ak, 47026247687942121848144207491837523525
  %i.am = add i128 %i.al, 1442695040888963407     ; 2 uses
  %i.an = trunc i128 %i.am to i64
  %i.ao = lshr i128 %i.am, 64
  %.tr.i.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ao to i64
  %.narrow.i.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  store i64 %i.an, ptr %i.j, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.narrow.i.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestE, i64 16), ptr %i.c, align 16, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestE, i64 80), ptr %i.d, align 16, !tbaa !58
  ret ptr %i.c

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.i, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 64) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing13TestWithParamISt5tupleIJddEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_TestD0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(64) %0) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #37
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_Test8TestBodyEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(64) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 10 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.absl::lts_20260526::beta_distribution", align 8 ; 14 uses
  %5 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %i.o = alloca double, align 8                   ; 4 uses
  %i.p = alloca double, align 8                   ; 4 uses
  %i.q = alloca double, align 8                   ; 4 uses
  %i.r = alloca double, align 8                   ; 4 uses
  %7 = alloca %"class.absl::lts_20260526::beta_distribution", align 8 ; 15 uses
  %i.s = alloca double, align 8                   ; 11 uses
  %8 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.t = alloca double, align 8                   ; 7 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.u = alloca double, align 8                   ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.absl::lts_20260526::random_internal::DistributionMoments", align 8 ; 9 uses
  %20 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 8 uses
  %i.v = alloca i32, align 4                      ; 10 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.x = tail call noundef double @_ZN4absl12lts_2026052615random_internal26RequiredSuccessProbabilityEdi(double noundef 2.000000e-02, i32 noundef 20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #39
  store i32 0, ptr %i.v, align 4, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 68
  br label %bb.e

bb.b:                                             ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #39
  store i32 5, ptr %i.w, align 4, !tbaa !96
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !96, !noalias !350
  %.not.i = icmp sgt i32 %i.bd, 5
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull @.str.50)
  br label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #39
  %i.be = load i8, ptr %21, align 8, !tbaa !109, !range !110, !noundef !111
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.gh, label %bb.fy

bb.e:                                             ; preds = %bb.a, %bb.fx
  %.07539 = phi i32 [ 0, %bb.a ], [ %i.aci, %bb.fx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.bg = load double, ptr %i.y, align 8, !tbaa !352
  %i.bh = load double, ptr %i.z, align 16, !tbaa !353
  call void @_ZN4absl12lts_2026052617beta_distributionIdE10param_typeC2Edd(ptr noundef nonnull align 8 dereferenceable(73) %7, double noundef %i.bg, double noundef %i.bh)
  %i.bi = call noalias noundef nonnull dereferenceable(80000) ptr @_Znwm(i64 noundef 80000) #40 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80000
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.bk = ptrtoint ptr %.sroa.12.2.i to i64
  %i.bl = ptrtoint ptr %.sroa.0147.3.i to i64     ; 4 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %19, ptr %.sroa.0147.3.i, i64 %i.bn)
          to label %bb.bp unwind label %bb.ce

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i, %bb.e
  %.0240.i = phi i64 [ 0, %bb.e ], [ %i.ld, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ]
  %.sroa.0147.0239.i = phi ptr [ %i.bi, %bb.e ], [ %.sroa.0147.3.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 6 uses
  %.sroa.12.0238.i = phi ptr [ %i.bi, %bb.e ], [ %.sroa.12.2.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 6 uses
  %.sroa.19.0237.i = phi ptr [ %i.bj, %bb.e ], [ %.sroa.19.3.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #39
  %i.bo = load i32, ptr %i.ab, align 8, !tbaa !114 ; 2 uses
  switch i32 %i.bo, label %bb.t [
    i32 0, label %bb.h
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  %i.bp = load double, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %i.bq = load double, ptr %i.an, align 8, !tbaa !116 ; 2 uses
  %.promoted.i50 = load i64, ptr %i.aa, align 16, !tbaa !61
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i51 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.h
  %.narrow.i.i.i.i.i.i4050.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i51, %bb.h ], [ %.narrow.i.i.i.i.i.i40.i57, %.backedge.i.backedge ]
  %i.br = phi i64 [ %.promoted.i50, %bb.h ], [ %i.cq, %.backedge.i.backedge ]
  %i.bs = zext i64 %.narrow.i.i.i.i.i.i4050.i to i128
  %i.bt = shl nuw i128 %i.bs, 64
  %i.bu = zext i64 %i.br to i128
  %i.bv = or disjoint i128 %i.bt, %i.bu
  %i.bw = mul i128 %i.bv, 47026247687942121848144207491837523525
  %i.bx = add i128 %i.bw, 1442695040888963407     ; 3 uses
  %i.by = trunc i128 %i.bx to i64
  %i.bz = lshr i128 %i.bx, 64
  %.tr.i.i.i.i.i.i.i52 = trunc nuw i128 %i.bz to i64
  %.narrow.i.i.i.i.i.i.i53 = add i64 %.tr.i.i.i.i.i.i.i52, 6364136223846793005 ; 3 uses
  %i.ca = lshr i64 %.narrow.i.i.i.i.i.i.i53, 58
  %i.cb = xor i64 %.narrow.i.i.i.i.i.i.i53, %i.by ; 2 uses
  %.0.i.i.i.i.i.i.i.i54 = call noundef i64 @llvm.fshr.i64(i64 %i.cb, i64 %i.cb, i64 %i.ca) ; 2 uses
  %i.cc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i54, i1 false) ; 2 uses
  %i.cd = and i64 %i.cc, 63
  %i.ce = shl i64 %.0.i.i.i.i.i.i.i.i54, %i.cd
  %i.cf = lshr i64 %i.ce, 11
  %i.cg = and i64 %i.cf, 4503599627370495
  %i.ch = shl nuw nsw i64 %i.cc, 52
  %reass.sub542 = sub nsw i64 %i.cg, %i.ch
  %i.ci = add nsw i64 %reass.sub542, 4602678819172646912
  %i.cj = bitcast i64 %i.ci to double             ; 2 uses
  %i.ck = zext i64 %.narrow.i.i.i.i.i.i.i53 to i128
  %i.cl = shl nuw i128 %i.ck, 64
  %i.cm = and i128 %i.bx, 18446744073709551615
  %i.cn = or disjoint i128 %i.cl, %i.cm
  %i.co = mul i128 %i.cn, 47026247687942121848144207491837523525
  %i.cp = add i128 %i.co, 1442695040888963407     ; 2 uses
  %i.cq = trunc i128 %i.cp to i64                 ; 4 uses
  %i.cr = lshr i128 %i.cp, 64
  %.tr.i.i.i.i.i.i39.i56 = trunc nuw i128 %i.cr to i64
  %.narrow.i.i.i.i.i.i40.i57 = add i64 %.tr.i.i.i.i.i.i39.i56, 6364136223846793005 ; 5 uses
  %i.cs = lshr i64 %.narrow.i.i.i.i.i.i40.i57, 58
  %i.ct = xor i64 %.narrow.i.i.i.i.i.i40.i57, %i.cq ; 2 uses
  %.0.i.i.i.i.i.i.i41.i58 = call noundef i64 @llvm.fshr.i64(i64 %i.ct, i64 %i.ct, i64 %i.cs) ; 2 uses
  %i.cu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i41.i58, i1 false) ; 2 uses
  %i.cv = and i64 %i.cu, 63
  %i.cw = shl i64 %.0.i.i.i.i.i.i.i41.i58, %i.cv
  %i.cx = lshr i64 %i.cw, 11
  %i.cy = and i64 %i.cx, 4503599627370495
  %i.cz = shl nuw nsw i64 %i.cu, 52
  %reass.sub543 = sub nsw i64 %i.cy, %i.cz
  %i.da = add nsw i64 %reass.sub543, 4602678819172646912
  %i.db = bitcast i64 %i.da to double             ; 2 uses
  %i.dc = call double @pow(double noundef %i.cj, double noundef %i.bp) #39 ; 2 uses
  %i.dd = call double @pow(double noundef %i.db, double noundef %i.bq) #39
  %i.de = fadd double %i.dc, %i.dd                ; 3 uses
  %i.df = fcmp ogt double %i.de, 1.000000e+00
  br i1 %i.df, label %.backedge.i.backedge, label %bb.i

bb.i:                                             ; preds = %.backedge.i
  %i.dg = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.dg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.cq, ptr %i.aa, align 16, !tbaa !61
  store i64 %.narrow.i.i.i.i.i.i40.i57, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.dh = fdiv double %i.dc, %i.de
  br label %_ZN4absl12lts_2026052617beta_distributionIdE15AlgorithmJoehnkINS0_14InsecureBitGenEEEdRT_RKNS2_10param_typeE.exit

bb.k:                                             ; preds = %bb.i
  %i.di = call nnan double @llvm.log.f64(double %i.cj)
  %i.dj = fmul double %i.bp, %i.di                ; 6 uses
  %i.dk = call nnan double @llvm.log.f64(double %i.db)
  %i.dl = fmul double %i.bq, %i.dk                ; 5 uses
  %i.dm = call double @llvm.fabs.f64(double %i.dj)
  %i.dn = fcmp one double %i.dm, +inf
  %i.do = call double @llvm.fabs.f64(double %i.dl)
  %i.dp = fcmp one double %i.do, +inf
  %or.cond.i59 = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond.i59, label %bb.l, label %.backedge.i.backedge

bb.l:                                             ; preds = %bb.k
  %i.dq = fcmp ogt double %i.dj, %i.dl            ; 2 uses
  %i.dr = fsub double %i.dj, %i.dl
  %i.ds = fsub double %i.dl, %i.dj
  %.sink77.i = select i1 %i.dq, double %i.ds, double %i.dr
  %.sink.i = select i1 %i.dq, double %i.dj, double %i.dl
  %i.dt = call double @exp(double noundef %.sink77.i) #39
  %i.du = fadd double %i.dt, 1.000000e+00
  %i.dv = call double @log(double noundef %i.du) #39
  %i.dw = fadd double %.sink.i, %i.dv             ; 2 uses
  %i.dx = fcmp ogt double %i.dw, 0.000000e+00
  br i1 %i.dx, label %.backedge.i.backedge, label %bb.m

.backedge.i.backedge:                             ; preds = %bb.l, %bb.k, %.backedge.i
  br label %.backedge.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.l
  store i64 %i.cq, ptr %i.aa, align 16, !tbaa !61
  store i64 %.narrow.i.i.i.i.i.i40.i57, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.dy = fsub double %i.dj, %i.dw
  %i.dz = call double @exp(double noundef %i.dy) #39
  br label %_ZN4absl12lts_2026052617beta_distributionIdE15AlgorithmJoehnkINS0_14InsecureBitGenEEEdRT_RKNS2_10param_typeE.exit

bb.n:                                             ; preds = %bb.g, %bb.g
  %i.ea = icmp eq i32 %i.bo, 1
  %i.eb = load double, ptr %i.al, align 8, !tbaa !117
  %i.ec = load double, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %i.ed = load double, ptr %i.an, align 8, !tbaa !116
  %i.ee = load double, ptr %i.ao, align 8, !tbaa !118
  %.promoted.i = load i64, ptr %i.aa, align 16, !tbaa !61
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_Test8TestBodyEv:bb.a
_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef 32) #37
  br label %_ZN7testing15AssertionResultD2Ev.exit106.i

_ZN7testing15AssertionResultD2Ev.exit106.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %.not.i.i = icmp eq ptr %.sroa.12.0238.i, %.sroa.19.0237.i
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106.i
  %i.kn = load double, ptr %i.s, align 8, !tbaa !100
  store double %i.kn, ptr %.sroa.12.0238.i, align 8, !tbaa !100
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106.i
  %i.ko = ptrtoint ptr %.sroa.12.0238.i to i64
  %i.kp = ptrtoint ptr %.sroa.0147.0239.i to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.bl, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #38
          to label %.noexc108.i unwind label %.loopexit.split-lp.i

.noexc108.i:                                      ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i107.i = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i107.i)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #40
          to label %.noexc109.i unwind label %.loopexit.i ; 4 uses

.noexc109.i:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  %i.la = load double, ptr %i.s, align 8, !tbaa !100
  store double %i.la, ptr %i.kz, align 8, !tbaa !100
  %i.lb = icmp sgt i64 %i.kq, 0
  br i1 %i.lb, label %bb.bm, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

bb.bm:                                            ; preds = %.noexc109.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr align 8 %.sroa.0147.0239.i, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.bm, %.noexc109.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0239.i, i64 noundef %i.kq) #37
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.bj
  %.sroa.19.3.i = phi ptr [ %i.lc, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.19.0237.i, %bb.bj ] ; 4 uses
  %.pn169.i = phi ptr [ %i.kz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0238.i, %bb.bj ]
  %.sroa.0147.3.i = phi ptr [ %i.ky, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0147.0239.i, %bb.bj ] ; 6 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.pn169.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #39
  %i.ld = add nuw nsw i64 %.0240.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ld, 10000
  br i1 %exitcond.not.i, label %bb.f, label %bb.g, !llvm.loop !342

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101.i, %bb.ax
  %.pn48.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.i, %_ZN7testing7MessageD2Ev.exit101.i ], [ %i.js, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.aw, %_ZN7testing7MessageD2Ev.exit81.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.19.0237255.i = phi ptr [ %.sroa.19.0237.i, %_ZN7testing7MessageD2Ev.exit81.i ], [ %.sroa.19.0237.i, %bb.bn ], [ %.sroa.19.0237.i, %bb.aw ], [ %.sroa.12.0238.i, %.loopexit.i ], [ %.sroa.12.0238.i, %.loopexit.split-lp.i ]
  %.pn52.i = phi { ptr, i32 } [ %.pn39.pn.pn.i, %_ZN7testing7MessageD2Ev.exit81.i ], [ %.pn48.pn.pn.i, %bb.bn ], [ %.pn44.pn.pn.i, %bb.aw ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #39
  %.pre = ptrtoint ptr %.sroa.0147.0239.i to i64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit139.i

bb.bp:                                            ; preds = %bb.f
  %.val64.i = load double, ptr %i.y, align 8, !tbaa !352 ; 5 uses
  %.val65.i = load double, ptr %i.z, align 16, !tbaa !353 ; 5 uses
  %i.le = fmul double %.val64.i, %.val65.i        ; 2 uses
  %i.lf = fadd double %.val64.i, %.val65.i        ; 5 uses
  %i.lg = fadd double %i.lf, 1.000000e+00         ; 2 uses
  %i.lh = fdiv double %i.le, %i.lg
  %i.li = load i64, ptr %19, align 8, !tbaa !357
  %i.lj = uitofp i64 %i.li to double              ; 2 uses
  %i.lk = fsub double %.val64.i, %.val65.i        ; 2 uses
  %i.ll = fmul double %i.lk, %i.lk
  %i.lm = fadd double %.val64.i, 2.000000e+00
  %i.ln = fadd double %i.lm, %.val65.i
  %i.lo = fneg double %i.ln
  %i.lp = fmul double %i.le, %i.lo
  %i.lq = call double @llvm.fmuladd.f64(double %i.ll, double %i.lg, double %i.lp)
  %i.lr = fmul double %i.lq, 6.000000e+00
  %i.ls = fdiv double %i.lh, %i.lf
  %i.lt = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lr, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %.val64.i, i64 1
  %i.lx = fdiv <2 x double> %i.lu, %i.lw          ; 2 uses
  %i.ly = extractelement <2 x double> %i.lx, i64 0 ; 4 uses
  %i.lz = fdiv double %i.ly, %i.lj
  %i.ma = call double @sqrt(double noundef %i.lz) #39
  %i.mb = extractelement <2 x double> %i.lx, i64 1
  %i.mc = fdiv double %i.mb, %.val65.i
  %i.md = fadd double %i.lf, 2.000000e+00
  %i.me = fdiv double %i.mc, %i.md
  %i.mf = fadd double %i.lf, 3.000000e+00
  %i.mg = fdiv double %i.me, %i.mf
  %i.mh = fadd double %i.mg, 3.000000e+00
  %i.mi = fadd double %i.mh, -1.000000e+00
  %i.mj = fmul double %i.ly, %i.mi
  %i.mk = fmul double %i.ly, %i.mj
  %i.ml = fdiv double %i.mk, %i.lj
  %i.mm = call double @sqrt(double noundef %i.ml) #39 ; 2 uses
  %i.mn = load double, ptr %i.ar, align 8, !tbaa !358
  %i.mo = fsub double %i.mn, %i.ly
  %i.mp = fdiv double %i.mo, %i.mm
  %i.mq = invoke noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef %i.x)
          to label %bb.bq unwind label %bb.cf     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %.val72.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val73.i = load double, ptr %i.z, align 16, !tbaa !353
  %i.mr = fadd double %.val72.i, %.val73.i
  %i.ms = fdiv double %.val72.i, %i.mr
  %i.mt = invoke noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %i.ms, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.br unwind label %bb.cg

bb.br:                                            ; preds = %bb.bq
  %i.mu = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 1, ptr nonnull @.str.30, double noundef %i.mt, double noundef 0.000000e+00, double noundef %i.mq)
          to label %bb.bs unwind label %bb.ch

bb.bs:                                            ; preds = %bb.br
  br i1 %i.mu, label %bb.bt, label %.thread162.i

bb.bt:                                            ; preds = %bb.bs
  %i.mv = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 10, ptr nonnull @.str.31, double noundef %i.mp, double noundef 0.000000e+00, double noundef %i.mq)
          to label %bb.bu unwind label %bb.ch

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.mv, label %_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread, label %.thread162.i

_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.mw = ptrtoint ptr %.sroa.19.3.i to i64
  %i.mx = sub i64 %i.mw, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.3.i, i64 noundef %i.mx) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.preheader

.thread162.i:                                     ; preds = %bb.bu, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.1, i32 noundef 330) #42
          to label %bb.bv unwind label %bb.ci

bb.bv:                                            ; preds = %.thread162.i
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 5, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i: ; preds = %bb.bv
  %i.my = load double, ptr %i.y, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store double %i.my, ptr %i.r, align 8, !tbaa !100
  %i.mz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.bw unwind label %bb.cj     ; 2 uses

bb.bw:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, i64 2, ptr nonnull @.str.33)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.bw
  %i.na = load double, ptr %i.z, align 16, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store double %i.na, ptr %i.q, align 8, !tbaa !100
  %i.nb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.bx unwind label %bb.cj     ; 2 uses

bb.bx:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, i64 16, ptr nonnull @.str.34)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i: ; preds = %bb.bx
  %i.nc = load double, ptr %i.as, align 8, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store double %i.nc, ptr %i.p, align 8, !tbaa !100
  %i.nd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.by unwind label %bb.cj     ; 2 uses

bb.by:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i: ; preds = %bb.by
  %24 = load <2 x double>, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %25 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %24)
  %26 = extractelement <2 x double> %24, i64 0
  %i.ne = fdiv double %26, %25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store double %i.ne, ptr %i.o, align 8, !tbaa !100
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bz unwind label %bb.cj     ; 2 uses

bb.bz:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.bz
  %i.ng = load double, ptr %i.as, align 8, !tbaa !359
  %27 = load <2 x double>, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %28 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %27)
  %29 = extractelement <2 x double> %27, i64 0
  %i.nh = fdiv double %29, %28
  %i.ni = fsub double %i.ng, %i.nh
  %i.nj = call noundef double @llvm.fabs.f64(double %i.ni)
  %i.nk = fdiv double %i.nj, %i.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store double %i.nk, ptr %i.n, align 8, !tbaa !100
  %i.nl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ca unwind label %bb.cj     ; 2 uses

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i64 32, ptr nonnull @.str.37)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i: ; preds = %bb.ca
  %i.nm = load double, ptr %i.ar, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store double %i.nm, ptr %i.m, align 8, !tbaa !100
  %i.nn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.cb unwind label %bb.cj     ; 2 uses

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i: ; preds = %bb.cb
  %.val56.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val57.i = load double, ptr %i.z, align 16, !tbaa !353 ; 2 uses
  %i.no = fmul double %.val56.i, %.val57.i
  %i.np = fadd double %.val56.i, %.val57.i        ; 3 uses
  %i.nq = fadd double %i.np, 1.000000e+00
  %i.nr = fdiv double %i.no, %i.nq
  %i.ns = fdiv double %i.nr, %i.np
  %i.nt = fdiv double %i.ns, %i.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.nt, ptr %i.l, align 8, !tbaa !100
  %i.nu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.cc unwind label %bb.cj     ; 2 uses

bb.cc:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i: ; preds = %bb.cc
  %i.nv = load double, ptr %i.ar, align 8, !tbaa !358
  %.val.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val55.i = load double, ptr %i.z, align 16, !tbaa !353 ; 2 uses
  %i.nw = fmul double %.val.i, %.val55.i
  %i.nx = fadd double %.val.i, %.val55.i          ; 3 uses
  %i.ny = fadd double %i.nx, 1.000000e+00
  %i.nz = fdiv double %i.nw, %i.ny
  %i.oa = fdiv double %i.nz, %i.nx
  %i.ob = fdiv double %i.oa, %i.nx
  %i.oc = fsub double %i.nv, %i.ob
  %i.od = call noundef double @llvm.fabs.f64(double %i.oc)
  %i.oe = fdiv double %i.od, %i.mm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double %i.oe, ptr %i.k, align 8, !tbaa !100
  %i.of = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cd unwind label %bb.cj     ; 2 uses

bb.cd:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i64 14, ptr nonnull @.str.38)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i: ; preds = %bb.cd
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.of)
          to label %bb.cm unwind label %bb.cj

bb.ce:                                            ; preds = %bb.f
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cf:                                            ; preds = %bb.bp
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bq
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bt, %bb.br
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ci:                                            ; preds = %.thread162.i
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i, %bb.cd, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i, %bb.cc, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i, %bb.cb, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i, %bb.ca, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i, %bb.bz, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i, %bb.by, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i, %bb.bx, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.bw, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i, %bb.bv
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #43
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn.i = phi { ptr, i32 } [ %i.ol, %bb.cj ], [ %i.ok, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.og, %bb.ce ], [ %i.oh, %bb.cf ], [ %i.oi, %bb.cg ], [ %.pn.i, %bb.ck ], [ %i.oj, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit139.i

common.resume:                                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit157.i, %bb.fv, %_ZN7testing7MessageD2Ev.exit45, %_ZNSt6vectorIdSaIdEED2Ev.exit139.i
  %common.resume.op = phi { ptr, i32 } [ %.pn52.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit139.i ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %.pn74.pn.pn.pn.pn.i, %bb.fv ], [ %.pn74.pn.pn.pn.pn.i, %_ZNSt6vectorIdSaIdEED2Ev.exit157.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIdSaIdEED2Ev.exit139.i:               ; preds = %bb.cl, %bb.bo
  %.pre-phi = phi i64 [ %i.bl, %bb.cl ], [ %.pre, %bb.bo ]
  %.sroa.19.0225.i = phi ptr [ %.sroa.19.3.i, %bb.cl ], [ %.sroa.19.0237255.i, %bb.bo ]
  %.sroa.0147.0185.i = phi ptr [ %.sroa.0147.3.i, %bb.cl ], [ %.sroa.0147.0239.i, %bb.bo ]
  %.pn52.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.cl ], [ %.pn52.i, %bb.bo ]
  %i.om = ptrtoint ptr %.sroa.19.0225.i to i64
  %i.on = sub i64 %i.om, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0185.i, i64 noundef %i.on) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %common.resume

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.oo = ptrtoint ptr %.sroa.19.3.i to i64
  %i.op = sub i64 %i.oo, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.3.i, i64 noundef %i.op) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.oq = load i32, ptr %i.v, align 4, !tbaa !96
  %i.or = add nsw i32 %i.oq, 1
  store i32 %i.or, ptr %i.v, align 4, !tbaa !96
  br label %.preheader

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread, %bb.cm
  br label %bb.cn

bb.cn:                                            ; preds = %.preheader, %bb.de
  %.044291.i = phi i32 [ %i.qm, %bb.de ], [ 1, %.preheader ] ; 3 uses
  %.045290.i = phi i32 [ %.1.ph.i, %bb.de ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0192.0289.i = phi ptr [ %.sroa.0192.1.ph.i, %bb.de ], [ null, %.preheader ] ; 10 uses
  %.sroa.19205.0288.i = phi ptr [ %.sroa.19205.1.ph.i, %bb.de ], [ null, %.preheader ] ; 10 uses
  %.sroa.33.0287.i = phi ptr [ %.sroa.33.1.ph.i, %bb.de ], [ null, %.preheader ] ; 5 uses
  %.sroa.19.0286.i = phi ptr [ %.sroa.19.1.ph.i, %bb.de ], [ null, %.preheader ] ; 9 uses
  %.sroa.12.0285.i = phi ptr [ %.sroa.12.1.ph.i, %bb.de ], [ null, %.preheader ] ; 5 uses
  %.sroa.0179.0284.i = phi ptr [ %.sroa.0179.1.ph.i, %bb.de ], [ null, %.preheader ] ; 11 uses
  %i.os = uitofp nneg i32 %.044291.i to double
  %i.ot = fmul nnan double %i.os, 1.000000e-02
  %i.ou = load double, ptr %i.y, align 8, !tbaa !352
  %i.ov = load double, ptr %i.z, align 16, !tbaa !353
  %i.ow = invoke noundef double @_ZN4absl12lts_2026052615random_internal17BetaIncompleteInvEddd(double noundef %i.ou, double noundef %i.ov, double noundef %i.ot)
          to label %bb.co unwind label %.loopexit240.i ; 5 uses

bb.co:                                            ; preds = %bb.cn
  %i.ox = icmp eq ptr %.sroa.0192.0289.i, %.sroa.19205.0288.i ; 2 uses
  %i.oy = fcmp olt double %i.ow, f0x3E7AD7F29ABCAF48
  %or.cond.i = and i1 %i.ox, %i.oy
  br i1 %or.cond.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.ox, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oz = getelementptr inbounds i8, ptr %.sroa.19205.0288.i, i64 -8
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !100
  %i.pb = fcmp ugt double %i.ow, %i.pa
  br i1 %i.pb, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %i.pc = add nsw i32 %.045290.i, 1
  br label %bb.de

.loopexit240.i:                                   ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i35, %bb.cn
  %.sroa.33.0287.lcssa.i = phi ptr [ %.sroa.33.0287.i, %bb.cn ], [ %.sroa.19205.0288.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i35 ]
  %lpad.loopexit.i10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.loopexit.split-lp.i39:                           ; preds = %bb.cw
  %lpad.loopexit.split-lp.i40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.pd = fcmp ult double %i.ow, f0x3FEFFFFFFFF24190
  br i1 %i.pd, label %bb.ct, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i32 = icmp eq ptr %.sroa.19205.0288.i, %.sroa.33.0287.i
  br i1 %.not.i.i32, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store double %i.ow, ptr %.sroa.19205.0288.i, align 8, !tbaa !100
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_beta_distribution_test.cc:bb.a
__cxx_global_var_init.12.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  store ptr %i.baj, ptr @_ZN12_GLOBAL__N_139BetaDistributionTest_StabilityTest_Test10test_info_E, align 8, !tbaa !1413
  %i.bbj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_139BetaDistributionTest_StabilityTest_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bbk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bbk, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i64 20, ptr %i.b, align 8, !tbaa !61
  %i.bbl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bbl, ptr %0, align 8, !tbaa !50
  %i.bbm = load i64, ptr %i.b, align 8, !tbaa !61 ; 3 uses
  store i64 %i.bbm, ptr %i.bbk, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bbl, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.bbn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bbm, ptr %i.bbn, align 8, !tbaa !60
  %i.bbo = load ptr, ptr %0, align 8, !tbaa !50
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 %i.bbm
  store i8 0, ptr %i.bbp, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  %i.bbq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.bbq, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 75, ptr %i.a, align 8, !tbaa !61
  %i.bbr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i346 unwind label %bb.hh ; 3 uses

.noexc7.i346:                                     ; preds = %__cxx_global_var_init.12.exit
  store ptr %i.bbr, ptr %2, align 8, !tbaa !50
  %i.bbs = load i64, ptr %i.a, align 8, !tbaa !61 ; 3 uses
  store i64 %i.bbs, ptr %i.bbq, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.bbr, ptr noundef nonnull align 1 dereferenceable(75) @.str.1, i64 75, i1 false)
  %i.bbt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.bbs, ptr %i.bbt, align 8, !tbaa !60
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %i.bbs
  store i8 0, ptr %i.bbu, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.bbv, ptr %1, align 8, !tbaa !59
  %i.bbw = load ptr, ptr %2, align 8, !tbaa !50   ; 2 uses
  %i.bbx = icmp eq ptr %i.bbw, %i.bbq
  br i1 %i.bbx, label %bb.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i347

bb.hb:                                            ; preds = %.noexc7.i346
  %i.bby = load i64, ptr %i.bbt, align 8, !tbaa !60 ; 3 uses
  %i.bbz = icmp ult i64 %i.bby, 16
  call void @llvm.assume(i1 %i.bbz)
  %i.bca = add nuw nsw i64 %i.bby, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bbv, ptr noundef nonnull align 8 dereferenceable(1) %i.bbq, i64 %i.bca, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i347: ; preds = %.noexc7.i346
  store ptr %i.bbw, ptr %1, align 8, !tbaa !50
  %i.bcb = load i64, ptr %i.bbq, align 8, !tbaa !51
  store i64 %i.bcb, ptr %i.bbv, align 8, !tbaa !51
  %.pre.i348 = load i64, ptr %i.bbt, align 8, !tbaa !60
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i349

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i349: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i347, %bb.hb
  %i.bcc = phi i64 [ %i.bby, %bb.hb ], [ %.pre.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i347 ]
  %i.bcd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bcc, ptr %i.bcd, align 8, !tbaa !60
  store ptr %i.bbq, ptr %2, align 8, !tbaa !50
  store i64 0, ptr %i.bbt, align 8, !tbaa !60
  store i8 0, ptr %i.bbq, align 8, !tbaa !51
  %i.bce = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 566, ptr %i.bce, align 8, !tbaa !63
  %i.bcf = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.hc unwind label %bb.hi

bb.hc:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i349
  %i.bcg = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 566)
          to label %bb.hd unwind label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  %i.bch = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 566)
          to label %bb.he unwind label %bb.hi

bb.he:                                            ; preds = %bb.hd
  %i.bci = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #40
          to label %bb.hf unwind label %bb.hi     ; 2 uses

bb.hf:                                            ; preds = %bb.he
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141BetaDistributionTest_AlgorithmBounds_TestEEE, i64 16), ptr %i.bci, align 8, !tbaa !58
  %i.bcj = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.bcf, ptr noundef %i.bcg, ptr noundef %i.bch, ptr noundef nonnull %i.bci)
          to label %bb.hg unwind label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.bck = load ptr, ptr %1, align 8, !tbaa !50   ; 2 uses
  %i.bcl = icmp eq ptr %i.bck, %i.bbv
  br i1 %i.bcl, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355: ; preds = %bb.hg
  %i.bcm = load i64, ptr %i.bbv, align 8, !tbaa !51
  %i.bcn = add i64 %i.bcm, 1
  call void @_ZdlPvm(ptr noundef %i.bck, i64 noundef %i.bcn) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i356

_ZN7testing8internal12CodeLocationD2Ev.exit.i356: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i355
  %i.bco = load ptr, ptr %2, align 8, !tbaa !50   ; 2 uses
  %i.bcp = icmp eq ptr %i.bco, %i.bbq
  br i1 %i.bcp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i357: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i356
  %i.bcq = load i64, ptr %i.bbq, align 8, !tbaa !51
  %i.bcr = add i64 %i.bcq, 1
  call void @_ZdlPvm(ptr noundef %i.bco, i64 noundef %i.bcr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i358: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i357
  %i.bcs = load ptr, ptr %0, align 8, !tbaa !50   ; 2 uses
  %i.bct = icmp eq ptr %i.bcs, %i.bbk
  br i1 %i.bct, label %__cxx_global_var_init.14.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i358
  %i.bcu = load i64, ptr %i.bbk, align 8, !tbaa !51
  %i.bcv = add i64 %i.bcu, 1
  call void @_ZdlPvm(ptr noundef %i.bcs, i64 noundef %i.bcv) #37
  br label %__cxx_global_var_init.14.exit

bb.hh:                                            ; preds = %__cxx_global_var_init.12.exit
  %i.bcw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i341

bb.hi:                                            ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i349
  %i.bcx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcy = load ptr, ptr %1, align 8, !tbaa !50   ; 2 uses
  %i.bcz = icmp eq ptr %i.bcy, %i.bbv
  br i1 %i.bcz, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i350: ; preds = %bb.hi
  %i.bda = load i64, ptr %i.bbv, align 8, !tbaa !51
  %i.bdb = add i64 %i.bda, 1
  call void @_ZdlPvm(ptr noundef %i.bcy, i64 noundef %i.bdb) #37
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i351

_ZN7testing8internal12CodeLocationD2Ev.exit15.i351: ; preds = %bb.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i350
  %i.bdc = load ptr, ptr %2, align 8, !tbaa !50   ; 2 uses
  %i.bdd = icmp eq ptr %i.bdc, %i.bbq
  br i1 %i.bdd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i352: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i351
  %i.bde = load i64, ptr %i.bbq, align 8, !tbaa !51
  %i.bdf = add i64 %i.bde, 1
  call void @_ZdlPvm(ptr noundef %i.bdc, i64 noundef %i.bdf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i341: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i352, %bb.hh
  %.pn.i342 = phi { ptr, i32 } [ %i.bcw, %bb.hh ], [ %i.bcx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i352 ], [ %i.bcx, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i351 ] ; 2 uses
  %i.bdg = load ptr, ptr %0, align 8, !tbaa !50   ; 2 uses
  %i.bdh = icmp eq ptr %i.bdg, %i.bbk
  br i1 %i.bdh, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i341
  %i.bdi = load i64, ptr %i.bbk, align 8, !tbaa !51
  br label %common.resume.sink.split

__cxx_global_var_init.14.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i359
  store ptr %i.bcj, ptr @_ZN12_GLOBAL__N_141BetaDistributionTest_AlgorithmBounds_Test10test_info_E, align 8, !tbaa !1413
  %i.bdj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_141BetaDistributionTest_AlgorithmBounds_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #37 = { builtin nounwind }
attributes #38 = { noreturn }
attributes #39 = { nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn nounwind }
attributes #42 = { cold }
attributes #43 = { cold nounwind }
attributes #44 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}
!llvm.errno.tbaa = !{!40}

!0 = distinct !{!0, !52}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{null, null, null, null, null}
!10 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJN7testing8internal14ParamGeneratorIdEES3_EED2Ev, null, null, null, null, null}
!11 = distinct !{ptr @_ZNSt11_Tuple_implILm0EJN7testing8internal14ParamGeneratorIdEES3_EED2Ev, ptr @_ZNSt10_Head_baseILm1EN7testing8internal14ParamGeneratorIdEELb0EED2Ev, null, null, null, null}
!12 = distinct !{null, null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null, null, null, null, null, null}
!16 = distinct !{null, null, null, null, null}
!17 = distinct !{null, null, null, null, null}
!18 = distinct !{null, null}
!19 = distinct !{null}
!20 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev, null}
!21 = distinct !{ptr @_ZNSt6vectorIN7testing7MatcherIRKmEESaIS4_EED2Ev, null, null, null}
!22 = distinct !{!22, !52}
!23 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKmED2Ev, null}
!24 = distinct !{null, null, null, null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !52}
!28 = distinct !{!28, !52}
!29 = distinct !{!29, !52}
!30 = distinct !{!30, !52}
!31 = distinct !{!31, !52}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!"omnipotent char", !36, i64 0}
!38 = !{!"int", !37, i64 0}
!39 = !{!"__libc_errno", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 8}
!46 = !{!"p1 omnipotent char", !41, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!48 = !{!"long", !37, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !48, i64 8, !37, i64 16}
!50 = !{!49, !46, i64 0}
!51 = !{!37, !37, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!43, !42, i64 16}
!54 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !49, i64 0, !48, i64 32}
!55 = !{!54, !48, i64 32}
!56 = !{!"any p2 pointer", !41, i64 0}
!57 = !{!"vtable pointer", !36, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!47, !46, i64 0}
!60 = !{!49, !48, i64 8}
!61 = !{!48, !48, i64 0}
!62 = !{!"_ZTSN7testing8internal12CodeLocationE", !49, i64 0, !38, i64 32}
!63 = !{!62, !38, i64 32}
!64 = !{!"p1 _ZTSN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE17InstantiationInfoE", !41, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE17InstantiationInfoESaIS6_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 8}
!67 = !{!65, !64, i64 16}
!68 = !{!"_ZTSN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE17InstantiationInfoE", !49, i64 0, !41, i64 32, !41, i64 40, !46, i64 48, !38, i64 56}
!69 = !{!68, !41, i64 32}
!70 = !{!68, !41, i64 40}
!71 = !{!68, !46, i64 48}
!72 = !{!68, !38, i64 56}
!73 = !{!65, !64, i64 0}
!74 = !{!"_ZTSSt13_Ios_Fmtflags", !37, i64 0}
!75 = !{!"_ZTSSt12_Ios_Iostate", !37, i64 0}
!76 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !41, i64 0}
!77 = !{!"_ZTSNSt8ios_base6_WordsE", !41, i64 0, !48, i64 8}
!78 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !41, i64 0}
!79 = !{!"p1 _ZTSNSt6locale5_ImplE", !41, i64 0}
!80 = !{!"_ZTSSt6locale", !79, i64 0}
!81 = !{!"_ZTSSt8ios_base", !48, i64 8, !48, i64 16, !74, i64 24, !75, i64 28, !75, i64 32, !76, i64 40, !77, i64 48, !37, i64 64, !38, i64 192, !78, i64 200, !80, i64 208}
!82 = !{!81, !75, i64 32}
!83 = !{!"p1 _ZTSN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE8TestInfoE", !41, i64 0}
!84 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0}
!86 = !{!"_ZTSSt12__shared_ptrIN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !85, i64 8}
!87 = !{!86, !83, i64 0}
!88 = !{!85, !84, i64 0}
!89 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 8, !38, i64 12}
!90 = !{!89, !38, i64 8}
!91 = !{!89, !38, i64 12}
!92 = !{!"_ZTSSt15_Sp_counted_ptrIPN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_120BetaDistributionTestEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !83, i64 16}
!93 = !{!92, !83, i64 16}
!94 = !{!"p1 _ZTSN7testing8internal19TestMetaFactoryBaseISt5tupleIJddEEEE", !41, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!38, !38, i64 0}
!97 = !{!"p1 _ZTSSt5tupleIJddEE", !41, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"double", !37, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"bool", !37, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !42, i64 0}
!103 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !102, i64 0}
!104 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !103, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !104, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !105, i64 0}
!107 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !106, i64 0}
!108 = !{!"_ZTSN7testing15AssertionResultE", !101, i64 0, !107, i64 8}
!109 = !{!108, !101, i64 0}
!110 = !{i8 0, i8 2}
!111 = !{}
!112 = !{!"_ZTSN4absl12lts_2026052617beta_distributionIdE10param_type6MethodE", !37, i64 0}
!113 = !{!"_ZTSN4absl12lts_2026052617beta_distributionIdE10param_typeE", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !112, i64 64, !101, i64 68}
!114 = !{!113, !112, i64 64}
!115 = !{!113, !99, i64 16}
!116 = !{!113, !99, i64 24}
!117 = !{!113, !99, i64 48}
!118 = !{!113, !99, i64 56}
!119 = !{!113, !101, i64 68}
!120 = !{!113, !99, i64 0}
!121 = !{!113, !99, i64 8}
!122 = !{!113, !99, i64 32}
!123 = !{!102, !42, i64 0}
!124 = !{!"_ZTSN7testing8internal26AssertionResultExpectationE", !108, i64 0, !101, i64 16}
!125 = !{!124, !101, i64 16}
!126 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !41, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!42, !42, i64 0}
!129 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !80, i64 56}
!130 = !{!129, !46, i64 40}
!131 = !{!129, !46, i64 32}
!132 = !{!"_ZTSSi", !48, i64 8}
!133 = !{!132, !48, i64 8}
!134 = !{!81, !48, i64 8}
!135 = !{!41, !41, i64 0}
!136 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceISt5tupleIJddEEEE", !41, i64 0}
!137 = !{!"_ZTSSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceISt5tupleIJddEEEELN9__gnu_cxx12_Lock_policyE2EE", !136, i64 0, !85, i64 8}
!138 = !{!137, !136, i64 0}
!139 = !{!"_ZTSSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceISt5tupleIJddEEEELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !136, i64 16}
!140 = !{!139, !136, i64 16}
!141 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!142 = !{!"p1 double", !41, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !142, i64 0, !142, i64 8, !142, i64 16}
!144 = !{!143, !142, i64 16}
end_hunk_2
