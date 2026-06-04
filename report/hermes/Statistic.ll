inline.NumInlined: 661
inline.NumDeleted: 335
begin_hunk_0_@"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_":bb.a

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i": ; preds = %bb.i, %bb.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.2.in.i.i.i = phi i32 [ %i.aq, %bb.i ], [ %i.am, %bb.h ], [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ]
  %.2.i.i.i = icmp slt i32 %.2.in.i.i.i, 0        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.as = xor i64 %i.ae, -1
  %i.at = add nsw i64 %.07.i, %i.as
  %.sroa.02.1.i = select i1 %.2.i.i.i, ptr %i.ar, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %.2.i.i.i, i64 %i.at, i64 %i.ae ; 2 uses
  %i.au = icmp sgt i64 %.1.i, 0
  br i1 %i.au, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !104

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i"
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.v, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr8189, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.av = sub i64 %.pre-phi, %i.v
  %i.aw = ashr exact i64 %i.av, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.g
  %i.ax = sdiv i64 %.tr8492, 2                    ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.tr8189, i64 %i.ax ; 2 uses
  %i.az = ptrtoint ptr %.tr88 to i64              ; 3 uses
  %i.ba = sub i64 %i.v, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.val50 = load ptr, ptr %i.ay, align 8          ; 3 uses
  %i.bd = load ptr, ptr %.val50, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56
  %.07.i58 = phi i64 [ %i.bb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.1.i66, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i" ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.tr88, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.sroa.02.1.i65, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i" ] ; 2 uses
  %i.bg = lshr i64 %.07.i58, 1                    ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.06.i59, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(1) %i.bj) #24 ; 2 uses
  %.not.not.i.i.i62 = icmp eq i32 %i.bk, 0
  br i1 %.not.not.i.i.i62, label %bb.j, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

