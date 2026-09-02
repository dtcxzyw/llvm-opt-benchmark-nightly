Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cat_container?download=true
inline.NumInlined: 7305
inline.NumDeleted: 3143
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZSt22__merge_without_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_SI_S1C_S1C_S1D_:bb.a
  br i1 %i.bo, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit98, label %bb.u, !prof !65

bb.u:                                             ; preds = %_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit97
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit98: ; preds = %_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit97
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !230
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bm
  %i.br = icmp eq ptr %2, %.tr217
  br i1 %i.br, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i101, label %bb.v, !prof !65

bb.v:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit98
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i101: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit98
  %i.bs = sub i64 %.tr153219, %.tr151218          ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i105, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119

.lr.ph.i105:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i101
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr217, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i105
  %.031.i106 = phi i64 [ %i.bs, %.lr.ph.i105 ], [ %.1.i116, %bb.ab ] ; 2 uses
  %.sroa.5.030.i107 = phi i64 [ %.tr151218, %.lr.ph.i105 ], [ %.sroa.5.1.i115, %bb.ab ] ; 2 uses
  %i.bv = lshr i64 %.031.i106, 1                  ; 3 uses
  %i.bw = add i64 %i.bv, %.sroa.5.030.i107        ; 5 uses
  %i.bx = load i64, ptr %.tr217, align 8, !tbaa !229 ; 2 uses
  %.not.i11.i.i109 = icmp ugt i64 %i.bw, %i.bx
  br i1 %.not.i11.i.i109, label %bb.x, label %_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit.i110, !prof !79

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit.i110: ; preds = %bb.w
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i, label %bb.y, !prof !65

