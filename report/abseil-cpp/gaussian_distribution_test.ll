Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gaussian_distribution_test?download=true
inline.NumInlined: 3822
inline.NumDeleted: 1513
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_136GaussianDistributionTests_ZTest_Test8TestBodyEv:bb.a
  br label %common.resume

bb.au:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !127 ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i20, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.av
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !19
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_136GaussianDistributionTests_ZTest_TestD1Ev(ptr noundef %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(64) %i.a) #38
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N12_GLOBAL__N_136GaussianDistributionTests_ZTest_TestD0Ev(ptr noundef %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 16 dead_on_return(16) dereferenceable(64) %i.a) #38
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 noundef 64) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_15ParamEE8GetParamEv() unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load ptr, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_15ParamEE10parameter_E, align 8, !tbaa !90
  %i.b = icmp ne ptr %i.a, null
  %i.c = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.b)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #38
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef 1707)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.17, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #38
  br label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %0) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #38
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  %i.h = load ptr, ptr @_ZN7testing18WithParamInterfaceIN12_GLOBAL__N_15ParamEE10parameter_E, align 8, !tbaa !90
  ret ptr %i.h
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN7testing13TestWithParamIN12_GLOBAL__N_15ParamEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_15ParamEED1Ev(ptr noundef %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %i.a) #38
  ret void
}

; Function Attrs: cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZThn16_N7testing13TestWithParamIN12_GLOBAL__N_15ParamEED0Ev(ptr nofree readnone captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #19

declare noundef double @_ZN4absl12lts_2026052615random_internal26RequiredSuccessProbabilityEdi(double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 4 uses
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
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  ret void
}

declare noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8, ptr, i64) local_unnamed_addr #2

declare noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64, ptr, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #20

; Function Attrs: cold
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS1_10pcg_engineINS1_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS1_17pcg_xsl_rr_128_64EEEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 16, !tbaa !35
  %.sroa.22.0..sroa_idx.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.narrow.i.i.i.i.i2743 = phi i64 [ %.narrow.i.i.i.i.i27, %bb.d ], [ %.sroa.22.0..sroa_idx.i.i.i.promoted, %bb.a ]
  %i.a = phi i64 [ %i.cm, %bb.d ], [ %.promoted, %bb.a ]
  %i.b = zext i64 %.narrow.i.i.i.i.i2743 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %i.a to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = mul i128 %i.e, 47026247687942121848144207491837523525
  %i.g = add i128 %i.f, 1442695040888963407       ; 3 uses
  %i.h = trunc i128 %i.g to i64                   ; 3 uses
  %i.i = lshr i128 %i.g, 64
  %.tr.i.i.i.i.i = trunc nuw i128 %i.i to i64
  %.narrow.i.i.i.i.i = add i64 %.tr.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.j = lshr i64 %.narrow.i.i.i.i.i, 58
  %i.k = xor i64 %.narrow.i.i.i.i.i, %i.h         ; 2 uses
  %.0.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.k, i64 %i.k, i64 %i.j) ; 5 uses
  %i.l = trunc i64 %.0.i.i.i.i.i.i to i32
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = and i64 %.0.i.i.i.i.i.i, -9223372036854775808
  %i.o = and i64 %.0.i.i.i.i.i.i, 9223372036854775807
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl i64 %.0.i.i.i.i.i.i, %i.q
  %i.s = lshr i64 %i.r, 11
  %i.t = shl nuw nsw i64 %i.p, 52
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = and i64 %i.s, 4503599627370495
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = xor i64 %i.w, 4607182418800017408
  %i.y = bitcast i64 %i.x to double               ; 2 uses
  %i.z = and i64 %.0.i.i.i.i.i.i, 127             ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !115
  %i.ac = fmul double %i.ab, %i.y                 ; 4 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = add nuw nsw i32 %i.m, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !115
  %i.ai = fcmp olt double %i.ad, %i.ah
  br i1 %i.ai, label %select.unfold.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.narrow.i.i.i.i.i1316.i = phi i64 [ %.narrow.i.i.i.i.i13.i, %.preheader ], [ %.narrow.i.i.i.i.i, %bb.c ]
  %i.ak = phi i64 [ %i.bl, %.preheader ], [ %i.h, %bb.c ]
  %i.al = zext i64 %.narrow.i.i.i.i.i1316.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %i.ak to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = mul i128 %i.ao, 47026247687942121848144207491837523525
  %i.aq = add i128 %i.ap, 1442695040888963407     ; 3 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.as to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.at = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.au = xor i64 %.narrow.i.i.i.i.i.i, %i.ar     ; 2 uses
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.au, i64 %i.at) ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl i64 %.0.i.i.i.i.i.i.i, %i.aw
  %i.ay = lshr i64 %i.ax, 11
  %i.az = and i64 %i.ay, 4503599627370495
  %i.ba = shl nuw nsw i64 %i.av, 52
  %reass.sub46 = sub nsw i64 %i.az, %i.ba
  %i.bb = add nsw i64 %reass.sub46, 4602678819172646912
  %i.bc = bitcast i64 %i.bb to double
  %i.bd = tail call nnan double @llvm.log.f64(double %i.bc)
  %i.be = fmul nnan double %i.bd, f0x3FD2972A8AFC6175 ; 4 uses
  %i.bf = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = and i128 %i.aq, 18446744073709551615
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i12.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i13.i = add i64 %.tr.i.i.i.i.i12.i, 6364136223846793005 ; 4 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i13.i, 58
  %i.bo = xor i64 %.narrow.i.i.i.i.i13.i, %i.bl   ; 2 uses
  %.0.i.i.i.i.i.i14.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bn) ; 2 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i14.i, i1 false) ; 2 uses
  %i.bq = and i64 %i.bp, 63
  %i.br = shl i64 %.0.i.i.i.i.i.i14.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bp, 52
  %reass.sub47 = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub47, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  %i.bx = tail call double @llvm.log.f64(double %i.bw) ; 2 uses
  %i.by = fneg double %i.bx
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.be, %i.be
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %.preheader, label %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS1_10pcg_engineINS1_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS1_17pcg_xsl_rr_128_64EEEEEdRT_b.exit, !llvm.loop !131

