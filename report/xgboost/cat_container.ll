inline.NumInlined: 7297
inline.NumDeleted: 3143
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_SJ_S1D_S1D_S1E_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1D_S1E_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1D_S1E_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEEvSJ_SJ_S1D_S1E_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !454

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlRKSN_E_clES1A_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1F_E_EEES1D_SJ_SJ_SJ_SJ_S1D_S1E_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_S1C_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !455

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.ba, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 2 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 13 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIS16_S16_EEbSC_S1B_.exit, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIS16_S16_EEbSC_S1B_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u
  %i.w = tail call noundef zeroext i1 @_ZZZN3enc8cpu_impl9SortNamesINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS_15CatStrArrayViewENS3_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEENSC_IiLm18446744073709551615EEEENKUlRKSA_E_clESY_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.s, i64 noundef %i.v)
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIS16_S16_EEbSC_S1B_.exit
  %i.x = load i64, ptr %0, align 8, !tbaa !416    ; 6 uses
  %i.y = icmp ult i64 %.sroa.10.050, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.g
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.10.050
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ac = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ae = add nuw i64 %.sroa.10.050, 1
  %i.af = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.ag, %i.x
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.10.050
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !39
  %i.ak = add nsw i64 %i.ac, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.al = icmp eq i64 %indvar, 0
  br i1 %i.al, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.ar, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.am = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.am, %i.x
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !39
  %i.ap = getelementptr [4 x i8], ptr %i.z, i64 %.sroa.4.024.i.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !39
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.ar, %i.x
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.au
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add nsw i64 %.026.i.i.i.i.i, -2
  %i.ax = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit, !llvm.loop !457

_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ay = icmp ult i64 %1, %i.x
  br i1 %i.ay, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %bb.i, !prof !41

bb.i:                                             ; preds = %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %1
  store i32 %i.ab, ptr %i.az, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIS16_S16_EEbSC_S1B_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_S1C_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.j
  %i.ba = phi i64 [ %i.x, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.j ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.ba
  br i1 %.not.i, label %bb.k, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.k:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_S1C_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %i.h = phi ptr [ %i.t, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %i.d, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ]
  %i.i = phi i64 [ %i.q, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %i.a, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ]
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 6 uses
  %i.j = icmp ult i64 %.sroa.8.0, %i.i
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIiS16_EEbRSC_S1B_.exit, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIiS16_EEbRSC_S1B_.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.l = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g
  %i.m = load i32, ptr %i.k, align 4, !tbaa !39
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.n
  %i.p = tail call noundef zeroext i1 @_ZZZN3enc8cpu_impl9SortNamesINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS_15CatStrArrayViewENS3_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEENSC_IiLm18446744073709551615EEEENKUlRKSA_E_clESY_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.l, i64 noundef %i.o)
  %i.q = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIiS16_EEbRSC_S1B_.exit
  %i.r = icmp ult i64 %.sroa.8.0, %i.q
  br i1 %i.r, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1: ; preds = %bb.d
  %i.s = icmp ult i64 %.sroa.6.0, %i.q
  br i1 %i.s, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !418  ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.8.0
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.6.0
  store i32 %i.v, ptr %i.w, align 4, !tbaa !39
  %.not.i3 = icmp eq i64 %.sroa.8.0, 0
  br i1 %.not.i3, label %.critedge.i5, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, !prof !55, !llvm.loop !458

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIiS16_EEbRSC_S1B_.exit
  %i.x = icmp ult i64 %.sroa.6.0, %i.q
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.h, !prof !41

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.g
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.z, align 4, !tbaa !39
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZZN3enc8cpu_impl9SortNamesINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS_15CatStrArrayViewENS3_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEENSC_IiLm18446744073709551615EEEENKUlRKSA_E_clESY_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %3 = alloca %"class.xgboost::common::Span.3", align 8 ; 6 uses
  %4 = alloca %"class.xgboost::common::Span.3", align 8 ; 6 uses
  %5 = alloca %"class.xgboost::common::detail::SpanIterator.269", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !459, !nonnull !413, !align !414 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = sext i32 %i.g to i64                     ; 4 uses
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.b
  br i1 %i.k, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit13, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit13: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39
  %i.n = sub nsw i32 %i.m, %i.g                   ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.split.i, label %bb.d

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit13
  %i.p = load i64, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %.not8.i = icmp ult i64 %i.p, %i.i
  br i1 %.not8.i, label %bb.e, label %bb.f, !prof !55