bb.y:                                             ; preds = %_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit.i110
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i: ; preds = %_ZSt9__advanceIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElEvRT_T0_St26random_access_iterator_tag.exit.i110
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !230
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.cc = sext i32 %i.cb to i64
  %.sroa.0.0.copyload1.i.i.i.i.i112 = load i64, ptr %.sroa.225.0.copyload, align 8, !tbaa !69 ; 2 uses
  %i.cd = add i64 %.sroa.0.0.copyload1.i.i.i.i.i112, %i.cc
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !63
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add i64 %.sroa.0.0.copyload1.i.i.i.i.i112, %i.cf
  %i.ch = tail call noundef zeroext i1 @_ZZZN3enc8cpu_impl9SortNamesINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS_15CatStrArrayViewENS3_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEENSC_IiLm18446744073709551615EEEENKUlRKSA_E_clESY_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.0.copyload, i64 noundef %i.cd, i64 noundef %i.cg)
  br i1 %i.ch, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i
  %i.ci = load i64, ptr %.tr217, align 8, !tbaa !229
  %.not.i.i113 = icmp eq i64 %i.bw, %i.ci
  br i1 %.not.i.i113, label %bb.aa, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i114, !prof !79

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i114: ; preds = %bb.z
  %i.cj = add nuw i64 %i.bw, 1
  %i.ck = xor i64 %i.bv, -1
  %i.cl = add nsw i64 %.031.i106, %i.ck
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i114, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i
  %.sroa.5.1.i115 = phi i64 [ %.sroa.5.030.i107, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i ], [ %i.cj, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i114 ] ; 2 uses
  %.1.i116 = phi i64 [ %i.bv, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclISS_S16_EEbRSC_S1B_.exit.i ], [ %i.cl, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit.i114 ] ; 2 uses
  %i.cm = icmp sgt i64 %.1.i116, 0
  br i1 %i.cm, label %bb.w, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119, !llvm.loop !18

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119: ; preds = %bb.ab, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i101
  %.sroa.5.0.lcssa.i102 = phi i64 [ %.tr151218, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i101 ], [ %.sroa.5.1.i115, %bb.ab ] ; 2 uses
  %i.cn = sub i64 %.sroa.5.0.lcssa.i102, %.tr151218
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %.sroa.10134.0 = phi i64 [ %i.ak, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %.sroa.5.0.lcssa.i102, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119 ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %.sroa.5.0.lcssa.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.bm, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119 ] ; 2 uses
  %.079 = phi i64 [ %i.bk, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.bl, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119 ] ; 2 uses
  %.0 = phi i64 [ %i.aj, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit ], [ %i.cn, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit119 ] ; 2 uses
  %i.co = tail call { ptr, i64 } @_ZNSt3_V28__rotateIN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.tr217, i64 %.sroa.10134.0, ptr %2, i64 %.tr153219, ptr %2, i64 %.sroa.10.0) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortINS1_18IndexTransformIterIZNSB_9SortNamesINSA_6PolicyIJNS0_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNSA_15CatStrArrayViewENS4_IKhLm18446744073709551615EEENS4_IKaLm18446744073709551615EEENS4_IKtLm18446744073709551615EEENS4_IKsLm18446744073709551615EEENS4_IKjLm18446744073709551615EEENS4_IKiLm18446744073709551615EEENS4_IKmLm18446744073709551615EEENS4_IKlLm18446744073709551615EEEEES5_EUlSI_E_EES6_ZZNSE_ISH_EEvSK_S15_S5_ENKUlRKSM_E_clES19_EUlmmE_EEvSI_SI_T0_T1_EUlRSX_S1E_E_EEEvSI_SI_SI_S1C_S1C_S1D_(ptr %.tr217, i64 %.tr151218, ptr %.tr217, i64 %.sroa.10134.0, ptr %i.cp, i64 %i.cq, i64 noundef %.0, i64 noundef %.079, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %8)
  %i.cr = sub nsw i64 %.tr156220, %.0             ; 2 uses
  %i.cs = sub nsw i64 %.tr157221, %.079           ; 2 uses
  %i.ct = icmp eq i64 %i.cr, 0
  %i.cu = icmp eq i64 %i.cs, 0
  %or.cond = or i1 %i.ct, %i.cu
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN3enc8cpu_impl7ArgSortIN7xgboost6common18IndexTransformIterIZNS3_9SortNamesINS2_6PolicyIJNS5_14EncErrorPolicyEEEEEEvRKT_RKSt7variantIJNS2_15CatStrArrayViewENS6_4SpanIKhLm18446744073709551615EEENSH_IKaLm18446744073709551615EEENSH_IKtLm18446744073709551615EEENSH_IKsLm18446744073709551615EEENSH_IKjLm18446744073709551615EEENSH_IKiLm18446744073709551615EEENSH_IKmLm18446744073709551615EEENSH_IKlLm18446744073709551615EEEEENSH_IiLm18446744073709551615EEEEUlSC_E_EENS6_6detail12SpanIteratorIS11_Lb0EEEZZNS8_ISB_EEvSE_S10_S11_ENKUlRKSG_E_clES18_EUlmmE_EEvSC_SC_T0_T1_EUlRSS_S1D_E_EclIS16_S16_EEbSC_S1B_.exit, %_ZSt9iter_swapIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_EvT_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNSt3_V28__rotateIN7xgboost6common6detail12SpanIteratorINS2_4SpanIiLm18446744073709551615EEELb0EEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2                       ; 2 uses
  %i.b = icmp eq i64 %1, %3                       ; 2 uses
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %4, %2
  %i.e = icmp eq i64 %5, %3
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %4, %0
  br i1 %i.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit: ; preds = %bb.c
  %i.h = sub i64 %5, %1                           ; 2 uses
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit67, label %bb.e, !prof !65

