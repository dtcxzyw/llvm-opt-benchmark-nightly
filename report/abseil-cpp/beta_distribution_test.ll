inline.NumInlined: 4806
inline.NumDeleted: 2042
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_146BetaDistributionTest_TestSampleStatistics_Test8TestBodyEv:bb.a
bb.au:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal11CmpHelperLEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.ax

bb.av:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.50)
          to label %_ZN7testing8internal11CmpHelperLEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.ax

_ZN7testing8internal11CmpHelperLEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #39
  %i.jq = load i8, ptr %16, align 8, !tbaa !95, !range !104, !noundef !105
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bh, label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit90.i, %bb.ai
  %.pn44.pn.pn.i = phi { ptr, i32 } [ %.pn44.pn.i, %_ZN7testing7MessageD2Ev.exit90.i ], [ %i.it, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.bo

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.js = landingpad { ptr, i32 }
          cleanup
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
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !14
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
  %i.jw = load ptr, ptr %17, align 8, !tbaa !125  ; 3 uses
  %.not.i.i96.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i96.i, label %_ZN7testing7MessageD2Ev.exit98.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97.i: ; preds = %bb.bc
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !31
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #39, !inline_history !127
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
  %i.kd = load ptr, ptr %17, align 8, !tbaa !125  ; 3 uses
  %.not.i.i99.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i99.i, label %_ZN7testing7MessageD2Ev.exit101.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100.i: ; preds = %bb.bg
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !31
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(128) %i.kd) #39, !inline_history !127
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
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !14 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i: ; preds = %bb.bi
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !19
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef 32) #37
  br label %_ZN7testing15AssertionResultD2Ev.exit106.i

_ZN7testing15AssertionResultD2Ev.exit106.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  %.not.i.i = icmp eq ptr %.sroa.11.0234.i, %.sroa.17.0233.i
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106.i
  %i.kn = load double, ptr %i.s, align 8, !tbaa !90
  store double %i.kn, ptr %.sroa.11.0234.i, align 8, !tbaa !90
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106.i
  %i.ko = ptrtoint ptr %.sroa.11.0234.i to i64
  %i.kp = ptrtoint ptr %.sroa.0147.0235.i to i64
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
  %i.la = load double, ptr %i.s, align 8, !tbaa !90
  store double %i.la, ptr %i.kz, align 8, !tbaa !90
  %i.lb = icmp sgt i64 %i.kq, 0
  br i1 %i.lb, label %bb.bm, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

bb.bm:                                            ; preds = %.noexc109.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr align 8 %.sroa.0147.0235.i, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.bm, %.noexc109.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.0235.i, i64 noundef %i.kq) #37
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i