_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS1_10pcg_engineINS1_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS1_17pcg_xsl_rr_128_64EEEEEdRT_b.exit: ; preds = %.preheader
  %i.cc = fcmp olt double %i.y, 0.000000e+00
  store i64 %i.bl, ptr %1, align 16, !tbaa !35
  store i64 %.narrow.i.i.i.i.i13.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !35
  %i.cd = fadd double %i.be, f0xC00B8A7C476D2BE8
  %i.ce = fsub double f0x400B8A7C476D2BE8, %i.be
  %i.cf = select i1 %i.cc, double %i.cd, double %i.ce
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.cg = zext i64 %.narrow.i.i.i.i.i to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = and i128 %i.g, 18446744073709551615
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %i.ck = mul i128 %i.cj, 47026247687942121848144207491837523525
  %i.cl = add i128 %i.ck, 1442695040888963407     ; 2 uses
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = lshr i128 %i.cl, 64
  %.tr.i.i.i.i.i26 = trunc nuw i128 %i.cn to i64
  %.narrow.i.i.i.i.i27 = add i64 %.tr.i.i.i.i.i26, 6364136223846793005 ; 4 uses
  %i.co = lshr i64 %.narrow.i.i.i.i.i27, 58
  %i.cp = xor i64 %.narrow.i.i.i.i.i27, %i.cm     ; 2 uses
  %.0.i.i.i.i.i.i28 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cp, i64 %i.cp, i64 %i.co) ; 2 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i28, i1 false) ; 2 uses
  %i.cr = and i64 %i.cq, 63
  %i.cs = shl i64 %.0.i.i.i.i.i.i28, %i.cr
  %i.ct = lshr i64 %i.cs, 11
  %i.cu = shl nuw nsw i64 %i.cq, 52
  %i.cv = and i64 %i.ct, 4503599627370495
  %reass.sub = sub nsw i64 %i.cv, %i.cu
  %i.cw = add nsw i64 %reass.sub, 4602678819172646912
  %i.cx = bitcast i64 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.af
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !115 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.z
  %i.db = load double, ptr %i.da, align 8, !tbaa !115
  %i.dc = fsub double %i.db, %i.cz
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dc, double %i.cz)
  %i.de = fmul double %i.ac, -5.000000e-01
  %i.df = fmul double %i.ac, %i.de
  %i.dg = tail call double @exp(double noundef %i.df) #38
  %i.dh = fcmp olt double %i.dd, %i.dg
  br i1 %i.dh, label %select.unfold.loopexit, label %bb.b

select.unfold.loopexit:                           ; preds = %bb.b, %bb.d
  %.narrow.i.i.i.i.i2744 = phi i64 [ %.narrow.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i27, %bb.d ]
  %2 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.d ]
  store i64 %2, ptr %1, align 16, !tbaa !35
  store i64 %.narrow.i.i.i.i.i2744, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !35
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.loopexit, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS1_10pcg_engineINS1_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS1_17pcg_xsl_rr_128_64EEEEEdRT_b.exit
  %.2.ph = phi double [ %i.cf, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS1_10pcg_engineINS1_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS1_17pcg_xsl_rr_128_64EEEEEdRT_b.exit ], [ %i.ac, %select.unfold.loopexit ]
  ret double %.2.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.35, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #38, !inline_history !132
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !128   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #38, !inline_history !132
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.41, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #38, !inline_history !133
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !128   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #38, !inline_history !133
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #38, !inline_history !134
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !128  ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #38, !inline_history !134
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ah

