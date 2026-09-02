Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cat_container?download=true
inline.NumInlined: 7305
inline.NumDeleted: 3143
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !495

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !485, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67
  %i.ag = icmp ult i8 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSO_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !485, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.u = load i8, ptr %i.t, align 1, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !67
  %i.x = icmp ult i8 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !496

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSP_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.272") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !485, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67
  %i.ag = icmp ult i8 %i.ad, %i.af                ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !485, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !67
  %i.bi = icmp ult i8 %i.bf, %i.bh                ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !497

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !485, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKhLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !73 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !67
  %i.ck = icmp ult i8 %i.ch, %i.cj                ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSJ_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_0
begin_hunk_1_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !517

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !508, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67
  %i.ag = icmp slt i8 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSQ_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !508, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !74   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  %i.u = load i8, ptr %i.t, align 1, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !67
  %i.x = icmp slt i8 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !518

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSR_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.277") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !508, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67
  %i.ag = icmp slt i8 %i.ad, %i.af                ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !508, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !74 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !67
  %i.bi = icmp slt i8 %i.bf, %i.bh                ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !519

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !508, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !74 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKaLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !67
  %i.ck = icmp slt i8 %i.ch, %i.cj                ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSL_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !539

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !529, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !84
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !84
  %i.ag = icmp ult i16 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSS_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !529, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !77   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.j
  %i.u = load i16, ptr %i.t, align 2, !tbaa !84
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.m
  %i.w = load i16, ptr %i.v, align 2, !tbaa !84
  %i.x = icmp ult i16 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !540

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKST_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.282") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !529, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !84
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !84
  %i.ag = icmp ult i16 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !529, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !77 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !84
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !84
  %i.bi = icmp ult i16 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !541

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !529, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !77 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKtLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !83 ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !84
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !84
  %i.ck = icmp ult i16 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSN_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_2
begin_hunk_3_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !561

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !551, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !86   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !84
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !84
  %i.ag = icmp slt i16 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSU_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !551, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !86   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.j
  %i.u = load i16, ptr %i.t, align 2, !tbaa !84
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.m
  %i.w = load i16, ptr %i.v, align 2, !tbaa !84
  %i.x = icmp slt i16 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !562

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSV_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.287") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !551, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !86   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !84
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !84
  %i.ag = icmp slt i16 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !551, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !86 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !91 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !84
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !84
  %i.bi = icmp slt i16 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !563

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !551, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKsLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !84
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !84
  %i.ck = icmp slt i16 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSP_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_3
begin_hunk_4_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !583

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !573, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !92   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSW_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !573, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !92   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.m
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !584

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSX_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.292") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !573, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !92   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp ult i32 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !573, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !92 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !97 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.bi = icmp ult i32 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !585

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !573, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !92 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !97 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !39
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !39
  %i.ck = icmp ult i32 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSR_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_4
begin_hunk_5_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !605

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !595, !nonnull !412, !align !413 ; 2 uses
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
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKSY_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !595, !nonnull !412, !align !413 ; 2 uses
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
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !606

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKSZ_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.297") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !595, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !39
  %i.ag = icmp slt i32 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !595, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.bi = icmp slt i32 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !607

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !595, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !35 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !39
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !39
  %i.ck = icmp slt i32 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKST_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_5
begin_hunk_6_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !627

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !617, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98   ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS10_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !617, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !98   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !628

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS11_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.302") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !617, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98   ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !104 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp ult i64 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !617, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !98 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !104 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bi = icmp ult i64 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !629

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !617, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !98 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !45
  %i.ck = icmp ult i64 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSV_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_6
begin_hunk_7_@_ZSt17__merge_sort_loopIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEEvSJ_SJ_S1F_S1G_T2_:bb.a
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEpLEl.exit
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %5, i64 %i.d)
  %i.j = add i64 %.sroa.speculated, %.sroa.11.0   ; 3 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  %.not.i.i37 = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i.i37, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47, !prof !55

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit47: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit33
  store ptr %2, ptr %8, align 8, !tbaa !408
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
  %i.e = load i64, ptr %0, align 8, !tbaa !415    ; 2 uses
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
  br i1 %.not8.i, label %bb.d, label %.loopexit, !llvm.loop !649

