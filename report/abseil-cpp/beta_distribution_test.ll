Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/beta_distribution_test?download=true
inline.NumInlined: 4806
inline.NumDeleted: 2042
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #39
  br label %bb.bn

bb.ay:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  %i.jt = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %.not.i.i94.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i94.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !50
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95.i

_ZNK7testing15AssertionResult15failure_messageEv.exit95.i: ; preds = %bb.ba, %bb.az
  %i.jv = phi ptr [ %i.ju, %bb.ba ], [ @.str, %bb.az ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef %i.jv)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  %i.jw = load ptr, ptr %17, align 8, !tbaa !127  ; 3 uses
  %.not.i.i96.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i96.i, label %_ZN7testing7MessageD2Ev.exit98.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i: ; preds = %bb.bc
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !58
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #39, !inline_history !337
  br label %_ZN7testing7MessageD2Ev.exit98.i

_ZN7testing7MessageD2Ev.exit98.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  br label %bb.bh

bb.bd:                                            ; preds = %bb.ay
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101.i

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #39
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn48.i = phi { ptr, i32 } [ %i.kc, %bb.bf ], [ %i.kb, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  %i.kd = load ptr, ptr %17, align 8, !tbaa !127  ; 3 uses
  %.not.i.i99.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i99.i, label %_ZN7testing7MessageD2Ev.exit101.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i: ; preds = %bb.bg
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(128) %i.kd) #39, !inline_history !337
  br label %_ZN7testing7MessageD2Ev.exit101.i

_ZN7testing7MessageD2Ev.exit101.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i, %bb.bg, %bb.bd
  %.pn48.pn.i = phi { ptr, i32 } [ %i.ka, %bb.bd ], [ %.pn48.i, %bb.bg ], [ %.pn48.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #39
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #39
  br label %bb.bn

bb.bh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit98.i, %_ZN7testing8internal11CmpHelperLEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  %i.kh = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 4 uses
  %.not.i.i102.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i102.i, label %_ZN7testing15AssertionResultD2Ev.exit106.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !50 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i: ; preds = %bb.bi
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !51
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i

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
  %i.lr = fdiv double %i.lh, %i.lf
  %i.ls = fmul double %i.lq, 6.000000e+00
  %i.lt = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.ls, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %.val64.i, i64 1
  %i.lx = fdiv <2 x double> %i.lu, %i.lw          ; 2 uses
  %i.ly = extractelement <2 x double> %i.lx, i64 0 ; 3 uses
  %24 = insertelement <2 x double> poison, double %i.lj, i64 0
  %25 = insertelement <2 x double> %24, double %.val65.i, i64 1
  %26 = fdiv <2 x double> %i.lx, %25              ; 2 uses
  %i.lz = extractelement <2 x double> %26, i64 0
  %27 = call double @sqrt(double noundef %i.lz) #39
  %i.ma = fadd double %i.lf, 2.000000e+00
  %28 = extractelement <2 x double> %26, i64 1
  %i.mb = fdiv double %28, %i.ma
  %i.mc = fadd double %i.lf, 3.000000e+00
  %i.md = fdiv double %i.mb, %i.mc
  %i.me = fadd double %i.md, 3.000000e+00
  %i.mf = fadd double %i.me, -1.000000e+00
  %i.mg = fmul double %i.ly, %i.mf
  %i.mh = fmul double %i.ly, %i.mg
  %i.mi = fdiv double %i.mh, %i.lj
  %i.mj = call double @sqrt(double noundef %i.mi) #39 ; 2 uses
  %i.mk = load double, ptr %i.ar, align 8, !tbaa !358
  %i.ml = fsub double %i.mk, %i.ly
  %i.mm = fdiv double %i.ml, %i.mj
  %i.mn = invoke noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef %i.x)
          to label %bb.bq unwind label %bb.cf     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %.val72.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val73.i = load double, ptr %i.z, align 16, !tbaa !353
  %i.mo = fadd double %.val72.i, %.val73.i
  %i.mp = fdiv double %.val72.i, %i.mo
  %i.mq = invoke noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %i.mp, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.br unwind label %bb.cg

bb.br:                                            ; preds = %bb.bq
  %i.mr = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 1, ptr nonnull @.str.30, double noundef %i.mq, double noundef 0.000000e+00, double noundef %i.mn)
          to label %bb.bs unwind label %bb.ch

bb.bs:                                            ; preds = %bb.br
  br i1 %i.mr, label %bb.bt, label %.thread162.i

