Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_34InteractionContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_:bb.a
  store <4 x float> %i.am, ptr %8, align 16, !tbaa !92
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.ac, <4 x float> splat (float 1.000000e+00))
  %i.ao = fdiv <4 x float> %i.af, %i.an
  store <4 x float> %i.ao, ptr %i.ab, align 16, !tbaa !92
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.a
  store float %i.q, ptr %i.m, align 4, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !1146 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1128 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1147
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  store i32 %i.h, ptr %i.ar, align 4
  %.sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store float %i.q, ptr %.sroa_idx4.i.i, align 4
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !1128
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !1128
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation13PushPathSplitEjf.exit

bb.d:                                             ; preds = %.loopexit
  %.val.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !1125 ; 5 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.e, label %_ZNKSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
  unreachable

_ZNKSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %i.bb = icmp eq ptr %i.ar, %.val.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.bb, i64 1, i64 %i.ba
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #33 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.ay ; 3 uses
  store i32 %i.h, ptr %i.bi, align 4
  %.sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store float %i.q, ptr %.sroa_idx3.i.i, align 4
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %bb.f, label %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %.val.i.i.i.i.i, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i

_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.not.i21.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !1147
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.bn) #30
  br label %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i
  store ptr %i.bh, ptr %.val, align 8, !tbaa !1125
  store ptr %i.bk, ptr %i.aq, align 8, !tbaa !1128
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !1147
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation13PushPathSplitEjf.exit

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation13PushPathSplitEjf.exit: ; preds = %bb.c, %_ZNSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i
  %i.bp = fmul float %3, %6
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(32) %8, float noundef %i.bp, ptr noundef %7)
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !1143, !nonnull !239, !align !889
  %i.br = select i1 %i.o, float 1.000000e+00, float %i.n
  tail call fastcc void @_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEff(ptr noundef nonnull align 8 dereferenceable(44) %i.ap, ptr noundef nonnull align 4 dereferenceable(64) %i.bq, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(32) %7, float noundef %i.q, float noundef %i.br)
  %.val43 = load ptr, ptr %i.ap, align 8, !tbaa !1146
  %i.bs = getelementptr inbounds nuw i8, ptr %.val43, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1128
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !1128
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !1145
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.k
  store float %i.n, ptr %i.bx, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %3, float noundef %4, float noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %.val6 = load ptr, ptr %0, align 8, !tbaa !1146 ; 2 uses
  %.val6.val = load ptr, ptr %.val6, align 8, !tbaa !1125 ; 7 uses
  %i.a = getelementptr i8, ptr %.val6, i64 8
  %.val6.val7 = load ptr, ptr %i.a, align 8, !tbaa !1128 ; 2 uses
  %i.b = ptrtoint ptr %.val6.val7 to i64
  %i.c = ptrtoint ptr %.val6.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !1148
  %i.h = tail call fastcc noundef float @_ZN7xgboost16interpretability12_GLOBAL__N_122ExtractQuadratureDeltaERKNS0_6detail14QuadratureRuleERKSt5arrayIfLm8EEff(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(32) %3, float noundef %4, float noundef %5)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %.val = load ptr, ptr %i.i, align 8, !tbaa !933
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !92
  %i.m = tail call float @llvm.fmuladd.f32(float %i.g, float %i.h, float %i.l)
  store float %i.m, ptr %i.k, align 4, !tbaa !92
  %i.n = icmp eq ptr %.val6.val7, %.val6.val
  br i1 %i.n, label %bb.b, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.lr.ph.i.i, !prof !137

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.o = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.o, ptr noundef nonnull @.str, i32 noundef 299)
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.b
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.77, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %bb.n

common.resume.i:                                  ; preds = %bb.g, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %common.resume.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.t = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.t, ptr noundef nonnull @.str, i32 noundef 203)
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.f ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.78, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %common.resume.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZSt9terminatev() #31
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.lr.ph.i.i: ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %.val6.val, i64 %i.d
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1149 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %8 = insertelement <2 x float> poison, float %4, i64 0
  %9 = insertelement <2 x float> %8, float %5, i64 1
  %10 = fadd <2 x float> %9, splat (float -1.000000e+00) ; 3 uses
  %11 = fcmp oeq float %5, 1.000000e+00
  br i1 %11, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us.preheader, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.preheader

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.preheader: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.lr.ph.i.i
  %i.af = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %12 = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us.preheader: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.lr.ph.i.i
  %i.ag = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i.i.i.us = load ptr, ptr %i.ad, align 8
  br label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us.preheader, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us
  %.0.i.us = phi i1 [ %.1.i.us, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us ], [ false, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us.preheader ] ; 3 uses
  %.0142.i.i.us = phi i64 [ %i.ah, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us ], [ %i.e, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us.preheader ] ; 3 uses
  %i.ah = add i64 %.0142.i.i.us, -1               ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1149 ; 3 uses
  %i.ak = icmp ugt i64 %i.e, %.0142.i.i.us
  br i1 %i.ak, label %.lr.ph23, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i.us
  %i.al = icmp ugt i64 %i.am, %.0142.i.i.us
  br i1 %i.al, label %.lr.ph23, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us, !llvm.loop !1151

