Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UdtRecordCompleter?download=true
inline.NumInlined: 3469
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_:bb.a
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %.lr.ph.i29, label %.critedge.i, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i21
  %.sroa.021.0.lcssa.i = phi ptr [ %i.k, %.lr.ph.i21 ], [ %.sroa.021.1.i, %bb.e ] ; 2 uses
  %.sroa.025.0.lcssa.i = phi ptr [ %.sroa.023.032.i, %.lr.ph.i21 ], [ %.sroa.025.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.033.i, %.lr.ph.i21 ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = ptrtoint ptr %.sroa.025.0.lcssa.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.an, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i ], [ %i.ae, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i28, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.ag = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !109
  store i64 %i.ag, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !208
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !209
  store ptr null, ptr %i.ah, align 8, !tbaa !209
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !209 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.am, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ap = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.021.0.lcssa.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bb, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i ], [ %i.as, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.ba, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.az, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i ], [ %.sroa.021.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i ] ; 3 uses
  %i.au = load i64, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !109
  store i64 %i.au, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !208
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !209
  store ptr null, ptr %i.av, align 8, !tbaa !209
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !209 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 16 ; 2 uses
  %i.bb = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bc = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit, !llvm.loop !18

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i ], [ %i.ba, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bd = sub i64 %i.a, %i.ap
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %.not.i22 = icmp slt i64 %i.be, %i.j
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !842

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit, %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.be, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa.i)
  %i.bf = getelementptr inbounds [16 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.bg = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_(ptr %.sroa.023.0.lcssa.i, ptr %i.bf, ptr %i.bf, ptr %1, ptr noundef %.0.lcssa.i) ; 0 uses
  %i.bh = shl nsw i64 %.059, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.bh
  br i1 %.not29.i, label %_ZSt17__merge_sort_loopIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit
  %.idx45 = shl nsw i64 %.059, 5                  ; 2 uses
  %.idx46 = shl nsw i64 %.059, 6                  ; 2 uses
  %.not47 = icmp eq i64 %.idx45, %.idx46
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit
  %.sroa.022.031.i = phi ptr [ %i.dh, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ], [ %0, %.lr.ph.i23.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.bj, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ], [ %2, %.lr.ph.i23.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %.030.i, i64 %.idx45 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.030.i, i64 %.idx46 ; 4 uses
  br i1 %.not47, label %._crit_edge.i, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i23, %bb.h
  %.035.i = phi ptr [ %.1.i, %bb.h ], [ %.030.i, %.lr.ph.i23 ] ; 4 uses
  %.01634.i = phi ptr [ %.117.i, %bb.h ], [ %i.bi, %.lr.ph.i23 ] ; 4 uses
  %.sroa.0.033.i = phi ptr [ %i.bw, %bb.h ], [ %.sroa.022.031.i, %.lr.ph.i23 ] ; 4 uses
  %i.bk = load i64, ptr %.01634.i, align 8, !tbaa !109 ; 2 uses
  %i.bl = load i64, ptr %.035.i, align 8, !tbaa !109 ; 2 uses
  %i.bm = icmp ult i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 8 ; 4 uses
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i39
  store i64 %i.bk, ptr %.sroa.0.033.i, align 8, !tbaa !208
  %i.bo = getelementptr inbounds nuw i8, ptr %.01634.i, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209
  store ptr null, ptr %i.bo, align 8, !tbaa !209
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !209 ; 2 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !209
  %.not.i.i.i.i.i.i40 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i40, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i41

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i41: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i41, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.01634.i, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i39
  store i64 %i.bl, ptr %.sroa.0.033.i, align 8, !tbaa !208
  %i.bs = getelementptr inbounds nuw i8, ptr %.035.i, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !209
  store ptr null, ptr %i.bs, align 8, !tbaa !209
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !209 ; 2 uses
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !209
  %.not.i.i.i.i.i18.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i18.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19.i: ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19.i, %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %.035.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42
  %.117.i = phi ptr [ %i.br, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42 ], [ %.01634.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.035.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i42 ], [ %i.bv, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 16 ; 2 uses
  %i.bx = icmp ne ptr %.1.i, %i.bi
  %i.by = icmp ne ptr %.117.i, %i.bj
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.i39, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i23
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i23 ], [ %i.bw, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bi, %.lr.ph.i23 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i30 = phi ptr [ %.030.i, %.lr.ph.i23 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.ca = ptrtoint ptr %i.bi to i64
  %i.cb = ptrtoint ptr %.0.lcssa.i30 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4                 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i

.lr.ph.i.i.i.i.i.i32:                             ; preds = %._crit_edge.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.cm, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38 ], [ %i.cd, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.cl, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.ck, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38 ], [ %.0.lcssa.i30, %._crit_edge.i ] ; 3 uses
  %i.cf = load i64, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !109
  store i64 %i.cf, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !208
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !209
  store ptr null, ptr %i.cg, align 8, !tbaa !209
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !209 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i36, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i37

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i37, %.lr.ph.i.i.i.i.i.i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 16 ; 2 uses
  %i.cm = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i, !llvm.loop !18

_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i31 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.cl, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i.i38 ]
  %i.co = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i31 to i64 ; 3 uses
  %i.cp = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.cq ; 2 uses
  %i.cs = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.016.lcssa.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 4                 ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.de, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i ], [ %i.cv, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.dd, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i ], [ %i.cr, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.dc, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i ] ; 3 uses
  %i.cx = load i64, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !109
  store i64 %i.cx, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !208
  %i.cy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !209
  store ptr null, ptr %i.cy, align 8, !tbaa !209
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !209 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 16 ; 2 uses
  %i.de = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.df = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit.i, !llvm.loop !18

_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit.i: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28.i
  %3 = ptrtoint ptr %i.dd to i64
  br label %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit

_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit: ; preds = %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.co, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i ], [ %3, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit.i ]
  %i.dg = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.co
  %i.dh = getelementptr inbounds i8, ptr %i.cr, i64 %i.dg ; 2 uses
  %i.di = sub i64 %i.i, %i.cs
  %i.dj = ashr exact i64 %i.di, 4                 ; 2 uses
  %.not.i24 = icmp slt i64 %i.dj, %i.bh
  br i1 %.not.i24, label %_ZSt17__merge_sort_loopIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit, label %.lr.ph.i23, !llvm.loop !843

