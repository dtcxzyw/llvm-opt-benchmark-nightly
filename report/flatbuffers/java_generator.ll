Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/java_generator?download=true
inline.NumInlined: 1849
inline.NumDeleted: 455
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_:bb.a
  %.sroa.026.1.i = phi ptr [ %.sroa.026.032.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.y, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.aa = icmp ne ptr %.sroa.026.1.i, %i.k
  %i.ab = icmp ne ptr %.sroa.022.1.i, %i.l
  %or.cond.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %.lr.ph.i28, label %.critedge.i, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i19
  %.sroa.022.0.lcssa.i26 = phi ptr [ %i.k, %.lr.ph.i19 ], [ %.sroa.022.1.i, %bb.e ] ; 2 uses
  %.sroa.026.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i19 ], [ %.sroa.026.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i27 = phi ptr [ %.032.i, %.lr.ph.i19 ], [ %i.z, %bb.e ] ; 2 uses
  %i.ac = ptrtoint ptr %i.k to i64
  %i.ad = ptrtoint ptr %.sroa.026.0.lcssa.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ao, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.af, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.an, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i27, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.ah = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !56
  %i.ai = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ah, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #19, !inline_history !261
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ap = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i27, %.critedge.i ], [ %i.an, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.aq = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.022.0.lcssa.i26 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bc, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.at, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bb, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.ba, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.022.0.lcssa.i26, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.av = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !56
  %i.aw = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.av, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #19, !inline_history !261
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, !llvm.loop !6

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.bb, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.be = sub i64 %i.a, %i.aq
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %.not.i20 = icmp slt i64 %i.bf, %i.j
  br i1 %.not.i20, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !262

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bf, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa.i)
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.bh = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.bg, ptr %i.bg, ptr %1, ptr noundef %.0.lcssa.i, ptr %3) ; 0 uses
  %i.bi = shl nsw i64 %.059, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.bi
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit
  %.idx45 = shl nsw i64 %.059, 4                  ; 2 uses
  %.idx46 = shl nsw i64 %.059, 5                  ; 2 uses
  %.not47 = icmp eq i64 %.idx45, %.idx46
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.dj, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ], [ %0, %.lr.ph.i21.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.bk, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ], [ %2, %.lr.ph.i21.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.029.i, i64 %.idx45 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %.029.i, i64 %.idx46 ; 4 uses
  br i1 %.not47, label %._crit_edge.i, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i21, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i21 ] ; 5 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.bj, %.lr.ph.i21 ] ; 5 uses
  %.sroa.030.034.i = phi ptr [ %i.by, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i21 ] ; 5 uses
  %i.bl = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %.01635.i, ptr noundef nonnull align 8 dereferenceable(8) %.036.i), !inline_history !263
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i39
  %i.bm = load ptr, ptr %.01635.i, align 8, !tbaa !56
  store ptr null, ptr %.01635.i, align 8, !tbaa !56
  %i.bn = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.bm, ptr %.sroa.030.034.i, align 8, !tbaa !56
  %.not.i.i.i.i.i40 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i40, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i41

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i41: ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) #19, !inline_history !264
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i41, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i39
  %i.bs = load ptr, ptr %.036.i, align 8, !tbaa !56
  store ptr null, ptr %.036.i, align 8, !tbaa !56
  %i.bt = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.bs, ptr %.sroa.030.034.i, align 8, !tbaa !56
  %.not.i.i.i.i18.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #19, !inline_history !264
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42
  %.117.i = phi ptr [ %i.br, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42 ], [ %.01635.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i42 ], [ %i.bx, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8 ; 2 uses
  %i.bz = icmp ne ptr %.1.i, %i.bj
  %i.ca = icmp ne ptr %.117.i, %i.bk
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph.i39, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i21
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i21 ], [ %i.by, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bj, %.lr.ph.i21 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i30 = phi ptr [ %.029.i, %.lr.ph.i21 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cc = ptrtoint ptr %i.bj to i64
  %i.cd = ptrtoint ptr %.0.lcssa.i30 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3                 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i32:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.co, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %i.cf, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.cn, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %.sroa.030.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.cm, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ], [ %.0.lcssa.i30, %._crit_edge.i ] ; 3 uses
  %i.ch = load ptr, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i.i35, align 8, !tbaa !56
  %i.ci = load ptr, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ch, ptr %.0811.i.i.i.i.i.i34, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i36, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci) #19, !inline_history !265
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i37, %.lr.ph.i.i.i.i.i.i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.co = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.cp = icmp sgt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !6