.lr.ph23:                                         ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us, %bb.j
  %.0.i.i.us22 = phi i64 [ %i.am, %bb.j ], [ %i.e, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us ]
  %i.am = add i64 %.0.i.i.us22, -1                ; 4 uses
  %i.an = icmp ult i64 %i.am, %i.e
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i.us, label %.split.us, !prof !190

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i.us: ; preds = %.lr.ph23
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !1149
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us, label %bb.j, !llvm.loop !1151

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us: ; preds = %bb.j, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us
  %i.ar = getelementptr i8, ptr %i.ai, i64 4
  %.val23.i.i.us = load float, ptr %i.ar, align 4 ; 2 uses
  %i.as = icmp ne i32 %i.aj, %i.ac
  %or.cond.not.i.us = select i1 %.0.i.us, i1 true, i1 %i.as
  br i1 %or.cond.not.i.us, label %bb.k, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us
  %i.at = fcmp oeq float %.val23.i.i.us, 1.000000e+00
  br i1 %i.at, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i.us, label %.preheader.preheader.i.i.i.i.i.us

.preheader.preheader.i.i.i.i.i.us:                ; preds = %bb.k
  %i.au = fadd float %.val23.i.i.us, -1.000000e+00
  %i.av = load <8 x float>, ptr %1, align 4, !tbaa !92 ; 2 uses
  %i.aw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ag, <8 x float> %i.av, <8 x float> splat (float 1.000000e+00))
  %i.ax = fdiv <8 x float> %i.ag, %i.aw
  %i.ay = load <8 x float>, ptr %3, align 4, !tbaa !92
  %i.az = insertelement <8 x float> poison, float %i.au, i64 0
  %i.ba = shufflevector <8 x float> %i.az, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bb = fmul <8 x float> %i.ba, %i.ay
  %i.bc = fmul <8 x float> %i.ax, %i.bb
  %i.bd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ba, <8 x float> %i.av, <8 x float> splat (float 1.000000e+00))
  %i.be = fdiv <8 x float> %i.bc, %i.bd           ; 8 uses
  %i.bf = extractelement <8 x float> %i.be, i64 0
  %i.bg = fadd float %i.bf, 0.000000e+00
  %i.bh = extractelement <8 x float> %i.be, i64 1
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = extractelement <8 x float> %i.be, i64 2
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = extractelement <8 x float> %i.be, i64 3
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = extractelement <8 x float> %i.be, i64 4
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = extractelement <8 x float> %i.be, i64 5
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = extractelement <8 x float> %i.be, i64 6
  %i.bs = fadd float %i.bq, %i.br
  %i.bt = extractelement <8 x float> %i.be, i64 7
  %i.bu = fadd float %i.bs, %i.bt
  br label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i.us

_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i.us: ; preds = %.preheader.preheader.i.i.i.i.i.us, %bb.k
  %.0.i.i.i.i.i.us = phi float [ 0.000000e+00, %bb.k ], [ %i.bu, %.preheader.preheader.i.i.i.i.i.us ]
  %i.bv = zext i32 %i.aj to i64
  %i.bw = load float, ptr %i.f, align 8, !tbaa !1148
  %.val5.i.i.i.i.i.us = load i64, ptr %i.ae, align 8, !tbaa !1152
  %i.bx = mul i64 %.val5.i.i.i.i.i.us, %i.j
  %i.by = getelementptr [4 x i8], ptr %.val.i.i.i.i.i.us, i64 %i.bx
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bv ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !92
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bw, float %.0.i.i.i.i.i.us, float %i.ca)
  store float %i.cb, ptr %i.bz, align 4, !tbaa !92
  br label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us