bb.d:                                             ; preds = %.lr.ph, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
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
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !417  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %5, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i, %i.u ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !639, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !105  ; 2 uses
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp slt i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.i

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  %i.ah = sub i64 %.sroa.10.050, %1
  %i.ai = freeze i64 %i.ah                        ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %i.ak = add nuw i64 %.sroa.10.050, 1
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.al = add i64 %.sroa.10.050, -1               ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.al, %i.k
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.sroa.10.050
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  %i.ap = add nsw i64 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ap, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %.sroa.10.050, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.10.050, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %i.ai, 1
  br i1 %i.aq, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.bb, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.aw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.az, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ar = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.ar, %i.k
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !455

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
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !455

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.az = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !39
  %i.bb = add nsw i64 %.026.i.i.i.i.i, -2
  %i.bc = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33, !llvm.loop !456

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit33: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  store i32 %i.q, ptr %i.p, align 4, !tbaa !39
  br label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
  tail call void @_ZSt25__unguarded_linear_insertIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlOSI_E0_clIRKS12_EEDaS18_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1G_E_EEEvSI_S1E_(ptr nonnull %0, i64 %.sroa.10.050, ptr nonnull %4, ptr nonnull %5)
  %.pre = load i64, ptr %0, align 8, !tbaa !415
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
  %i.a = load i64, ptr %0, align 8, !tbaa !415    ; 4 uses
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 4 uses
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
  %i.n = load ptr, ptr %2, align 8, !tbaa !639, !nonnull !412, !align !413 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !105  ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.m
  %i.w = load i64, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp slt i64 %i.u, %i.w
  br i1 %i.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2, label %5

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.k, ptr %4, align 4, !tbaa !39
  %i.y = add i64 %.sroa.6.0, -2
  %or.cond.not = icmp ult i64 %i.y, %i.a
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit, label %.critedge.i5, !prof !455, !llvm.loop !650

.critedge.i5:                                     ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit2
  tail call void @_ZSt9terminatev() #30
  unreachable

5:                                                ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIiS16_EEbRSC_S1D_.exit
  %6 = icmp ult i64 %.sroa.6.0, %i.a
  br i1 %6, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7, label %bb.f, !prof !41