bb.e:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit67: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit
  %i.i = sub i64 %3, %1                           ; 3 uses
  %i.j = sub nsw i64 %i.h, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.f, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit68

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit67
  br i1 %i.b, label %.critedge, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %0, align 8, !tbaa !229
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %1)
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit12.i, %.lr.ph.split.preheader.i
  %.sroa.416.023.i = phi i64 [ %i.w, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit12.i ], [ %1, %.lr.ph.split.preheader.i ] ; 3 uses
  %.sroa.4.022.i = phi i64 [ %i.x, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit12.i ], [ %3, %.lr.ph.split.preheader.i ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %.sroa.416.023.i, %umax.i
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i, !prof !79

.split.us.i:                                      ; preds = %.lr.ph.split.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i: ; preds = %.lr.ph.split.i
  %i.o = load i64, ptr %2, align 8, !tbaa !229
  %i.p = icmp ult i64 %.sroa.4.022.i, %i.o
  br i1 %i.p, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit12.i, label %.split25.us.i, !prof !65

.split25.us.i:                                    ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit12.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !230
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.416.023.i ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.4.022.i ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !63
  %i.v = load i32, ptr %i.t, align 4, !tbaa !63
  store i32 %i.v, ptr %i.r, align 4, !tbaa !63
  store i32 %i.u, ptr %i.t, align 4, !tbaa !63
  %i.w = add i64 %.sroa.416.023.i, 1              ; 2 uses
  %i.x = add nuw i64 %.sroa.4.022.i, 1
  %.not.i = icmp eq i64 %i.w, %3
  br i1 %.not.i, label %.critedge, label %.lr.ph.split.i, !llvm.loop !538

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit68: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit67
  %i.y = sub i64 %5, %3
  %i.z = add i64 %i.y, %1                         ; 5 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !229   ; 21 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader, !prof !79

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit

bb.g:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit68
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.backedge, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader
  %.0242 = phi i64 [ %i.h, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader ], [ %.0242.be, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.backedge ] ; 9 uses
  %.0 = phi i64 [ %i.i, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader ], [ %.0.be, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.backedge ] ; 9 uses
  %.sroa.20.0 = phi i64 [ %1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.preheader ], [ %.sroa.20.0.be, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.backedge ] ; 18 uses
  %i.ac = sub nsw i64 %.0242, %.0                 ; 7 uses
  %i.ad = icmp slt i64 %.0, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.u

bb.h:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %i.ae = icmp eq i64 %.0, 1
  br i1 %i.ae, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.af = icmp ult i64 %.sroa.20.0, %i.aa
  br i1 %i.af, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit, label %bb.j, !prof !65

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit: ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.20.0
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !63
  %i.aj = add i64 %.sroa.20.0, %.0242             ; 2 uses
  %.not.i.i81 = icmp ugt i64 %i.aj, %i.aa
  br i1 %.not.i.i81, label %bb.k, label %.lr.ph.i.i.i.i.i.preheader, !prof !79

bb.k:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit
  %umax330 = tail call i64 @llvm.umax.i64(i64 %.sroa.20.0, i64 %i.aa) ; 2 uses
  %i.ak = xor i64 %.sroa.20.0, -1
  %i.al = add i64 %i.aa, %i.ak
  %i.am = sub i64 %umax330, %.sroa.20.0
  %6 = tail call i64 @llvm.smin.i64(i64 %.0242, i64 2)
  %7 = sub i64 %.0242, %6
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.am)
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %7)
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader399, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aq = and i64 %i.ap, 7                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 8, i64 %i.aq
  %n.vec = sub i64 %i.ap, %i.as                   ; 3 uses
  %i.at = sub i64 %.0242, %n.vec
  %i.au = add i64 %.sroa.20.0, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add i64 %.sroa.20.0, %index             ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.ag, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %i.ay = getelementptr i8, ptr %i.aw, i64 20
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !63
  %wide.load397 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %wide.load, ptr %i.az, align 4, !tbaa !63
  store <4 x i32> %wide.load397, ptr %i.ba, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.preheader399, label %vector.body, !llvm.loop !539