_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i31 = phi ptr [ %.sroa.030.0.lcssa.i, %._crit_edge.i ], [ %i.cn, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i38 ]
  %i.cq = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i31 to i64 ; 2 uses
  %i.cr = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i, i64 %i.cs ; 3 uses
  %i.cu = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.cv = ptrtoint ptr %.016.lcssa.i to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.dg, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.cx, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.df, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.ct, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.de, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.cz = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !56
  %i.da = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.cz, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da) #19, !inline_history !265
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.dg = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.dh = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, !llvm.loop !6

_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i21.i = phi ptr [ %i.ct, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %i.df, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21.i to i64
  %i.di = sub i64 %4, %i.cq
  %i.dj = getelementptr inbounds i8, ptr %i.ct, i64 %i.di ; 2 uses
  %i.dk = sub i64 %i.i, %i.cu
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  %.not.i22 = icmp slt i64 %i.dl, %i.bi
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !266

_ZSt17__merge_sort_loopIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit
  %.0.lcssa.i23 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.bk, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.dj, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.lcssa.i24 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_.exit ], [ %i.dl, %_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_.exit ]
  %.sroa.speculated.i25 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i24)
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i23, i64 %.sroa.speculated.i25 ; 2 uses
  %i.dn = tail call ptr @_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_(ptr noundef %.0.lcssa.i23, ptr noundef %i.dm, ptr noundef %i.dm, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr %3) ; 0 uses
  %i.do = icmp slt i64 %i.bi, %i.d
  br i1 %i.do, label %bb.b, label %._crit_edge, !llvm.loop !267

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_SM_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
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
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #19, !inline_history !8
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !6

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.020.029.i = phi ptr [ %.sroa.020.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.016.028.i = phi ptr [ %i.ac, %bb.f ], [ %0, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.020.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.020.029.i, ptr noundef nonnull align 8 dereferenceable(8) %.030.i), !inline_history !268
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.sroa.020.029.i, align 8, !tbaa !56
  store ptr null, ptr %.sroa.020.029.i, align 8, !tbaa !56
  %i.r = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.q, ptr %.sroa.016.028.i, align 8, !tbaa !56
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #19, !inline_history !269
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %.030.i, align 8, !tbaa !56
  store ptr null, ptr %.030.i, align 8, !tbaa !56
  %i.x = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.w, ptr %.sroa.016.028.i, align 8, !tbaa !56
  %.not.i.i.i.i13.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #19, !inline_history !269
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.020.1.i = phi ptr [ %i.v, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.020.029.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.ab, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !270

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ad = ptrtoint ptr %i.m to i64
  %i.ae = ptrtoint ptr %.030.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ap, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ag, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.016.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.an, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.ai = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !56
  %i.aj = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ai, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #19, !inline_history !271
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ap = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit, !llvm.loop !6

bb.g:                                             ; preds = %bb.a
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = ptrtoint ptr %1 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.bd, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.au, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bc, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.bb, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.aw = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !56
  %i.ax = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !56 ; 3 uses
  store ptr %i.aw, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #19, !inline_history !8
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.bd = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bc, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_SM_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i22, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEEvT_SL_T0_SM_T1_T2_.exit: ; preds = %bb.f, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %bb.b, %.critedge.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.12", align 8 ; 9 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit24, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.014.026 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_:bb.a
  %i.k = load ptr, ptr %.033, align 8, !tbaa !56  ; 3 uses
  store ptr %i.j, ptr %.033, align 8, !tbaa !56
  %.not.i.i.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i9, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i10

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i10: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11: ; preds = %bb.c, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i10
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.032, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit
  %.sroa.022.1 = phi ptr [ %i.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ], [ %.sroa.022.031, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11 ] ; 3 uses
  %.sroa.026.1 = phi ptr [ %.sroa.026.032, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.o, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit11 ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.033, i64 8 ; 2 uses
  %i.q = icmp ne ptr %.sroa.026.1, %1
  %i.r = icmp ne ptr %.sroa.022.1, %3
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.022.1, %bb.d ] ; 2 uses
  %.sroa.026.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.026.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.p, %bb.d ] ; 2 uses
  %i.s = ptrtoint ptr %1 to i64
  %i.t = ptrtoint ptr %.sroa.026.0.lcssa to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ae, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.v, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.sroa.026.0.lcssa, %.critedge ] ; 3 uses
  %i.x = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  %i.y = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.x, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #19, !inline_history !8
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = add nsw i64 %.012.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ad, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %3 to i64
  %i.ah = ptrtoint ptr %.sroa.022.0.lcssa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19
  %.012.i.i.i.i.i14 = phi i64 [ %i.as, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %i.aj, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.ar, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 3 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.aq, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ], [ %.sroa.022.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 3 uses
  %i.al = load ptr, ptr %.0910.i.i.i.i.i16, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i16, align 8, !tbaa !56
  %i.am = load ptr, ptr %.0811.i.i.i.i.i15, align 8, !tbaa !56 ; 3 uses
  store ptr %i.al, ptr %.0811.i.i.i.i.i15, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i13
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #19, !inline_history !8
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i13
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 8 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.at = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit20: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i12 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ], [ %i.ar, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19 ]
  ret ptr %.08.lcssa.i.i.i.i.i12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIPFbRKS6_SH_EEEET0_T_SM_SM_SM_SL_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.036 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.01635 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %.sroa.030.034 = phi ptr [ %i.q, %bb.d ], [ %4, %bb.a ] ; 5 uses
  %i.d = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %.01635, ptr noundef nonnull align 8 dereferenceable(8) %.036), !inline_history !277
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr %.01635, align 8, !tbaa !56
  store ptr null, ptr %.01635, align 8, !tbaa !56
  %i.f = load ptr, ptr %.sroa.030.034, align 8, !tbaa !56 ; 3 uses
  store ptr %i.e, ptr %.sroa.030.034, align 8, !tbaa !56
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01635, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.036, align 8, !tbaa !56
  store ptr null, ptr %.036, align 8, !tbaa !56
  %i.l = load ptr, ptr %.sroa.030.034, align 8, !tbaa !56 ; 3 uses
  store ptr %i.k, ptr %.sroa.030.034, align 8, !tbaa !56
  %.not.i.i.i.i18 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i18, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19: ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20: ; preds = %bb.c, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i19
  %i.p = getelementptr inbounds nuw i8, ptr %.036, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit
  %.117 = phi ptr [ %i.j, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ], [ %.01635, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.036, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.p, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit20 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.030.034, i64 8 ; 2 uses
  %i.r = icmp ne ptr %.1, %1
  %i.s = icmp ne ptr %.117, %3
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.030.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.q, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.u = ptrtoint ptr %1 to i64
  %i.v = ptrtoint ptr %.0.lcssa to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ag, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.x, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.sroa.030.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.z = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !56
  %i.aa = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  store ptr %i.z, ptr %.0811.i.i.i.i.i, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !6

_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.030.0.lcssa, %._crit_edge ], [ %i.af, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ]
  %i.ai = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.030.0.lcssa to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa, i64 %i.ak ; 3 uses
  %i.am = ptrtoint ptr %3 to i64
  %i.an = ptrtoint ptr %.016.lcssa to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28
  %.012.i.i.i.i.i23 = phi i64 [ %i.ay, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %i.ap, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.ax, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %i.al, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 3 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.aw, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ] ; 3 uses
  %i.ar = load ptr, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i25, align 8, !tbaa !56
  %i.as = load ptr, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ar, ptr %.0811.i.i.i.i.i24, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i22
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i22
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 8 ; 2 uses
  %i.ay = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.az = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29, !llvm.loop !6

