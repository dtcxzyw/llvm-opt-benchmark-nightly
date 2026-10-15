Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/generalized_hough?download=true
inline.NumInlined: 1470
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEE:bb.a
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE5clearEv.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %.lr.ph.split.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 16 ; 3 uses
  %.val8.i.i.i = load ptr, ptr %i.hc, align 8, !tbaa !300
  %i.hd = ptrtoint ptr %.val8.i.i.i to i64
  %i.he = ptrtoint ptr %i.gz to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sdiv exact i64 %i.hf, 96
  %i.hh = icmp ult i64 %i.hg, %i.gt
  br i1 %i.hh, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_M_allocateEm.exit.i.i.i, label %"_ZZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEEENK3$_0clERS8_.exit.i"

.split.us.i:                                      ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureES2_EvT_S4_RSaIT0_E.exit.i.i.i.us.i, %.lr.ph.split.us.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #33
          to label %.noexc98 unwind label %.loopexit.split-lp180

.noexc98:                                         ; preds = %.split.us.i
  unreachable

_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE5clearEv.exit.i.i
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #29
          to label %.noexc99 unwind label %.loopexit179 ; 4 uses

.noexc99:                                         ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_M_allocateEm.exit.i.i.i
  %i.hj = load ptr, ptr %.sroa.06.08.i, align 8, !tbaa !132 ; 5 uses
  %i.hk = load ptr, ptr %i.ha, align 8, !tbaa !133 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.hk
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i94:                             ; preds = %.noexc99, %.lr.ph.i.i.i.i.i.i94
  %.03.i.i.i.i.i.i95 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i94 ], [ %i.hi, %.noexc99 ] ; 2 uses
  %.092.i.i.i.i.i.i96 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i94 ], [ %i.hj, %.noexc99 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.03.i.i.i.i.i.i95, ptr noundef nonnull readonly align 8 dereferenceable(96) %.092.i.i.i.i.i.i96, i64 96, i1 false), !tbaa.struct !302, !alias.scope !303
  %i.hl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i96, i64 96 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i95, i64 96
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.hl, %i.hk
  br i1 %.not.i.i.i.i.i.i97, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i94, !llvm.loop !286

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i94, %.noexc99
  %.not.i11.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i11.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !300
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hj to i64
  %i.hq = sub i64 %i.ho, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hq) #30
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i: ; preds = %bb.av, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i.i
  store ptr %i.hi, ptr %.sroa.06.08.i, align 8, !tbaa !132
  store ptr %i.hi, ptr %i.ha, align 8, !tbaa !133
  %i.hr = getelementptr inbounds nuw [96 x i8], ptr %i.hi, i64 %i.gt
  store ptr %i.hr, ptr %i.hc, align 8, !tbaa !300
  br label %"_ZZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEEENK3$_0clERS8_.exit.i"

"_ZZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEEENK3$_0clERS8_.exit.i": ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE13_M_deallocateEPS2_m.exit.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE5clearEv.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 24 ; 2 uses
  %.not.i92 = icmp eq ptr %i.hs, %.val50
  br i1 %.not.i92, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS5_EES2_IS7_SaIS7_EEEEZNS4_16buildFeatureListERKN2cv3MatESF_SF_RSA_NSC_6Point_IdEEE3$_0ET0_T_SL_SK_.exit", label %.lr.ph.split.i, !llvm.loop !287

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS5_EES2_IS7_SaIS7_EEEEZNS4_16buildFeatureListERKN2cv3MatESF_SF_RSA_NSC_6Point_IdEEE3$_0ET0_T_SL_SK_.exit": ; preds = %"_ZZN12_GLOBAL__N_124GeneralizedHoughGuilImpl16buildFeatureListERKN2cv3MatES4_S4_RSt6vectorIS5_INS0_7FeatureESaIS6_EESaIS8_EENS1_6Point_IdEEENK3$_0clERS8_.exit.i", %_ZNSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE6resizeEm.exit
  %i.ht = ptrtoint ptr %.sroa.0155.8 to i64       ; 5 uses
  %.not205 = icmp eq ptr %.sroa.15157.6, %.sroa.0155.8
  br i1 %.not205, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS5_EES2_IS7_SaIS7_EEEEZNS4_16buildFeatureListERKN2cv3MatESF_SF_RSA_NSC_6Point_IdEEE3$_0ET0_T_SL_SK_.exit"
  %i.hu = ptrtoint ptr %.sroa.15157.6 to i64
  %i.hv = sub i64 %i.hu, %i.ht
  %i.hw = sdiv exact i64 %i.hv, 24                ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.hz = insertelement <2 x double> poison, double %5, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %6, i64 1 ; 2 uses
  br label %bb.aw

