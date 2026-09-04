Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmMatcherEmitter?download=true
inline.NumInlined: 8530
inline.NumDeleted: 3431
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_":bb.a
  %.not.i.i.i.i15.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i15.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.u)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i: ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.028.032.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.sroa.026.1.i = phi ptr [ %i.s, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.sroa.026.031.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i ] ; 3 uses
  %.sroa.028.1.i = phi ptr [ %.sroa.028.032.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %i.v, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit16.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.033.i30, i64 8 ; 2 uses
  %i.x = icmp ne ptr %.sroa.028.1.i, %i.n
  %i.y = icmp ne ptr %.sroa.026.1.i, %i.o
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i29, label %.critedge.i, !llvm.loop !12

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i22
  %.sroa.026.0.lcssa.i = phi ptr [ %i.n, %.lr.ph.i22 ], [ %.sroa.026.1.i, %bb.g ] ; 2 uses
  %.sroa.028.0.lcssa.i = phi ptr [ %.sroa.030.032.i, %.lr.ph.i22 ], [ %.sroa.028.1.i, %bb.g ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.033.i, %.lr.ph.i22 ], [ %i.w, %bb.g ] ; 2 uses
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = ptrtoint ptr %.sroa.028.0.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.ac, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i28, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.028.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.ae = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !115
  %i.af = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.af)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.ah, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.al = ptrtoint ptr %.sroa.026.0.lcssa.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i18.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit"