.lr.ph.i.i.i.i.i.preheader399:                    ; preds = %vector.body, %.lr.ph.i.i.i.i.i.preheader
  %.020.i.i.i.i.i.ph = phi i64 [ %.0242, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %vector.body ]
  %.sroa.413.019.i.i.i.i.i.in.ph = phi i64 [ %.sroa.20.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %vector.body ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader399, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i
  %.020.i.i.i.i.i.a = phi i64 [ %.sroa.413.019.i.i.i.i.i.a, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader399 ] ; 2 uses
  %.sroa.413.019.i.i.i.i.i.in = phi i64 [ %.sroa.413.019.i.i.i.i.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i ], [ %.sroa.413.019.i.i.i.i.i.in.ph, %.lr.ph.i.i.i.i.i.preheader399 ] ; 3 uses
  %.sroa.413.019.i.i.i.i.i = add i64 %.sroa.413.019.i.i.i.i.i.in, 1 ; 3 uses
  %.sroa.413.019.i.i.i.i.i.a = add nsw i64 %.020.i.i.i.i.i.a, -1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.413.019.i.i.i.i.i, %i.aa
  br i1 %exitcond.not.i.i.i.i.i, label %bb.l, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i.i.i.i, !prof !79

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %exitcond331.not = icmp eq i64 %.sroa.413.019.i.i.i.i.i.in, %umax330
  br i1 %exitcond331.not, label %bb.m, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i, !prof !79

bb.m:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i.i.i.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.413.019.i.i.i.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.sroa.413.019.i.i.i.i.i.in
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !63
  %i.bf = icmp sgt i64 %.020.i.i.i.i.i.a, 2
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit91, !llvm.loop !540

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit91: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit6.i.i.i.i.i
  %i.bg = add i64 %i.aj, -1                       ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.bg, %i.aa
  br i1 %.not.i.i.i, label %bb.n, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit, !prof !79

bb.n:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit91
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit91
  %i.bh = icmp ult i64 %i.bg, %i.aa
  br i1 %i.bh, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit97, label %bb.o, !prof !65

bb.o:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit97: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bg
  store i32 %i.ai, ptr %i.bi, align 4, !tbaa !63
  br label %.critedge

bb.p:                                             ; preds = %bb.h
  %i.bj = add i64 %.sroa.20.0, %.0                ; 3 uses
  %.not.i.i101 = icmp ugt i64 %i.bj, %i.aa
  br i1 %.not.i.i101, label %bb.q, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104.preheader, !prof !79

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104.preheader: ; preds = %bb.p
  %i.bk = icmp sgt i64 %i.ac, 0
  br i1 %i.bk, label %.lr.ph284.preheader, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104._crit_edge

.lr.ph284.preheader:                              ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104.preheader
  %i.bl = tail call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 %.sroa.20.0)
  %i.bm = sub i64 %i.aa, %i.bj
  br label %.lr.ph284

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104._crit_edge: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104.preheader
  %.sroa.20.1.lcssa = phi i64 [ %.sroa.20.0, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104.preheader ], [ %i.bt, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107 ]
  %i.bn = srem i64 %.0242, %.0                    ; 2 uses
  %.not64 = icmp eq i64 %i.bn, 0
  br i1 %.not64, label %.critedge, label %bb.t

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107
  %.060283 = phi i64 [ %i.bv, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107 ], [ 0, %.lr.ph284.preheader ] ; 3 uses
  %.sroa.6.0282 = phi i64 [ %i.bu, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107 ], [ %i.bj, %.lr.ph284.preheader ] ; 2 uses
  %.sroa.20.1281 = phi i64 [ %i.bt, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107 ], [ %.sroa.20.0, %.lr.ph284.preheader ] ; 2 uses
  %exitcond315.not = icmp eq i64 %.060283, %i.bl
  br i1 %exitcond315.not, label %bb.r, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i, !prof !79

bb.r:                                             ; preds = %.lr.ph284
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i: ; preds = %.lr.ph284
  %exitcond316.not = icmp eq i64 %.060283, %i.bm
  br i1 %exitcond316.not, label %bb.s, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107, !prof !79

bb.s:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEppEv.exit107: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit.i
  %i.bo = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.20.1281 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.sroa.6.0282 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !63
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !63
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !63
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !63
  %i.bt = add nuw i64 %.sroa.20.1281, 1           ; 2 uses
  %i.bu = add nuw i64 %.sroa.6.0282, 1
  %i.bv = add nuw nsw i64 %.060283, 1             ; 2 uses
  %exitcond317.not = icmp eq i64 %i.bv, %i.ac
  br i1 %exitcond317.not, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104._crit_edge, label %.lr.ph284, !llvm.loop !541

bb.t:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit104._crit_edge
  %i.bw = sub nsw i64 %.0, %i.bn
  br label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit.backedge

bb.u:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit
  %i.bx = icmp eq i64 %i.ac, 1
  %i.by = add i64 %.sroa.20.0, %.0242             ; 7 uses
  %.not.i.i111 = icmp ugt i64 %i.by, %i.aa        ; 2 uses
  br i1 %i.bx, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %.not.i.i111, label %bb.w, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit114, !prof !79

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit114: ; preds = %bb.v
  %i.bz = add i64 %i.by, -1                       ; 5 uses
  %.not.i.i.i118 = icmp ugt i64 %i.bz, %i.aa
  br i1 %.not.i.i.i118, label %bb.x, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit121, !prof !79