._crit_edge:                                      ; preds = %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS5_EES2_IS7_SaIS7_EEEEZNS4_16buildFeatureListERKN2cv3MatESF_SF_RSA_NSC_6Point_IdEEE3$_0ET0_T_SL_SK_.exit"
  %.not.i.i.i100 = icmp eq ptr %.sroa.0155.8, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ax, %._crit_edge
  %i.ib = ptrtoint ptr %.sroa.24.8 to i64
  %i.ic = sub i64 %i.ib, %i.ht
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.8, i64 noundef %i.ic) #30
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  ret void

.loopexit184:                                     ; preds = %._crit_edge19.i, %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.24.5.lcssa = phi ptr [ %.sroa.24.5, %._crit_edge19.i ], [ %.sroa.15157.4, %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp185:                            ; preds = %bb.n, %bb.u, %bb.aa, %bb.ag, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EE11_M_allocateEm.exit.i.i, %bb.am, %bb.aq, %_ZNKSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0155.0.ph = phi ptr [ null, %bb.aa ], [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.n ], [ null, %bb.u ], [ %.sroa.0155.5, %bb.am ], [ %.sroa.0155.8, %_ZNKSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0155.8, %bb.aq ], [ null, %bb.ag ]
  %.sroa.24.0.ph = phi ptr [ null, %bb.aa ], [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EE11_M_allocateEm.exit.i.i ], [ null, %bb.n ], [ null, %bb.u ], [ %.sroa.15157.4, %bb.am ], [ %.sroa.24.8, %_ZNKSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.24.8, %bb.aq ], [ null, %bb.ag ]
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit179:                                     ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp180:                            ; preds = %.split.us.i
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %.lr.ph, %bb.ax
  %.029204 = phi i64 [ 0, %.lr.ph ], [ %i.ig, %bb.ax ] ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0155.8, i64 %.029204 ; 2 uses
  %i.ie = load <2 x double>, ptr %i.id, align 8, !tbaa !45 ; 4 uses
  %.sroa.9147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %.sroa.9147.0.copyload = load double, ptr %.sroa.9147.0..sroa_idx, align 8, !tbaa !45 ; 4 uses
  %i.if = fsub <2 x double> %i.ie, %i.ia          ; 2 uses
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit
  %i.ig = add nuw i64 %.029204, 1                 ; 2 uses
  %exitcond216.not = icmp eq i64 %i.ig, %i.hw
  br i1 %exitcond216.not, label %._crit_edge.thread, label %bb.aw, !llvm.loop !288

bb.ay:                                            ; preds = %bb.aw, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit
  %.0203 = phi i64 [ 0, %bb.aw ], [ %i.ku, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0155.8, i64 %.0203 ; 2 uses
  %i.ii = load <2 x double>, ptr %i.ih, align 8, !tbaa !45 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !45 ; 3 uses
  %i.ij = fsub double %.sroa.9147.0.copyload, %.sroa.9.0.copyload
  %i.ik = load double, ptr %i.hx, align 8, !tbaa !73
  %i.il = load double, ptr %i.hy, align 8, !tbaa !124
  %i.im = fsub double %i.ij, %i.ik                ; 3 uses
  %i.in = fcmp ogt double %i.im, 3.600000e+02
  br i1 %i.in, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.ay
  %.0.lcssa.i.i = phi double [ %i.im, %bb.ay ], [ %i.ip, %.lr.ph.i.i ] ; 3 uses
  %i.io = fcmp olt double %.0.lcssa.i.i, 0.000000e+00
  br i1 %i.io, label %.lr.ph8.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.ay, %.lr.ph.i.i
  %.06.i.i = phi double [ %i.ip, %.lr.ph.i.i ], [ %i.im, %bb.ay ]
  %i.ip = fadd double %.06.i.i, -3.600000e+02     ; 3 uses
  %i.iq = fcmp ogt double %i.ip, 3.600000e+02
  br i1 %i.iq, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !4

.lr.ph8.i.i:                                      ; preds = %.preheader.i.i, %.lr.ph8.i.i
  %.17.i.i = phi double [ %i.ir, %.lr.ph8.i.i ], [ %.0.lcssa.i.i, %.preheader.i.i ]
  %i.ir = fadd double %.17.i.i, 3.600000e+02      ; 3 uses
  %i.is = fcmp olt double %i.ir, 0.000000e+00
  br i1 %i.is, label %.lr.ph8.i.i, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph8.i.i, %.preheader.i.i
  %.1.lcssa.i.i = phi double [ %.0.lcssa.i.i, %.preheader.i.i ], [ %i.ir, %.lr.ph8.i.i ]
  %i.it = tail call double @llvm.fabs.f64(double %.1.lcssa.i.i)
  %i.iu = fcmp ugt double %i.it, %i.il
  br i1 %i.iu, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.iv = fsub <2 x double> %i.ie, %i.ii          ; 4 uses
  %i.iw = fptrunc <2 x double> %i.iv to <2 x float> ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0
  %i.iy = extractelement <2 x float> %i.iw, i64 1
  %i.iz = invoke noundef float @_ZN2cv9fastAtan2Eff(float noundef %i.iy, float noundef %i.ix)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ja = fpext float %i.iz to double
  %i.jb = fsub double %i.ja, %.sroa.9147.0.copyload ; 3 uses
  %i.jc = fcmp ogt double %i.jb, 3.600000e+02
  br i1 %i.jc, label %.lr.ph.i102, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i102, %bb.ba
  %.0.lcssa.i = phi double [ %i.jb, %bb.ba ], [ %i.je, %.lr.ph.i102 ] ; 3 uses
  %i.jd = fcmp olt double %.0.lcssa.i, 0.000000e+00
  br i1 %i.jd, label %.lr.ph8.i, label %_ZN12_GLOBAL__N_110clampAngleEd.exit

.lr.ph.i102:                                      ; preds = %bb.ba, %.lr.ph.i102
  %.06.i = phi double [ %i.je, %.lr.ph.i102 ], [ %i.jb, %bb.ba ]
  %i.je = fadd double %.06.i, -3.600000e+02       ; 3 uses
  %i.jf = fcmp ogt double %i.je, 3.600000e+02
  br i1 %i.jf, label %.lr.ph.i102, label %.preheader.i, !llvm.loop !4

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.17.i = phi double [ %i.jg, %.lr.ph8.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.jg = fadd double %.17.i, 3.600000e+02        ; 3 uses
  %i.jh = fcmp olt double %i.jg, 0.000000e+00
  br i1 %i.jh, label %.lr.ph8.i, label %_ZN12_GLOBAL__N_110clampAngleEd.exit, !llvm.loop !5

_ZN12_GLOBAL__N_110clampAngleEd.exit:             ; preds = %.lr.ph8.i, %.preheader.i
  %.1.lcssa.i = phi double [ %.0.lcssa.i, %.preheader.i ], [ %i.jg, %.lr.ph8.i ] ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.iv, %i.iv
  %i.ji = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.jj = extractelement <2 x double> %i.iv, i64 0 ; 2 uses
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.jj, double %i.ji)
  %sqrt.i = tail call noundef double @sqrt(double noundef %i.jk) #31 ; 3 uses
  %i.jl = fcmp ule double %sqrt.i, %i.u
  br i1 %i.jl, label %bb.bc, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.bb:                                            ; preds = %bb.az
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread170

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_110clampAngleEd.exit
  %i.jn = fsub <2 x double> %i.ii, %i.ia          ; 2 uses
  %i.jo = fmul double %i.w, %.1.lcssa.i
  %i.jp = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jq = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.jp)
  %i.jr = sext i32 %i.jq to i64
  %.val74 = load ptr, ptr %4, align 8, !tbaa !121
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %.val74, i64 %i.jr ; 4 uses
  %.val51 = load ptr, ptr %i.js, align 8, !tbaa !132 ; 5 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 8      ; 3 uses
  %.val52 = load ptr, ptr %i.jt, align 8, !tbaa !133 ; 13 uses
  %i.ju = ptrtoint ptr %.val52 to i64
  %i.jv = ptrtoint ptr %.val51 to i64             ; 2 uses
  %i.jw = sub i64 %i.ju, %i.jv                    ; 3 uses
  %i.jx = sdiv exact i64 %i.jw, 96                ; 4 uses
  %i.jy = load i32, ptr %i.gr, align 8, !tbaa !72
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp ult i64 %i.jx, %i.jz
  br i1 %i.ka, label %bb.bd, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 3 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !300
  %.not.i107 = icmp eq ptr %.val52, %i.kc
  br i1 %.not.i107, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store <2 x double> %i.ie, ptr %.val52, align 8, !tbaa !45
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  store double %.sroa.9147.0.copyload, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8, !tbaa !45
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 24
  store <2 x double> %i.ii, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8, !tbaa !45
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 40
  store double %.sroa.9.0.copyload, ptr %.sroa.0.sroa.11.0..sroa_idx, align 8, !tbaa !45
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 48
  store double %.1.lcssa.i, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 56
  store double %sqrt.i, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !45
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 64
  store <2 x double> %i.if, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !45
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val52, i64 80
  store <2 x double> %i.jn, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !45
  %i.kd = getelementptr inbounds nuw i8, ptr %.val52, i64 96
  store ptr %i.kd, ptr %i.jt, align 8, !tbaa !133
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ke = icmp eq i64 %i.jw, 9223372036854775776
  br i1 %i.ke, label %bb.bg, label %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bf
  %i.kf = icmp eq ptr %.val52, %.val51            ; 2 uses
  %.sroa.speculated.i.i.i108 = select i1 %i.kf, i64 1, i64 %i.jx
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i108, %i.jx ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.jx
  %i.ki = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 96076792050570581)
  %i.kj = select i1 %i.kh, i64 96076792050570581, i64 %i.ki ; 3 uses
  %.not.i.i.i109 = icmp ne i64 %i.kj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i109)
  %i.kk = mul nuw nsw i64 %i.kj, 96
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #29
          to label %.noexc115 unwind label %.loopexit178 ; 5 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.jw ; 8 uses
  store <2 x double> %i.ie, ptr %i.km, align 8, !tbaa !45
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store double %.sroa.9147.0.copyload, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx153, align 8, !tbaa !45
  %.sroa.0.sroa.8.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store <2 x double> %i.ii, ptr %.sroa.0.sroa.8.0..sroa_idx138, align 8, !tbaa !45
  %.sroa.0.sroa.11.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store double %.sroa.9.0.copyload, ptr %.sroa.0.sroa.11.0..sroa_idx142, align 8, !tbaa !45
  %.sroa.10.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store double %.1.lcssa.i, ptr %.sroa.10.0..sroa_idx119, align 8, !tbaa !45
  %.sroa.12.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  store double %sqrt.i, ptr %.sroa.12.0..sroa_idx121, align 8, !tbaa !45
  %.sroa.13.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  store <2 x double> %i.if, ptr %.sroa.13.0..sroa_idx123, align 8, !tbaa !45
  %.sroa.16.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  store <2 x double> %i.jn, ptr %.sroa.16.0..sroa_idx127, align 8, !tbaa !45
  br i1 %i.kf, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i110

