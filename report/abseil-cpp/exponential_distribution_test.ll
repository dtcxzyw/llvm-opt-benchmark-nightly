Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/exponential_distribution_test?download=true
inline.NumInlined: 3506
inline.NumDeleted: 1491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_139ExponentialDistributionTests_ZTest_Test8TestBodyEv:bb.a
bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i, %bb.d
  %.0118.i = phi i64 [ 0, %bb.d ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ]
  %.sroa.084.0117.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.084.3.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 6 uses
  %.sroa.12.0116.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.12.2.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 4 uses
  %.sroa.19.0115.i = phi ptr [ %i.am, %bb.d ], [ %.sroa.19.3.i, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i ] ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ab, align 16, !tbaa !45
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !45
  %i.ar = zext i64 %.sroa.22.0.copyload.i.i.i.i.i.i to i128
  %i.as = shl nuw i128 %i.ar, 64
  %i.at = zext i64 %.sroa.01.0.copyload.i.i.i.i.i.i to i128
  %i.au = or disjoint i128 %i.as, %i.at
  %i.av = mul i128 %i.au, 47026247687942121848144207491837523525
  %i.aw = add i128 %i.av, 1442695040888963407     ; 2 uses
  %i.ax = trunc i128 %i.aw to i64                 ; 2 uses
  %i.ay = lshr i128 %i.aw, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ay to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  store i64 %i.ax, ptr %i.ab, align 16, !tbaa !45
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !45
  %i.az = lshr i64 %.narrow.i.i.i.i.i.i.i.i, 58
  %i.ba = xor i64 %.narrow.i.i.i.i.i.i.i.i, %i.ax ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ba, i64 %i.ba, i64 %i.az) ; 2 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.bc = and i64 %i.bb, 63
  %i.bd = shl i64 %.0.i.i.i.i.i.i.i.i.i, %i.bc
  %i.be = lshr i64 %i.bd, 11
  %i.bf = and i64 %i.be, 4503599627370495
  %i.bg = shl nuw nsw i64 %i.bb, 52
  %reass.sub = sub nsw i64 %i.bf, %i.bg
  %i.bh = add nsw i64 %reass.sub, -4620693217682128896
  %i.bi = bitcast i64 %i.bh to double
  %i.bj = call double @log1p(double noundef %i.bi) #38
  %i.bk = fmul double %i.ak, %i.bj                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.0116.i, %.sroa.19.0115.i
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double %i.bk, ptr %.sroa.12.0116.i, align 8, !tbaa !96
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bl = ptrtoint ptr %.sroa.12.0116.i to i64
  %i.bm = ptrtoint ptr %.sroa.084.0117.i to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 7 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.i, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #37
          to label %.noexc32.i unwind label %.loopexit.split-lp.i

.noexc32.i:                                       ; preds = %bb.i
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #39
          to label %.noexc33.i unwind label %.loopexit.i ; 4 uses

.noexc33.i:                                       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store double %i.bk, ptr %i.bw, align 8, !tbaa !96
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.j, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

bb.j:                                             ; preds = %.noexc33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %.sroa.084.0117.i, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %.noexc33.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0117.i, i64 noundef %i.bn) #36
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.g
  %.sroa.19.3.i = phi ptr [ %i.by, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.19.0115.i, %bb.g ] ; 3 uses
  %.pn104.i = phi ptr [ %i.bw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0116.i, %bb.g ]
  %.sroa.084.3.i = phi ptr [ %i.bv, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.084.0117.i, %bb.g ] ; 5 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.pn104.i, i64 8 ; 2 uses
  %i.bz = add nuw nsw i64 %.0118.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bz, 10000
  br i1 %exitcond.not.i, label %bb.e, label %bb.f, !llvm.loop !244

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79.i

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79.i

bb.k:                                             ; preds = %bb.e
  %i.ca = invoke noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef %i.x)
          to label %bb.l unwind label %bb.ae      ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.val30.i = load double, ptr %i.ac, align 16, !tbaa !84
  %i.cb = invoke noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %.val30.i, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.m unwind label %bb.af      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.cc = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 1, ptr nonnull @.str.22, double noundef %i.cb, double noundef 0.000000e+00, double noundef %i.ca)
          to label %bb.n unwind label %bb.ag      ; 2 uses