_ZSt17__merge_sort_loopIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit
  %.0.lcssa.i25 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit ], [ %i.bj, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit ], [ %i.dh, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ]
  %.lcssa.i26 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit ], [ %i.dj, %_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_.exit ]
  %.sroa.speculated.i27 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i26)
  %i.dk = getelementptr inbounds [16 x i8], ptr %.0.lcssa.i25, i64 %.sroa.speculated.i27 ; 2 uses
  %i.dl = tail call ptr @_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_(ptr noundef %.0.lcssa.i25, ptr noundef %i.dk, ptr noundef %i.dk, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i) ; 0 uses
  %i.dm = icmp slt i64 %i.bh, %i.d
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !844

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.m, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.f = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !109
  store i64 %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !209
  store ptr null, ptr %i.g, align 8, !tbaa !209
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !209  ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = add nsw i64 %.012.i.i.i.i.i, -1
  %i.n = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, %bb.b
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.b ], [ %i.l, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ]
  tail call void @_ZSt21__move_merge_adaptiveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_SL_T1_T2_(ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i, ptr %1, ptr %2, ptr %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit31

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.c, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30
  %.012.i.i.i.i.i25 = phi i64 [ %i.aa, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30 ], [ %i.r, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.z, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30 ], [ %5, %bb.c ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.y, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30 ], [ %1, %bb.c ] ; 3 uses
  %i.t = load i64, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !109
  store i64 %i.t, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !209
  store ptr null, ptr %i.u, align 8, !tbaa !209
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !209  ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i28, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i29

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i24
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 16 ; 2 uses
  %i.aa = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.ab = icmp sgt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit31, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit31: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30, %bb.c
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.c ], [ %i.z, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i30 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_SE_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i23, ptr %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit31, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.09.018 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.09.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit
  %.sroa.09.021 = phi ptr [ %.sroa.09.018, %.lr.ph ], [ %.sroa.09.0, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.09.021, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit ] ; 4 uses
  %i.d = load i64, ptr %.sroa.09.021, align 8, !tbaa !109 ; 5 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !109
  %i.f = icmp ult i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %.pn20, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !209
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !209
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %.sroa.09.021 to i64
  %i.k = sub i64 %i.j, %i.b
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20, i64 32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.v, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.09.021, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !109
  store i64 %i.q, ptr %i.p, align 8, !tbaa !208
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !209
  store ptr null, ptr %i.r, align 8, !tbaa !209
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !209  ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = add nsw i64 %.010.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, !llvm.loop !20

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, %bb.c
  store i64 %i.d, ptr %0, align 8, !tbaa !208
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !209  ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !209
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load i64, ptr %.pn20, align 8, !tbaa !109 ; 2 uses
  %i.z = icmp ult i64 %i.d, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !209
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEED2Ev.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i
  %i.aa = phi i64 [ %i.af, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i ], [ %i.y, %bb.d ]
  %.sroa.0.014.i = phi ptr [ %.sroa.0.0.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i ], [ %.pn20, %bb.d ] ; 4 uses
  %.sroa.09.013.i = phi ptr [ %.sroa.0.014.i, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i ], [ %.sroa.09.021, %bb.d ] ; 3 uses
  store i64 %i.aa, ptr %.sroa.09.013.i, align 8, !tbaa !208
  %i.ab = getelementptr inbounds i8, ptr %.sroa.09.013.i, i64 -8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_:bb.a
  store ptr %i.l, ptr %i.f, align 8, !tbaa !209
  %.not.i.i.i.i.i9 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i9, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i10

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i10: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11: ; preds = %bb.c, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i10
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit
  %.sroa.021.1 = phi ptr [ %i.j, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %.sroa.021.030, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11 ] ; 3 uses
  %.sroa.025.1 = phi ptr [ %.sroa.025.031, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %i.n, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit11 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.032, i64 16 ; 2 uses
  %i.p = icmp ne ptr %.sroa.025.1, %1
  %i.q = icmp ne ptr %.sroa.021.1, %3
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.021.1, %bb.d ] ; 2 uses
  %.sroa.025.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.025.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = ptrtoint ptr %1 to i64
  %i.s = ptrtoint ptr %.sroa.025.0.lcssa to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ad, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.u, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.025.0.lcssa, %.critedge ] ; 3 uses
  %i.w = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !109
  store i64 %i.w, ptr %.0811.i.i.i.i.i, align 8, !tbaa !208
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !209
  store ptr null, ptr %i.x, align 8, !tbaa !209
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !209 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ac, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ] ; 2 uses
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %.sroa.021.0.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit20

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19
  %.012.i.i.i.i.i14 = phi i64 [ %i.ar, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19 ], [ %i.ai, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.aq, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit ] ; 3 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.ap, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19 ], [ %.sroa.021.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit ] ; 3 uses
  %i.ak = load i64, ptr %.0910.i.i.i.i.i16, align 8, !tbaa !109
  store i64 %i.ak, ptr %.0811.i.i.i.i.i15, align 8, !tbaa !208
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !209
  store ptr null, ptr %i.al, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !209 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i13
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 16 ; 2 uses
  %i.ar = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.as = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit20, !llvm.loop !18

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit20: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i12 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit ], [ %i.aq, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i19 ]
  ret ptr %.08.lcssa.i.i.i.i.i12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEET0_T_SL_SL_SL_SK_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.035 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 4 uses
  %.01634 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.033 = phi ptr [ %i.p, %bb.d ], [ %4, %bb.a ] ; 4 uses
  %i.d = load i64, ptr %.01634, align 8, !tbaa !109 ; 2 uses
  %i.e = load i64, ptr %.035, align 8, !tbaa !109 ; 2 uses
  %i.f = icmp ult i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 8 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i64 %i.d, ptr %.sroa.0.033, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %.01634, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  store ptr null, ptr %i.h, align 8, !tbaa !209
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !209  ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !209
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01634, i64 16
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store i64 %i.e, ptr %.sroa.0.033, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !209
  store ptr null, ptr %i.l, align 8, !tbaa !209
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !209  ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !209
  %.not.i.i.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i18, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20: ; preds = %bb.c, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i19
  %i.o = getelementptr inbounds nuw i8, ptr %.035, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit
  %.117 = phi ptr [ %i.k, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %.01634, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.035, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %i.o, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit20 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 16 ; 2 uses
  %i.q = icmp ne ptr %.1, %1
  %i.r = icmp ne ptr %.117, %3
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.p, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.t = ptrtoint ptr %1 to i64
  %i.u = ptrtoint ptr %.0.lcssa to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.af, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.w, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.y = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !109
  store i64 %i.y, ptr %.0811.i.i.i.i.i, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !209
  store ptr null, ptr %i.z, align 8, !tbaa !209
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !209 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !18

_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ae, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %3 to i64
  %i.am = ptrtoint ptr %.016.lcssa to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 4                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28
  %.012.i.i.i.i.i23 = phi i64 [ %i.ax, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28 ], [ %i.ao, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.aw, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28 ], [ %i.ak, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 3 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ] ; 3 uses
  %i.aq = load i64, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !109
  store i64 %i.aq, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !208
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !209
  store ptr null, ptr %i.ar, align 8, !tbaa !209
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !209 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i22
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 16 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit, !llvm.loop !18

_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit: ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i28
  %5 = ptrtoint ptr %i.aw to i64
  br label %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29

_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29: ; preds = %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit
  %.08.lcssa.i.i.i.i.i21 = phi i64 [ %i.ah, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit ], [ %5, %_ZSt4moveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit29.loopexit ]
  %i.az = sub i64 %.08.lcssa.i.i.i.i.i21, %i.ah
  %i.ba = getelementptr inbounds i8, ptr %i.ak, i64 %i.az
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__move_merge_adaptiveIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEESE_NS9_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_SL_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not26 = icmp eq ptr %0, %1
  br i1 %.not26, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.029 = phi ptr [ %.1, %bb.e ], [ %0, %bb.a ]   ; 6 uses
  %.sroa.0.028 = phi ptr [ %i.m, %bb.e ], [ %4, %bb.a ] ; 5 uses
  %.sroa.019.027 = phi ptr [ %.sroa.019.1, %bb.e ], [ %2, %bb.a ] ; 5 uses
  %.not22 = icmp eq ptr %.sroa.019.027, %3
  br i1 %.not22, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = load i64, ptr %.sroa.019.027, align 8, !tbaa !109 ; 2 uses
  %i.b = load i64, ptr %.029, align 8, !tbaa !109 ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 8 ; 4 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.a, ptr %.sroa.0.028, align 8, !tbaa !208
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  store ptr null, ptr %i.e, align 8, !tbaa !209
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !209
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 %i.b, ptr %.sroa.0.028, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209
  store ptr null, ptr %i.i, align 8, !tbaa !209
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !209  ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !209
  %.not.i.i.i.i.i13 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i13, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i14

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i14: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15: ; preds = %bb.d, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i14
  %i.l = getelementptr inbounds nuw i8, ptr %.029, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit
  %.sroa.019.1 = phi ptr [ %i.h, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %.sroa.019.027, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15 ]
  %.1 = phi ptr [ %.029, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ], [ %i.l, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit15 ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 16
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %.lr.ph, !llvm.loop !847

.critedge:                                        ; preds = %.lr.ph
  %i.n = ptrtoint ptr %1 to i64
  %i.o = ptrtoint ptr %.029 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %.critedge12

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.z, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.q, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.028, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %.029, %.critedge ] ; 3 uses
  %i.s = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !109
  store i64 %i.s, ptr %.0811.i.i.i.i.i, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !209
  store ptr null, ptr %i.t, align 8, !tbaa !209
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !209  ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.z = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.critedge12, !llvm.loop !18

.critedge12:                                      ; preds = %bb.e, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EEESt6vectorIS9_SaIS9_EEEESA_SE_NS0_5__ops15_Iter_comp_iterIN4llvm10less_firstEEEEvT_SK_T0_SL_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %4, %bb.b ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i ], [ %3, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !109
  store i64 %i.i, ptr %i.h, align 8, !tbaa !208
  %i.j = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !209
  store ptr null, ptr %i.j, align 8, !tbaa !209
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !209  ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !209
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.n = add nsw i64 %.010.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, !llvm.loop !20

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %2, %3
  br i1 %i.p, label %_ZSt13move_backwardIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %3, i64 -16
  br label %.outer

.outer:                                           ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit, %bb.d
  %.sroa.033.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.033.0.ph, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.u, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ]
  %.0.ph = phi ptr [ %i.q, %bb.d ], [ %.0, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit ]
  %.sroa.033.0.ph = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -16 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.u, %bb.i ], [ %.sroa.0.0.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.at, %bb.i ], [ %.0.ph, %.outer ] ; 6 uses
  %i.r = load i64, ptr %.0, align 8, !tbaa !109   ; 2 uses
  %i.s = load i64, ptr %.sroa.033.0.ph, align 8, !tbaa !109 ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -16 ; 5 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 4 uses
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i64 %i.s, ptr %i.u, align 8, !tbaa !208
  %i.w = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !209
  store ptr null, ptr %i.w, align 8, !tbaa !209
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !209  ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !209
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit, label %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 24) #21
  br label %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit

_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN5clang16CXXBaseSpecifierEEclEPS1_.exit.i.i.i.i.i
  %i.z = icmp eq ptr %0, %.sroa.033.0.ph
  br i1 %i.z, label %bb.g, label %.outer, !llvm.loop !848

bb.g:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS3_EEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i25
  %.010.i.i.i.i.i20 = phi i64 [ %i.an, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i25 ], [ %i.ae, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.ah, %_ZNSt4pairImSt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS2_EEEaSEOS6_.exit.i.i.i.i.i25 ], [ %i.u, %bb.g ] ; 2 uses
end_hunk_1