.noexc34:                                         ; preds = %bb.j
  %i.ao = icmp eq ptr %5, null
  %i.ap = load ptr, ptr %12, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br i1 %i.ao, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIN4absl12lts_2026052621gaussian_distributionIfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfEEE5PrintERKS5_PSo.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149, !noalias !632 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !632 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !19, !alias.scope !632
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfEEE5PrintERKS5_PSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !31
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !31
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #38
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !31
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !150
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing13PrintToStringIN4absl12lts_2026052621gaussian_distributionIfE10param_typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef nonnull align 4 dereferenceable(8) %1, i64 noundef 8, ptr noundef nonnull %i.a)
          to label %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfE10param_typeEE5PrintERKS6_PSo.exit unwind label %bb.e

_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfE10param_typeEE5PrintERKS6_PSo.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !33, !alias.scope !639
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !34, !alias.scope !639
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !639
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147, !noalias !639 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !639 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfE10param_typeEE5PrintERKS6_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149, !noalias !639 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !14, !alias.scope !639 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19, !alias.scope !639
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #36
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052621gaussian_distributionIfE10param_typeEE5PrintERKS6_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !31
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !31
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #38
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !31
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !150
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN7testing8internal20PrintBytesInObjectToEPKhmPSo(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_14InsecureBitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 16, !tbaa !35
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.narrow.i.i.i.i.i.i2743 = phi i64 [ %.narrow.i.i.i.i.i.i27, %bb.d ], [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted, %bb.a ]
  %i.a = phi i64 [ %i.cm, %bb.d ], [ %.promoted, %bb.a ]
  %i.b = zext i64 %.narrow.i.i.i.i.i.i2743 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %i.a to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = mul i128 %i.e, 47026247687942121848144207491837523525
  %i.g = add i128 %i.f, 1442695040888963407       ; 3 uses
  %i.h = trunc i128 %i.g to i64                   ; 3 uses
  %i.i = lshr i128 %i.g, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.i to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.j = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.k = xor i64 %.narrow.i.i.i.i.i.i, %i.h       ; 2 uses
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.k, i64 %i.k, i64 %i.j) ; 5 uses
  %i.l = trunc i64 %.0.i.i.i.i.i.i.i to i32
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = and i64 %.0.i.i.i.i.i.i.i, -9223372036854775808
  %i.o = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775807
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl i64 %.0.i.i.i.i.i.i.i, %i.q
  %i.s = lshr i64 %i.r, 11
  %i.t = shl nuw nsw i64 %i.p, 52
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = and i64 %i.s, 4503599627370495
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = xor i64 %i.w, 4607182418800017408
  %i.y = bitcast i64 %i.x to double               ; 2 uses
  %i.z = and i64 %.0.i.i.i.i.i.i.i, 127           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !115
  %i.ac = fmul double %i.ab, %i.y                 ; 4 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = add nuw nsw i32 %i.m, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !115
  %i.ai = fcmp olt double %i.ad, %i.ah
  br i1 %i.ai, label %select.unfold.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.narrow.i.i.i.i.i.i1316.i = phi i64 [ %.narrow.i.i.i.i.i.i13.i, %.preheader ], [ %.narrow.i.i.i.i.i.i, %bb.c ]
  %i.ak = phi i64 [ %i.bl, %.preheader ], [ %i.h, %bb.c ]
  %i.al = zext i64 %.narrow.i.i.i.i.i.i1316.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %i.ak to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = mul i128 %i.ao, 47026247687942121848144207491837523525
  %i.aq = add i128 %i.ap, 1442695040888963407     ; 3 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.as to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.at = lshr i64 %.narrow.i.i.i.i.i.i.i, 58
  %i.au = xor i64 %.narrow.i.i.i.i.i.i.i, %i.ar   ; 2 uses
  %.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.au, i64 %i.at) ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl i64 %.0.i.i.i.i.i.i.i.i, %i.aw
  %i.ay = lshr i64 %i.ax, 11
  %i.az = and i64 %i.ay, 4503599627370495
  %i.ba = shl nuw nsw i64 %i.av, 52
  %reass.sub46 = sub nsw i64 %i.az, %i.ba
  %i.bb = add nsw i64 %reass.sub46, 4602678819172646912
  %i.bc = bitcast i64 %i.bb to double
  %i.bd = tail call nnan double @llvm.log.f64(double %i.bc)
  %i.be = fmul nnan double %i.bd, f0x3FD2972A8AFC6175 ; 4 uses
  %i.bf = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = and i128 %i.aq, 18446744073709551615
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i.i12.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i13.i = add i64 %.tr.i.i.i.i.i.i12.i, 6364136223846793005 ; 4 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i.i13.i, 58
  %i.bo = xor i64 %.narrow.i.i.i.i.i.i13.i, %i.bl ; 2 uses
  %.0.i.i.i.i.i.i.i14.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bn) ; 2 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i14.i, i1 false) ; 2 uses
  %i.bq = and i64 %i.bp, 63
  %i.br = shl i64 %.0.i.i.i.i.i.i.i14.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bp, 52
  %reass.sub47 = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub47, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  %i.bx = tail call double @llvm.log.f64(double %i.bw) ; 2 uses
  %i.by = fneg double %i.bx
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.be, %i.be
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %.preheader, label %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit, !llvm.loop !640