bb.n:                                             ; preds = %bb.m
  br i1 %i.cc, label %_ZN12_GLOBAL__N_128ExponentialDistributionTests11SingleZTestIN4absl12lts_2026052624exponential_distributionIdEEEEbdm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 222) #41
          to label %bb.p unwind label %bb.ah

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 2, ptr nonnull @.str.23)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.x, ptr %i.l, align 8, !tbaa !96
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.q unwind label %bb.ai      ; 2 uses

bb.q:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 9, ptr nonnull @.str.24)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double %i.ca, ptr %i.k, align 8, !tbaa !96
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.r unwind label %bb.ai      ; 2 uses

bb.r:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 9, ptr nonnull @.str.25)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit40.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit40.i: ; preds = %bb.r
  %.val.i = load double, ptr %i.aa, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store double %.val.i, ptr %i.j, align 8, !tbaa !96
  %i.cf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.s unwind label %bb.ai      ; 2 uses

bb.s:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 7, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i: ; preds = %bb.s
  %i.cg = load double, ptr %i.ad, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store double %i.cg, ptr %i.i, align 8, !tbaa !96
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.t unwind label %bb.ai      ; 2 uses

bb.t:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 5, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i: ; preds = %bb.t
  %.val29.i = load double, ptr %i.ac, align 16, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double %.val29.i, ptr %i.h, align 8, !tbaa !96
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.u unwind label %bb.ai      ; 2 uses

bb.u:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 9, ptr nonnull @.str.28)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit50.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit50.i: ; preds = %bb.u
  %i.cj = load double, ptr %i.ae, align 8, !tbaa !251
  %i.ck = call double @sqrt(double noundef %i.cj) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store double %i.ck, ptr %i.g, align 8, !tbaa !96
  %i.cl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.v unwind label %bb.ai      ; 2 uses

bb.v:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 5, ptr nonnull @.str.27)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %.val31.i = load double, ptr %i.ac, align 16, !tbaa !84 ; 2 uses
  %i.cm = fmul double %.val31.i, %.val31.i
  %sqrt.i.i = call noundef double @sqrt(double noundef %i.cm) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %sqrt.i.i, ptr %i.f, align 8, !tbaa !96
  %i.cn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.x unwind label %bb.ai      ; 2 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 11, ptr nonnull @.str.29)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.x
  %i.co = load double, ptr %i.af, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %i.co, ptr %i.e, align 8, !tbaa !96
  %i.cp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.y unwind label %bb.ai      ; 2 uses

bb.y:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 5, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit61.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit61.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double 2.000000e+00, ptr %i.d, align 8, !tbaa !96
  %i.cq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.z unwind label %bb.ai      ; 2 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 11, ptr nonnull @.str.30)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit65.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit65.i: ; preds = %bb.z
  %i.cr = load double, ptr %i.ag, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.cr, ptr %i.c, align 8, !tbaa !96
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.aa unwind label %bb.ai     ; 2 uses

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 5, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit69.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit69.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 6.000000e+00, ptr %i.b, align 8, !tbaa !96
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ab unwind label %bb.ai     ; 2 uses

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 4, ptr nonnull @.str.31)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.cb, ptr %i.a, align 8, !tbaa !96
  %i.cu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ac unwind label %bb.ai     ; 2 uses

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 6, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i unwind label %bb.ai

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i: ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.ai

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN12_GLOBAL__N_128ExponentialDistributionTests11SingleZTestIN4absl12lts_2026052624exponential_distributionIdEEEEbdm.exit

