Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCOVProfiling?download=true
inline.NumInlined: 4059
inline.NumDeleted: 2026
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_:bb.a

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i15.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit16.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit16.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i15.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.028.032.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit16.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.sroa.026.1.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.sroa.026.031.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit16.i ] ; 3 uses
  %.sroa.028.1.i = phi ptr [ %.sroa.028.032.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %i.v, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit16.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.033.i30, i64 8 ; 2 uses
  %i.x = icmp ne ptr %.sroa.028.1.i, %i.n
  %i.y = icmp ne ptr %.sroa.026.1.i, %i.o
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i29, label %.critedge.i, !llvm.loop !12

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i22
  %.sroa.026.0.lcssa.i = phi ptr [ %i.n, %.lr.ph.i22 ], [ %.sroa.026.1.i, %bb.e ] ; 2 uses
  %.sroa.028.0.lcssa.i = phi ptr [ %.sroa.030.032.i, %.lr.ph.i22 ], [ %.sroa.028.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.033.i, %.lr.ph.i22 ], [ %i.w, %bb.e ] ; 2 uses
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = ptrtoint ptr %.sroa.028.0.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.ac, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i28, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.028.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.ae = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  %i.af = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.al = ptrtoint ptr %.sroa.026.0.lcssa.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i18.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit

.lr.ph.i.i.i.i.i18.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i
  %.012.i.i.i.i.i19.i = phi i64 [ %i.at, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %i.an, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i20.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i21.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %.sroa.026.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.ap = load ptr, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !331
  %i.aq = load ptr, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.ap, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i22.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i: ; preds = %.lr.ph.i.i.i.i.i18.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i, %.lr.ph.i.i.i.i.i18.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i20.i, i64 8 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i19.i, -1
  %i.au = icmp sgt i64 %.012.i.i.i.i.i19.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i18.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, !llvm.loop !13

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i17.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ], [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ] ; 2 uses
  %i.av = sub i64 %i.a, %i.ak
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.aw, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit, label %.lr.ph.i22, !llvm.loop !762

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, %bb.b
  %.sroa.030.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i17.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.aw, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 1152921504606846975) %.060, i64 %.lcssa.i)
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.030.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEET0_T_SO_SO_SO_SN_T1_(ptr %.sroa.030.0.lcssa.i, ptr %i.ax, ptr %i.ax, ptr %1, ptr noundef %.0.lcssa.i)
  %i.ay = shl nsw i64 %.060, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.ay
  br i1 %.not29.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit
  %.idx46 = shl nsw i64 %.060, 4                  ; 2 uses
  %.idx47 = shl nsw i64 %.060, 5                  ; 2 uses
  %.not48 = icmp eq i64 %.idx46, %.idx47
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit
  %.sroa.022.031.i = phi ptr [ %i.cn, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ], [ %0, %.lr.ph.i23.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.ba, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ], [ %2, %.lr.ph.i23.preheader ] ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.030.i, i64 %.idx46 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.030.i, i64 %.idx47 ; 4 uses
  br i1 %.not48, label %._crit_edge.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i23, %bb.h
  %.034.i = phi ptr [ %.1.i, %bb.h ], [ %.030.i, %.lr.ph.i23 ] ; 4 uses
  %.01633.i = phi ptr [ %.117.i, %bb.h ], [ %i.az, %.lr.ph.i23 ] ; 4 uses
  %.sroa.0.032.i = phi ptr [ %i.bi, %bb.h ], [ %.sroa.022.031.i, %.lr.ph.i23 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01633.i, align 8, !tbaa !331 ; 2 uses
  %.0.val.i = load ptr, ptr %.034.i, align 8, !tbaa !331 ; 2 uses
  %i.bb = getelementptr i8, ptr %.016.val.i, i64 16
  %.016.val.val.i = load i64, ptr %i.bb, align 8, !tbaa !329
  %i.bc = getelementptr i8, ptr %.0.val.i, i64 16
  %.0.val.val.i = load i64, ptr %i.bc, align 8, !tbaa !329
  %i.bd = icmp ugt i64 %.016.val.val.i, %.0.val.val.i
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i40
  store ptr null, ptr %.01633.i, align 8, !tbaa !331
  %i.be = load ptr, ptr %.sroa.0.032.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.016.val.i, ptr %.sroa.0.032.i, align 8, !tbaa !331
  %.not.i.i.i.i.i41 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i41, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i42

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i42: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i42, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.01633.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i40
  store ptr null, ptr %.034.i, align 8, !tbaa !331
  %i.bg = load ptr, ptr %.sroa.0.032.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.0.val.i, ptr %.sroa.0.032.i, align 8, !tbaa !331
  %.not.i.i.i.i19.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i19.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43
  %.117.i = phi ptr [ %i.bf, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43 ], [ %.01633.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %.1.i = phi ptr [ %.034.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i43 ], [ %i.bh, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8 ; 2 uses
  %i.bj = icmp ne ptr %.1.i, %i.az
  %i.bk = icmp ne ptr %.117.i, %i.ba
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph.i40, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i23
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i23 ], [ %i.bi, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.az, %.lr.ph.i23 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i31 = phi ptr [ %.030.i, %.lr.ph.i23 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.bm = ptrtoint ptr %i.az to i64
  %i.bn = ptrtoint ptr %.0.lcssa.i31 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i33:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.bv, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %i.bp, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.0.lcssa.i31, %._crit_edge.i ] ; 3 uses
  %i.br = load ptr, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !331
  %i.bs = load ptr, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !331 ; 2 uses
  store ptr %i.br, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i37, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i33
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i.i34, -1
  %i.bw = icmp sgt i64 %.012.i.i.i.i.i.i34, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ]
  %i.bx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.by = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bz ; 2 uses
  %i.cb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.cc = ptrtoint ptr %.016.lcssa.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i23.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit

.lr.ph.i.i.i.i.i23.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i
  %.012.i.i.i.i.i24.i = phi i64 [ %i.ck, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %i.ce, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i25.i = phi ptr [ %i.cj, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %i.ca, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i26.i = phi ptr [ %i.ci, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.cg = load ptr, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !331
  %i.ch = load ptr, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.cg, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i27.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i: ; preds = %.lr.ph.i.i.i.i.i23.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i, %.lr.ph.i.i.i.i.i23.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25.i, i64 8 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i24.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i24.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i23.i, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i, !llvm.loop !13

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i
  %3 = ptrtoint ptr %i.cj to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i
  %.08.lcssa.i.i.i.i.i22.i = phi i64 [ %i.bx, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %3, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i ]
  %i.cm = sub i64 %.08.lcssa.i.i.i.i.i22.i, %i.bx
  %i.cn = getelementptr inbounds i8, ptr %i.ca, i64 %i.cm ; 2 uses
  %i.co = sub i64 %i.l, %i.cb
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %.not.i24 = icmp slt i64 %i.cp, %i.ay
  br i1 %.not.i24, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit, label %.lr.ph.i23, !llvm.loop !763

_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit
  %.0.lcssa.i25 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit ], [ %i.ba, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit ], [ %i.cn, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ]
  %.lcssa.i26 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_T2_.exit ], [ %i.cp, %_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_.exit ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %i.m, i64 %.lcssa.i26)
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEET0_T_SO_SO_SO_SN_T1_(ptr noundef %.0.lcssa.i25, ptr noundef %i.cq, ptr noundef %i.cq, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.cr = icmp slt i64 %i.ay, %i.d
  br i1 %i.cr, label %bb.b, label %._crit_edge, !llvm.loop !764

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS4_NS3_6BBInfoEE17sortEdgesByWeightEvEUlRKS7_SK_E_EEEvT_SN_SN_T0_SO_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_SO_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !331
  %i.g = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.j = add nsw i64 %.012.i.i.i.i.i, -1
  %i.k = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, %bb.f
  %.029.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.0.028.i = phi ptr [ %i.s, %bb.f ], [ %0, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.021.027.i = phi ptr [ %.sroa.021.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 5 uses
  %.not22.i = icmp eq ptr %.sroa.021.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.029.i, align 8, !tbaa !331 ; 2 uses
  %i.l = getelementptr i8, ptr %.0.val.i, i64 16
  %.0.val.val.i = load i64, ptr %i.l, align 8, !tbaa !329
  %.val2.i.i = load ptr, ptr %.sroa.021.027.i, align 8, !tbaa !331 ; 2 uses
  %i.m = getelementptr i8, ptr %.val2.i.i, i64 16
  %.val2.val.i.i = load i64, ptr %i.m, align 8, !tbaa !329
  %i.n = icmp ugt i64 %.val2.val.i.i, %.0.val.val.i
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.021.027.i, align 8, !tbaa !331
  %i.o = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.val2.i.i, ptr %.sroa.0.028.i, align 8, !tbaa !331
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.021.027.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %.029.i, align 8, !tbaa !331
  %i.q = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.0.val.i, ptr %.sroa.0.028.i, align 8, !tbaa !331
  %.not.i.i.i.i17.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i17.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.sroa.021.1.i = phi ptr [ %i.p, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.sroa.021.027.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i ]
  %.1.i = phi ptr [ %.029.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %i.r, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.i
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_SO_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !765

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = ptrtoint ptr %.029.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_SO_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.w, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.0.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.029.i, %.critedge.i ] ; 3 uses
  %i.y = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  %i.z = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.y, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ad = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_SO_T1_T2_.exit, !llvm.loop !13

bb.g:                                             ; preds = %bb.a
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30
  %.012.i.i.i.i.i25 = phi i64 [ %i.an, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %i.ah, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.am, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.al, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %1, %bb.g ] ; 3 uses
  %i.aj = load ptr, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !331
  %i.ak = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !331 ; 2 uses
  store ptr %i.aj, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i24
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.am, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ] ; 4 uses
  %i.ap = icmp eq ptr %0, %1
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31
  %i.aq = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ar = ptrtoint ptr %5 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZN4llvm6CFGMSTIS2_NS1_6BBInfoEE17sortEdgesByWeightEvEUlRKS5_SK_E_EEEvT_SN_T0_SO_T1_T2_.exit

.lr.ph.i.i.i.i.i.i38:                             ; preds = %bb.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41
  %.010.i.i.i.i.i.i = phi i64 [ %i.az, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41 ], [ %i.at, %bb.h ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41 ], [ %2, %bb.h ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41 ], [ %.08.lcssa.i.i.i.i.i23, %bb.h ]
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !331
  store ptr null, ptr %i.av, align 8, !tbaa !331
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !331 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i39, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i40

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i41

end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_":bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.033.i30, i64 8 ; 2 uses
  %i.ae = icmp ne ptr %.sroa.028.1.i, %i.n
  %i.af = icmp ne ptr %.sroa.026.1.i, %i.o
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %.lr.ph.i29, label %.critedge.i, !llvm.loop !19

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i22
  %.sroa.026.0.lcssa.i = phi ptr [ %i.n, %.lr.ph.i22 ], [ %.sroa.026.1.i, %bb.e ] ; 2 uses
  %.sroa.028.0.lcssa.i = phi ptr [ %.sroa.030.032.i, %.lr.ph.i22 ], [ %.sroa.028.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.033.i, %.lr.ph.i22 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ag = ptrtoint ptr %i.n to i64
  %i.ah = ptrtoint ptr %.sroa.028.0.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ap, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.aj, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i28, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.an, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.028.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.al = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  %i.am = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.al, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.ao, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ar = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.as = ptrtoint ptr %.sroa.026.0.lcssa.i to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i18.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit"

.lr.ph.i.i.i.i.i18.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i
  %.012.i.i.i.i.i19.i = phi i64 [ %i.ba, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %i.au, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i20.i = phi ptr [ %i.az, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i21.i = phi ptr [ %i.ay, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ], [ %.sroa.026.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.aw = load ptr, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !331
  %i.ax = load ptr, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.aw, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i22.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i: ; preds = %.lr.ph.i.i.i.i.i18.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i23.i, %.lr.ph.i.i.i.i.i18.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i20.i, i64 8 ; 2 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i19.i, -1
  %i.bb = icmp sgt i64 %.012.i.i.i.i.i19.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i18.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit", !llvm.loop !13

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit": ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i17.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ], [ %i.az, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i24.i ] ; 2 uses
  %i.bc = sub i64 %i.a, %i.ar
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.bd, %i.m
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !872

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit", %bb.b
  %.sroa.030.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i17.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bd, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 1152921504606846975) %.062, i64 %.lcssa.i)
  %i.be = getelementptr inbounds [8 x i8], ptr %.sroa.030.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_"(ptr %.sroa.030.0.lcssa.i, ptr %i.be, ptr %i.be, ptr %1, ptr noundef %.0.lcssa.i)
  %i.bf = shl nsw i64 %.062, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.bf
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit", label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit"
  %.idx48 = shl nsw i64 %.062, 4                  ; 2 uses
  %.idx49 = shl nsw i64 %.062, 5                  ; 2 uses
  %.not50 = icmp eq i64 %.idx48, %.idx49
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.db, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ], [ %0, %.lr.ph.i23.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.bh, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ], [ %2, %.lr.ph.i23.preheader ] ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %.030.i, i64 %.idx48 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %.030.i, i64 %.idx49 ; 4 uses
  br i1 %.not50, label %._crit_edge.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i23, %bb.h
  %.035.i = phi ptr [ %.1.i, %bb.h ], [ %.030.i, %.lr.ph.i23 ] ; 4 uses
  %.01634.i = phi ptr [ %.117.i, %bb.h ], [ %i.bg, %.lr.ph.i23 ] ; 4 uses
  %.sroa.0.032.i = phi ptr [ %i.bw, %bb.h ], [ %.sroa.022.031.i, %.lr.ph.i23 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01634.i, align 8, !tbaa !331 ; 3 uses
  %.0.val.i = load ptr, ptr %.035.i, align 8, !tbaa !331 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.016.val.i, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !376 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !376 ; 2 uses
  %.not.i.i.i41 = icmp eq i32 %i.bj, %i.bl
  br i1 %.not.i.i.i41, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclIPSt10unique_ptrINS2_4EdgeESt14default_deleteISR_EESV_EEbT_T0_.exit.i", label %.split.i42

.split.i42:                                       ; preds = %.lr.ph.i40
  %i.bm = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.f, label %bb.g

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclIPSt10unique_ptrINS2_4EdgeESt14default_deleteISR_EESV_EEbT_T0_.exit.i": ; preds = %.lr.ph.i40
  %i.bn = getelementptr inbounds nuw i8, ptr %.016.val.i, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !377
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !377
  %i.br = icmp ult i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclIPSt10unique_ptrINS2_4EdgeESt14default_deleteISR_EESV_EEbT_T0_.exit.i", %.split.i42
  store ptr null, ptr %.01634.i, align 8, !tbaa !331
  %i.bs = load ptr, ptr %.sroa.0.032.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.016.val.i, ptr %.sroa.0.032.i, align 8, !tbaa !331
  %.not.i.i.i.i.i43 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i43, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i44

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i44: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i44, %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.01634.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclIPSt10unique_ptrINS2_4EdgeESt14default_deleteISR_EESV_EEbT_T0_.exit.i", %.split.i42
  store ptr null, ptr %.035.i, align 8, !tbaa !331
  %i.bu = load ptr, ptr %.sroa.0.032.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.0.val.i, ptr %.sroa.0.032.i, align 8, !tbaa !331
  %.not.i.i.i.i19.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i19.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i20.i, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45
  %.117.i = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45 ], [ %.01634.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %.1.i = phi ptr [ %.035.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i45 ], [ %i.bv, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8 ; 2 uses
  %i.bx = icmp ne ptr %.1.i, %i.bg
  %i.by = icmp ne ptr %.117.i, %i.bh
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.i40, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i23
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i23 ], [ %i.bw, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bg, %.lr.ph.i23 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i31 = phi ptr [ %.030.i, %.lr.ph.i23 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.ca = ptrtoint ptr %i.bg to i64
  %i.cb = ptrtoint ptr %.0.lcssa.i31 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3                 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i33:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.cj, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %i.cd, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.ci, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.ch, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.0.lcssa.i31, %._crit_edge.i ] ; 3 uses
  %i.cf = load ptr, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !331
  %i.cg = load ptr, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !331 ; 2 uses
  store ptr %i.cf, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i37, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i33
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i33
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i.i34, -1
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i.i34, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ci, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ]
  %i.cl = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.cm = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.cn ; 2 uses
  %i.cp = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.cq = ptrtoint ptr %.016.lcssa.i to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i23.i, label %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit"

.lr.ph.i.i.i.i.i23.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i
  %.012.i.i.i.i.i24.i = phi i64 [ %i.cy, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %i.cs, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i25.i = phi ptr [ %i.cx, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %i.co, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i26.i = phi ptr [ %i.cw, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.cu = load ptr, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !331
  %i.cv = load ptr, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.cu, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i27.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i: ; preds = %.lr.ph.i.i.i.i.i23.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i28.i, %.lr.ph.i.i.i.i.i23.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25.i, i64 8 ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i24.i, -1
  %i.cz = icmp sgt i64 %.012.i.i.i.i.i24.i, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i23.i, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i, !llvm.loop !13

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29.i
  %3 = ptrtoint ptr %i.cx to i64
  br label %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit"

"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit": ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i
  %.08.lcssa.i.i.i.i.i22.i = phi i64 [ %i.cl, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %3, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit30.loopexit.i ]
  %i.da = sub i64 %.08.lcssa.i.i.i.i.i22.i, %i.cl
  %i.db = getelementptr inbounds i8, ptr %i.co, i64 %i.da ; 2 uses
  %i.dc = sub i64 %i.l, %i.cp
  %i.dd = ashr exact i64 %i.dc, 3                 ; 2 uses
  %.not.i24 = icmp slt i64 %i.dd, %i.bf
  br i1 %.not.i24, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit", label %.lr.ph.i23, !llvm.loop !873

"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit"
  %.0.lcssa.i25 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit" ], [ %i.bh, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit" ], [ %i.db, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ]
  %.lcssa.i26 = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit" ], [ %i.dd, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_.exit" ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %i.m, i64 %.lcssa.i26)
  %i.de = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEET0_T_S12_S12_S12_S11_T1_"(ptr noundef %.0.lcssa.i25, ptr noundef %i.de, ptr noundef %i.de, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.df = icmp slt i64 %i.bf, %i.d
  br i1 %i.df, label %bb.b, label %._crit_edge, !llvm.loop !874

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_S11_T0_S12_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_S12_T1_T2_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !331
  %i.g = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.j = add nsw i64 %.012.i.i.i.i.i, -1
  %i.k = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.0.028.i = phi ptr [ %i.z, %bb.f ], [ %0, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.021.027.i = phi ptr [ %.sroa.021.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 5 uses
  %.not22.i = icmp eq ptr %.sroa.021.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !331 ; 3 uses
  %.val2.i.i = load ptr, ptr %.sroa.021.027.i, align 8, !tbaa !331 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !376  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !376  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, %i.o
  br i1 %.not.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclINS_17__normal_iteratorIPSt10unique_ptrINS2_4EdgeESt14default_deleteISS_EESt6vectorISV_SaISV_EEEESW_EEbT_T0_.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclINS_17__normal_iteratorIPSt10unique_ptrINS2_4EdgeESt14default_deleteISS_EESt6vectorISV_SaISV_EEEESW_EEbT_T0_.exit.i": ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !377
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !377
  %i.u = icmp ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclINS_17__normal_iteratorIPSt10unique_ptrINS2_4EdgeESt14default_deleteISS_EESt6vectorISV_SaISV_EEEESW_EEbT_T0_.exit.i", %.split.i
  store ptr null, ptr %.sroa.021.027.i, align 8, !tbaa !331
  %i.v = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.val2.i.i, ptr %.sroa.0.028.i, align 8, !tbaa !331
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.027.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNS4_12function_refIFPNS4_18BlockFrequencyInfoERNS4_8FunctionEEEENS7_IFPNS4_21BranchProbabilityInfoESB_EEENS7_IFRKNS4_17TargetLibraryInfoESB_EEEE3$_2EclINS_17__normal_iteratorIPSt10unique_ptrINS2_4EdgeESt14default_deleteISS_EESt6vectorISV_SaISV_EEEESW_EEbT_T0_.exit.i", %.split.i
  store ptr null, ptr %.030.i, align 8, !tbaa !331
  %i.x = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !331 ; 2 uses
  store ptr %.0.val.i, ptr %.sroa.0.028.i, align 8, !tbaa !331
  %.not.i.i.i.i17.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i17.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i18.i, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.sroa.021.1.i = phi ptr [ %i.w, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.sroa.021.027.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %i.y, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit19.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.i
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_S12_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !875

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = ptrtoint ptr %.030.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_S12_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.ad, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.0.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.af = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !331
  %i.ag = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  store ptr %i.af, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.aj = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_S12_T1_T2_.exit", !llvm.loop !13

bb.g:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30
  %.012.i.i.i.i.i25 = phi i64 [ %i.au, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %i.ao, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.at, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ], [ %1, %bb.g ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !331
  store ptr null, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !331
  %i.ar = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !331 ; 2 uses
  store ptr %i.aq, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !331
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30, label %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29

_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 48) #26
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30

_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_14EdgeEEclEPS1_.exit.i.i.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i24
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.au = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.av = icmp sgt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.at, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i30 ] ; 4 uses
  %i.aw = icmp eq ptr %0, %1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit31
  %i.ax = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ay = ptrtoint ptr %5 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i39, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_12GCOVProfiler16emitProfileNotesEPN4llvm11NamedMDNodeEbNSG_12function_refIFPNSG_18BlockFrequencyInfoERNSG_8FunctionEEEENSJ_IFPNSG_21BranchProbabilityInfoESN_EEENSJ_IFRKNSG_17TargetLibraryInfoESN_EEEE3$_2EEEvT_S11_T0_S12_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i39:                             ; preds = %bb.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i42
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i42 ], [ %i.ba, %bb.h ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i42 ], [ %2, %bb.h ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZNSt10unique_ptrIN12_GLOBAL__N_14EdgeESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i42 ], [ %.08.lcssa.i.i.i.i.i23, %bb.h ]
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
end_hunk_1