bb.j:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78
  %i.bo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(1) %i.bn) #24 ; 2 uses
  %.not16.not.i.i.i67 = icmp eq i32 %i.bo, 0
  br i1 %.not16.not.i.i.i67, label %bb.k, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60
  %i.bs = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.br) #24
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i": ; preds = %bb.k, %bb.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.2.in.i.i.i63 = phi i32 [ %i.bs, %bb.k ], [ %i.bo, %bb.j ], [ %i.bk, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ]
  %.2.i.i.i64 = icmp slt i32 %.2.in.i.i.i63, 0    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bu = xor i64 %i.bg, -1
  %i.bv = add nsw i64 %.07.i58, %i.bu
  %.sroa.02.1.i65 = select i1 %.2.i.i.i64, ptr %.sroa.02.06.i59, ptr %i.bt ; 3 uses
  %.1.i66 = select i1 %.2.i.i.i64, i64 %i.bg, i64 %i.bv ; 2 uses
  %i.bw = icmp sgt i64 %.1.i66, 0
  br i1 %i.bw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !105

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"
  %.pre95 = ptrtoint ptr %.sroa.02.1.i65 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi96 = phi i64 [ %.pre95, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.az, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i65, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr88, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.bx = sub i64 %.pre-phi96, %i.az
  %i.by = ashr exact i64 %i.bx, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"
  %.sroa.070.0 = phi ptr [ %i.x, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i55, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.ay, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.aw, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.ax, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.w, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.by, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %i.bz = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8189, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_"(ptr %.tr88, ptr %.sroa.070.0, ptr %i.bz, i64 noundef %.0, i64 noundef %.047)
  %i.ca = sub nsw i64 %.tr8391, %.0               ; 2 uses
  %i.cb = sub nsw i64 %.tr8492, %.047             ; 2 uses
  %i.cc = icmp eq i64 %i.ca, 0
  %i.cd = icmp eq i64 %i.cb, 0
  %or.cond = or i1 %i.cc, %i.cd
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit", %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check172, label %.lr.ph.i.preheader189, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep167 = getelementptr i8, ptr %1, i64 %i.s
  %bound0168 = icmp ult ptr %0, %scevgep167
  %bound1169 = icmp ult ptr %1, %scevgep166
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i.preheader189, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec175, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next184, %vector.body176 ] ; 2 uses
  %i.w = shl i64 %index177, 3                     ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep179 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !30, !alias.scope !106, !noalias !109
  %wide.load181 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !30, !alias.scope !106, !noalias !109
  %i.y = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load182 = load <2 x ptr>, ptr %next.gep178, align 8, !tbaa !30, !alias.scope !109
  %wide.load183 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !30, !alias.scope !109
  store <2 x ptr> %wide.load182, ptr %next.gep179, align 8, !tbaa !30, !alias.scope !106, !noalias !109
  store <2 x ptr> %wide.load183, ptr %i.x, align 8, !tbaa !30, !alias.scope !106, !noalias !109
  store <2 x ptr> %wide.load180, ptr %next.gep178, align 8, !tbaa !30, !alias.scope !109
  store <2 x ptr> %wide.load181, ptr %i.y, align 8, !tbaa !30, !alias.scope !109
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.z, label %middle.block185, label %vector.body176, !llvm.loop !111

middle.block185:                                  ; preds = %vector.body176
  %cmp.n186 = icmp eq i64 %i.o, %n.vec175
  br i1 %cmp.n186, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.preheader189

.lr.ph.i.preheader189:                            ; preds = %vector.memcheck165, %.lr.ph.i.preheader, %middle.block185
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck165 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block185 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck165 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block185 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader189, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader189 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader189 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !30
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !30
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !30
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !114

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 19 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 14 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 10 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !30
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader190, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader190, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !30, !alias.scope !115, !noalias !118
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !30, !alias.scope !115, !noalias !118
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !30, !alias.scope !118
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !30, !alias.scope !118
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !tbaa !30, !alias.scope !115, !noalias !118
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !30, !alias.scope !115, !noalias !118
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !tbaa !30, !alias.scope !118
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !30, !alias.scope !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader190

.lr.ph99.preheader190:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.038.095.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter198 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader190, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader190 ]
  %.sroa.041.196.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.196.ph, %.lr.ph99.preheader190 ] ; 3 uses
  %.sroa.038.095.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.095.ph, %.lr.ph99.preheader190 ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader190 ]
  %i.ba = load ptr, ptr %.sroa.041.196.prol, align 8, !tbaa !30
  %i.bb = load ptr, ptr %.sroa.038.095.prol, align 8, !tbaa !30
  store ptr %i.bb, ptr %.sroa.041.196.prol, align 8, !tbaa !30
  store ptr %i.ba, ptr %.sroa.038.095.prol, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !121

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader190
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader190 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader190 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.041.196.unr = phi ptr [ %.sroa.041.196.ph, %.lr.ph99.preheader190 ], [ %i.bc, %.lr.ph99.prol ]
  %.sroa.038.095.unr = phi ptr [ %.sroa.038.095.ph, %.lr.ph99.preheader190 ], [ %i.bd, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.041.196 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.196.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.038.095 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.095.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.196, align 8, !tbaa !30
  %i.bk = load ptr, ptr %.sroa.038.095, align 8, !tbaa !30
  store ptr %i.bk, ptr %.sroa.041.196, align 8, !tbaa !30
  store ptr %i.bj, ptr %.sroa.038.095, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !30
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !30
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !30
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !30
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !30
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !30
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !30
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !123

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr inbounds [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 5 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !76

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !30
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !30
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !30
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cm ; 3 uses
  %i.co = icmp sgt i64 %.084, 0
  br i1 %i.co, label %vector.memcheck134, label %._crit_edge

vector.memcheck134:                               ; preds = %bb.n
  %xtraiter = and i64 %.084, 3                    ; 3 uses
  %bound1137 = icmp ult i64 %.084, 4
  br i1 %bound1137, label %.lr.ph.preheader191, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec143 = and i64 %.084, 9223372036854775804
  br label %.lr.ph

middle.block160:                                  ; preds = %.lr.ph
  %cmp.n161 = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n161, label %._crit_edge, label %.lr.ph.preheader191

.lr.ph.preheader191:                              ; preds = %middle.block160, %vector.memcheck134
  %.sroa.0.093.epil.init = phi ptr [ %i.cc, %vector.memcheck134 ], [ %i.dh, %middle.block160 ]
  %.sroa.041.292.epil.init = phi ptr [ %i.cn, %vector.memcheck134 ], [ %i.dg, %middle.block160 ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader191
  %.sroa.0.093.prol = phi ptr [ %i.cq, %.lr.ph.prol ], [ %.sroa.0.093.epil.init, %.lr.ph.preheader191 ]
  %.sroa.041.292.prol = phi ptr [ %i.cp, %.lr.ph.prol ], [ %.sroa.041.292.epil.init, %.lr.ph.preheader191 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader191 ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 3 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !30
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !30
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !30
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !124

._crit_edge:                                      ; preds = %middle.block160, %.lr.ph.prol, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %.lr.ph.prol ], [ %.sroa.041.0, %middle.block160 ]
  %i.ct = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.ct, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !125

.lr.ph:                                           ; preds = %.lr.ph, %vector.ph141
  %.sroa.0.093 = phi ptr [ %i.cc, %vector.ph141 ], [ %i.dh, %.lr.ph ] ; 4 uses
  %.sroa.0.093.a = phi ptr [ %i.cn, %vector.ph141 ], [ %i.dg, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %vector.ph141 ], [ %i.dk, %.lr.ph ]
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -8 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !30
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !30
  store ptr %i.cx, ptr %i.cu, align 8, !tbaa !30
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !30
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !30
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !30
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !30
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !30
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !30
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !30
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !30
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.093.a, i64 -32 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 4 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !30
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !30
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !30
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !30
  %i.dk = add i64 %niter, 4                       ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dk, %n.vec143
  br i1 %exitcond.not.3, label %middle.block160, label %.lr.ph, !llvm.loop !126

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block185, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %1, %middle.block185 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #1 {
bb.a:
  %.not104 = icmp sgt i64 %3, %6
  %.not66105 = icmp sgt i64 %4, %6
  %or.cond106 = and i1 %.not104, %.not66105
  br i1 %or.cond106, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.bh, %tailrecurse ]
  %.tr98.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr100.lcssa = phi i64 [ %3, %bb.a ], [ %i.bg, %tailrecurse ]
  %.tr101.lcssa = phi i64 [ %4, %bb.a ], [ %i.bi, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_T2_"(ptr %.tr.lcssa, ptr %.tr98.lcssa, ptr %2, i64 noundef %.tr100.lcssa, i64 noundef %.tr101.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr101110 = phi i64 [ %4, %.lr.ph ], [ %i.bi, %tailrecurse ] ; 3 uses
  %.tr100109 = phi i64 [ %3, %.lr.ph ], [ %i.bg, %tailrecurse ] ; 3 uses
  %.tr98108 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr107 = phi ptr [ %0, %.lr.ph ], [ %i.bh, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr100109, %.tr101110
  %i.c = ptrtoint ptr %.tr98108 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr100109, 2                   ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr107, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.i = load ptr, ptr %.val, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.07.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i" ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.tr98108, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.02.1.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i" ] ; 2 uses
  %i.l = lshr i64 %.07.i, 1                       ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.06.i, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.i) #24 ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i"

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.s) #24 ; 2 uses
  %.not16.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not16.not.i.i.i, label %bb.d, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.w) #24
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i": ; preds = %bb.d, %bb.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.2.in.i.i.i = phi i32 [ %i.x, %bb.d ], [ %i.t, %bb.c ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ]
  %.2.i.i.i = icmp slt i32 %.2.in.i.i.i, 0        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = xor i64 %i.l, -1
  %i.aa = add nsw i64 %.07.i, %i.z
  %.sroa.02.1.i = select i1 %.2.i.i.i, ptr %i.y, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %.2.i.i.i, i64 %i.aa, i64 %i.l ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !104

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclINS_17__normal_iteratorIPPN4llvh9StatisticESt6vectorISA_SaISA_EEEEKSA_EEbT_RT0_.exit.i"
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr98108, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ac = sub i64 %.pre-phi, %i.c
  %i.ad = ashr exact i64 %i.ac, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71: ; preds = %bb.b
  %i.ae = sdiv i64 %.tr101110, 2                  ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.tr98108, i64 %i.ae ; 2 uses
  %i.ag = ptrtoint ptr %.tr107 to i64             ; 3 uses
  %i.ah = sub i64 %i.c, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i73, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i73: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71
  %.val67 = load ptr, ptr %i.af, align 8          ; 3 uses
  %i.ak = load ptr, ptr %.val67, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %.val67, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.val67, i64 16
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i73
  %.07.i75 = phi i64 [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i73 ], [ %.1.i83, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i" ] ; 2 uses
  %.sroa.02.06.i76 = phi ptr [ %.tr107, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i73 ], [ %.sroa.02.1.i82, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i" ] ; 2 uses
  %i.an = lshr i64 %.07.i75, 1                    ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.06.i76, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) %i.aq) #24 ; 2 uses
  %.not.not.i.i.i79 = icmp eq i32 %i.ar, 0
  br i1 %.not.not.i.i.i79, label %bb.e, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %i.au) #24 ; 2 uses
  %.not16.not.i.i.i84 = icmp eq i32 %i.av, 0
  br i1 %.not16.not.i.i.i84, label %bb.f, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) %i.ay) #24
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i": ; preds = %bb.f, %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74
  %.2.in.i.i.i80 = phi i32 [ %i.az, %bb.f ], [ %i.av, %bb.e ], [ %i.ar, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74 ]
  %.2.i.i.i81 = icmp slt i32 %.2.in.i.i.i80, 0    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = xor i64 %i.an, -1
  %i.bc = add nsw i64 %.07.i75, %i.bb
  %.sroa.02.1.i82 = select i1 %.2.i.i.i81, ptr %.sroa.02.06.i76, ptr %i.ba ; 3 uses
  %.1.i83 = select i1 %.2.i.i.i81, i64 %i.an, i64 %i.bc ; 2 uses
  %i.bd = icmp sgt i64 %.1.i83, 0
  br i1 %i.bd, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i74, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", !llvm.loop !105

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EclIKPN4llvh9StatisticENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"
  %.pre116 = ptrtoint ptr %.sroa.02.1.i82 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71
  %.pre-phi117 = phi i64 [ %.pre116, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71 ]
  %.sroa.02.0.lcssa.i72 = phi ptr [ %.sroa.02.1.i82, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit.loopexit" ], [ %.tr107, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71 ]
  %i.be = sub i64 %.pre-phi117, %i.ag
  %i.bf = ashr exact i64 %i.be, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit"
  %.sroa.087.0 = phi ptr [ %i.e, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %.sroa.02.0.lcssa.i72, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.02.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.af, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 3 uses
  %.062 = phi i64 [ %i.ad, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.ae, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.d, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.bf, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %i.bg = sub nsw i64 %.tr100109, %.0             ; 4 uses
  %i.bh = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %.sroa.087.0, ptr %.tr98108, ptr %.sroa.0.0, i64 noundef %i.bg, i64 noundef %.062, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StatisticInfo4sortEvE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_"(ptr %.tr107, ptr %.sroa.087.0, ptr %i.bh, i64 noundef %.0, i64 noundef %.062, ptr noundef %5, i64 noundef %6)
  %i.bi = sub nsw i64 %.tr101110, %.062           ; 3 uses
  %.not = icmp sgt i64 %i.bg, %6
  %.not66 = icmp sgt i64 %i.bi, %6
  %or.cond = and i1 %.not, %.not66
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !76

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !30
  store ptr %i.g, ptr %5, align 8, !tbaa !30
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !76

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8, !tbaa !30
  store ptr %i.p, ptr %i.o, align 8, !tbaa !30
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !76

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %i.r, ptr %0, align 8, !tbaa !30
  br label %_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !76

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !30
  store ptr %i.y, ptr %5, align 8, !tbaa !30
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !76

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !30
  store ptr %i.ad, ptr %0, align 8, !tbaa !30
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !76

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !30
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !30
  br label %_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4llvh9StatisticESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, %_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPN4llvh9StatisticEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !127, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !127, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !14
  %i.j = load i8, ptr %i.d, align 8, !range !14
  %i.k = icmp ne i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #6

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #6

declare void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !128
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(13) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvh14object_creatorIN12_GLOBAL__N_113StatisticInfoEE4callEv() #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvh10TimerGroup19ConstructTimerListsEv() #20
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvh14object_deleterIN12_GLOBAL__N_113StatisticInfoEE4callEPv(ptr noundef %0) #1 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.22", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 152), align 8, !tbaa !20, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt10unique_ptrIN4llvh14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZN4llvh15PrintStatisticsEv.exit.i

_ZNSt10unique_ptrIN4llvh14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN4llvh20CreateInfoOutputFileEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.22") align 8 %1) #20
  %i.d = load ptr, ptr %1, align 8, !tbaa !81     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 26
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvh14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.m = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull @.str.16, i64 noundef 26) #20 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvh14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @.str.16, i64 26, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  store ptr %i.o, ptr %i.g, align 8, !tbaa !38
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.d, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 47
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i
  %i.w = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i.i, ptr noundef nonnull @.str.17, i64 noundef 47) #20 ; 0 uses
  br label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.p, ptr noundef nonnull align 1 dereferenceable(47) @.str.17, i64 47, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 47
  store ptr %i.z, ptr %i.x, align 8, !tbaa !38
  br label %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.d) #20, !inline_history !129
  br label %_ZN4llvh15PrintStatisticsEv.exit.i