bb.ad:                                            ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ae:                                            ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ag:                                            ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit.i, %bb.ac, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit.i, %bb.ab, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit69.i, %bb.aa, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit65.i, %bb.z, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit61.i, %bb.y, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i, %bb.x, %bb.w, %bb.v, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit50.i, %bb.u, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i, %bb.t, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit.i, %bb.s, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit40.i, %bb.r, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i, %bb.q, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #42
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %i.cz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.cv, %bb.ad ], [ %i.cw, %bb.ae ], [ %i.cx, %bb.af ], [ %.pn.i, %bb.aj ], [ %i.cy, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %.pre64 = ptrtoint ptr %.sroa.19.3.i to i64
  %.pre66 = sub i64 %.pre64, %i.ao
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit79.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit19, %_ZNSt6vectorIdSaIdEED2Ev.exit79.i
  %common.resume.op = phi { ptr, i32 } [ %.pn26.i, %_ZNSt6vectorIdSaIdEED2Ev.exit79.i ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIdSaIdEED2Ev.exit79.i:                ; preds = %bb.ak, %.loopexit.split-lp.i, %.loopexit.i
  %.pre-phi67 = phi i64 [ %.pre66, %bb.ak ], [ 9223372036854775800, %.loopexit.split-lp.i ], [ %i.bn, %.loopexit.i ]
  %.sroa.084.0107.i = phi ptr [ %.sroa.084.3.i, %bb.ak ], [ %.sroa.084.0117.i, %.loopexit.split-lp.i ], [ %.sroa.084.0117.i, %.loopexit.i ]
  %.pn26.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %bb.ak ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0107.i, i64 noundef %.pre-phi67) #36
  br label %common.resume

_ZN12_GLOBAL__N_128ExponentialDistributionTests11SingleZTestIN4absl12lts_2026052624exponential_distributionIdEEEEbdm.exit: ; preds = %bb.n, %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.db = ptrtoint ptr %.sroa.19.3.i to i64
  %i.dc = sub i64 %i.db, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.3.i, i64 noundef %i.dc) #36
  %not. = xor i1 %i.cc, true
  %i.dd = zext i1 %not. to i32
  %i.de = load i32, ptr %i.n, align 4, !tbaa !51
  %i.df = add nsw i32 %i.de, %i.dd                ; 2 uses
  store i32 %i.df, ptr %i.n, align 4, !tbaa !51
  %i.dg = add nuw nsw i32 %.01242, 1              ; 2 uses
  %i.dh = load i32, ptr %i.p, align 8, !tbaa !246
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.d, label %._crit_edge, !llvm.loop !245

bb.al:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !97 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i15, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !34
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.an, %bb.am
  %i.dm = phi ptr [ %i.dl, %bb.an ], [ @.str, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 303, ptr noundef %i.dm)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.dn = load ptr, ptr %4, align 8, !tbaa !99    ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i16, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ap
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !42
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(128) %i.dn) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit19

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_exponential_distribution_test.cc:bb.a
  %i.aqm = load i64, ptr %i.aoo, align 8, !tbaa !35
  br label %common.resume.sink.split

__cxx_global_var_init.9.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  store ptr %i.apn, ptr @_ZN12_GLOBAL__N_146ExponentialDistributionTest_StabilityTest_Test10test_info_E, align 8, !tbaa !893
  %i.aqn = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_146ExponentialDistributionTest_StabilityTest_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.aqo, ptr %0, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store i64 27, ptr %i.b, align 8, !tbaa !45
  %i.aqp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aqp, ptr %0, align 8, !tbaa !34
  %i.aqq = load i64, ptr %i.b, align 8, !tbaa !45 ; 3 uses
  store i64 %i.aqq, ptr %i.aqo, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aqp, ptr noundef nonnull align 1 dereferenceable(27) @.str.10, i64 27, i1 false)
  %i.aqr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aqq, ptr %i.aqr, align 8, !tbaa !44
  %i.aqs = load ptr, ptr %0, align 8, !tbaa !34
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqq
  store i8 0, ptr %i.aqt, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.aqu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.aqu, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i64 82, ptr %i.a, align 8, !tbaa !45
  %i.aqv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i79 unwind label %bb.fj ; 3 uses

.noexc7.i79:                                      ; preds = %__cxx_global_var_init.9.exit
  store ptr %i.aqv, ptr %2, align 8, !tbaa !34
  %i.aqw = load i64, ptr %i.a, align 8, !tbaa !45 ; 3 uses
  store i64 %i.aqw, ptr %i.aqu, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(82) %i.aqv, ptr noundef nonnull align 1 dereferenceable(82) @.str.1, i64 82, i1 false)
  %i.aqx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.aqw, ptr %i.aqx, align 8, !tbaa !44
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqv, i64 %i.aqw
  store i8 0, ptr %i.aqy, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.aqz, ptr %1, align 8, !tbaa !43
  %i.ara = load ptr, ptr %2, align 8, !tbaa !34   ; 2 uses
  %i.arb = icmp eq ptr %i.ara, %i.aqu
  br i1 %i.arb, label %bb.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80