bb.bt:                                            ; preds = %bb.bs
  %i.ms = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 10, ptr nonnull @.str.31, double noundef %i.mm, double noundef 0.000000e+00, double noundef %i.mn)
          to label %bb.bu unwind label %bb.ch

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ms, label %_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread, label %.thread162.i

_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.mt = ptrtoint ptr %.sroa.19.3.i to i64
  %i.mu = sub i64 %i.mt, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.3.i, i64 noundef %i.mu) #37
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
  %i.mv = load double, ptr %i.y, align 8, !tbaa !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store double %i.mv, ptr %i.r, align 8, !tbaa !100
  %i.mw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.bw unwind label %bb.cj     ; 2 uses

bb.bw:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, i64 2, ptr nonnull @.str.33)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.bw
  %i.mx = load double, ptr %i.z, align 16, !tbaa !353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store double %i.mx, ptr %i.q, align 8, !tbaa !100
  %i.my = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.bx unwind label %bb.cj     ; 2 uses

bb.bx:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i64 16, ptr nonnull @.str.34)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i: ; preds = %bb.bx
  %i.mz = load double, ptr %i.as, align 8, !tbaa !359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store double %i.mz, ptr %i.p, align 8, !tbaa !100
  %i.na = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.my, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.by unwind label %bb.cj     ; 2 uses

bb.by:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i: ; preds = %bb.by
  %i.nb = load <2 x double>, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %i.nc = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.nb)
  %i.nd = extractelement <2 x double> %i.nb, i64 0
  %i.ne = fdiv double %i.nd, %i.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store double %i.ne, ptr %i.o, align 8, !tbaa !100
  %i.nf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bz unwind label %bb.cj     ; 2 uses

bb.bz:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.bz
  %i.ng = load double, ptr %i.as, align 8, !tbaa !359
  %i.nh = load <2 x double>, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %i.ni = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.nh)
  %i.nj = extractelement <2 x double> %i.nh, i64 0
  %i.nk = fdiv double %i.nj, %i.ni
  %i.nl = fsub double %i.ng, %i.nk
  %i.nm = call noundef double @llvm.fabs.f64(double %i.nl)
  %i.nn = fdiv double %i.nm, %27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store double %i.nn, ptr %i.n, align 8, !tbaa !100
  %i.no = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ca unwind label %bb.cj     ; 2 uses

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.no, i64 32, ptr nonnull @.str.37)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i: ; preds = %bb.ca
  %i.np = load double, ptr %i.ar, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store double %i.np, ptr %i.m, align 8, !tbaa !100
  %i.nq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.cb unwind label %bb.cj     ; 2 uses

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i: ; preds = %bb.cb
  %.val56.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val57.i = load double, ptr %i.z, align 16, !tbaa !353 ; 2 uses
  %i.nr = fmul double %.val56.i, %.val57.i
  %i.ns = fadd double %.val56.i, %.val57.i        ; 3 uses
  %i.nt = fadd double %i.ns, 1.000000e+00
  %i.nu = fdiv double %i.nr, %i.nt
  %i.nv = fdiv double %i.nu, %i.ns
  %i.nw = fdiv double %i.nv, %i.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.nw, ptr %i.l, align 8, !tbaa !100
  %i.nx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nq, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.cc unwind label %bb.cj     ; 2 uses

bb.cc:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i: ; preds = %bb.cc
  %i.ny = load double, ptr %i.ar, align 8, !tbaa !358
  %.val.i = load double, ptr %i.y, align 8, !tbaa !352 ; 2 uses
  %.val55.i = load double, ptr %i.z, align 16, !tbaa !353 ; 2 uses
  %i.nz = fmul double %.val.i, %.val55.i
  %i.oa = fadd double %.val.i, %.val55.i          ; 3 uses
  %i.ob = fadd double %i.oa, 1.000000e+00
  %i.oc = fdiv double %i.nz, %i.ob
  %i.od = fdiv double %i.oc, %i.oa
  %i.oe = fdiv double %i.od, %i.oa
  %i.of = fsub double %i.ny, %i.oe
  %i.og = call noundef double @llvm.fabs.f64(double %i.of)
  %i.oh = fdiv double %i.og, %i.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double %i.oh, ptr %i.k, align 8, !tbaa !100
  %i.oi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cd unwind label %bb.cj     ; 2 uses