_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i.us, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i.us, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us
  %.1.i.us = phi i1 [ true, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i.us ], [ %.0.i.us, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i.us ], [ %.0.i.us, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i.us ]
  %.not.i.i.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.us, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_.exit, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.us, !llvm.loop !1153

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.preheader, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i
  %.0.i = phi i1 [ %.1.i, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i ], [ false, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.preheader ] ; 3 uses
  %.0142.i.i = phi i64 [ %i.cc, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i ], [ %i.e, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i.preheader ] ; 3 uses
  %i.cc = add i64 %.0142.i.i, -1                  ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !1149 ; 3 uses
  %i.cf = icmp ugt i64 %i.e, %.0142.i.i
  br i1 %i.cf, label %.lr.ph, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i
  %i.cg = icmp ugt i64 %i.ch, %.0142.i.i
  br i1 %i.cg, label %.lr.ph, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i, !llvm.loop !1151

.lr.ph:                                           ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i, %bb.l
  %.0.i.i21 = phi i64 [ %i.ch, %bb.l ], [ %i.e, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i ]
  %i.ch = add i64 %.0.i.i21, -1                   ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.e
  br i1 %i.ci, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i, label %.split.us, !prof !190

.split.us:                                        ; preds = %.lr.ph, %.lr.ph23
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i: ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val6.val, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1149
  %i.cl = icmp eq i32 %i.ck, %i.ce
  br i1 %i.cl, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i, label %bb.l, !llvm.loop !1151

_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i: ; preds = %bb.l, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i
  %i.cm = getelementptr i8, ptr %i.cd, i64 4
  %.val23.i.i = load float, ptr %i.cm, align 4    ; 2 uses
  %i.cn = icmp ne i32 %i.ce, %i.ac
  %or.cond.not.i = select i1 %.0.i, i1 true, i1 %i.cn
  br i1 %or.cond.not.i, label %bb.m, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i

bb.m:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i
  %i.co = fcmp oeq float %.val23.i.i, 1.000000e+00
  br i1 %i.co, label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i, label %.loopexit.loopexit48.i.i.i.i.i

.loopexit.loopexit48.i.i.i.i.i:                   ; preds = %bb.m
  %i.cp = fadd float %.val23.i.i, -1.000000e+00
  %i.cq = load <8 x float>, ptr %1, align 4, !tbaa !92 ; 3 uses
  %i.cr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.af, <8 x float> %i.cq, <8 x float> splat (float 1.000000e+00))
  %i.cs = fdiv <8 x float> %i.af, %i.cr
  %i.ct = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %12, <8 x float> %i.cq, <8 x float> splat (float 1.000000e+00))
  %i.cu = fdiv <8 x float> %12, %i.ct
  %i.cv = fsub <8 x float> %i.cs, %i.cu
  %i.cw = load <8 x float>, ptr %3, align 4, !tbaa !92
  %i.cx = insertelement <8 x float> poison, float %i.cp, i64 0
  %i.cy = shufflevector <8 x float> %i.cx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.cz = fmul <8 x float> %i.cy, %i.cw
  %i.da = fmul <8 x float> %i.cv, %i.cz
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cy, <8 x float> %i.cq, <8 x float> splat (float 1.000000e+00))
  %i.dc = fdiv <8 x float> %i.da, %i.db           ; 8 uses
  %i.dd = extractelement <8 x float> %i.dc, i64 0
  %i.de = fadd float %i.dd, 0.000000e+00
  %i.df = extractelement <8 x float> %i.dc, i64 1
  %i.dg = fadd float %i.de, %i.df
  %i.dh = extractelement <8 x float> %i.dc, i64 2
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = extractelement <8 x float> %i.dc, i64 3
  %i.dk = fadd float %i.di, %i.dj
  %i.dl = extractelement <8 x float> %i.dc, i64 4
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = extractelement <8 x float> %i.dc, i64 5
  %i.do = fadd float %i.dm, %i.dn
  %i.dp = extractelement <8 x float> %i.dc, i64 6
  %i.dq = fadd float %i.do, %i.dp
  %i.dr = extractelement <8 x float> %i.dc, i64 7
  %i.ds = fadd float %i.dq, %i.dr
  br label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i

_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i: ; preds = %.loopexit.loopexit48.i.i.i.i.i, %bb.m
  %.0.i.i.i.i.i = phi float [ 0.000000e+00, %bb.m ], [ %i.ds, %.loopexit.loopexit48.i.i.i.i.i ]
  %i.dt = zext i32 %i.ce to i64
  %i.du = load float, ptr %i.f, align 8, !tbaa !1148
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !1154
  %.val5.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !1152
  %i.dv = mul i64 %.val5.i.i.i.i.i, %i.j
  %i.dw = getelementptr [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.dv
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.dt ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !92
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.du, float %.0.i.i.i.i.i, float %i.dy)
  store float %i.dz, ptr %i.dx, align 4, !tbaa !92
  br label %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i