end_hunk_0
begin_hunk_1_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !495

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !496

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !486, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66
  %i.ag = icmp ult i8 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !486, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !66
  %i.x = icmp ult i8 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !497

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_1
begin_hunk_2_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !517

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !518

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !509, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !66
  %i.ag = icmp slt i8 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !509, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !66
  %i.x = icmp slt i8 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !519

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_2
begin_hunk_3_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !539

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !540

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !530, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !75   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !82
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !82
  %i.ag = icmp ult i16 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !530, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.j
  %i.u = load i16, ptr %i.t, align 2, !tbaa !82
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.m
  %i.w = load i16, ptr %i.v, align 2, !tbaa !82
  %i.x = icmp ult i16 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !541

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_3
begin_hunk_4_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !561

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !562

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !552, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !84   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !82
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !82
  %i.ag = icmp slt i16 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !552, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !84   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.j
  %i.u = load i16, ptr %i.t, align 2, !tbaa !82
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.m
  %i.w = load i16, ptr %i.v, align 2, !tbaa !82
  %i.x = icmp slt i16 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !563

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_4
begin_hunk_5_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !583

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !584

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !574, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !90   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !574, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.m
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !585

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_5
begin_hunk_6_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !605

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !606

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !596, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp slt i32 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !596, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.m
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !607

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_6
begin_hunk_7_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !627

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !628

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !618, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !618, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !629

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_7
begin_hunk_8_@_ZSt16__merge_adaptiveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_SJ_S1F_S1F_S1G_T2_:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit: ; preds = %.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i ], [ %.lcssa48.unr, %.prol.loopexit ], [ %i.v, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.1 ]
  store ptr %0, ptr %10, align 8, !tbaa !409
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt21__move_merge_adaptiveIPiN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEES7_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS2_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS1_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS5_IKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEES6_EUlSJ_E_EES7_ZZNSF_ISI_EEvSL_S16_S6_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %10, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.y = icmp eq ptr %4, %2
  br i1 %i.y, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30: ; preds = %bb.d
  %i.z = sub i64 %5, %3
  %i.aa = freeze i64 %i.z                         ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i32, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %i.ac = load i64, ptr %2, align 8, !tbaa !416   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %umax.i.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %3) ; 2 uses
  %xtraiter51 = and i64 %i.aa, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.prol.loopexit50, label %.prol.preheader49

.prol.preheader49:                                ; preds = %.lr.ph.i.i.i.i.i32
  %exitcond.not.i.i.i.i.i37.prol.not = icmp ult i64 %3, %i.ac
  br i1 %exitcond.not.i.i.i.i.i37.prol.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, label %.loopexit53, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol: ; preds = %.prol.preheader49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  store i32 %i.ag, ptr %8, align 4, !tbaa !39
  %i.ah = add i64 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.aj = add nsw i64 %i.aa, -1
  br label %.prol.loopexit50

.prol.loopexit50:                                 ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i32
  %.011.i.i.i.i.i34.unr = phi ptr [ %8, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.0410.i.i.i.i.i35.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i32 ], [ %i.aj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.sroa.3.09.i.i.i.i.i36.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i32 ], [ %i.ah, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i32 ], [ %i.ai, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.prol ]
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, label %.lr.ph.i.i.i.i.i32.new