_ZNSt6vectorIdSaIdEE9push_backERKd.exit.i:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.bj
  %.sroa.17.3.i = phi ptr [ %i.lc, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.17.0233.i, %bb.bj ] ; 4 uses
  %.pn165.i = phi ptr [ %i.kz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.11.0234.i, %bb.bj ]
  %.sroa.0147.3.i = phi ptr [ %i.ky, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0147.0235.i, %bb.bj ] ; 6 uses
  %.sroa.11.2.i = getelementptr inbounds nuw i8, ptr %.pn165.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #39
  %i.ld = add nuw nsw i64 %.033236.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ld, 10000
  br i1 %exitcond.not.i, label %bb.f, label %bb.g, !llvm.loop !135

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101.i, %bb.ax
  %.pn48.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.i, %_ZN7testing7MessageD2Ev.exit101.i ], [ %i.js, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.aw, %_ZN7testing7MessageD2Ev.exit81.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.17.0233251.i = phi ptr [ %.sroa.17.0233.i, %_ZN7testing7MessageD2Ev.exit81.i ], [ %.sroa.17.0233.i, %bb.bn ], [ %.sroa.17.0233.i, %bb.aw ], [ %.sroa.11.0234.i, %.loopexit.i ], [ %.sroa.11.0234.i, %.loopexit.split-lp.i ]
  %.pn52.i = phi { ptr, i32 } [ %.pn39.pn.pn.i, %_ZN7testing7MessageD2Ev.exit81.i ], [ %.pn48.pn.pn.i, %bb.bn ], [ %.pn44.pn.pn.i, %bb.aw ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #39
  %.pre = ptrtoint ptr %.sroa.0147.0235.i to i64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit139.i

bb.bp:                                            ; preds = %bb.f
  %.val64.i = load double, ptr %i.y, align 8, !tbaa !106 ; 5 uses
  %.val65.i = load double, ptr %i.z, align 16, !tbaa !108 ; 5 uses
  %24 = fmul double %.val64.i, %.val65.i          ; 2 uses
  %25 = fadd double %.val64.i, %.val65.i          ; 5 uses
  %i.le = fadd double %25, 1.000000e+00           ; 2 uses
  %26 = fdiv double %24, %i.le
  %27 = load i64, ptr %19, align 8, !tbaa !136
  %28 = uitofp i64 %27 to double                  ; 2 uses
  %29 = fsub double %.val64.i, %.val65.i          ; 2 uses
  %30 = fmul double %29, %29
  %31 = fadd double %.val64.i, 2.000000e+00
  %32 = fadd double %31, %.val65.i
  %33 = fneg double %32
  %i.lf = fmul double %24, %33
  %i.lg = call double @llvm.fmuladd.f64(double %30, double %i.le, double %i.lf)
  %i.lh = fmul double %i.lg, 6.000000e+00
  %i.li = fdiv double %26, %25
  %i.lj = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %i.lh, i64 1
  %34 = insertelement <2 x double> poison, double %25, i64 0
  %i.ll = insertelement <2 x double> %34, double %.val64.i, i64 1
  %i.lm = fdiv <2 x double> %i.lk, %i.ll          ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0 ; 4 uses
  %35 = fdiv double %i.ln, %28
  %i.lo = call double @sqrt(double noundef %35) #39
  %i.lp = extractelement <2 x double> %i.lm, i64 1
  %i.lq = fdiv double %i.lp, %.val65.i
  %i.lr = fadd double %25, 2.000000e+00
  %i.ls = fdiv double %i.lq, %i.lr
  %i.lt = fadd double %25, 3.000000e+00
  %i.lu = fdiv double %i.ls, %i.lt
  %i.lv = fadd double %i.lu, 3.000000e+00
  %i.lw = fadd double %i.lv, -1.000000e+00
  %i.lx = fmul double %i.ln, %i.lw
  %i.ly = fmul double %i.ln, %i.lx
  %i.lz = fdiv double %i.ly, %28
  %i.ma = call double @sqrt(double noundef %i.lz) #39 ; 2 uses
  %i.mb = load double, ptr %i.ar, align 8, !tbaa !138
  %i.mc = fsub double %i.mb, %i.ln
  %i.md = fdiv double %i.mc, %i.ma
  %i.me = invoke noundef double @_ZN4absl12lts_2026052615random_internal17MaxErrorToleranceEd(double noundef %i.x)
          to label %bb.bq unwind label %bb.cf     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %.val72.i = load double, ptr %i.y, align 8, !tbaa !106 ; 2 uses
  %.val73.i = load double, ptr %i.z, align 16, !tbaa !108
  %i.mf = fadd double %.val72.i, %.val73.i
  %i.mg = fdiv double %.val72.i, %i.mf
  %i.mh = invoke noundef double @_ZN4absl12lts_2026052615random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %i.mg, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.br unwind label %bb.cg

bb.br:                                            ; preds = %bb.bq
  %i.mi = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 1, ptr nonnull @.str.30, double noundef %i.mh, double noundef 0.000000e+00, double noundef %i.me)
          to label %bb.bs unwind label %bb.ch

bb.bs:                                            ; preds = %bb.br
  br i1 %i.mi, label %bb.bt, label %.thread158.i

bb.bt:                                            ; preds = %bb.bs
  %i.mj = invoke noundef zeroext i1 @_ZN4absl12lts_2026052615random_internal4NearESt17basic_string_viewIcSt11char_traitsIcEEddd(i64 10, ptr nonnull @.str.31, double noundef %i.md, double noundef 0.000000e+00, double noundef %i.me)
          to label %bb.bu unwind label %bb.ch

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.mj, label %_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread, label %.thread158.i

_ZN12_GLOBAL__N_120BetaDistributionTest28SingleZTestOnMeanAndVarianceIN4absl12lts_2026052617beta_distributionIdEEEEbdm.exit.thread: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.mk = ptrtoint ptr %.sroa.17.3.i to i64
  %i.ml = sub i64 %i.mk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0147.3.i, i64 noundef %i.ml) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.preheader

.thread158.i:                                     ; preds = %bb.bu, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.1, i32 noundef 330) #42
          to label %bb.bv unwind label %bb.ci

bb.bv:                                            ; preds = %.thread158.i
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 5, ptr nonnull @.str.32)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i: ; preds = %bb.bv
  %i.mm = load double, ptr %i.y, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store double %i.mm, ptr %i.r, align 8, !tbaa !90
  %i.mn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.bw unwind label %bb.cj     ; 2 uses

bb.bw:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, i64 2, ptr nonnull @.str.33)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.bw
  %i.mo = load double, ptr %i.z, align 16, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store double %i.mo, ptr %i.q, align 8, !tbaa !90
  %i.mp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.bx unwind label %bb.cj     ; 2 uses