bb.x:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit114
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit121: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit114
  %i.ca = icmp ult i64 %i.bz, %i.aa
  br i1 %i.ca, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i144, label %bb.y, !prof !65

bb.y:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit121
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i144: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiEl.exit121
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 8 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bz
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !63
  %i.ce = sub i64 %i.bz, %.sroa.20.0
  %i.cf = freeze i64 %i.ce                        ; 5 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i148.preheader, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i148.preheader:                    ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i144
  %xtraiter = and i64 %i.cf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i148.prol.loopexit, label %.lr.ph.i.i.i.i.i148.prol

.lr.ph.i.i.i.i.i148.prol:                         ; preds = %.lr.ph.i.i.i.i.i148.preheader
  %i.ch = add i64 %i.by, -2                       ; 3 uses
  %or.cond.not.prol = icmp ult i64 %i.ch, %i.aa
  br i1 %or.cond.not.prol, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, label %.critedge.i.i.i.i.i.i, !prof !233

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i148.prol
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !63
  %i.ck = add i64 %i.by, -1                       ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ck
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !63
  %i.cm = add nsw i64 %i.cf, -1
  br label %.lr.ph.i.i.i.i.i148.prol.loopexit

.lr.ph.i.i.i.i.i148.prol.loopexit:                ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i148.preheader
  %.026.i.i.i.i.i.unr = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i148.preheader ], [ %i.cm, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.417.025.i.i.i.i.i.unr = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i148.preheader ], [ %i.ch, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %.sroa.4.024.i.i.i.i.i.unr = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i148.preheader ], [ %i.ck, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.prol ]
  %i.cn = icmp eq i64 %i.cf, 1
  br i1 %i.cn, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i148

.lr.ph.i.i.i.i.i148:                              ; preds = %.lr.ph.i.i.i.i.i148.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1
  %.026.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.026.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i148.prol.loopexit ] ; 2 uses
  %.sroa.417.025.i.i.i.i.i = phi i64 [ %i.ct, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.417.025.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i148.prol.loopexit ] ; 2 uses
  %.sroa.4.024.i.i.i.i.i = phi i64 [ %i.cw, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1 ], [ %.sroa.4.024.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i148.prol.loopexit ] ; 2 uses
  %i.co = add i64 %.sroa.417.025.i.i.i.i.i, -1    ; 2 uses
  %or.cond.not = icmp ult i64 %i.co, %i.aa
  br i1 %or.cond.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !233

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i148, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i, %.lr.ph.i.i.i.i.i148.prol
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i148
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !63
  %i.cr = getelementptr [4 x i8], ptr %i.cb, i64 %.sroa.4.024.i.i.i.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !63
  %i.ct = add i64 %.sroa.417.025.i.i.i.i.i, -2    ; 3 uses
  %or.cond.not.1 = icmp ult i64 %i.ct, %i.aa
  br i1 %or.cond.not.1, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, label %.critedge.i.i.i.i.i.i, !prof !233

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !63
  %i.cw = add i64 %.sroa.4.024.i.i.i.i.i, -2      ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cw
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !63
  %i.cy = add nsw i64 %.026.i.i.i.i.i, -2
  %i.cz = icmp sgt i64 %.026.i.i.i.i.i, 2
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i148, label %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit, !llvm.loop !15

_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i148.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmmEv.exit9.i.i.i.i.i.1, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEmiES5_.exit.i.i.i.i.i144
  %i.da = icmp ult i64 %.sroa.20.0, %i.aa
  br i1 %i.da, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit149, label %bb.z, !prof !65

bb.z:                                             ; preds = %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEdeEv.exit149: ; preds = %_ZSt13move_backwardIN7xgboost6common6detail12SpanIteratorINS1_4SpanIiLm18446744073709551615EEELb0EEES6_ET0_T_S8_S7_.exit
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.20.0
  store i32 %i.cd, ptr %i.db, align 4, !tbaa !63
  br label %.critedge

bb.aa:                                            ; preds = %bb.u
  br i1 %.not.i.i111, label %bb.ab, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit156, !prof !79

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIiLm18446744073709551615EEELb0EEplEl.exit156: ; preds = %bb.aa
end_hunk_0