bb.fd:                                            ; preds = %.noexc7.i79
  %i.arc = load i64, ptr %i.aqx, align 8, !tbaa !44 ; 3 uses
  %i.ard = icmp ult i64 %i.arc, 16
  call void @llvm.assume(i1 %i.ard)
  %i.are = add nuw nsw i64 %i.arc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aqz, ptr noundef nonnull align 8 dereferenceable(1) %i.aqu, i64 %i.are, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80: ; preds = %.noexc7.i79
  store ptr %i.ara, ptr %1, align 8, !tbaa !34
  %i.arf = load i64, ptr %i.aqu, align 8, !tbaa !35
  store i64 %i.arf, ptr %i.aqz, align 8, !tbaa !35
  %.pre.i81 = load i64, ptr %i.aqx, align 8, !tbaa !44
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i82

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80, %bb.fd
  %i.arg = phi i64 [ %i.arc, %bb.fd ], [ %.pre.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80 ]
  %i.arh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.arg, ptr %i.arh, align 8, !tbaa !44
  store ptr %i.aqu, ptr %2, align 8, !tbaa !34
  store i64 0, ptr %i.aqx, align 8, !tbaa !44
  store i8 0, ptr %i.aqu, align 8, !tbaa !35
  %i.ari = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 383, ptr %i.ari, align 8, !tbaa !47
  %i.arj = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.fe unwind label %bb.fk

bb.fe:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i82
  %i.ark = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 383)
          to label %bb.ff unwind label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.arl = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 383)
          to label %bb.fg unwind label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.arm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %bb.fh unwind label %bb.fk     ; 2 uses

bb.fh:                                            ; preds = %bb.fg
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_148ExponentialDistributionTest_AlgorithmBounds_TestEEE, i64 16), ptr %i.arm, align 8, !tbaa !42
  %i.arn = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.arj, ptr noundef %i.ark, ptr noundef %i.arl, ptr noundef nonnull %i.arm)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.aro = load ptr, ptr %1, align 8, !tbaa !34   ; 2 uses
  %i.arp = icmp eq ptr %i.aro, %i.aqz
  br i1 %i.arp, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %bb.fi
  %i.arq = load i64, ptr %i.aqz, align 8, !tbaa !35
  %i.arr = add i64 %i.arq, 1
  call void @_ZdlPvm(ptr noundef %i.aro, i64 noundef %i.arr) #36
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i89

