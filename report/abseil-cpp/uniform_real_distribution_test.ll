Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/uniform_real_distribution_test?download=true
inline.NumInlined: 3790
inline.NumDeleted: 1115
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIdE8TestBodyEv:bb.a
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #28, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit84

_ZN7testing7MessageD2Ev.exit84:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, %bb.ak, %bb.af
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.af ], [ %.pn63.pn, %bb.ak ], [ %.pn63.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ab, %_ZN7testing7MessageD2Ev.exit84, %bb.ae, %bb.y, %bb.l
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %bb.l ], [ %.pn63.pn.pn, %_ZN7testing7MessageD2Ev.exit84 ], [ %.pn61, %bb.ae ], [ %.pn, %bb.y ], [ %.pn56, %bb.ab ]
  %i.es = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cd
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.al
  %i.eu = load i64, ptr %i.cd, align 8, !tbaa !36
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit91

bb.am:                                            ; preds = %_ZN4absl12lts_2026052615random_internal21ChiSquareWithExpectedIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEdT_SA_d.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 200) #27
  %.051.add = add nuw nsw i64 %.051.idx138, 24    ; 2 uses
  %.not = icmp eq i64 %.051.add, 96
  br i1 %.not, label %.loopexit, label %.noexc

_ZNSt6vectorIiSaIiEED2Ev.exit91:                  ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn71 = phi { ptr, i32 } [ %i.cj, %bb.f ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 200) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn71

.loopexit:                                        ; preds = %bb.am, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIeEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIeEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIeEE, i64 16), ptr %i.a, align 8, !tbaa !40
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIeED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_149UniformRealDistributionTest_ChiSquaredTest50_TestIeE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [6 x %"class.std::basic_string_view"], align 8 ; 15 uses
  %2 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 5 uses
  %3 = alloca [4 x %"class.absl::lts_20260526::uniform_real_distribution<long double>::param_type"], align 16 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 7 uses
  %10 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20260526::log_internal::LogMessage", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noundef double @_ZN4absl12lts_2026052615random_internal14ChiSquareValueEid(i32 noundef 49, double noundef f0x3FEFFFFDE7210BE9)
  %i.b = fptosi double %i.a to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store x86_fp80 0.000000e+00, ptr %3, align 16, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store x86_fp80 1.000000e+00, ptr %i.c, align 16, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store x86_fp80 1.000000e+00, ptr %i.d, align 16, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store x86_fp80 5.000000e+00, ptr %i.e, align 16, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  store x86_fp80 1.200000e+01, ptr %i.f, align 16, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  store x86_fp80 7.000000e+00, ptr %i.g, align 16, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  store x86_fp80 -5.000000e+00, ptr %i.h, align 16, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  store x86_fp80 1.300000e+01, ptr %i.i, align 16, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  store x86_fp80 1.800000e+01, ptr %i.j, align 16, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  store x86_fp80 -5.000000e+00, ptr %i.k, align 16, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  store x86_fp80 -2.000000e+00, ptr %i.l, align 16, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 176
  store x86_fp80 3.000000e+00, ptr %i.m, align 16, !tbaa !110
  %i.n = sitofp i32 %i.b to double
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %bb.an
  %.051.idx152 = phi i64 [ 0, %bb.a ], [ %.051.add, %bb.an ] ; 2 uses
  %.sroa.6125.0151 = phi i64 [ 5843272855002366918, %bb.a ], [ %.us-phi138, %bb.an ] ; 3 uses
  %.sroa.0124.0150 = phi i64 [ 3337843704530833496, %bb.a ], [ %.us-phi, %bb.an ] ; 3 uses
  %.051.ptr153 = getelementptr inbounds nuw i8, ptr %3, i64 %.051.idx152 ; 3 uses
  %i.o = load x86_fp80, ptr %.051.ptr153, align 16, !tbaa !108 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.051.ptr153, i64 16
  %i.q = load x86_fp80, ptr %i.p, align 16, !tbaa !109 ; 2 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #30 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %i.r, i8 0, i64 200, i1 false), !tbaa !75
  %i.s = fptrunc x86_fp80 %i.o to double          ; 2 uses
  %i.t = fptrunc x86_fp80 %i.q to double
  %i.u = fsub double %i.t, %i.s
  %i.v = fdiv double 5.000000e+01, %i.u
  %.sroa.7109.0..051.sroa_idx = getelementptr inbounds nuw i8, ptr %.051.ptr153, i64 32
  %.sroa.7109.0.copyload = load x86_fp80, ptr %.sroa.7109.0..051.sroa_idx, align 16
  %.fr.i.i = freeze x86_fp80 %.sroa.7109.0.copyload ; 5 uses
  %i.w = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %.fr.i.i)
  %i.x = fcmp ueq x86_fp80 %i.w, +inf
  %i.y = fpext double %i.s to x86_fp80            ; 3 uses
  %i.z = fpext double %i.v to x86_fp80            ; 3 uses
  br i1 %i.x, label %.split.us.i.i.us, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split