_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
  %.08.lcssa.i.i.i.i.i21 = phi ptr [ %i.al, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit ], [ %i.ax, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28 ]
  %6 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21 to i64
  %i.ba = sub i64 %6, %i.ai
  %i.bb = getelementptr inbounds i8, ptr %i.al, i64 %i.ba
  ret ptr %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_SM_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %4, %bb.b ]
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %3, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr null, ptr %i.g, align 8, !tbaa !56
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !14
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.n = add nsw i64 %.010.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !11

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %2, %3
  br i1 %i.p, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %3, i64 -8
  br label %.outer

.outer:                                           ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit, %bb.d
  %.sroa.030.0.ph = phi ptr [ %4, %bb.d ], [ %i.s, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ]
  %.sroa.034.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.034.0.ph, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ]
  %.0.ph = phi ptr [ %i.q, %bb.d ], [ %.0, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit ]
  %.sroa.034.0.ph = getelementptr inbounds i8, ptr %.sroa.034.0.ph.pn, i64 -8 ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.030.0 = phi ptr [ %i.s, %bb.i ], [ %.sroa.030.0.ph, %.outer ]
  %.0 = phi ptr [ %i.au, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.r = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %.0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.034.0.ph), !inline_history !278
  %i.s = getelementptr inbounds i8, ptr %.sroa.030.0, i64 -8 ; 7 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %.sroa.034.0.ph, align 8, !tbaa !56
  store ptr null, ptr %.sroa.034.0.ph, align 8, !tbaa !56
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i: ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i
  %i.y = icmp eq ptr %0, %.sroa.034.0.ph
  br i1 %i.y, label %bb.g, label %.outer, !llvm.loop !279