_ZN4llvh15PrintStatisticsEv.exit.i:               ; preds = %_ZNSt10unique_ptrIN4llvh11raw_ostreamESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.b
  %i.ad = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_113StatisticInfoD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh15PrintStatisticsEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZN12_GLOBAL__N_113StatisticInfoD2Ev.exit

_ZN12_GLOBAL__N_113StatisticInfoD2Ev.exit:        ; preds = %_ZN4llvh15PrintStatisticsEv.exit.i, %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_113StatisticInfoD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN4llvh10TimerGroup19ConstructTimerListsEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4llvh18format_object_base4homeEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJjjjPKcS2_EE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.n = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, ptr noundef %i.m) #20
  ret i32 %i.n
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE17_M_realloc_insertIJPKcjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !132    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #21
  unreachable

_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !84     ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #24
  br label %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit

_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit: ; preds = %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ 0, %_ZNKSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %i.v, align 8, !tbaa !92
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !alias.scope !133
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !137

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN4llvh9StringRefEjEC2IPKcjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ab, %.lr.ph.i.i.i18 ], [ %i.z, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.aa, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i19, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i20, i64 24, i1 false), !alias.scope !138
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !137

_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.z, %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i18 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh9StringRefEjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !132
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !88
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Statistic.cpp() #15 section ".text.startup" {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 8), align 8, !tbaa !142
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 12), align 4
  %i.b = and i16 %i.a, -4096
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 72), align 8, !tbaa !147
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 80), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 88), align 8, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 96), align 8, !tbaa !148
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 100), align 4, !tbaa !149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 104), align 8, !tbaa !150
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 144), align 8, !tbaa !151
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 152), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 160), align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 169), align 1, !tbaa !127
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 168), align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL5Stats, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 176), align 8, !tbaa !7
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL5Stats, ptr nonnull align 1 dereferenceable(6) @.str, i64 5) #20
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 40), align 8, !tbaa !84
  store i64 62, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 48), align 8, !tbaa !51
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 12), align 4
  %i.d = and i16 %i.c, -97
  %i.e = or disjoint i16 %i.d, 32
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZL5Stats, i64 12), align 4
  tail call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL5Stats) #20
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZL5Stats, ptr nonnull @__dso_handle) #20 ; 0 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 8), align 8, !tbaa !142
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 12), align 4
  %i.h = and i16 %i.g, -4096
  store i16 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 72), align 8, !tbaa !147
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 80), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 88), align 8, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 96), align 8, !tbaa !148
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 100), align 4, !tbaa !149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 104), align 8, !tbaa !150
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 144), align 8, !tbaa !151
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 152), align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 160), align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 169), align 1, !tbaa !127
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 168), align 8, !tbaa !152
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL11StatsAsJSON, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 176), align 8, !tbaa !7
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11StatsAsJSON, ptr nonnull align 1 dereferenceable(11) @.str.3, i64 10) #20
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 40), align 8, !tbaa !84
  store i64 31, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 48), align 8, !tbaa !51
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 12), align 4
  %i.j = and i16 %i.i, -97
  %i.k = or disjoint i16 %i.j, 32
  store i16 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZL11StatsAsJSON, i64 12), align 4
  tail call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11StatsAsJSON) #20
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZL11StatsAsJSON, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!17, !4, i64 8}
!17 = !{!"_ZTSN4llvh3sys10SmartMutexILb1EEE", !18, i64 0, !4, i64 8, !19, i64 12}
!18 = !{!"_ZTSN4llvh3sys9MutexImplE", !12, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!21, !19, i64 0}
!21 = !{!"_ZTSN4llvh2cl11opt_storageIbLb0ELb0EEE", !19, i64 0, !22, i64 8}
!22 = !{!"_ZTSN4llvh2cl11OptionValueIbEE", !23, i64 0}
!23 = !{!"_ZTSN4llvh2cl15OptionValueBaseIbLb0EEE", !24, i64 0}
!24 = !{!"_ZTSN4llvh2cl15OptionValueCopyIbEE", !25, i64 0, !19, i64 8, !19, i64 9}
!25 = !{!"_ZTSN4llvh2cl18GenericOptionValueE"}
!26 = !{!27, !28, i64 8}
!27 = !{!"_ZTSNSt12_Vector_baseIPN4llvh9StatisticESaIS2_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p2 _ZTSN4llvh9StatisticE", !11, i64 0}
!29 = !{!27, !28, i64 16}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSN4llvh9StatisticE", !12, i64 0}
!32 = !{!27, !28, i64 0}
!33 = !{!28, !28, i64 0}
!34 = !{!35, !36, i64 16}
!35 = !{!"_ZTSN4llvh11raw_ostreamE", !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32}
!36 = !{!"p1 omnipotent char", !12, i64 0}
!37 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!38 = !{!35, !36, i64 24}
!39 = !{!40, !36, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !43, i64 8, !5, i64 16}
!43 = !{!"long", !5, i64 0}
!44 = !{!42, !43, i64 8}
!45 = !{!5, !5, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4llvh6utostrB5cxx11Emb: argument 0"}
!48 = distinct !{!48, !"_ZN4llvh6utostrB5cxx11Emb"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!43, !43, i64 0}
!52 = !{!53, !36, i64 0}
!53 = !{!"_ZTSN4llvh9StatisticE", !36, i64 0, !36, i64 8, !36, i64 16, !54, i64 24, !56, i64 28}
!54 = !{!"_ZTSSt6atomicIjE", !55, i64 0}
!55 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!56 = !{!"_ZTSSt6atomicIbE", !57, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseIbE", !19, i64 0}
!58 = distinct !{!58, !50}
!59 = !{!35, !36, i64 8}
!60 = !{!53, !36, i64 16}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN4llvh6formatIJjjjPKcS2_EEENS_13format_objectIJDpT_EEES2_DpRKS4_: argument 0"}
!63 = distinct !{!63, !"_ZN4llvh6formatIJjjjPKcS2_EEENS_13format_objectIJDpT_EEES2_DpRKS4_"}
!64 = !{!65, !36, i64 0}
!65 = !{!"_ZTSSt10_Head_baseILm4EPKcLb0EE", !36, i64 0}
!66 = !{!67, !36, i64 0}
!67 = !{!"_ZTSSt10_Head_baseILm3EPKcLb0EE", !36, i64 0}
!68 = !{!69, !4, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm2EjLb0EE", !4, i64 0}
!70 = !{!71, !4, i64 0}
!71 = !{!"_ZTSSt10_Head_baseILm1EjLb0EE", !4, i64 0}
!72 = !{!73, !4, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EjLb0EE", !4, i64 0}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!53, !36, i64 8}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 _ZTSN4llvh14raw_fd_ostreamE", !12, i64 0}
!83 = distinct !{null, null}
!84 = !{!36, !36, i64 0}
!85 = !{!86, !87, i64 8}
!86 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4llvh9StringRefEjESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSSt4pairIN4llvh9StringRefEjE", !12, i64 0}
!88 = !{!86, !87, i64 16}
!89 = !{!90, !36, i64 0}
!90 = !{!"_ZTSN4llvh9StringRefE", !36, i64 0, !43, i64 8}
!91 = !{!90, !43, i64 8}
!92 = !{!93, !4, i64 16}
!93 = !{!"_ZTSSt4pairIN4llvh9StringRefEjE", !90, i64 0, !4, i64 16}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = distinct !{!96, !50}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !50, !112, !113}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = distinct !{!114, !50, !112}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !50, !112, !113}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = distinct !{!123, !50, !112}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !50}
!126 = distinct !{!126, !50}
!127 = !{!24, !19, i64 9}
!128 = !{!17, !19, i64 12}
!129 = distinct !{null, ptr @_ZN4llvh15PrintStatisticsEv, null, null}
!130 = !{!131, !36, i64 8}
!131 = !{!"_ZTSN4llvh18format_object_baseE", !36, i64 8}
!132 = !{!86, !87, i64 0}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_"}
!136 = distinct !{!136, !135, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!137 = distinct !{!137, !50}
!138 = !{!139, !141}
!139 = distinct !{!139, !140, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!140 = distinct !{!140, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_"}
!141 = distinct !{!141, !140, !"_ZSt19__relocate_object_aISt4pairIN4llvh9StringRefEjES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!142 = !{!143, !4, i64 8}
!143 = !{!"_ZTSN4llvh2cl6OptionE", !4, i64 8, !4, i64 12, !4, i64 12, !4, i64 12, !4, i64 12, !4, i64 13, !4, i64 16, !4, i64 20, !90, i64 24, !90, i64 40, !90, i64 56, !144, i64 72, !145, i64 80, !19, i64 144}
!144 = !{!"p1 _ZTSN4llvh2cl14OptionCategoryE", !12, i64 0}
!145 = !{!"_ZTSN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEE", !146, i64 0, !5, i64 32}
!146 = !{!"_ZTSN4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !10, i64 0}
!147 = !{!143, !144, i64 72}
!148 = !{!10, !4, i64 16}
!149 = !{!10, !4, i64 20}
!150 = !{!10, !4, i64 24}
!151 = !{!143, !19, i64 144}
!152 = !{!24, !19, i64 8}
end_hunk_0