.split.us.i.i.us:                                 ; preds = %.noexc, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us
  %.0137.us = phi i64 [ %i.ba, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us ], [ 0, %.noexc ]
  %.sroa.6125.1136.us = phi i64 [ %.narrow.i.i.i.i.i.us.i.i.us, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us ], [ %.sroa.6125.0151, %.noexc ]
  %.sroa.0124.1135.us = phi i64 [ %i.ag, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us ], [ %.sroa.0124.0150, %.noexc ]
  %i.aa = zext i64 %.sroa.6125.1136.us to i128
  %i.ab = shl nuw i128 %i.aa, 64
  %i.ac = zext i64 %.sroa.0124.1135.us to i128
  %i.ad = or disjoint i128 %i.ab, %i.ac
  %i.ae = mul i128 %i.ad, 47026247687942121848144207491837523525
  %i.af = add i128 %i.ae, 1442695040888963407     ; 2 uses
  %i.ag = trunc i128 %i.af to i64                 ; 4 uses
  %i.ah = lshr i128 %i.af, 64
  %.tr.i.i.i.i.i.us.i.i.us = trunc nuw i128 %i.ah to i64
  %.narrow.i.i.i.i.i.us.i.i.us = add i64 %.tr.i.i.i.i.i.us.i.i.us, 6364136223846793005 ; 5 uses
  %i.ai = icmp eq i64 %.narrow.i.i.i.i.i.us.i.i.us, %i.ag
  br i1 %i.ai, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i.us
  %i.aj = xor i64 %.narrow.i.i.i.i.i.us.i.i.us, %i.ag ; 2 uses
  %i.ak = lshr i64 %.narrow.i.i.i.i.i.us.i.i.us, 58
  %.0.i.i.i.i.i.i.us.i.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.aj, i64 %i.aj, i64 %i.ak) ; 2 uses
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.us.i.i.us, i1 true) ; 2 uses
  %i.am = shl i64 %.0.i.i.i.i.i.i.us.i.i.us, %i.al
  %i.an = lshr i64 %i.am, 11
  %i.ao = and i64 %i.an, 4503599627370495
  %i.ap = shl nuw nsw i64 %i.al, 52
  %reass.sub157 = sub nsw i64 %i.ao, %i.ap
  %i.aq = add nsw i64 %reass.sub157, 4602678819172646912
  %i.ar = bitcast i64 %i.aq to double
  %i.as = fpext double %i.ar to x86_fp80
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us: ; preds = %bb.b, %.split.us.i.i.us
  %.0.i.us.i.i.us = phi x86_fp80 [ %i.as, %bb.b ], [ 0.000000e+00, %.split.us.i.i.us ]
  %i.at = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.0.i.us.i.i.us, x86_fp80 %.fr.i.i, x86_fp80 %i.o)
  %i.au = fsub x86_fp80 %i.at, %i.y
  %i.av = fmul x86_fp80 %i.au, %i.z
  %i.aw = fptoui x86_fp80 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !75
  %i.ba = add nuw nsw i64 %.0137.us, 1            ; 2 uses
  %exitcond169.not = icmp eq i64 %i.ba, 100000
  br i1 %exitcond169.not, label %.lr.ph.i.preheader, label %.split.us.i.i.us, !llvm.loop !398

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split:      ; preds = %.noexc
  %i.bb = fcmp ugt x86_fp80 %.fr.i.i, 0.000000e+00
  br i1 %i.bb, label %.split.i.preheader.i.us, label %.split.i.preheader.i