bb.f:                                             ; preds = %5
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit7: ; preds = %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.6.0
  store i32 %i.f, ptr %7, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12__move_mergeIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEEPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSC_9SortNamesINSB_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSB_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSJ_E_EES6_ZZNSF_ISI_EEvSL_S16_S5_ENKUlOSJ_E0_clIRKS13_EEDaS19_EUlmmE_EEvSJ_SJ_T0_T1_EUlRSY_S1H_E_EEES1F_SJ_SJ_SJ_SJ_S1F_S1G_(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef byval(%"class.xgboost::common::detail::SpanIterator.264") align 8 %6, ptr noundef %7, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.307") align 8 %8) local_unnamed_addr #0 comdat {
.split:
  %i.a = icmp ne ptr %0, %2
  %.fr105 = freeze i1 %i.a                        ; 3 uses
  %i.b = icmp ne i64 %1, %3
  %.not8.i69 = select i1 %.fr105, i1 true, i1 %i.b
  %.sroa.03.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !408 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.212.0.copyload = load i64, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !45 ; 10 uses
  br i1 %.not8.i69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split
  %i.c = icmp ne ptr %4, %.sroa.03.0.copyload.pre
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %8, align 8, !nonnull !412, !align !413 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !412, !align !413 ; 4 uses
  %.fr = freeze i1 %i.c
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = load i64, ptr %4, align 8, !tbaa !415    ; 3 uses
  br i1 %.fr105, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.j = icmp ult i64 %5, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, label %.split80.us, !prof !463

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph: ; preds = %.lr.ph.split.us.split.us
  %i.k = load i64, ptr %0, align 8, !tbaa !415
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us
  %.sroa.6.070.us.us116 = phi i64 [ %5, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.6.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %.sroa.645.071.us.us115 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %.sroa.645.1.us.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 3 uses
  %.072.us.us114 = phi ptr [ %7, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us.lr.ph ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us ] ; 2 uses
  %i.l = icmp ult i64 %.sroa.645.071.us.us115, %i.k
  br i1 %i.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.6.070.us.us116
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.645.071.us.us115
  %i.q = load i32, ptr %i.n, align 4, !tbaa !39   ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.sroa.0.0.copyload1.i.i.i.i.us.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.s = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.r ; 2 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !39   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.sroa.0.0.copyload1.i.i.i.i.us.us, %i.u ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !639, !nonnull !412, !align !413 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !105  ; 2 uses
  %i.y = icmp ult i64 %i.s, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us.us
  %i.z = icmp ult i64 %i.v, %i.x
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.v
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.ag = icmp slt i64 %i.ad, %i.af               ; 3 uses
  %.sink = select i1 %i.ag, i32 %i.q, i32 %i.t
  %i.ah = zext i1 %i.ag to i64
  %.sroa.6.1.us.us = add nuw i64 %.sroa.6.070.us.us116, %i.ah ; 2 uses
  %not.181 = xor i1 %i.ag, true
  %i.ai = zext i1 %not.181 to i64
  %.sroa.645.1.us.us = add nuw i64 %.sroa.645.071.us.us115, %i.ai
  store i32 %.sink, ptr %.072.us.us114, align 4, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %.072.us.us114, i64 4
  %i.ak = icmp ult i64 %.sroa.6.1.us.us, %i.i
  br i1 %i.ak, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us.us, label %.split80.us, !prof !466

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us
  %.072.us = phi ptr [ %i.bl, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %.sroa.645.071.us = phi i64 [ %.sroa.645.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %.sroa.6.070.us = phi i64 [ %.sroa.6.1.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us ], [ %5, %.lr.ph.split.us ] ; 3 uses
  %i.al = icmp ult i64 %.sroa.6.070.us, %i.i
  br i1 %i.al, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us: ; preds = %.lr.ph.split.us.split
  %i.am = load i64, ptr %0, align 8, !tbaa !415
  %i.an = icmp ult i64 %.sroa.645.071.us, %i.am
  br i1 %i.an, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.6.070.us
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.sroa.645.071.us
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !39 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.sroa.0.0.copyload1.i.i.i.i.us = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.au = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.at ; 2 uses
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !39 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %.sroa.0.0.copyload1.i.i.i.i.us, %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !639, !nonnull !412, !align !413 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %i.ba = icmp ult i64 %i.au, %i.az
  br i1 %i.ba, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us
  %i.bb = icmp ult i64 %i.ax, %i.az
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !110 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.au
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ax
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bi = icmp slt i64 %i.bf, %i.bh               ; 3 uses
  %.sink138 = select i1 %i.bi, i32 %i.as, i32 %i.av
  %i.bj = zext i1 %i.bi to i64
  %.sroa.6.1.us = add nuw i64 %.sroa.6.070.us, %i.bj ; 2 uses
  %not.180 = xor i1 %i.bi, true
  %i.bk = zext i1 %not.180 to i64
  %.sroa.645.1.us = add nuw i64 %.sroa.645.071.us, %i.bk ; 2 uses
  store i32 %.sink138, ptr %.072.us, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.072.us, i64 4 ; 2 uses
  %.not120 = icmp eq i64 %.sroa.645.1.us, %3
  br i1 %.not120, label %.critedge, label %.lr.ph.split.us.split, !llvm.loop !651

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.fr105, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not118 = icmp eq i64 %5, %.sroa.212.0.copyload
  br i1 %.not118, label %.critedge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph.split.split.us
  %i.bm = load i64, ptr %4, align 8, !tbaa !415
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph109, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96
  %.sroa.6.070.us91108 = phi i64 [ %5, %.lr.ph109 ], [ %.sroa.6.1.us99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.sroa.645.071.us90107 = phi i64 [ %1, %.lr.ph109 ], [ %.sroa.645.1.us100, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 3 uses
  %.072.us89106 = phi ptr [ %7, %.lr.ph109 ], [ %i.cn, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96 ] ; 2 uses
  %i.bn = icmp ult i64 %.sroa.6.070.us91108, %i.bm
  br i1 %i.bn, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92, label %.split80.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92: ; preds = %bb.a
  %i.bo = load i64, ptr %0, align 8, !tbaa !415
  %i.bp = icmp ult i64 %.sroa.645.071.us90107, %i.bo
  br i1 %i.bp, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93, label %.split82.us, !prof !41

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.us92
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !417
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.6.070.us91108
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.645.071.us90107
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !39 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.sroa.0.0.copyload1.i.i.i.i.us94 = load i64, ptr %i.h, align 8, !tbaa !45 ; 2 uses
  %i.bw = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.sroa.0.0.copyload1.i.i.i.i.us94, %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !639, !nonnull !412, !align !413 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %i.cc = icmp ult i64 %i.bw, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us95, label %.split84.us, !prof !41

_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us95: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit1.i.us93
  %i.cd = icmp ult i64 %i.bz, %i.cb
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96, label %.split86.us, !prof !41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit.us96: ; preds = %_ZNK7xgboost6common4SpanIKlLm18446744073709551615EEixEm.exit.i.i.i.us95
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !110 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.bz
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !45
  %i.ck = icmp slt i64 %i.ch, %i.cj               ; 3 uses
  %.sink139 = select i1 %i.ck, i32 %i.bu, i32 %i.bx
  %i.cl = zext i1 %i.ck to i64
  %.sroa.6.1.us99 = add nuw i64 %.sroa.6.070.us91108, %i.cl ; 2 uses
  %not.179 = xor i1 %i.ck, true
  %i.cm = zext i1 %not.179 to i64
  %.sroa.645.1.us100 = add nuw i64 %.sroa.645.071.us90107, %i.cm ; 2 uses
  store i32 %.sink139, ptr %.072.us89106, align 4, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.072.us89106, i64 4 ; 2 uses
  %.not119 = icmp eq i64 %.sroa.6.1.us99, %.sroa.212.0.copyload
  br i1 %.not119, label %.critedge, label %bb.a

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlOSC_E0_clIRKSX_EEDaS17_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1F_E_EclIS16_S16_EEbSC_S1D_.exit
end_hunk_7