.lr.ph.i.i.i.i.i110:                              ; preds = %.noexc115, %.lr.ph.i.i.i.i.i110
  %.03.i.i.i.i.i111 = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i110 ], [ %i.kl, %.noexc115 ] ; 2 uses
  %.092.i.i.i.i.i112 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i110 ], [ %.val51, %.noexc115 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.03.i.i.i.i.i111, ptr noundef nonnull readonly align 8 dereferenceable(96) %.092.i.i.i.i.i112, i64 96, i1 false), !tbaa.struct !302, !alias.scope !304
  %i.kn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i112, i64 96 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i111, i64 96 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.kn, %.val52
  br i1 %.not.i.i.i.i.i113, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i, label %.lr.ph.i.i.i.i.i110, !llvm.loop !286

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i: ; preds = %.lr.ph.i.i.i.i.i110, %.noexc115
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kl, %.noexc115 ], [ %i.ko, %.lr.ph.i.i.i.i.i110 ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96
  %.not.i27.i.i = icmp eq ptr %.val51, null
  br i1 %.not.i27.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  %i.kq = load ptr, ptr %i.kb, align 8, !tbaa !300
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = sub i64 %i.kr, %i.jv
  tail call void @_ZdlPvm(ptr noundef nonnull %.val51, i64 noundef %i.ks) #30
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bh, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i
  store ptr %i.kl, ptr %i.js, align 8, !tbaa !132
  store ptr %i.kp, ptr %i.jt, align 8, !tbaa !133
  %i.kt = getelementptr inbounds nuw [96 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kt, ptr %i.kb, align 8, !tbaa !300
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit

.loopexit178:                                     ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread170

.loopexit.split-lp:                               ; preds = %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread170

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN12_GLOBAL__N_110clampAngleEd.exit, %bb.bc, %bb.be, %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %.loopexit
  %i.ku = add nuw i64 %.0203, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ku, %i.hw
  br i1 %exitcond.not, label %bb.ax, label %bb.ay, !llvm.loop !292

.body:                                            ; preds = %.loopexit179, %.loopexit.split-lp180, %.loopexit184, %.loopexit.split-lp185
  %.sroa.0155.1 = phi ptr [ %.sroa.0155.0.ph, %.loopexit.split-lp185 ], [ %.sroa.0155.5, %.loopexit184 ], [ %.sroa.0155.8, %.loopexit.split-lp180 ], [ %.sroa.0155.8, %.loopexit179 ] ; 3 uses
  %.sroa.24.1 = phi ptr [ %.sroa.24.0.ph, %.loopexit.split-lp185 ], [ %.sroa.24.5.lcssa, %.loopexit184 ], [ %.sroa.24.8, %.loopexit.split-lp180 ], [ %.sroa.24.8, %.loopexit179 ]
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp187, %.loopexit.split-lp185 ], [ %lpad.loopexit186, %.loopexit184 ], [ %lpad.loopexit.split-lp182, %.loopexit.split-lp180 ], [ %lpad.loopexit181, %.loopexit179 ] ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %.sroa.0155.1, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117, label %.body..body.thread170_crit_edge

.body..body.thread170_crit_edge:                  ; preds = %.body
  %.pre = ptrtoint ptr %.sroa.0155.1 to i64
  br label %.body.thread170

.body.thread170:                                  ; preds = %.body..body.thread170_crit_edge, %.loopexit178, %.loopexit.split-lp, %bb.bb
  %.pre-phi = phi i64 [ %.pre, %.body..body.thread170_crit_edge ], [ %i.ht, %.loopexit178 ], [ %i.ht, %.loopexit.split-lp ], [ %i.ht, %bb.bb ]
  %.pn39.pn.pn.pn.pn177 = phi { ptr, i32 } [ %.pn39.pn.pn.pn.pn, %.body..body.thread170_crit_edge ], [ %lpad.loopexit, %.loopexit178 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.jm, %bb.bb ]
  %.sroa.24.1176 = phi ptr [ %.sroa.24.1, %.body..body.thread170_crit_edge ], [ %.sroa.24.8, %.loopexit178 ], [ %.sroa.24.8, %.loopexit.split-lp ], [ %.sroa.24.8, %bb.bb ]
  %.sroa.0155.1175 = phi ptr [ %.sroa.0155.1, %.body..body.thread170_crit_edge ], [ %.sroa.0155.8, %.loopexit178 ], [ %.sroa.0155.8, %.loopexit.split-lp ], [ %.sroa.0155.8, %bb.bb ]
  %i.kv = ptrtoint ptr %.sroa.24.1176 to i64
  %i.kw = sub i64 %i.kv, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.1175, i64 noundef %i.kw) #30
  br label %_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117

_ZNSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl12ContourPointESaIS2_EED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body.thread170, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn39.pn.pn.pn.pn177, %.body.thread170 ], [ %.pn39.pn.pn.pn.pn, %.body ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ], [ %.pn46.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #26

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #26

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !85}
!1 = distinct !{!1, !85}
!2 = distinct !{!2, !85}
!3 = distinct !{!3, !85}
!4 = distinct !{!4, !85}
!5 = distinct !{!5, !85}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!15 = !{!14, !11, i64 8}
!16 = !{!14, !11, i64 12}
!17 = !{!"vtable pointer", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSN2cv5Size_IiEE", !11, i64 0, !11, i64 4}
!20 = !{!19, !11, i64 0}
!21 = !{!19, !11, i64 4}
!22 = !{!"double", !10, i64 0}
!23 = !{!"_ZTSN2cv6Point_IiEE", !11, i64 0, !11, i64 4}
!24 = !{!"any pointer", !10, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!"p1 _ZTSN2cv12MatAllocatorE", !24, i64 0}
!27 = !{!"p1 _ZTSN2cv8UMatDataE", !24, i64 0}
!28 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!29 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !28, i64 4, !11, i64 8, !10, i64 12}
!30 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!31 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !26, i64 56, !27, i64 64, !29, i64 72, !30, i64 128}
!32 = !{!"p1 _ZTSN2cv3VecIfLi4EEE", !24, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIfLi4EEESaIS2_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN2cv3VecIfLi4EEESaIS2_EE", !35, i64 0}
!37 = !{!"p1 _ZTSN2cv3VecIiLi3EEE", !24, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIN2cv3VecIiLi3EEESaIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIN2cv3VecIiLi3EEESaIS2_EE", !40, i64 0}
!42 = !{!"_ZTSN12_GLOBAL__N_120GeneralizedHoughBaseE", !11, i64 8, !11, i64 12, !22, i64 16, !22, i64 24, !19, i64 32, !23, i64 40, !31, i64 48, !31, i64 256, !31, i64 464, !19, i64 672, !31, i64 680, !31, i64 888, !31, i64 1096, !36, i64 1304, !41, i64 1328}
!43 = !{!42, !11, i64 8}
!44 = !{!42, !11, i64 12}
!45 = !{!22, !22, i64 0}
!46 = !{!"_ZTSN2cv9AlgorithmE"}
!47 = !{!"_ZTSN2cv16GeneralizedHoughE", !46, i64 0}
!48 = !{!"_ZTSN2cv23GeneralizedHoughBallardE", !47, i64 0}
!49 = !{!"p1 _ZTSSt6vectorIN2cv6Point_IiEESaIS2_EE", !24, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseISt6vectorIN2cv6Point_IiEESaIS3_EESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE", !52, i64 0}
!54 = !{!"_ZTSN12_GLOBAL__N_127GeneralizedHoughBallardImplE", !48, i64 0, !42, i64 8, !11, i64 1360, !11, i64 1364, !53, i64 1368, !31, i64 1392}
!55 = !{!54, !11, i64 1360}
!56 = !{!54, !11, i64 1364}
!57 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!58 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSN2cv20GeneralizedHoughGuilE", !47, i64 0}
!61 = !{!"p1 _ZTSSt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EE", !24, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseISt6vectorIN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS3_EESaIS5_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIS_IN12_GLOBAL__N_124GeneralizedHoughGuilImpl7FeatureESaIS2_EESaIS4_EE", !64, i64 0}
!66 = !{!"p1 _ZTSSt4pairIdiE", !24, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt4pairIdiESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseISt4pairIdiESaIS1_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt4pairIdiESaIS1_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt4pairIdiESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSN12_GLOBAL__N_124GeneralizedHoughGuilImplE", !60, i64 0, !42, i64 8, !11, i64 1360, !22, i64 1368, !11, i64 1376, !22, i64 1384, !22, i64 1392, !22, i64 1400, !22, i64 1408, !11, i64 1416, !22, i64 1424, !22, i64 1432, !22, i64 1440, !11, i64 1448, !11, i64 1452, !65, i64 1456, !65, i64 1480, !70, i64 1504, !70, i64 1528}
!72 = !{!71, !11, i64 1360}
!73 = !{!71, !22, i64 1368}
!74 = !{!71, !11, i64 1376}
!75 = !{!71, !11, i64 1416}
!76 = !{!71, !22, i64 1440}
!77 = !{!71, !11, i64 1448}
!78 = !{!71, !11, i64 1452}
!79 = !{!50, !49, i64 0}
!80 = !{!50, !49, i64 8}
!81 = !{!"p1 _ZTSN2cv6Point_IiEE", !24, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IiEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 0}
!84 = !{!82, !81, i64 16}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!50, !49, i64 16}
!87 = !{!"_ZTSSt9type_info", !25, i64 8}
!88 = !{!87, !25, i64 8}
!89 = !{!10, !10, i64 0}
!90 = !{!42, !22, i64 16}
!91 = !{!42, !22, i64 24}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!93 = !{!"long", !10, i64 0}
!94 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !93, i64 8, !10, i64 16}
!95 = !{!94, !25, i64 0}
!96 = !{!82, !81, i64 8}
!97 = !{!42, !11, i64 36}
!98 = !{!42, !11, i64 32}
!99 = !{!31, !25, i64 24}
!100 = !{!93, !93, i64 0}
!101 = !{!"llvm.loop.unswitch.partial.disable"}
!102 = !{!"float", !10, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!11, !11, i64 0}
!105 = !{!31, !11, i64 0}
!106 = !{!29, !11, i64 0}
!107 = !{!"_ZTSN2cv11_InputArrayE", !11, i64 0, !24, i64 8, !19, i64 16}
!108 = !{!107, !11, i64 0}
!109 = !{!107, !24, i64 8}
!110 = !{!31, !11, i64 4}
!111 = !{!33, !32, i64 8}
!112 = !{!33, !32, i64 16}
!113 = !{!38, !37, i64 8}
!114 = !{!38, !37, i64 16}
!115 = !{!38, !37, i64 0}
!116 = !{!33, !32, i64 0}
!117 = !{!32, !32, i64 0}
!118 = !{!37, !37, i64 0}
!119 = !{!67, !66, i64 0}
!120 = !{!67, !66, i64 16}
end_hunk_0