.split.i.preheader.i.us:                          ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us
  %.0137.us139 = phi i64 [ %i.ce, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  %.sroa.6125.1136.us140 = phi i64 [ %.narrow.i.i.i.i.i.i.i.us, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us ], [ %.sroa.6125.0151, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  %.sroa.0124.1135.us141 = phi i64 [ %i.bj, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us ], [ %.sroa.0124.0150, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  br label %.split.i.i.us

.split.i.i.us:                                    ; preds = %.split.i.preheader.i.us, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us
  %.narrow.i.i.i.i.i20.i.i.us = phi i64 [ %.narrow.i.i.i.i.i.i.i.us, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us ], [ %.sroa.6125.1136.us140, %.split.i.preheader.i.us ]
  %i.bc = phi i64 [ %i.bj, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us ], [ %.sroa.0124.1135.us141, %.split.i.preheader.i.us ]
  %i.bd = zext i64 %.narrow.i.i.i.i.i20.i.i.us to i128
  %i.be = shl nuw i128 %i.bd, 64
  %i.bf = zext i64 %i.bc to i128
  %i.bg = or disjoint i128 %i.be, %i.bf
  %i.bh = mul i128 %i.bg, 47026247687942121848144207491837523525
  %i.bi = add i128 %i.bh, 1442695040888963407     ; 2 uses
  %i.bj = trunc i128 %i.bi to i64                 ; 5 uses
  %i.bk = lshr i128 %i.bi, 64
  %.tr.i.i.i.i.i.i.i.us = trunc nuw i128 %i.bk to i64
  %.narrow.i.i.i.i.i.i.i.us = add i64 %.tr.i.i.i.i.i.i.i.us, 6364136223846793005 ; 6 uses
  %i.bl = icmp eq i64 %.narrow.i.i.i.i.i.i.i.us, %i.bj
  br i1 %i.bl, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us, label %bb.c

bb.c:                                             ; preds = %.split.i.i.us
  %i.bm = xor i64 %.narrow.i.i.i.i.i.i.i.us, %i.bj ; 2 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i.i.i.us, 58
  %.0.i.i.i.i.i.i.i.i.us = tail call noundef i64 @llvm.fshr.i64(i64 %i.bm, i64 %i.bm, i64 %i.bn) ; 2 uses
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i.us, i1 true) ; 2 uses
  %i.bp = shl i64 %.0.i.i.i.i.i.i.i.i.us, %i.bo
  %i.bq = lshr i64 %i.bp, 11
  %i.br = and i64 %i.bq, 4503599627370495
  %i.bs = shl nuw nsw i64 %i.bo, 52
  %reass.sub156 = sub nsw i64 %i.br, %i.bs
  %i.bt = add nsw i64 %reass.sub156, 4602678819172646912
  %i.bu = bitcast i64 %i.bt to double
  %i.bv = fpext double %i.bu to x86_fp80
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us: ; preds = %bb.c, %.split.i.i.us
  %.0.i.i.i.us = phi x86_fp80 [ %i.bv, %bb.c ], [ 0.000000e+00, %.split.i.i.us ]
  %i.bw = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.0.i.i.i.us, x86_fp80 %.fr.i.i, x86_fp80 %i.o) ; 2 uses
  %i.bx = fcmp olt x86_fp80 %i.bw, %i.q
  br i1 %i.bx, label %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us, label %.split.i.i.us

_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us: ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us
  %i.by = fsub x86_fp80 %i.bw, %i.y
  %i.bz = fmul x86_fp80 %i.by, %i.z
  %i.ca = fptoui x86_fp80 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !75
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !75
  %i.ce = add nuw nsw i64 %.0137.us139, 1         ; 2 uses
  %exitcond168.not = icmp eq i64 %i.ce, 100000
  br i1 %exitcond168.not, label %.lr.ph.i.preheader, label %.split.i.preheader.i.us, !llvm.loop !398

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us
  %.us-phi = phi i64 [ %i.ag, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us ], [ %i.bj, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us ], [ %i.cw, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i ]
  %.us-phi138 = phi i64 [ %.narrow.i.i.i.i.i.us.i.i.us, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.us.i.i.us ], [ %.narrow.i.i.i.i.i.i.i.us, %_ZN4absl12lts_2026052625uniform_real_distributionIeEclINS0_15random_internal10pcg_engineINS4_13pcg128_paramsILm2549297995355413924ELm4865540595714422341ELm6364136223846793005ELm1442695040888963407EEENS4_17pcg_xsl_rr_128_64EEEEEeRT_.exit.loopexit.us ], [ %.narrow.i.i.i.i.i.i.us.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.013.i = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.cn, %.lr.ph.i ]
  %.sroa.0.012.i.idx = phi i64 [ 0, %.lr.ph.i.preheader ], [ %.sroa.0.012.i.add.1, %.lr.ph.i ] ; 3 uses
  %.sroa.0.012.i.ptr = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.012.i.idx
  %i.cf = load i32, ptr %.sroa.0.012.i.ptr, align 4, !tbaa !75
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fadd double %i.cg, -2.000000e+03        ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %.013.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.012.i.idx
  %.sroa.0.012.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.ck = load i32, ptr %.sroa.0.012.i.ptr.1, align 4, !tbaa !75
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = fadd double %i.cl, -2.000000e+03        ; 2 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.ci) ; 2 uses
  %.sroa.0.012.i.add.1 = add nuw nsw i64 %.sroa.0.012.i.idx, 8 ; 2 uses
  %.not.i.1 = icmp eq i64 %.sroa.0.012.i.add.1, 200
  br i1 %.not.i.1, label %_ZN4absl12lts_2026052615random_internal21ChiSquareWithExpectedIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEdT_SA_d.exit, label %.lr.ph.i, !llvm.loop !11