.lr.ph.i.i.i.i.i32.new:                           ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1
  %.011.i.i.i.i.i34 = phi ptr [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.011.i.i.i.i.i34.unr, %.prol.loopexit50 ] ; 3 uses
  %.0410.i.i.i.i.i35 = phi i64 [ %i.au, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.0410.i.i.i.i.i35.unr, %.prol.loopexit50 ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i36 = phi i64 [ %i.as, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ], [ %.sroa.3.09.i.i.i.i.i36.unr, %.prol.loopexit50 ] ; 4 uses
  %exitcond.not.i.i.i.i.i37 = icmp eq i64 %.sroa.3.09.i.i.i.i.i36, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, !prof !55

.loopexit53:                                      ; preds = %.lr.ph.i.i.i.i.i32.new, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38, %.prol.preheader49
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i32.new
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !418 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.sroa.3.09.i.i.i.i.i36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  store i32 %i.an, ptr %.011.i.i.i.i.i34, align 4, !tbaa !39
  %i.ao = add i64 %.sroa.3.09.i.i.i.i.i36, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i37.1 = icmp eq i64 %i.ao, %umax.i.i.i.i.i33
  br i1 %exitcond.not.i.i.i.i.i37.1, label %.loopexit53, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  %i.as = add i64 %.sroa.3.09.i.i.i.i.i36, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i34, i64 8 ; 2 uses
  %i.au = add nsw i64 %.0410.i.i.i.i.i35, -2
  %i.av = icmp sgt i64 %.0410.i.i.i.i.i35, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i32.new, label %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, !llvm.loop !453

_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39: ; preds = %.prol.loopexit50, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30
  %.0.lcssa.i.i.i.i.i31 = phi ptr [ %8, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i30 ], [ %.lcssa.unr, %.prol.loopexit50 ], [ %i.at, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i38.1 ]
  store ptr %4, ptr %11, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  tail call void @_ZSt30__move_merge_adaptive_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %8, ptr noundef %.0.lcssa.i.i.i.i.i31, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %11, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit39, %_ZSt4moveIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiET0_T_S9_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %8 = alloca %"class.xgboost::common::detail::SpanIterator.264", align 8 ; 3 uses
  %i.a = shl nsw i64 %5, 1                        ; 2 uses
  %i.b = icmp eq ptr %2, %0
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %i.b, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, label %bb.b, !prof !41

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit: ; preds = %bb.a, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  %.sroa.11.0 = phi i64 [ %i.g, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %1, %bb.a ] ; 6 uses
  %.0 = phi ptr [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32 ], [ %4, %bb.a ] ; 2 uses
  %i.d = sub i64 %3, %.sroa.11.0                  ; 2 uses
  %.not = icmp slt i64 %i.d, %i.a
  br i1 %.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %i.e = add i64 %.sroa.11.0, %5                  ; 3 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25: ; preds = %bb.c
  %i.g = add i64 %.sroa.11.0, %i.a                ; 4 uses
  %.not.i.i29 = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i.i29, label %bb.e, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32, !prof !55

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit25
  store ptr %0, ptr %7, align 8
  store i64 %i.g, ptr %i.c, align 8
  %i.h = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.e, ptr nonnull %0, i64 %i.e, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %7, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6)
  %i.i = load i64, ptr %0, align 8, !tbaa !416
  %.not.i = icmp ugt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.f, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit, !prof !55, !llvm.loop !649

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit32
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !409
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.l = tail call noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr nonnull %0, i64 %.sroa.11.0, ptr nonnull %0, i64 %i.j, ptr nonnull %0, i64 %i.j, ptr noundef nonnull byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %8, ptr noundef %.0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %6) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_SI_S1E_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i64 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, 1                            ; 3 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !416    ; 2 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.e
  br i1 %.not.i.i, label %bb.c, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, !prof !55

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split: ; preds = %bb.b
  %i.f = icmp ne ptr %0, %2                       ; 2 uses
  %i.g = icmp ne i64 %i.d, %3
  %.not8.i49 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not8.i49, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  %i.i = add i64 %.sroa.10.050, 1                 ; 2 uses
  %i.j = icmp ne i64 %i.i, %3
  %.not8.i = select i1 %i.f, i1 true, i1 %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !650

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 3 uses
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.bd, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 6 uses
  %.sroa.10.050 = phi i64 [ %i.d, %.lr.ph ], [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit ] ; 11 uses
  %i.l = icmp ult i64 %.sroa.10.050, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %bb.d
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i, label %bb.f, !prof !41

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !418  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !640, !nonnull !413, !align !414 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !103  ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i, label %bb.g, !prof !41

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit, label %bb.h, !prof !41

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp slt i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1               ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.aj = add nuw i64 %.sroa.10.050, 1
  %i.ak = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ak, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ah, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %indvar, 0
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !456

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.4.024.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !39
  %i.aw = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.aw, %i.k
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !456

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !457

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, %bb.i
  %i.bd = phi i64 [ %i.k, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33 ], [ %.pre, %bb.i ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.10.050, %i.bd
  br i1 %.not.i, label %bb.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, !prof !55

bb.j:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.loopexit:                                        ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !416    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, !prof !55

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.g = sext i32 %i.f to i64
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit

.critedge.i:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  %.sroa.6.0 = phi i64 [ %.sroa.8.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2 ], [ %1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit.preheader ] ; 5 uses
  %.sroa.8.0 = add i64 %.sroa.6.0, -1             ; 3 uses
  %i.h = icmp ult i64 %.sroa.8.0, %i.a
  br i1 %i.h, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, label %bb.c, !prof !41

bb.c:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.8.0
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %3, align 8, !tbaa !45 ; 2 uses
  %i.j = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.g ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.l ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !640, !nonnull !413, !align !414 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !103  ; 2 uses
  %i.p = icmp ult i64 %i.j, %i.o
  br i1 %i.p, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i, label %bb.d, !prof !41

bb.d:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.q = icmp ult i64 %i.m, %i.o
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit, label %bb.e, !prof !41

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp slt i64 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %bb.f

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %i.y, align 4, !tbaa !39
  %i.z = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.z, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !456, !llvm.loop !651

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %i.aa = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %i.aa, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.g, !prof !41

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !409 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !413, !align !414 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !413, !align !414 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !416    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !464

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !416
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
end_hunk_8
