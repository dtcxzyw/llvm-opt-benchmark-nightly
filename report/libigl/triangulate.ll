Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangulate?download=true
inline.NumInlined: 14234
inline.NumDeleted: 4674
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEES1T_S1T_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEENS0_7move_opEEES12_T_S25_SP_ST_RSX_SX_S12_NS0_9iter_sizeIST_E4typeES29_S29_S29_S15_bT5_:bb.a

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread21.i

.thread21.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ac = phi i64 [ %.024.i, %.thread.i ], [ %.01823.i, %bb.d ], [ %.01823.i, %bb.c ] ; 2 uses
  %i.ad = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit, label %.lr.ph.i, !llvm.loop !2396

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit: ; preds = %.thread21.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ac, %.thread21.i ] ; 6 uses
  %i.ae = add i64 %.018.lcssa.i, 2
  %i.af = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ae) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %.0105149)
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 15 uses
  %i.ah = mul i64 %7, %.018.lcssa.i
  %i.ai = sub i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ai ; 11 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !2102  ; 5 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !2102  ; 8 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !2102, !noalias !14 ; 7 uses
  %.not20.i.i = icmp eq ptr %i.al, %i.an
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not20.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.av, %.split.i.i ], [ %i.am, %bb.f ]
  %.sroa.011.0.ph.i.i = phi ptr [ %i.ao, %.split.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.015.0.ph.i.i = phi ptr [ %i.au, %.split.i.i ], [ %i.e, %bb.f ] ; 2 uses
  %.sroa.020.0.ph.i.i = phi ptr [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.an, %bb.f ]
  %i.ao = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2397 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !2397 ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !89, !noalias !2397
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !89, !noalias !2397
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !89, !noalias !2397
  %.not32.i.i = icmp eq ptr %i.au, %i.ag
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i.i, !llvm.loop !2247

bb.h:                                             ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !89, !noalias !2397
  %.not31.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.g, !llvm.loop !2247

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bf, %.split.i14.i ], [ %i.am, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.e, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.an, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !2402 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !2402 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.bb, %i.bc
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !89, !noalias !2402
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !89, !noalias !2402
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !89, !noalias !2402
  %.not33.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !2251

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !89, !noalias !2402
  %.not32.i19.i = icmp eq ptr %i.ba, %i.al
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.j, !llvm.loop !2251

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.am, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2405 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !2405 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !89, !noalias !2405
  %i.br = icmp eq ptr %i.bp, %i.ag
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !2257

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !89, !noalias !2405
  %i.bt = icmp eq ptr %i.bk, %i.al
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !2257

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.am, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.e, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.an, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2410 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !2410 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !89, !noalias !2410
  %i.cb = icmp eq ptr %i.bz, %i.ag
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !2261

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !89, !noalias !2410
  %i.cd = icmp eq ptr %i.bv, %i.al
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !2261

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.ap, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ag, %bb.q ], [ %i.ag, %bb.n ], [ %i.e, %bb.p ], [ %i.e, %bb.m ], [ %i.ag, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ag, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.av, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.073.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.aj, %bb.r ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !2102, !noalias !14
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !2102, !noalias !14
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 6 uses
  %.sroa.073.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.073.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 10 uses
  %.sroa.073.0317 = ptrtoaddr ptr %.sroa.073.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !2102
  %i.ce = load ptr, ptr %3, align 8, !tbaa !2102  ; 11 uses
  %i.cf = icmp eq ptr %i.ce, %.sroa.066.0
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.073.0, %i.ak
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cg = shl i64 %.018.lcssa.i, 3
  %.neg327 = add i64 %i.cg, 8
  %.neg328 = mul i64 %.neg327, %7
  %12 = add i64 %i.h, %.sroa.073.0317
  %i.ch = add i64 %.neg328, %12                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 104
  br i1 %min.iters.check, label %.lr.ph.i28.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.073.0, i64 -8
  %i.ck = add i64 %i.j, %.sroa.073.0317
  %i.cl = shl i64 %.018.lcssa.i, 3
  %.neg329 = add i64 %i.cl, 8
  %.neg330 = mul i64 %.neg329, %7
  %i.cm = add i64 %.neg330, %i.ck
  %i.cn = lshr i64 %i.cm, 3
  %i.co = mul i64 %i.cn, -8                       ; 2 uses
  %scevgep319 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep320 = getelementptr i8, ptr %i.ce, i64 -8
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.co
  %bound0 = icmp ult ptr %scevgep319, %i.ce
  %bound1 = icmp ult ptr %scevgep321, %.sroa.073.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.cp = mul i64 %n.vec, -8                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.073.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cs ; 4 uses
  %next.gep322 = getelementptr i8, ptr %.sroa.073.0, i64 %i.cs ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep322, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %next.gep322, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !89, !alias.scope !2413, !noalias !2416
  %wide.load323 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !89, !alias.scope !2413, !noalias !2416
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load324 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !89, !alias.scope !2420, !noalias !2421
  %wide.load325 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !89, !alias.scope !2420, !noalias !2421
  %i.cx = getelementptr inbounds i8, ptr %next.gep322, i64 -16
  %i.cy = getelementptr inbounds i8, ptr %next.gep322, i64 -32
  store <2 x i64> %wide.load324, ptr %i.cx, align 8, !tbaa !89, !alias.scope !2413, !noalias !2416
  store <2 x i64> %wide.load325, ptr %i.cy, align 8, !tbaa !89, !alias.scope !2413, !noalias !2416
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !89, !alias.scope !2420, !noalias !2421
  store <2 x ptr> %wide.load323, ptr %i.da, align 8, !tbaa !89, !alias.scope !2420, !noalias !2421
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !2422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28.preheader332

.lr.ph.i28.preheader332:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.073.0, %vector.memcheck ], [ %.sroa.073.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader332, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.de, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader332 ]
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader332 ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dd, align 8, !tbaa !89, !noalias !2421
  %i.df = load i64, ptr %i.de, align 8, !tbaa !89, !noalias !2421
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !89, !noalias !2421
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.de, align 8, !tbaa !89, !noalias !2421
  %.not.i = icmp eq ptr %i.dd, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28, !llvm.loop !2423

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  %.not1.i31 = icmp eq ptr %i.ce, %i.ag           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.sroa.073.0, %bb.v ]
  %.sroa.047.0 = phi ptr [ %i.dj, %.lr.ph.i29 ], [ %.sroa.066.0, %bb.v ]
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %i.ce, %bb.v ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !89, !noalias !2424
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !89, !noalias !2424
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !89, !noalias !2424
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !89, !noalias !2424
  %.not.i30 = icmp eq ptr %i.dh, %i.ag
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29, !llvm.loop !2276

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0100.0 = phi ptr [ %i.do, %.lr.ph.i33 ], [ %.sroa.066.0, %bb.w ]
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i33 ], [ %i.ce, %bb.w ]
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8 ; 3 uses
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !89, !noalias !2427
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !89, !noalias !2427
  %.not.i34 = icmp eq ptr %i.dn, %i.ag
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i33, !llvm.loop !2280

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ag, %bb.s ], [ %i.do, %.lr.ph.i33 ], [ %i.ce, %bb.t ], [ %i.de, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.dj, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2102
  %.neg108 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.f, i64 %.neg108 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ag, %.sroa.073.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit
  %.not9.i = icmp eq i64 %.neg108, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !117
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !117
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !117
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !117
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.dv = load ptr, ptr %2, align 8, !tbaa !2226  ; 2 uses
  %i.dw = icmp eq ptr %i.dq, %i.dv
  br i1 %i.dw, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = icmp eq ptr %i.dv, %i.f
  br i1 %i.dx, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.f, %bb.y ], [ %i.dq, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2226
  %.pre201 = load ptr, ptr %1, align 8, !tbaa !2226
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, %bb.z, %.sink.split.i
  %i.dy = phi ptr [ %i.f, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit ], [ %i.f, %bb.z ], [ %.pre201, %.sink.split.i ]
  store ptr %i.ag, ptr %3, align 8, !tbaa !2102
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  store ptr %i.dz, ptr %1, align 8, !tbaa !2226
  %i.ea = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.ea to i64
  %i.eb = add i64 %.0150, %.neg
  %i.ec = icmp ne i64 %i.af, 0
  %.neg24 = sext i1 %i.ec to i64
  %i.ed = add i64 %.sroa.speculated, %.neg24
  %i.ee = add i64 %.0105149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ee, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2430

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit, %bb.a
  %i.ef = load ptr, ptr %6, align 8, !tbaa !2102
  store ptr %i.ef, ptr %0, align 8, !tbaa !2102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_13adaptive_xbufIS1L_S1M_mEEEEvT_S1Y_S1Y_SJ_RSN_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1978 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1K_ES1K_NS_11move_detail8identityIS1K_EEEENS0_7move_opENS0_13adaptive_xbufIS1K_S1L_mEEEEvT_S1Y_S1Y_SI_SM_RSQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1977
  %.not18 = icmp eq i64 %i.k, 0
  br i1 %.not18, label %_ZN5boost7movelib13adaptive_xbufIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEEPS1K_mE13shrink_to_fitEm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !1977
  br label %_ZN5boost7movelib13adaptive_xbufIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEEPS1K_mE13shrink_to_fitEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !1975   ; 4 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEES1T_S1T_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEENS0_7move_opEEES12_T_S25_SP_ST_RSX_SX_S12_NS0_9iter_sizeIST_E4typeES29_S29_S29_S15_bT5_:bb.a

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread21.i

.thread21.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ac = phi i64 [ %.024.i, %.thread.i ], [ %.01823.i, %bb.d ], [ %.01823.i, %bb.c ] ; 2 uses
  %i.ad = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit, label %.lr.ph.i, !llvm.loop !3399

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit: ; preds = %.thread21.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ac, %.thread21.i ] ; 6 uses
  %i.ae = add i64 %.018.lcssa.i, 2
  %i.af = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ae) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %.0105149)
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 15 uses
  %i.ah = mul i64 %7, %.018.lcssa.i
  %i.ai = sub i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ai ; 11 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !3107  ; 5 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !3107  ; 8 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !3107, !noalias !14 ; 7 uses
  %.not20.i.i = icmp eq ptr %i.al, %i.an
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not20.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.027.0.i = phi ptr [ %i.av, %.split.i.i ], [ %i.am, %bb.f ]
  %.sroa.011.0.ph.i.i = phi ptr [ %i.ao, %.split.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.015.0.ph.i.i = phi ptr [ %i.au, %.split.i.i ], [ %i.e, %bb.f ] ; 2 uses
  %.sroa.020.0.ph.i.i = phi ptr [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.an, %bb.f ]
  %i.ao = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !3400 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !3400 ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !223, !noalias !3400
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !223, !noalias !3400
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !223, !noalias !3400
  %.not32.i.i = icmp eq ptr %i.au, %i.ag
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3250

bb.h:                                             ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !223, !noalias !3400
  %.not31.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.g, !llvm.loop !3250

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bf, %.split.i14.i ], [ %i.am, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.e, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.an, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !3405 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !3405 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.bb, %i.bc
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !223, !noalias !3405
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !223, !noalias !3405
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !223, !noalias !3405
  %.not33.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3254

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !223, !noalias !3405
  %.not32.i19.i = icmp eq ptr %i.ba, %i.al
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.j, !llvm.loop !3254

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISE_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSL_IiLin1ELin1ELi0ELin1ELin1EEESM_SM_SN_EEvRKNSK_10MatrixBaseIT0_EERKNSO_IT1_EERKNSO_IT2_EEbRNSK_15PlainObjectBaseIT3_EERNS11_IT4_EEE9FaceInfo2SE_NS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_IS18_SE_NS19_ISE_NS1A_IvEEEEEEEEEEEEEEEEEENS9_7DefaultES1P_S1P_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIS1R_ES1R_NS_11move_detail8identityIS1R_EEEEEEEENS0_9iter_sizeIST_E4typeET_SP_ST_S26_S26_S26_SX_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.am, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !3408 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !3408 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !223, !noalias !3408
  %i.br = icmp eq ptr %i.bp, %i.ag
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3260

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !223, !noalias !3408
  %i.bt = icmp eq ptr %i.bk, %i.al
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3260

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.am, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.e, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.an, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !3413 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !3413 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !223, !noalias !3413
  %i.cb = icmp eq ptr %i.bz, %i.ag
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3264

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !223, !noalias !3413
  %i.cd = icmp eq ptr %i.bv, %i.al
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3264

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.ap, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ag, %bb.q ], [ %i.ag, %bb.n ], [ %i.e, %bb.p ], [ %i.e, %bb.m ], [ %i.ag, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ag, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.av, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.073.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.aj, %bb.r ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !3107, !noalias !14
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !3107, !noalias !14
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 6 uses
  %.sroa.073.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.073.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 10 uses
  %.sroa.073.0317 = ptrtoaddr ptr %.sroa.073.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !3107
  %i.ce = load ptr, ptr %3, align 8, !tbaa !3107  ; 11 uses
  %i.cf = icmp eq ptr %i.ce, %.sroa.066.0
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.073.0, %i.ak
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cg = shl i64 %.018.lcssa.i, 3
  %.neg327 = add i64 %i.cg, 8
  %.neg328 = mul i64 %.neg327, %7
  %12 = add i64 %i.h, %.sroa.073.0317
  %i.ch = add i64 %.neg328, %12                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 104
  br i1 %min.iters.check, label %.lr.ph.i28.preheader332, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %scevgep = getelementptr i8, ptr %.sroa.073.0, i64 -8
  %i.ck = add i64 %i.j, %.sroa.073.0317
  %i.cl = shl i64 %.018.lcssa.i, 3
  %.neg329 = add i64 %i.cl, 8
  %.neg330 = mul i64 %.neg329, %7
  %i.cm = add i64 %.neg330, %i.ck
  %i.cn = lshr i64 %i.cm, 3
  %i.co = mul i64 %i.cn, -8                       ; 2 uses
  %scevgep319 = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep320 = getelementptr i8, ptr %i.ce, i64 -8
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.co
  %bound0 = icmp ult ptr %scevgep319, %i.ce
  %bound1 = icmp ult ptr %scevgep321, %.sroa.073.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader332, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.cp = mul i64 %n.vec, -8                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.073.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cs ; 4 uses
  %next.gep322 = getelementptr i8, ptr %.sroa.073.0, i64 %i.cs ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep322, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %next.gep322, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !223, !alias.scope !3416, !noalias !3419
  %wide.load323 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !223, !alias.scope !3416, !noalias !3419
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load324 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !223, !alias.scope !3423, !noalias !3424
  %wide.load325 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !223, !alias.scope !3423, !noalias !3424
  %i.cx = getelementptr inbounds i8, ptr %next.gep322, i64 -16
  %i.cy = getelementptr inbounds i8, ptr %next.gep322, i64 -32
  store <2 x i64> %wide.load324, ptr %i.cx, align 8, !tbaa !223, !alias.scope !3416, !noalias !3419
  store <2 x i64> %wide.load325, ptr %i.cy, align 8, !tbaa !223, !alias.scope !3416, !noalias !3419
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !223, !alias.scope !3423, !noalias !3424
  store <2 x ptr> %wide.load323, ptr %i.da, align 8, !tbaa !223, !alias.scope !3423, !noalias !3424
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !3425

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28.preheader332

.lr.ph.i28.preheader332:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.073.0, %vector.memcheck ], [ %.sroa.073.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader332, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.de, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader332 ]
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader332 ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dd, align 8, !tbaa !223, !noalias !3424
  %i.df = load i64, ptr %i.de, align 8, !tbaa !223, !noalias !3424
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !223, !noalias !3424
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.de, align 8, !tbaa !223, !noalias !3424
  %.not.i = icmp eq ptr %i.dd, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i28, !llvm.loop !3426

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7move_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  %.not1.i31 = icmp eq ptr %i.ce, %i.ag           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.sroa.073.0, %bb.v ]
  %.sroa.047.0 = phi ptr [ %i.dj, %.lr.ph.i29 ], [ %.sroa.066.0, %bb.v ]
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %i.ce, %bb.v ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !223, !noalias !3427
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !223, !noalias !3427
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !223, !noalias !3427
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !223, !noalias !3427
  %.not.i30 = icmp eq ptr %i.dh, %i.ag
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29, !llvm.loop !3279

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0100.0 = phi ptr [ %i.do, %.lr.ph.i33 ], [ %.sroa.066.0, %bb.w ]
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i33 ], [ %i.ce, %bb.w ]
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8 ; 3 uses
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !223, !noalias !3430
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !223, !noalias !3430
  %.not.i34 = icmp eq ptr %i.dn, %i.ag
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i33, !llvm.loop !3283

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ag, %bb.s ], [ %i.do, %.lr.ph.i33 ], [ %i.ce, %bb.t ], [ %i.de, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.dj, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !3107
  %.neg108 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.f, i64 %.neg108 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ag, %.sroa.073.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit
  %.not9.i = icmp eq i64 %.neg108, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !117
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !117
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !117
  store i64 %i.dt, ptr %i.ds, align 8, !tbaa !117
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.dv = load ptr, ptr %2, align 8, !tbaa !2226  ; 2 uses
  %i.dw = icmp eq ptr %i.dq, %i.dv
  br i1 %i.dw, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = icmp eq ptr %i.dv, %i.f
  br i1 %i.dx, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.f, %bb.y ], [ %i.dq, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2226
  %.pre201 = load ptr, ptr %1, align 8, !tbaa !2226
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, %bb.z, %.sink.split.i
  %i.dy = phi ptr [ %i.f, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit ], [ %i.f, %bb.z ], [ %.pre201, %.sink.split.i ]
  store ptr %i.ag, ptr %3, align 8, !tbaa !3107
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  store ptr %i.dz, ptr %1, align 8, !tbaa !2226
  %i.ea = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.ea to i64
  %i.eb = add i64 %.0150, %.neg
  %i.ec = icmp ne i64 %i.af, 0
  %.neg24 = sext i1 %i.ec to i64
  %i.ed = add i64 %.sroa.speculated, %.neg24
  %i.ee = add i64 %.0105149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ee, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3433

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEEEEEvT_S1R_RS1R_SM_SM_SM_.exit, %bb.a
  %i.ef = load ptr, ptr %6, align 8, !tbaa !3107
  store ptr %i.ef, ptr %0, align 8, !tbaa !3107
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_13adaptive_xbufIS1L_S1M_mEEEEvT_S1Y_S1Y_SJ_RSN_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2987 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1K_ES1K_NS_11move_detail8identityIS1K_EEEENS0_7move_opENS0_13adaptive_xbufIS1K_S1L_mEEEEvT_S1Y_S1Y_SI_SM_RSQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2986
  %.not18 = icmp eq i64 %i.k, 0
  br i1 %.not18, label %_ZN5boost7movelib13adaptive_xbufIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEEPS1K_mE13shrink_to_fitEm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !2986
  br label %_ZN5boost7movelib13adaptive_xbufIN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEEPS1K_mE13shrink_to_fitEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !2984   ; 4 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
end_hunk_1