_ZN4absl12lts_2026052615random_internal21ChiSquareWithExpectedIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEdT_SA_d.exit: ; preds = %.lr.ph.i
  %i.co = fdiv double %i.cn, 2.000000e+03         ; 3 uses
  %i.cp = fcmp ule double %i.co, %i.n
  br i1 %i.cp, label %bb.an, label %bb.e

.split.i.preheader.i:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i
  %.0137 = phi i64 [ %i.dq, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  %.sroa.6125.1136 = phi i64 [ %.narrow.i.i.i.i.i.i.us.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i ], [ %.sroa.6125.0151, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  %.sroa.0124.1135 = phi i64 [ %i.cw, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i ], [ %.sroa.0124.0150, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.split ]
  %i.cq = zext i64 %.sroa.6125.1136 to i128
  %i.cr = shl nuw i128 %i.cq, 64
  %i.cs = zext i64 %.sroa.0124.1135 to i128
  %i.ct = or disjoint i128 %i.cr, %i.cs
  %i.cu = mul i128 %i.ct, 47026247687942121848144207491837523525
  %i.cv = add i128 %i.cu, 1442695040888963407     ; 2 uses
  %i.cw = trunc i128 %i.cv to i64                 ; 4 uses
  %i.cx = lshr i128 %i.cv, 64
  %.tr.i.i.i.i.i.i.us.i = trunc nuw i128 %i.cx to i64
  %.narrow.i.i.i.i.i.i.us.i = add i64 %.tr.i.i.i.i.i.i.us.i, 6364136223846793005 ; 5 uses
  %i.cy = icmp eq i64 %.narrow.i.i.i.i.i.i.us.i, %i.cw
  br i1 %i.cy, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i, label %bb.d

bb.d:                                             ; preds = %.split.i.preheader.i
  %i.cz = xor i64 %.narrow.i.i.i.i.i.i.us.i, %i.cw ; 2 uses
  %i.da = lshr i64 %.narrow.i.i.i.i.i.i.us.i, 58
  %.0.i.i.i.i.i.i.i.us.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.cz, i64 %i.cz, i64 %i.da) ; 2 uses
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.us.i, i1 true) ; 2 uses
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i.us.i, %i.db
  %i.dd = lshr i64 %i.dc, 11
  %i.de = and i64 %i.dd, 4503599627370495
  %i.df = shl nuw nsw i64 %i.db, 52
  %reass.sub = sub nsw i64 %i.de, %i.df
  %i.dg = add nsw i64 %reass.sub, 4602678819172646912
  %i.dh = bitcast i64 %i.dg to double
  %i.di = fpext double %i.dh to x86_fp80
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.us.i: ; preds = %bb.d, %.split.i.preheader.i
  %.0.i.i.us.i = phi x86_fp80 [ %i.di, %bb.d ], [ 0.000000e+00, %.split.i.preheader.i ]
  %i.dj = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.0.i.i.us.i, x86_fp80 %.fr.i.i, x86_fp80 %i.o)
  %i.dk = fsub x86_fp80 %i.dj, %i.y
  %i.dl = fmul x86_fp80 %i.dk, %i.z
  %i.dm = fptoui x86_fp80 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !75
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !75
  %i.dq = add nuw nsw i64 %.0137, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, 100000
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %.split.i.preheader.i, !llvm.loop !398

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615random_internal21ChiSquareWithExpectedIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEdT_SA_d.exit
  %i.dr = invoke noundef double @_ZN4absl12lts_2026052615random_internal15ChiSquarePValueEdi(double noundef %i.co, i32 noundef 50)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ds, ptr %4, align 8, !tbaa !64
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.dt, align 8, !tbaa !65
  store i8 0, ptr %i.ds, align 8, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit91