_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i
  %.1.i = phi i1 [ true, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit25.i.i ], [ %.0.i, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffENKUlRKNS1_21QuadraturePathElementEE_clESD_.exit.i.i.i ], [ %.0.i, %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit24.i.i ]
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_.exit, label %_ZNK7xgboost6common4SpanIKNS_16interpretability12_GLOBAL__N_121QuadraturePathElementELm18446744073709551615EEixEm.exit.i.i, !llvm.loop !1153

bb.n:                                             ; preds = %bb.c
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #31
  unreachable

_ZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_.exit: ; preds = %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i, %_ZZNK7xgboost16interpretability12_GLOBAL__N_134InteractionContributionFormulation14ForEachPartnerIZNKS2_12HandleReturnERKNS0_6detail14QuadratureRuleEjRKSt5arrayIfLm8EEffEUlRKNS1_21QuadraturePathElementEE_EEvNS1_18QuadraturePathViewEOT_ENKUlmSE_E_clEmSE_.exit.i.i.us
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %2, float noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::array", align 16      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1155, !nonnull !239, !align !240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !613
  %i.d = sext i32 %1 to i64                       ; 7 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1156, !nonnull !239, !align !889
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1129
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_123WriteWeightedLeafReturnINS_4tree19MultiTargetTreeViewEEEvRKT_RKNS0_6detail14QuadratureRuleEijRKSt5arrayIfLm8EEfPSD_(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.i, i32 noundef %1, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !615
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.d
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8    ; 2 uses
  %i.p = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %i.f)
  %i.q = tail call fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE11ChildWeightEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %i.o)
  %i.r = load ptr, ptr %0, align 8, !tbaa !1155, !nonnull !239, !align !240 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !941
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.d
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1157, !nonnull !239, !align !240
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !92 ; 2 uses
  %i.ac = fcmp uno float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !943
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.d
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %.pn.in.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 48
  %.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pn.in.v.i.i.i
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8, !tbaa !669
  %.in.i.i.i = getelementptr inbounds [4 x i8], ptr %.pn.i.i.i, i64 %i.d
  %i.ah = load i32, ptr %.in.i.i.i, align 4, !tbaa !8
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE16EvaluateGoesLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !613
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.d
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = tail call noundef zeroext i1 @_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE(ptr noundef nonnull align 8 dereferenceable(192) %i.r, i32 noundef %1, float noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.an = xor i1 %i.am, true
  %i.ao = zext i1 %i.an to i32
  %i.ap = add nsw i32 %i.al, %i.ao
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1155
  br label %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE16EvaluateGoesLeftEi.exit

_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE16EvaluateGoesLeftEi.exit: ; preds = %bb.d, %bb.e
  %i.aq = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %bb.e ]
  %.0.i.i = phi i32 [ %i.ah, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !613
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.d
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = icmp eq i32 %.0.i.i, %i.au              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %i.f, float noundef %i.p, i1 noundef zeroext %i.av, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %4)
  %i.aw = xor i1 %i.av, true
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE10VisitChildEiifbRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %i.o, float noundef %i.q, i1 noundef zeroext %i.aw, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef %3, ptr noundef %5)
  %i.ax = load <4 x float>, ptr %5, align 16, !tbaa !92
  %i.ay = load <4 x float>, ptr %4, align 4, !tbaa !92
  %i.az = fadd <4 x float> %i.ax, %i.ay
  store <4 x float> %i.az, ptr %4, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.ba, align 16, !tbaa !92
  %i.bd = load <4 x float>, ptr %i.bb, align 4, !tbaa !92
  %i.be = fadd <4 x float> %i.bc, %i.bd
  store <4 x float> %i.be, ptr %i.bb, align 4, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE16EvaluateGoesLeftEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZNK7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_34InteractionContributionFormulationEE11ChildWeightEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = load ptr, ptr %0, align 8, !tbaa !1155, !nonnull !239, !align !240
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !625
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !92 ; 2 uses
  store float %i.j, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !92
  %i.k = fcmp ult float %i.j, 0.000000e+00
  br i1 %i.k, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12, label %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %3, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIffEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str, i32 noundef 352)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
end_hunk_0