bb.cd:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.oi, i64 14, ptr nonnull @.str.38)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i: ; preds = %bb.cd
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oi)
          to label %bb.cm unwind label %bb.cj

bb.ce:                                            ; preds = %bb.f
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cf:                                            ; preds = %bb.bp
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bq
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bt, %bb.br
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ci:                                            ; preds = %.thread162.i
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i, %bb.cd, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i, %bb.cc, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i, %bb.cb, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i, %bb.ca, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i, %bb.bz, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i, %bb.by, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i, %bb.bx, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.bw, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i, %bb.bv
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #43
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn.i = phi { ptr, i32 } [ %i.oo, %bb.cj ], [ %i.on, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch, %bb.cg, %bb.cf, %bb.ce
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.oj, %bb.ce ], [ %i.ok, %bb.cf ], [ %i.ol, %bb.cg ], [ %.pn.i, %bb.ck ], [ %i.om, %bb.ch ]
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
  %i.op = ptrtoint ptr %.sroa.19.0225.i to i64
  %i.oq = sub i64 %i.op, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0185.i, i64 noundef %i.oq) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %common.resume

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2026052612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.or = ptrtoint ptr %.sroa.19.3.i to i64
  %i.os = sub i64 %i.or, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.3.i, i64 noundef %i.os) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ot = load i32, ptr %i.v, align 4, !tbaa !96
  %i.ou = add nsw i32 %i.ot, 1
  store i32 %i.ou, ptr %i.v, align 4, !tbaa !96
  br label %.preheader

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread, %bb.cm
  br label %bb.cn

bb.cn:                                            ; preds = %.preheader, %bb.de
  %.044291.i = phi i32 [ %i.qp, %bb.de ], [ 1, %.preheader ] ; 3 uses
  %.045290.i = phi i32 [ %.1.ph.i, %bb.de ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0192.0289.i = phi ptr [ %.sroa.0192.1.ph.i, %bb.de ], [ null, %.preheader ] ; 10 uses
  %.sroa.19205.0288.i = phi ptr [ %.sroa.19205.1.ph.i, %bb.de ], [ null, %.preheader ] ; 10 uses
  %.sroa.33.0287.i = phi ptr [ %.sroa.33.1.ph.i, %bb.de ], [ null, %.preheader ] ; 5 uses
  %.sroa.19.0286.i = phi ptr [ %.sroa.19.1.ph.i, %bb.de ], [ null, %.preheader ] ; 9 uses
  %.sroa.12.0285.i = phi ptr [ %.sroa.12.1.ph.i, %bb.de ], [ null, %.preheader ] ; 5 uses
  %.sroa.0179.0284.i = phi ptr [ %.sroa.0179.1.ph.i, %bb.de ], [ null, %.preheader ] ; 11 uses
  %i.ov = uitofp nneg i32 %.044291.i to double
  %i.ow = fmul nnan double %i.ov, 1.000000e-02
  %i.ox = load double, ptr %i.y, align 8, !tbaa !352
  %i.oy = load double, ptr %i.z, align 16, !tbaa !353
  %i.oz = invoke noundef double @_ZN4absl12lts_2026052615random_internal17BetaIncompleteInvEddd(double noundef %i.ox, double noundef %i.oy, double noundef %i.ow)
          to label %bb.co unwind label %.loopexit240.i ; 5 uses

bb.co:                                            ; preds = %bb.cn
  %i.pa = icmp eq ptr %.sroa.0192.0289.i, %.sroa.19205.0288.i ; 2 uses
  %i.pb = fcmp olt double %i.oz, f0x3E7AD7F29ABCAF48
  %or.cond.i = and i1 %i.pa, %i.pb
  br i1 %or.cond.i, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.pa, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pc = getelementptr inbounds i8, ptr %.sroa.19205.0288.i, i64 -8
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !100
  %i.pe = fcmp ugt double %i.oz, %i.pd
  br i1 %i.pe, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %i.pf = add nsw i32 %.045290.i, 1
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
  %i.pg = fcmp ult double %i.oz, f0x3FEFFFFFFFF24190
  br i1 %i.pg, label %bb.ct, label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit.i

bb.ct:                                            ; preds = %bb.cs
  %.not.i.i32 = icmp eq ptr %.sroa.19205.0288.i, %.sroa.33.0287.i
  br i1 %.not.i.i32, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store double %i.oz, ptr %.sroa.19205.0288.i, align 8, !tbaa !100
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i33

bb.cv:                                            ; preds = %bb.ct
end_hunk_0