bb.h:                                             ; preds = %bb.f, %bb.j
  %.sroa.0103.0.idx154 = phi i64 [ 0, %bb.f ], [ %.sroa.0103.0.add, %bb.j ] ; 2 uses
  %.sroa.0103.0.ptr = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0103.0.idx154
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dz = load i32, ptr %.sroa.0103.0.ptr, align 4, !tbaa !75
  %i.ea = invoke noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.dz, ptr noundef nonnull %i.du)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.dv
  store i64 %i.ec, ptr %5, align 8, !tbaa !149
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i64 1, ptr %6, align 8
  store ptr @.str.83, ptr %i.dx, align 8
  invoke void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.sroa.0103.0.add = add nuw nsw i64 %.sroa.0103.0.idx154, 4 ; 2 uses
  %.not128 = icmp eq i64 %.sroa.0103.0.add, 200
  br i1 %.not128, label %bb.n, label %bb.h

bb.k:                                             ; preds = %bb.h
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn67 = phi { ptr, i32 } [ %i.ee, %bb.l ], [ %i.ed, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.am

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i64 11, ptr %7, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @_ZN4absl12lts_2026052615random_internalL11kChiSquaredE, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i64 9, ptr %8, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.84, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ei = invoke noundef i64 @_ZN4absl12lts_2026052616numbers_internal17SixDigitsToBufferEdPc(double noundef %i.dr, ptr noundef nonnull %i.eh)
          to label %bb.o unwind label %bb.x

end_hunk_0