_ZN7testing8internal12CodeLocationD2Ev.exit.i89:  ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  %i.ars = load ptr, ptr %2, align 8, !tbaa !34   ; 2 uses
  %i.art = icmp eq ptr %i.ars, %i.aqu
  br i1 %i.art, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i90: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i89
  %i.aru = load i64, ptr %i.aqu, align 8, !tbaa !35
  %i.arv = add i64 %i.aru, 1
  call void @_ZdlPvm(ptr noundef %i.ars, i64 noundef %i.arv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i90
  %i.arw = load ptr, ptr %0, align 8, !tbaa !34   ; 2 uses
  %i.arx = icmp eq ptr %i.arw, %i.aqo
  br i1 %i.arx, label %__cxx_global_var_init.12.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91
  %i.ary = load i64, ptr %i.aqo, align 8, !tbaa !35
  %i.arz = add i64 %i.ary, 1
  call void @_ZdlPvm(ptr noundef %i.arw, i64 noundef %i.arz) #36
  br label %__cxx_global_var_init.12.exit

bb.fj:                                            ; preds = %__cxx_global_var_init.9.exit
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i74

bb.fk:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i82
  %i.asb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asc = load ptr, ptr %1, align 8, !tbaa !34   ; 2 uses
  %i.asd = icmp eq ptr %i.asc, %i.aqz
  br i1 %i.asd, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i83: ; preds = %bb.fk
  %i.ase = load i64, ptr %i.aqz, align 8, !tbaa !35
  %i.asf = add i64 %i.ase, 1
  call void @_ZdlPvm(ptr noundef %i.asc, i64 noundef %i.asf) #36
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i84

_ZN7testing8internal12CodeLocationD2Ev.exit15.i84: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i83
  %i.asg = load ptr, ptr %2, align 8, !tbaa !34   ; 2 uses
  %i.ash = icmp eq ptr %i.asg, %i.aqu
  br i1 %i.ash, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i85: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i84
  %i.asi = load i64, ptr %i.aqu, align 8, !tbaa !35
  %i.asj = add i64 %i.asi, 1
  call void @_ZdlPvm(ptr noundef %i.asg, i64 noundef %i.asj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i74: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i85, %bb.fj
  %.pn.i75 = phi { ptr, i32 } [ %i.asa, %bb.fj ], [ %i.asb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i85 ], [ %i.asb, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i84 ] ; 2 uses
  %i.ask = load ptr, ptr %0, align 8, !tbaa !34   ; 2 uses
  %i.asl = icmp eq ptr %i.ask, %i.aqo
  br i1 %i.asl, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i74
  %i.asm = load i64, ptr %i.aqo, align 8, !tbaa !35
  br label %common.resume.sink.split

__cxx_global_var_init.12.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i92
  store ptr %i.arn, ptr @_ZN12_GLOBAL__N_148ExponentialDistributionTest_AlgorithmBounds_Test10test_info_E, align 8, !tbaa !893
  %i.asn = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_148ExponentialDistributionTest_AlgorithmBounds_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

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
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn }
attributes #38 = { nounwind }
attributes #39 = { builtin allocsize(0) }
attributes #40 = { noreturn nounwind }
attributes #41 = { cold }
attributes #42 = { cold nounwind }
attributes #43 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{!0, !36}
!1 = distinct !{null, null, null, null}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEED2Ev, null}
!10 = distinct !{ptr @_ZNSt6vectorIN7testing7MatcherIRKiEESaIS4_EED2Ev, null, null, null}
!11 = distinct !{!11, !36}
!12 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKiED2Ev, null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{null}
!15 = distinct !{!15, !36}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"p1 omnipotent char", !25, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"long", !21, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !32, i64 8, !21, i64 16}
!34 = !{!33, !30, i64 0}
!35 = !{!21, !21, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!27, !26, i64 16}
!38 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !33, i64 0, !32, i64 32}
!39 = !{!38, !32, i64 32}
!40 = !{!"any p2 pointer", !25, i64 0}
!41 = !{!"vtable pointer", !20, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!31, !30, i64 0}
!44 = !{!33, !32, i64 8}
!45 = !{!32, !32, i64 0}
!46 = !{!"_ZTSN7testing8internal12CodeLocationE", !33, i64 0, !22, i64 32}
!47 = !{!46, !22, i64 32}
!48 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0}
!50 = !{!49, !48, i64 0}
!51 = !{!22, !22, i64 0}
!52 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 8, !22, i64 12}
!53 = !{!52, !22, i64 8}
!54 = !{!52, !22, i64 12}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!"_ZTSSt13_Ios_Fmtflags", !21, i64 0}
!57 = !{!"_ZTSSt12_Ios_Iostate", !21, i64 0}
!58 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!59 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !32, i64 8}
!60 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!61 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!62 = !{!"_ZTSSt6locale", !61, i64 0}
!63 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !56, i64 24, !57, i64 28, !57, i64 32, !58, i64 40, !59, i64 48, !21, i64 64, !22, i64 192, !60, i64 200, !62, i64 208}
!64 = !{!63, !57, i64 32}
!65 = !{!"p1 _ZTSN7testing8internal19TestMetaFactoryBaseIN12_GLOBAL__N_15ParamEEE", !25, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"p1 _ZTSSt10shared_ptrIN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_128ExponentialDistributionTestsEE8TestInfoEE", !25, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_128ExponentialDistributionTestsEE8TestInfoEESaIS8_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!68, !67, i64 8}
!70 = !{!68, !67, i64 16}
!71 = !{!68, !67, i64 0}
!72 = !{!"p1 _ZTSN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_128ExponentialDistributionTestsEE8TestInfoE", !25, i64 0}
!73 = !{!"_ZTSSt12__shared_ptrIN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_128ExponentialDistributionTestsEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE", !72, i64 0, !49, i64 8}
!74 = !{!73, !72, i64 0}
!75 = !{!"_ZTSSt15_Sp_counted_ptrIPN7testing8internal26ParameterizedTestSuiteInfoIN12_GLOBAL__N_128ExponentialDistributionTestsEE8TestInfoELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !72, i64 16}
!76 = !{!75, !72, i64 16}
!77 = !{!"p1 _ZTSN12_GLOBAL__N_15ParamE", !25, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"double", !21, i64 0}
!80 = !{!"_ZTSN12_GLOBAL__N_15ParamE", !79, i64 0, !79, i64 8, !22, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!"_ZTSN12_GLOBAL__N_116ExponentialModelE", !79, i64 0, !79, i64 8}
!83 = !{!82, !79, i64 0}
!84 = !{!82, !79, i64 8}
!85 = !{!"bool", !21, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !26, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !86, i64 0}
!88 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !90, i64 0}
!92 = !{!"_ZTSN7testing15AssertionResultE", !85, i64 0, !91, i64 8}
!93 = !{!92, !85, i64 0}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!79, !79, i64 0}
!97 = !{!26, !26, i64 0}
!98 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !25, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !62, i64 56}
!101 = !{!100, !30, i64 40}
!102 = !{!100, !30, i64 32}
!103 = !{!"_ZTSSi", !32, i64 8}
!104 = !{!103, !32, i64 8}
!105 = !{i64 0, i64 8, !96, i64 8, i64 8, !96, i64 16, i64 4, !51}
!106 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_15ParamEEE", !25, i64 0}
!107 = !{!"_ZTSSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_15ParamEEELN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0, !49, i64 8}
!108 = !{!107, !106, i64 0}
!109 = !{!"_ZTSSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIN12_GLOBAL__N_15ParamEEELN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0, !106, i64 16}
!110 = !{!109, !106, i64 16}
!111 = !{!"_ZTSN7testing8internal22ParamIteratorInterfaceIN12_GLOBAL__N_15ParamEEE"}
!112 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_15ParamESt6vectorIS2_SaIS2_EEEE", !77, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EPKN12_GLOBAL__N_15ParamELb0EE", !77, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJPKN12_GLOBAL__N_15ParamESt14default_deleteIS2_EEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJPKN12_GLOBAL__N_15ParamESt14default_deleteIS2_EEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implIKN12_GLOBAL__N_15ParamESt14default_deleteIS2_EE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIKN12_GLOBAL__N_15ParamESt14default_deleteIS2_ELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrIKN12_GLOBAL__N_15ParamESt14default_deleteIS2_EE", !117, i64 0}
!119 = !{!"_ZTSN7testing8internal30ValuesInIteratorRangeGeneratorIN12_GLOBAL__N_15ParamEE8IteratorE", !111, i64 0, !106, i64 8, !112, i64 16, !118, i64 24}
!120 = !{!119, !106, i64 8}
!121 = !{!113, !77, i64 0}
!122 = !{!112, !77, i64 0}
!123 = !{!"p1 _ZTSSo", !25, i64 0}
!124 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!125 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!126 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!127 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!128 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !63, i64 0, !123, i64 216, !21, i64 224, !85, i64 225, !124, i64 232, !125, i64 240, !126, i64 248, !127, i64 256}
!129 = !{!128, !125, i64 240}
!130 = !{!"_ZTSNSt6locale5facetE", !22, i64 8}
!131 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!132 = !{!"p1 int", !25, i64 0}
!133 = !{!"p1 short", !25, i64 0}
!134 = !{!"_ZTSSt5ctypeIcE", !130, i64 0, !131, i64 16, !85, i64 24, !132, i64 32, !132, i64 40, !133, i64 48, !21, i64 56, !21, i64 57, !21, i64 313, !21, i64 569}
!135 = !{!134, !21, i64 56}
!136 = !{!132, !132, i64 0}
!137 = !{!"_ZTSN7testing19MatchResultListenerE", !123, i64 8}
!138 = !{!137, !123, i64 8}
!139 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!140 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE6VTableE", !25, i64 0}
!141 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEEE", !139, i64 0, !140, i64 8, !21, i64 16}
!142 = !{!141, !140, i64 8}
!143 = !{!"_ZTSN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEE6VTableE", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!144 = !{!143, !25, i64 0}
!145 = !{!143, !25, i64 8}
!146 = !{ptr @_ZN7testing25StringMatchResultListenerD2Ev}
!147 = !{!143, !25, i64 24}
!148 = !{ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorIiSaIiEEED2Ev}
end_hunk_1