bb.bx:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i64 16, ptr nonnull @.str.34)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i: ; preds = %bb.bx
  %i.mq = load double, ptr %i.as, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store double %i.mq, ptr %i.p, align 8, !tbaa !90
  %i.mr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.by unwind label %bb.cj     ; 2 uses

bb.by:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i: ; preds = %bb.by
  %.val70.i = load double, ptr %i.y, align 8, !tbaa !106 ; 2 uses
  %.val71.i = load double, ptr %i.z, align 16, !tbaa !108
  %i.ms = fadd double %.val70.i, %.val71.i
  %i.mt = fdiv double %.val70.i, %i.ms
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store double %i.mt, ptr %i.o, align 8, !tbaa !90
  %i.mu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bz unwind label %bb.cj     ; 2 uses

bb.bz:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.bz
  %i.mv = load double, ptr %i.as, align 8, !tbaa !139
  %.val68.i = load double, ptr %i.y, align 8, !tbaa !106 ; 2 uses
  %.val69.i = load double, ptr %i.z, align 16, !tbaa !108
  %i.mw = fadd double %.val68.i, %.val69.i
  %i.mx = fdiv double %.val68.i, %i.mw
  %i.my = fsub double %i.mv, %i.mx
  %i.mz = call noundef double @llvm.fabs.f64(double %i.my)
  %i.na = fdiv double %i.mz, %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store double %i.na, ptr %i.n, align 8, !tbaa !90
  %i.nb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.ca unwind label %bb.cj     ; 2 uses

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, i64 32, ptr nonnull @.str.37)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i: ; preds = %bb.ca
  %i.nc = load double, ptr %i.ar, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store double %i.nc, ptr %i.m, align 8, !tbaa !90
  %i.nd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nb, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.cb unwind label %bb.cj     ; 2 uses

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i64 9, ptr nonnull @.str.35)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i: ; preds = %bb.cb
  %.val56.i = load double, ptr %i.y, align 8, !tbaa !106 ; 2 uses
  %.val57.i = load double, ptr %i.z, align 16, !tbaa !108 ; 2 uses
  %i.ne = fmul double %.val56.i, %.val57.i
  %i.nf = fadd double %.val56.i, %.val57.i        ; 3 uses
  %i.ng = fadd double %i.nf, 1.000000e+00
  %i.nh = fdiv double %i.ne, %i.ng
  %i.ni = fdiv double %i.nh, %i.nf
  %i.nj = fdiv double %i.ni, %i.nf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store double %i.nj, ptr %i.l, align 8, !tbaa !90
  %i.nk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.cc unwind label %bb.cj     ; 2 uses

bb.cc:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, i64 11, ptr nonnull @.str.36)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i: ; preds = %bb.cc
  %i.nl = load double, ptr %i.ar, align 8, !tbaa !138
  %.val.i = load double, ptr %i.y, align 8, !tbaa !106 ; 2 uses
  %.val55.i = load double, ptr %i.z, align 16, !tbaa !108 ; 2 uses
  %i.nm = fmul double %.val.i, %.val55.i
  %i.nn = fadd double %.val.i, %.val55.i          ; 3 uses
  %i.no = fadd double %i.nn, 1.000000e+00
  %i.np = fdiv double %i.nm, %i.no
  %i.nq = fdiv double %i.np, %i.nn
  %i.nr = fdiv double %i.nq, %i.nn
  %i.ns = fsub double %i.nl, %i.nr
  %i.nt = call noundef double @llvm.fabs.f64(double %i.ns)
  %i.nu = fdiv double %i.nt, %i.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store double %i.nu, ptr %i.k, align 8, !tbaa !90
  %i.nv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nk, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cd unwind label %bb.cj     ; 2 uses

bb.cd:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 14, ptr nonnull @.str.38)
          to label %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i unwind label %bb.cj

_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i: ; preds = %bb.cd
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nv)
          to label %bb.cm unwind label %bb.cj

bb.ce:                                            ; preds = %bb.f
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cf:                                            ; preds = %bb.bp
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.cg:                                            ; preds = %bb.bq
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %bb.bt, %bb.br
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ci:                                            ; preds = %.thread158.i
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit.i, %bb.cd, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit132.i, %bb.cc, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit128.i, %bb.cb, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit.i, %bb.ca, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i, %bb.bz, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit.i, %bb.by, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit.i, %bb.bx, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.bw, %_ZN4absl12lts_2026052612log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit.i, %bb.bv
  %i.ob = landingpad { ptr, i32 }
          cleanup
end_hunk_0
