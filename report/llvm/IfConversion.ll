Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IfConversion?download=true
inline.NumInlined: 2502
inline.NumDeleted: 1167
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_:bb.a
  %i.u = load ptr, ptr %.035.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.t, ptr %.035.i, align 8, !tbaa !324
  %.not.i.i.i.i15.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i15.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i16.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i16.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i16.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.028.1.i = phi ptr [ %i.s, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.028.033.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i ] ; 3 uses
  %.sroa.030.1.i = phi ptr [ %.sroa.030.034.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.v, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit17.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.035.i, i64 8 ; 2 uses
  %i.x = icmp ne ptr %.sroa.030.1.i, %i.n
  %i.y = icmp ne ptr %.sroa.028.1.i, %i.o
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i27, label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i20
  %.sroa.028.0.lcssa.i = phi ptr [ %i.n, %.lr.ph.i20 ], [ %.sroa.028.1.i, %bb.e ] ; 2 uses
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.029.031.i, %.lr.ph.i20 ], [ %.sroa.030.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i26 = phi ptr [ %.032.i, %.lr.ph.i20 ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ac, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i26, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.030.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.ae = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !324
  %i.af = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !7

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i26, %.critedge.i ], [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.al = ptrtoint ptr %.sroa.028.0.lcssa.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit

.lr.ph.i.i.i.i.i19.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.at, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i ], [ %i.an, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i ], [ %.sroa.028.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.ap = load ptr, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !324
  %i.aq = load ptr, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.ap, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i23.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i23.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24.i: ; preds = %.lr.ph.i.i.i.i.i19.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24.i, %.lr.ph.i.i.i.i.i19.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i20.i, -1
  %i.au = icmp sgt i64 %.012.i.i.i.i.i20.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, !llvm.loop !7

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25.i ] ; 2 uses
  %i.av = sub i64 %i.a, %i.ak
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.aw, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i20, !llvm.loop !678

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, %bb.b
  %.sroa.029.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i18.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.aw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 1152921504606846975) %.057, i64 %.lcssa.i)
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.029.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_(ptr %.sroa.029.0.lcssa.i, ptr %i.ax, ptr %i.ax, ptr %1, ptr noundef %.0.lcssa.i, ptr readonly %3)
  %i.ay = shl nsw i64 %.057, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.ay
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit
  %.idx43 = shl nsw i64 %.057, 4                  ; 2 uses
  %.idx44 = shl nsw i64 %.057, 5                  ; 2 uses
  %.not45 = icmp eq i64 %.idx43, %.idx44
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.cn, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ], [ %0, %.lr.ph.i21.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.ba, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ], [ %2, %.lr.ph.i21.preheader ] ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.029.i, i64 %.idx43 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.029.i, i64 %.idx44 ; 4 uses
  br i1 %.not45, label %._crit_edge.i, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i21, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i21 ] ; 5 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.az, %.lr.ph.i21 ] ; 5 uses
  %.sroa.032.034.i = phi ptr [ %i.bi, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i21 ] ; 5 uses
  %i.bb = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %.01635.i, ptr noundef nonnull align 8 dereferenceable(8) %.036.i) #23, !inline_history !679
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i37
  %i.bc = load ptr, ptr %.01635.i, align 8, !tbaa !324
  store ptr null, ptr %.01635.i, align 8, !tbaa !324
  %i.bd = load ptr, ptr %.sroa.032.034.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.bc, ptr %.sroa.032.034.i, align 8, !tbaa !324
  %.not.i.i.i.i.i38 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i38, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i39

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i39: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i39, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i37
  %i.bf = load ptr, ptr %.036.i, align 8, !tbaa !324
  store ptr null, ptr %.036.i, align 8, !tbaa !324
  %i.bg = load ptr, ptr %.sroa.032.034.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.bf, ptr %.sroa.032.034.i, align 8, !tbaa !324
  %.not.i.i.i.i20.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i20.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i21.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i21.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i21.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40
  %.117.i = phi ptr [ %i.be, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40 ], [ %.01635.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i40 ], [ %i.bh, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit22.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.034.i, i64 8 ; 2 uses
  %i.bj = icmp ne ptr %.1.i, %i.az
  %i.bk = icmp ne ptr %.117.i, %i.ba
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph.i37, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i21
  %.sroa.032.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i21 ], [ %i.bi, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.az, %.lr.ph.i21 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.029.i, %.lr.ph.i21 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.bm = ptrtoint ptr %i.az to i64
  %i.bn = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i30:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.bv, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36 ], [ %i.bp, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36 ], [ %.sroa.032.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36 ], [ %.0.lcssa.i28, %._crit_edge.i ] ; 3 uses
  %i.br = load ptr, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !324
  %i.bs = load ptr, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !324 ; 2 uses
  store ptr %i.br, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i34, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i35

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i.i30
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 8 ; 2 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bw = icmp sgt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !7

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.032.0.lcssa.i, %._crit_edge.i ], [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i36 ]
  %i.bx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i29 to i64 ; 3 uses
  %i.by = ptrtoint ptr %.sroa.032.0.lcssa.i to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds i8, ptr %.sroa.032.0.lcssa.i, i64 %i.bz ; 2 uses
  %i.cb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.cc = ptrtoint ptr %.016.lcssa.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit

.lr.ph.i.i.i.i.i24.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i
  %.012.i.i.i.i.i25.i = phi i64 [ %i.ck, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i ], [ %i.ce, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i26.i = phi ptr [ %i.cj, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i ], [ %i.ca, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i27.i = phi ptr [ %i.ci, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.cg = load ptr, ptr %.0910.i.i.i.i.i27.i, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i27.i, align 8, !tbaa !324
  %i.ch = load ptr, ptr %.0811.i.i.i.i.i26.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.cg, ptr %.0811.i.i.i.i.i26.i, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i28.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i29.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i29.i: ; preds = %.lr.ph.i.i.i.i.i24.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i29.i, %.lr.ph.i.i.i.i.i24.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26.i, i64 8 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i25.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i25.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i24.i, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit31.loopexit.i, !llvm.loop !7

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit31.loopexit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30.i
  %4 = ptrtoint ptr %i.cj to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit31.loopexit.i
  %.08.lcssa.i.i.i.i.i23.i = phi i64 [ %i.bx, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %4, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit31.loopexit.i ]
  %i.cm = sub i64 %.08.lcssa.i.i.i.i.i23.i, %i.bx
  %i.cn = getelementptr inbounds i8, ptr %i.ca, i64 %i.cm ; 2 uses
  %i.co = sub i64 %i.l, %i.cb
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %.not.i22 = icmp slt i64 %i.cp, %i.ay
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !680

_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit
  %.0.lcssa.i23 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.ba, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.cn, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.lcssa.i24 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.cp, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.sroa.speculated.i25 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %i.m, i64 %.lcssa.i24)
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i23, i64 %.sroa.speculated.i25 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_(ptr noundef %.0.lcssa.i23, ptr noundef %i.cq, ptr noundef %i.cq, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.cr = icmp slt i64 %i.ay, %i.d
  br i1 %i.cr, label %bb.b, label %._crit_edge, !llvm.loop !681

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_SM_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #3 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !324
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.031.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.023.030.i = phi ptr [ %.sroa.023.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.021.029.i = phi ptr [ %i.t, %bb.f ], [ %0, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not24.i = icmp eq ptr %.sroa.023.030.i, %2
  br i1 %.not24.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.023.030.i, ptr noundef nonnull align 8 dereferenceable(8) %.031.i) #23, !inline_history !682
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.sroa.023.030.i, align 8, !tbaa !324
  store ptr null, ptr %.sroa.023.030.i, align 8, !tbaa !324
  %i.o = load ptr, ptr %.sroa.021.029.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.n, ptr %.sroa.021.029.i, align 8, !tbaa !324
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.023.030.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.031.i, align 8, !tbaa !324
  store ptr null, ptr %.031.i, align 8, !tbaa !324
  %i.r = load ptr, ptr %.sroa.021.029.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.q, ptr %.sroa.021.029.i, align 8, !tbaa !324
  %.not.i.i.i.i18.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i19.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.023.1.i = phi ptr [ %i.p, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.023.030.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i ]
  %.1.i = phi ptr [ %.031.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.s, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.029.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !683

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = ptrtoint ptr %.031.i to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ad, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.x, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.021.029.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.031.i, %.critedge.i ] ; 3 uses
  %i.z = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !324
  %i.aa = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !324 ; 2 uses
  store ptr %i.z, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ad = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit, !llvm.loop !7

bb.g:                                             ; preds = %bb.a
  %i.af = ptrtoint ptr %2 to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.ao, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.ai, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.an, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.am, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.ak = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !324
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !324
  %i.al = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !324 ; 2 uses
  store ptr %i.ak, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ap = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !7

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.an, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.aq = icmp eq ptr %0, %1
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30
  %i.ar = ptrtoint ptr %.08.lcssa.i.i.i.i.i22 to i64
  %i.as = ptrtoint ptr %5 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i35, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

.lr.ph.i.i.i.i.i.i35:                             ; preds = %bb.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i = phi i64 [ %i.ba, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %i.au, %bb.h ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %2, %bb.h ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %.08.lcssa.i.i.i.i.i22, %bb.h ]
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !324
  store ptr null, ptr %i.aw, align 8, !tbaa !324
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !324 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !324
  %.not.i.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i36, label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37

_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i.i35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 24) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38

_ZNSt10unique_ptrIN12_GLOBAL__N_111IfConverter10IfcvtTokenESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_111IfConverter10IfcvtTokenEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37, %.lr.ph.i.i.i.i.i.i35
  %i.ba = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.010.i.i.i.i.i.i, 1
end_hunk_0