.lr.ph.i.i.i.i.i18.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i
  %.012.i.i.i.i.i19.i = phi i64 [ %i.at, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i ], [ %i.an, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i20.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i21.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i ], [ %.sroa.026.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.ap = load ptr, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i21.i, align 8, !tbaa !115
  %i.aq = load ptr, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.ap, ptr %.0811.i.i.i.i.i20.i, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i22.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i22.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i18.i
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.aq)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i18.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i20.i, i64 8 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i19.i, -1
  %i.au = icmp sgt i64 %.012.i.i.i.i.i19.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i18.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit", !llvm.loop !13

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i17.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i ], [ %i.as, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i23.i ] ; 2 uses
  %i.av = sub i64 %i.a, %i.ak
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.aw, %i.m
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !1301

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit", %bb.b
  %.sroa.030.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i17.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.aw, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 1152921504606846975) %.060, i64 %.lcssa.i)
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.030.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_"(ptr %.sroa.030.0.lcssa.i, ptr %i.ax, ptr %i.ax, ptr %1, ptr noundef %.0.lcssa.i, i8 %3)
  %i.ay = shl nsw i64 %.060, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.ay
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit", label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit"
  %.idx46 = shl nsw i64 %.060, 4                  ; 2 uses
  %.idx47 = shl nsw i64 %.060, 5                  ; 2 uses
  %.not48 = icmp eq i64 %.idx46, %.idx47
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.cn, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ], [ %0, %.lr.ph.i23.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.ba, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ], [ %2, %.lr.ph.i23.preheader ] ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.030.i, i64 %.idx46 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.030.i, i64 %.idx47 ; 4 uses
  br i1 %.not48, label %._crit_edge.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i23, %bb.n
  %.034.i = phi ptr [ %.1.i, %bb.n ], [ %.030.i, %.lr.ph.i23 ] ; 5 uses
  %.01633.i = phi ptr [ %.117.i, %bb.n ], [ %i.az, %.lr.ph.i23 ] ; 5 uses
  %.sroa.030.032.i41 = phi ptr [ %i.bi, %bb.n ], [ %.sroa.022.031.i, %.lr.ph.i23 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01633.i, align 8, !tbaa !115
  %.0.val.i = load ptr, ptr %.034.i, align 8, !tbaa !115
  %i.bb = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_117AsmMatcherEmitter3runERN4llvm11raw_ostreamEENK3$_0clERKSt10unique_ptrINS_13MatchableInfoESt14default_deleteIS6_EESB_"(i8 %3, ptr %.016.val.i, ptr readonly %.0.val.i)
  br i1 %i.bb, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i40
  %i.bc = load ptr, ptr %.01633.i, align 8, !tbaa !115
  store ptr null, ptr %.01633.i, align 8, !tbaa !115
  %i.bd = load ptr, ptr %.sroa.030.032.i41, align 8, !tbaa !115 ; 2 uses
  store ptr %i.bc, ptr %.sroa.030.032.i41, align 8, !tbaa !115
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.bd)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43: ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.01633.i, i64 8
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i40
  %i.bf = load ptr, ptr %.034.i, align 8, !tbaa !115
  store ptr null, ptr %.034.i, align 8, !tbaa !115
  %i.bg = load ptr, ptr %.sroa.030.032.i41, align 8, !tbaa !115 ; 2 uses
  store ptr %i.bf, ptr %.sroa.030.032.i41, align 8, !tbaa !115
  %.not.i.i.i.i20.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i20.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.bg)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i: ; preds = %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43
  %.117.i = phi ptr [ %i.be, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43 ], [ %.01633.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %.1.i = phi ptr [ %.034.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i43 ], [ %i.bh, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit21.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.030.032.i41, i64 8 ; 2 uses
  %i.bj = icmp ne ptr %.1.i, %i.az
  %i.bk = icmp ne ptr %.117.i, %i.ba
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph.i40, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i23
  %.sroa.030.0.lcssa.i31 = phi ptr [ %.sroa.022.031.i, %.lr.ph.i23 ], [ %i.bi, %bb.n ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.az, %.lr.ph.i23 ], [ %.117.i, %bb.n ] ; 2 uses
  %.0.lcssa.i32 = phi ptr [ %.030.i, %.lr.ph.i23 ], [ %.1.i, %bb.n ] ; 2 uses
  %i.bm = ptrtoint ptr %i.az to i64
  %i.bn = ptrtoint ptr %.0.lcssa.i32 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.i34:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i35 = phi i64 [ %i.bv, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %i.bp, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i36 = phi ptr [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.sroa.030.0.lcssa.i31, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i37 = phi ptr [ %i.bt, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ], [ %.0.lcssa.i32, %._crit_edge.i ] ; 3 uses
  %i.br = load ptr, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i.i37, align 8, !tbaa !115
  %i.bs = load ptr, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !115 ; 2 uses
  store ptr %i.br, ptr %.0811.i.i.i.i.i.i36, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i38, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i34
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.bs)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i34
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i37, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i36, i64 8 ; 2 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i.i35, -1
  %i.bw = icmp sgt i64 %.012.i.i.i.i.i.i35, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, !llvm.loop !13

_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i33 = phi ptr [ %.sroa.030.0.lcssa.i31, %._crit_edge.i ], [ %i.bu, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i39 ]
  %i.bx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i33 to i64 ; 2 uses
  %i.by = ptrtoint ptr %.sroa.030.0.lcssa.i31 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i31, i64 %i.bz ; 3 uses
  %i.cb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.cc = ptrtoint ptr %.016.lcssa.i to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i23.i, label %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit"

.lr.ph.i.i.i.i.i23.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i24.i = phi i64 [ %i.ck, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i ], [ %i.ce, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i25.i = phi ptr [ %i.cj, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i ], [ %i.ca, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i26.i = phi ptr [ %i.ci, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.cg = load ptr, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i26.i, align 8, !tbaa !115
  %i.ch = load ptr, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.cg, ptr %.0811.i.i.i.i.i25.i, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i27.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i23.i
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.ch)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i23.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25.i, i64 8 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i24.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i24.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i23.i, label %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit", !llvm.loop !13

"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit": ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i
  %.08.lcssa.i.i.i.i.i22.i = phi ptr [ %i.ca, %_ZSt4moveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i ], [ %i.cj, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i28.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i22.i to i64
  %i.cm = sub i64 %4, %i.bx
  %i.cn = getelementptr inbounds i8, ptr %i.ca, i64 %i.cm ; 2 uses
  %i.co = sub i64 %i.l, %i.cb
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %.not.i24 = icmp slt i64 %i.cp, %i.ay
  br i1 %.not.i24, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit", label %.lr.ph.i23, !llvm.loop !1302

"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit"
  %.0.lcssa.i25 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit" ], [ %i.ba, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit" ], [ %i.cn, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ]
  %.lcssa.i26 = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit" ], [ %i.cp, %"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_.exit" ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 2305843009213693949) %i.m, i64 %.lcssa.i26)
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEET0_T_SM_SM_SM_SL_T1_"(ptr noundef %.0.lcssa.i25, ptr noundef %i.cq, ptr noundef %i.cq, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i, i8 %3)
  %i.cr = icmp slt i64 %i.ay, %i.d
  br i1 %i.cr, label %bb.b, label %._crit_edge, !llvm.loop !1303

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_SL_T0_SM_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i8 %6) unnamed_addr #5 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_SM_T1_T2_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.j, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !115
  %i.g = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.g)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.j = add nsw i64 %.012.i.i.i.i.i, -1
  %i.k = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i, %bb.i
  %.030.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.022.029.i = phi ptr [ %.sroa.022.1.i, %bb.i ], [ %1, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.020.028.i = phi ptr [ %i.s, %bb.i ], [ %0, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.022.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !115
  %.val3.i.i = load ptr, ptr %.sroa.022.029.i, align 8, !tbaa !115
  %i.l = tail call fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_117AsmMatcherEmitter3runERN4llvm11raw_ostreamEENK3$_0clERKSt10unique_ptrINS_13MatchableInfoESt14default_deleteIS6_EESB_"(i8 %6, ptr %.val3.i.i, ptr readonly %.0.val.i)
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %.sroa.022.029.i, align 8, !tbaa !115
  store ptr null, ptr %.sroa.022.029.i, align 8, !tbaa !115
  %i.n = load ptr, ptr %.sroa.020.028.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.m, ptr %.sroa.020.028.i, align 8, !tbaa !115
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.n)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.022.029.i, i64 8
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %.030.i, align 8, !tbaa !115
  store ptr null, ptr %.030.i, align 8, !tbaa !115
  %i.q = load ptr, ptr %.sroa.020.028.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.p, ptr %.sroa.020.028.i, align 8, !tbaa !115
  %.not.i.i.i.i18.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.q)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i: ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.sroa.022.1.i = phi ptr [ %i.o, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.sroa.022.029.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %i.r, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit19.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.020.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.i
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_SM_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !1304

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = ptrtoint ptr %.030.i to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_SM_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.w, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.sroa.020.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.y = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !115
  %i.z = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !115 ; 2 uses
  store ptr %i.y, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.z)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ac = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ad = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_SM_T1_T2_.exit", !llvm.loop !13

bb.k:                                             ; preds = %bb.a
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit30

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.k, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i25 = phi i64 [ %i.an, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29 ], [ %i.ah, %bb.k ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.am, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29 ], [ %5, %bb.k ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.al, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29 ], [ %1, %bb.k ] ; 3 uses
  %i.aj = load ptr, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !115
  store ptr null, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !115
  %i.ak = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !115 ; 2 uses
  store ptr %i.aj, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i24
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.ak)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29: ; preds = %bb.l, %.lr.ph.i.i.i.i.i24
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit30, !llvm.loop !13

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit30: ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29, %bb.k
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.k ], [ %i.am, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.ap = icmp eq ptr %0, %1
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit30
  %i.aq = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ar = ptrtoint ptr %5 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i35, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEESC_NS7_5__ops15_Iter_comp_iterIZNS1_17AsmMatcherEmitter3runERN4llvm11raw_ostreamEE3$_0EEEvT_SL_T0_SM_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i35:                             ; preds = %bb.m, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37
  %.010.i.i.i.i.i.i = phi i64 [ %i.az, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37 ], [ %i.at, %bb.m ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37 ], [ %2, %bb.m ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37 ], [ %.08.lcssa.i.i.i.i.i23, %bb.m ]
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !115
  store ptr null, ptr %i.av, align 8, !tbaa !115
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !115 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !115
  %.not.i.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i36, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i35
  tail call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %i.ay)
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i37: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i35
  %i.az = add nsw i64 %.010.i.i.i.i.i.i, -1
end_hunk_0