_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit: ; preds = %.preheader
  %i.cc = fcmp olt double %i.y, 0.000000e+00
  store i64 %i.bl, ptr %1, align 16, !tbaa !35
  store i64 %.narrow.i.i.i.i.i.i13.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  %i.cd = fadd double %i.be, f0xC00B8A7C476D2BE8
  %i.ce = fsub double f0x400B8A7C476D2BE8, %i.be
  %i.cf = select i1 %i.cc, double %i.cd, double %i.ce
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.cg = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = and i128 %i.g, 18446744073709551615
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %i.ck = mul i128 %i.cj, 47026247687942121848144207491837523525
  %i.cl = add i128 %i.ck, 1442695040888963407     ; 2 uses
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = lshr i128 %i.cl, 64
  %.tr.i.i.i.i.i.i26 = trunc nuw i128 %i.cn to i64
  %.narrow.i.i.i.i.i.i27 = add i64 %.tr.i.i.i.i.i.i26, 6364136223846793005 ; 4 uses
  %i.co = lshr i64 %.narrow.i.i.i.i.i.i27, 58
  %i.cp = xor i64 %.narrow.i.i.i.i.i.i27, %i.cm   ; 2 uses
  %.0.i.i.i.i.i.i.i28 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cp, i64 %i.cp, i64 %i.co) ; 2 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i28, i1 false) ; 2 uses
  %i.cr = and i64 %i.cq, 63
  %i.cs = shl i64 %.0.i.i.i.i.i.i.i28, %i.cr
  %i.ct = lshr i64 %i.cs, 11
  %i.cu = shl nuw nsw i64 %i.cq, 52
  %i.cv = and i64 %i.ct, 4503599627370495
  %reass.sub = sub nsw i64 %i.cv, %i.cu
  %i.cw = add nsw i64 %reass.sub, 4602678819172646912
  %i.cx = bitcast i64 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.af
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !115 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.z
  %i.db = load double, ptr %i.da, align 8, !tbaa !115
  %i.dc = fsub double %i.db, %i.cz
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dc, double %i.cz)
  %i.de = fmul double %i.ac, -5.000000e-01
  %i.df = fmul double %i.ac, %i.de
  %i.dg = tail call double @exp(double noundef %i.df) #38
  %i.dh = fcmp olt double %i.dd, %i.dg
  br i1 %i.dh, label %select.unfold.loopexit, label %bb.b

select.unfold.loopexit:                           ; preds = %bb.b, %bb.d
  %.narrow.i.i.i.i.i.i2744 = phi i64 [ %.narrow.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i.i27, %bb.d ]
  %2 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.d ]
  store i64 %2, ptr %1, align 16, !tbaa !35
  store i64 %.narrow.i.i.i.i.i.i2744, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !35
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.loopexit, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit
  %.2.ph = phi double [ %i.cf, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit ], [ %i.ac, %select.unfold.loopexit ]
  ret double %.2.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %15, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.35, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.d = load ptr, ptr %15, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #38, !inline_history !132
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %15, align 8, !tbaa !128   ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #38, !inline_history !132
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.d
  %i.m = icmp eq ptr %1, null
  %i.n = load ptr, ptr %14, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br i1 %i.m, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.q = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.41, %.noexc15 ]
  %i.r = phi i64 [ %i.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.q, i64 noundef %i.r)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.t = load ptr, ptr %14, align 8, !tbaa !128   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #38, !inline_history !133
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %14, align 8, !tbaa !128   ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #38, !inline_history !133
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ah

.noexc23:                                         ; preds = %bb.g
  %i.ac = load ptr, ptr %13, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.af = load ptr, ptr %13, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #38, !inline_history !134
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !128  ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #38, !inline_history !134
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ah

.noexc34:                                         ; preds = %bb.j
  %i.ao = icmp eq ptr %5, null
  %i.ap = load ptr, ptr %12, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br i1 %i.ao, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
  %i.ar = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #38
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26, %.noexc34
  %i.as = phi ptr [ %5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ @.str.41, %.noexc34 ]
  %i.at = phi i64 [ %i.ar, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ 6, %.noexc34 ]
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31
  %i.av = load ptr, ptr %12, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i32, label %bb.m, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i33

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i33: ; preds = %bb.k
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
end_hunk_1