bb.g:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25
  %.010.i.i.i.i.i20 = phi i64 [ %i.am, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.ad, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.ag, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.s, %bb.g ]
  %.078.i.i.i.i.i22 = phi ptr [ %i.af, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.z, %bb.g ]
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -8 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !56
  store ptr null, ptr %i.af, align 8, !tbaa !56
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i19
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #19, !inline_history !14
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i19
  %i.am = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.an = icmp sgt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !11

bb.h:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !56
  store ptr null, ptr %.0, align 8, !tbaa !56
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !56  ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i27 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28: ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29: ; preds = %bb.h, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28
  %i.at = icmp eq ptr %2, %.0
  br i1 %i.at, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29
  %i.au = getelementptr inbounds i8, ptr %.0, i64 -8
  br label %bb.e, !llvm.loop !279

_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_SM_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond86 = or i1 %i.a, %i.b
  br i1 %or.cond86, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit
  %.tr8192 = phi i64 [ %4, %.lr.ph ], [ %i.ex, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 4 uses
  %.tr8091 = phi i64 [ %3, %.lr.ph ], [ %i.ew, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 4 uses
  %.tr7889 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 19 uses
  %.tr87 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 8 uses
  %i.d = add nsw i64 %.tr8192, %.tr8091
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %.tr7889, ptr noundef nonnull align 8 dereferenceable(8) %.tr87), !inline_history !9
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %.tr87, align 8, !tbaa !56
  %i.h = load ptr, ptr %.tr7889, align 8, !tbaa !56
  store ptr %i.h, ptr %.tr87, align 8, !tbaa !56
  store ptr %i.g, ptr %.tr7889, align 8, !tbaa !56
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr8091, %.tr8192
  %i.j = ptrtoint ptr %.tr7889 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr8091, 2                     ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.tr87, i64 %i.k ; 2 uses
  %i.m = sub i64 %i.c, %i.j
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7889, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.p = lshr i64 %.017.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.p ; 2 uses
  %i.r = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.017.i, %i.t
  %.sroa.012.1.i = select i1 %i.r, ptr %i.s, ptr %.sroa.012.016.i ; 3 uses
end_hunk_1
