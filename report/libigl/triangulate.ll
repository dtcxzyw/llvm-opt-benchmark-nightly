Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangulate?download=true
inline.NumInlined: 14225
inline.NumDeleted: 4674
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_NS0_7swap_opES1M_EEvT_SJ_SN_NS0_9iter_sizeISN_E4typeES20_S20_S20_S20_SR_SW_SZ_:bb.a
  %i.ip = shl i64 %n.vec429, 3                    ; 2 uses
  %i.iq = getelementptr i8, ptr %7, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.h, i64 %i.ip
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next438, %vector.body430 ] ; 2 uses
  %i.is = shl i64 %index431, 3                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %7, i64 %i.is ; 4 uses
  %next.gep433 = getelementptr i8, ptr %i.h, i64 %i.is ; 4 uses
  %i.it = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <2 x ptr>, ptr %next.gep433, align 8, !tbaa !187, !alias.scope !2226, !noalias !2227
  %wide.load435 = load <2 x ptr>, ptr %i.it, align 8, !tbaa !187, !alias.scope !2226, !noalias !2227
  %i.iu = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load436 = load <2 x i64>, ptr %next.gep432, align 8, !tbaa !187, !alias.scope !2227
  %wide.load437 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !187, !alias.scope !2227
  %i.iv = getelementptr i8, ptr %next.gep433, i64 16
  store <2 x i64> %wide.load436, ptr %next.gep433, align 8, !tbaa !187, !alias.scope !2226, !noalias !2227
  store <2 x i64> %wide.load437, ptr %i.iv, align 8, !tbaa !187, !alias.scope !2226, !noalias !2227
  %i.iw = getelementptr i8, ptr %next.gep432, i64 16
  store <2 x ptr> %wide.load434, ptr %next.gep432, align 8, !tbaa !187, !alias.scope !2227
  store <2 x ptr> %wide.load435, ptr %i.iw, align 8, !tbaa !187, !alias.scope !2227
  %index.next438 = add nuw i64 %index431, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next438, %n.vec429
  br i1 %i.ix, label %middle.block439, label %vector.body430, !llvm.loop !2200

middle.block439:                                  ; preds = %vector.body430
  %cmp.n440 = icmp eq i64 %i.in, %n.vec429
  br i1 %cmp.n440, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, label %.lr.ph.i160.preheader446

.lr.ph.i160.preheader446:                         ; preds = %vector.memcheck424, %.lr.ph.i160.preheader, %middle.block439
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck424 ], [ %7, %.lr.ph.i160.preheader ], [ %i.iq, %middle.block439 ]
  %.079.i162.ph = phi ptr [ %i.h, %vector.memcheck424 ], [ %i.h, %.lr.ph.i160.preheader ], [ %i.ir, %middle.block439 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader446, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.ja, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader446 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.iz, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader446 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !187
  %i.iy = load i64, ptr %.010.i161, align 8, !tbaa !187
  store i64 %i.iy, ptr %.079.i162, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !187
  %i.iz = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.iz, %i.ik
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, label %.lr.ph.i160, !llvm.loop !2201

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167: ; preds = %.lr.ph.i160, %middle.block439, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit158
  store ptr %7, ptr %i.a, align 8, !tbaa !223
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jb, ptr %i.b, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.jb, ptr %10, align 8, !tbaa !575
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %4
  store ptr %i.jd, ptr %12, align 8, !tbaa !575, !alias.scope !2228
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !575, !alias.scope !2229
  store ptr %i.h, ptr %14, align 8, !tbaa !575, !alias.scope !2230
  store ptr %7, ptr %15, align 8, !tbaa !575, !alias.scope !2231
  store ptr %i.ik, ptr %16, align 8, !tbaa !575, !alias.scope !2232
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1O_S1O_S1Z_NS0_7swap_opEEESX_T_S21_SK_SO_RSS_SS_SX_NS0_9iter_sizeISO_E4typeES25_S25_S25_S10_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.je = load ptr, ptr %11, align 8, !tbaa !575
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.jf = load ptr, ptr %10, align 8, !tbaa !575  ; 3 uses
  store ptr %i.jf, ptr %i.b, align 8, !tbaa !223
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !223 ; 3 uses
  %.not28.i168 = icmp eq ptr %i.jg, %i.jf
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, %bb.ab
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.jf, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 3 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.jq, %bb.ab ], [ %i.je, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 2 uses
  %i.jh = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.jh, label %.lr.ph.i.i, label %bb.y

.lr.ph.i.i:                                       ; preds = %.lr.ph.i169, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.jj, %.lr.ph.i.i ], [ %.02129.i, %.lr.ph.i169 ]
  %.057.i.i = phi ptr [ %i.ji, %.lr.ph.i.i ], [ %.031.i, %.lr.ph.i169 ]
  %i.ji = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !187
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !187
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.jj, align 8, !tbaa !187
  %.not.i.i = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i.i, !llvm.loop !2212

bb.y:                                             ; preds = %.lr.ph.i169
  %i.jl = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.jn = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.jp = icmp ult ptr %i.jn, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.jq, align 8, !tbaa !187 ; 2 uses
  br i1 %i.jp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jr = ptrtoint ptr %i.jo to i64
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jm, align 8, !tbaa !187
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.js = ptrtoint ptr %i.jn to i64
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jl, align 8, !tbaa !187
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.jm, %bb.z ], [ %.01930.i, %bb.aa ]
  %.1.i171 = phi ptr [ %.031.i, %bb.z ], [ %i.jl, %bb.aa ] ; 2 uses
  %.not.i172 = icmp eq ptr %i.jg, %.1.i171
  br i1 %.not.i172, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i169, !llvm.loop !2213

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit: ; preds = %bb.ab, %.lr.ph.i.i, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EEvT_SJ_SN_NS0_9iter_sizeISN_E4typeES1Z_S1Z_S1Z_S1Z_SR_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not109 = icmp eq i64 %i.b, 0
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !212
  br label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx105 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = add i64 %i.k, %3
  %i.m = shl i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.m
  %i.n = add i64 %.idx105, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 56
  %stride.check = icmp slt i64 %.idx105, 0
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit
  %.idx130 = shl i64 %i.bd, 3                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx130 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !212
  %.not77120 = icmp eq i64 %i.bd, 0
  br i1 %.not77120, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.t = icmp eq ptr %.1102, %i.s
  br i1 %i.t, label %.lr.ph125.split.us.preheader.preheader, label %.lr.ph125.split

.lr.ph125.split.us.preheader.preheader:           ; preds = %.lr.ph125
  %i.u = add i64 %.idx130, -8                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol

.lr.ph125.split.us.preheader.prol:                ; preds = %.lr.ph125.split.us.preheader.preheader, %.lr.ph125.split.us.preheader.prol
  %.0123.us.prol = phi ptr [ %i.y, %.lr.ph125.split.us.preheader.prol ], [ %0, %.lr.ph125.split.us.preheader.preheader ]
  %.069122.us.prol = phi ptr [ %i.x, %.lr.ph125.split.us.preheader.prol ], [ %i.d, %.lr.ph125.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph125.split.us.preheader.prol ], [ 0, %.lr.ph125.split.us.preheader.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.069122.us.prol, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0123.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol, !llvm.loop !2233

.lr.ph125.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph125.split.us.preheader.prol, %.lr.ph125.split.us.preheader.preheader
  %.069122.us.lcssa.unr = phi ptr [ poison, %.lr.ph125.split.us.preheader.preheader ], [ %.069122.us.prol, %.lr.ph125.split.us.preheader.prol ]
  %.0123.us.unr = phi ptr [ %0, %.lr.ph125.split.us.preheader.preheader ], [ %i.y, %.lr.ph125.split.us.preheader.prol ]
  %.069122.us.unr = phi ptr [ %i.d, %.lr.ph125.split.us.preheader.preheader ], [ %i.x, %.lr.ph125.split.us.preheader.prol ]
  %i.z = icmp ult i64 %i.u, 56
  br i1 %i.z, label %._crit_edge126, label %.lr.ph125.split.us.preheader.preheader.new

.lr.ph125.split.us.preheader.preheader.new:       ; preds = %.lr.ph125.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx175 = shl i64 %2, 4
  br label %.lr.ph125.split.us.preheader

.lr.ph125.split.us.preheader:                     ; preds = %.lr.ph125.split.us.preheader, %.lr.ph125.split.us.preheader.preheader.new
  %.0123.us = phi ptr [ %.0123.us.unr, %.lr.ph125.split.us.preheader.preheader.new ], [ %i.ac, %.lr.ph125.split.us.preheader ]
  %.069122.us = phi ptr [ %.069122.us.unr, %.lr.ph125.split.us.preheader.preheader.new ], [ %i.ab, %.lr.ph125.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069122.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx175
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0123.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ac, %i.r
  br i1 %.not77.us.7, label %._crit_edge126, label %.lr.ph125.split.us.preheader, !llvm.loop !2234

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit
  %.071117 = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 9 uses
  %.072116 = phi i64 [ %i.h, %.lr.ph ], [ %i.bz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 4 uses
  %.073115 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 8 uses
  %.074114 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 2 uses
  %.075113 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ]
  %.0100112 = phi i64 [ %i.b, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 2 uses
  %.0101111 = phi ptr [ %i.f, %.lr.ph ], [ %.1102, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 4 uses
  %.val108110 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.072116, %.val108110
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.as, %.thread26.i ], [ %.072116, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.ar, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02228.i, %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ae
  %i.ag = mul i64 %.029.i, %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.02228.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.029.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !192 ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !192 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult ptr %i.al, %i.ak
  br i1 %i.an, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !192
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !192
  %i.aq = icmp ult ptr %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.val108110
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit, label %.lr.ph.i, !llvm.loop !71

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread26.i ] ; 5 uses
  %.idx106 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.073115, i64 %.idx106 ; 4 uses
  %i.au = add i64 %.022.lcssa.i, 2
  %i.av = tail call i64 @llvm.umax.i64(i64 %.val108110, i64 %i.au) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.0100112)
  %i.aw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.aw, 3
  %i.ax = getelementptr i8, ptr %.071117, i64 %.idx ; 6 uses
  %i.ay = trunc nuw i8 %.074114 to i1
  %or.cond = and i1 %i.j, %i.ay
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !192
  %i.bb = icmp uge ptr %i.az, %i.ba
  %spec.select = zext i1 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit
  %.1 = phi i8 [ %.074114, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bc = zext nneg i8 %.1 to i64
  %i.bd = add i64 %.075113, %i.bc                 ; 3 uses
  %i.be = getelementptr i8, ptr %.071117, i64 %.idx105 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = shl i64 %.022.lcssa.i, 3
  %i.bg = add i64 %i.bf, 8
  %i.bh = mul i64 %2, %i.bg
  %scevgep162 = getelementptr i8, ptr %.071117, i64 %i.bh
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bi = or i1 %found.conflict, %stride.check
  br i1 %i.bi, label %.lr.ph.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.q
  %i.bk = getelementptr i8, ptr %.071117, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 4 uses
  %next.gep163 = getelementptr i8, ptr %.071117, i64 %i.bl ; 4 uses
  %i.bm = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep163, align 8, !tbaa !187, !alias.scope !2241, !noalias !2242
  %wide.load164 = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !187, !alias.scope !2241, !noalias !2242
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load165 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !187, !alias.scope !2242
  %wide.load166 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !187, !alias.scope !2242
  %i.bo = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x i64> %wide.load165, ptr %next.gep163, align 8, !tbaa !187, !alias.scope !2241, !noalias !2242
  store <2 x i64> %wide.load166, ptr %i.bo, align 8, !tbaa !187, !alias.scope !2241, !noalias !2242
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !187, !alias.scope !2242
  store <2 x ptr> %wide.load164, ptr %i.bp, align 8, !tbaa !187, !alias.scope !2242
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !2238

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071117, %vector.memcheck ], [ %.071117, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !187
  %i.br = load i64, ptr %.010.i.i, align 8, !tbaa !187
  store i64 %i.br, ptr %.079.i.i, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !187
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bs, %i.be
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i, !llvm.loop !2239

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8, !tbaa !187
  %i.bu = load i64, ptr %.073115, align 8, !tbaa !187
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !187
  store ptr %.sroa.0.0.copyload.i.i, ptr %.073115, align 8, !tbaa !187
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i
  %i.bv = icmp eq ptr %i.at, %.0101111
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %.0101111, %.073115
  %spec.select103 = select i1 %i.bw, ptr %i.at, ptr %.0101111
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1102 = phi ptr [ %.0101111, %bb.f ], [ %spec.select103, %bb.j ], [ %.073115, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073115, i64 8
  %i.by = icmp ne i64 %.072116, 0
  %.neg = sext i1 %i.by to i64
  %i.bz = add i64 %.072116, %.neg
  %i.ca = icmp ne i64 %i.av, 0
  %.neg78 = sext i1 %i.ca to i64
  %i.cb = add i64 %.sroa.speculated89, %.neg78
  %i.cc = add i64 %.0100112, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2240

._crit_edge126.loopexit132:                       ; preds = %bb.l
  %i.cd = trunc nuw i8 %i.cu to i1
  %i.ce = select i1 %i.cd, ptr %i.cw, ptr %i.cx
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader, %._crit_edge.thread, %._crit_edge126.loopexit132, %._crit_edge
  %i.cf = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ce, %._crit_edge126.loopexit132 ], [ %.069122.us.lcssa.unr, %.lr.ph125.split.us.preheader.prol.loopexit ], [ %i.aa, %.lr.ph125.split.us.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.ch = ptrtoint ptr %i.e to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1K_ES1K_NS_11move_detail8identityIS1K_EEEEEEvT_S1V_S1V_NS0_9iter_sizeIS1V_E4typeES1Y_SI_(ptr noundef %i.cf, ptr noundef %i.e, ptr noundef %i.cg, i64 noundef %i.ck, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph125.split:                                  ; preds = %.lr.ph125, %bb.l
  %i.cl = phi i8 [ %i.cu, %bb.l ], [ 1, %.lr.ph125 ]
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph125 ] ; 2 uses
  %.0123 = phi ptr [ %i.cy, %bb.l ], [ %0, %.lr.ph125 ] ; 2 uses
  %.069122 = phi ptr [ %i.cx, %bb.l ], [ %i.d, %.lr.ph125 ] ; 4 uses
  %.070121 = phi ptr [ %i.cw, %bb.l ], [ %1, %.lr.ph125 ]
  %i.cn = load ptr, ptr %.0123, align 8, !tbaa !192
  %i.co = load ptr, ptr %.1102, align 8, !tbaa !192
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_NS0_7swap_opES1M_EEvT_SJ_SN_NS0_9iter_sizeISN_E4typeES20_S20_S20_S20_SR_SW_SZ_:bb.a
  %i.ip = shl i64 %n.vec429, 3                    ; 2 uses
  %i.iq = getelementptr i8, ptr %7, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.h, i64 %i.ip
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next438, %vector.body430 ] ; 2 uses
  %i.is = shl i64 %index431, 3                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %7, i64 %i.is ; 4 uses
  %next.gep433 = getelementptr i8, ptr %i.h, i64 %i.is ; 4 uses
  %i.it = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <2 x ptr>, ptr %next.gep433, align 8, !tbaa !258, !alias.scope !2987, !noalias !2988
  %wide.load435 = load <2 x ptr>, ptr %i.it, align 8, !tbaa !258, !alias.scope !2987, !noalias !2988
  %i.iu = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load436 = load <2 x i64>, ptr %next.gep432, align 8, !tbaa !258, !alias.scope !2988
  %wide.load437 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !258, !alias.scope !2988
  %i.iv = getelementptr i8, ptr %next.gep433, i64 16
  store <2 x i64> %wide.load436, ptr %next.gep433, align 8, !tbaa !258, !alias.scope !2987, !noalias !2988
  store <2 x i64> %wide.load437, ptr %i.iv, align 8, !tbaa !258, !alias.scope !2987, !noalias !2988
  %i.iw = getelementptr i8, ptr %next.gep432, i64 16
  store <2 x ptr> %wide.load434, ptr %next.gep432, align 8, !tbaa !258, !alias.scope !2988
  store <2 x ptr> %wide.load435, ptr %i.iw, align 8, !tbaa !258, !alias.scope !2988
  %index.next438 = add nuw i64 %index431, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next438, %n.vec429
  br i1 %i.ix, label %middle.block439, label %vector.body430, !llvm.loop !2961

middle.block439:                                  ; preds = %vector.body430
  %cmp.n440 = icmp eq i64 %i.in, %n.vec429
  br i1 %cmp.n440, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, label %.lr.ph.i160.preheader446

.lr.ph.i160.preheader446:                         ; preds = %vector.memcheck424, %.lr.ph.i160.preheader, %middle.block439
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck424 ], [ %7, %.lr.ph.i160.preheader ], [ %i.iq, %middle.block439 ]
  %.079.i162.ph = phi ptr [ %i.h, %vector.memcheck424 ], [ %i.h, %.lr.ph.i160.preheader ], [ %i.ir, %middle.block439 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader446, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.ja, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader446 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.iz, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader446 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !258
  %i.iy = load i64, ptr %.010.i161, align 8, !tbaa !258
  store i64 %i.iy, ptr %.079.i162, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !258
  %i.iz = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.iz, %i.ik
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, label %.lr.ph.i160, !llvm.loop !2962

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167: ; preds = %.lr.ph.i160, %middle.block439, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit158
  store ptr %7, ptr %i.a, align 8, !tbaa !281
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jb, ptr %i.b, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.jb, ptr %10, align 8, !tbaa !691
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %4
  store ptr %i.jd, ptr %12, align 8, !tbaa !691, !alias.scope !2989
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !691, !alias.scope !2990
  store ptr %i.h, ptr %14, align 8, !tbaa !691, !alias.scope !2991
  store ptr %7, ptr %15, align 8, !tbaa !691, !alias.scope !2992
  store ptr %i.ik, ptr %16, align 8, !tbaa !691, !alias.scope !2993
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1O_S1O_S1Z_NS0_7swap_opEEESX_T_S21_SK_SO_RSS_SS_SX_NS0_9iter_sizeISO_E4typeES25_S25_S25_S10_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.953") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.je = load ptr, ptr %11, align 8, !tbaa !691
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.jf = load ptr, ptr %10, align 8, !tbaa !691  ; 3 uses
  store ptr %i.jf, ptr %i.b, align 8, !tbaa !281
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !281 ; 3 uses
  %.not28.i168 = icmp eq ptr %i.jg, %i.jf
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167, %bb.ab
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.jf, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 3 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.jq, %bb.ab ], [ %i.je, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167 ] ; 2 uses
  %i.jh = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.jh, label %.lr.ph.i.i, label %bb.y

.lr.ph.i.i:                                       ; preds = %.lr.ph.i169, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.jj, %.lr.ph.i.i ], [ %.02129.i, %.lr.ph.i169 ]
  %.057.i.i = phi ptr [ %i.ji, %.lr.ph.i.i ], [ %.031.i, %.lr.ph.i169 ]
  %i.ji = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !258
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !258
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.jj, align 8, !tbaa !258
  %.not.i.i = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i.i, !llvm.loop !2973

bb.y:                                             ; preds = %.lr.ph.i169
  %i.jl = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.jn = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.jp = icmp ult ptr %i.jn, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.jq, align 8, !tbaa !258 ; 2 uses
  br i1 %i.jp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jr = ptrtoint ptr %i.jo to i64
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jm, align 8, !tbaa !258
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.js = ptrtoint ptr %i.jn to i64
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jl, align 8, !tbaa !258
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.jm, %bb.z ], [ %.01930.i, %bb.aa ]
  %.1.i171 = phi ptr [ %.031.i, %bb.z ], [ %i.jl, %bb.aa ] ; 2 uses
  %.not.i172 = icmp eq ptr %i.jg, %.1.i171
  br i1 %.not.i172, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit, label %.lr.ph.i169, !llvm.loop !2974

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateISB_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSI_IiLin1ELin1ELi0ELin1ELin1EEESJ_SJ_SK_EEvRKNSH_10MatrixBaseIT0_EERKNSL_IT1_EERKNSL_IT2_EEbRNSH_15PlainObjectBaseIT3_EERNSY_IT4_EEE9FaceInfo2SB_NS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_IS15_SB_NS16_ISB_NS17_IvEEEEEEEEEEEEEEEEEENS6_7DefaultES1M_S1M_EELb0EEEES1O_NS_11move_detail8identityIS1O_EEEENS0_7swap_opEPS1O_S1V_EEvSU_SU_SU_SQ_SQ_T_SM_.exit: ; preds = %bb.ab, %.lr.ph.i.i, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EEvT_SJ_SN_NS0_9iter_sizeISN_E4typeES1Z_S1Z_S1Z_S1Z_SR_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not109 = icmp eq i64 %i.b, 0
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !212
  br label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx105 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = add i64 %i.k, %3
  %i.m = shl i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.m
  %i.n = add i64 %.idx105, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 56
  %stride.check = icmp slt i64 %.idx105, 0
  %n.vec = and i64 %i.p, 4611686018427387900      ; 3 uses
  %i.q = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit
  %.idx130 = shl i64 %i.bd, 3                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx130 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !212
  %.not77120 = icmp eq i64 %i.bd, 0
  br i1 %.not77120, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.t = icmp eq ptr %.1102, %i.s
  br i1 %i.t, label %.lr.ph125.split.us.preheader.preheader, label %.lr.ph125.split

.lr.ph125.split.us.preheader.preheader:           ; preds = %.lr.ph125
  %i.u = add i64 %.idx130, -8                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol

.lr.ph125.split.us.preheader.prol:                ; preds = %.lr.ph125.split.us.preheader.preheader, %.lr.ph125.split.us.preheader.prol
  %.0123.us.prol = phi ptr [ %i.y, %.lr.ph125.split.us.preheader.prol ], [ %0, %.lr.ph125.split.us.preheader.preheader ]
  %.069122.us.prol = phi ptr [ %i.x, %.lr.ph125.split.us.preheader.prol ], [ %i.d, %.lr.ph125.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph125.split.us.preheader.prol ], [ 0, %.lr.ph125.split.us.preheader.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.069122.us.prol, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0123.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol, !llvm.loop !2994

.lr.ph125.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph125.split.us.preheader.prol, %.lr.ph125.split.us.preheader.preheader
  %.069122.us.lcssa.unr = phi ptr [ poison, %.lr.ph125.split.us.preheader.preheader ], [ %.069122.us.prol, %.lr.ph125.split.us.preheader.prol ]
  %.0123.us.unr = phi ptr [ %0, %.lr.ph125.split.us.preheader.preheader ], [ %i.y, %.lr.ph125.split.us.preheader.prol ]
  %.069122.us.unr = phi ptr [ %i.d, %.lr.ph125.split.us.preheader.preheader ], [ %i.x, %.lr.ph125.split.us.preheader.prol ]
  %i.z = icmp ult i64 %i.u, 56
  br i1 %i.z, label %._crit_edge126, label %.lr.ph125.split.us.preheader.preheader.new

.lr.ph125.split.us.preheader.preheader.new:       ; preds = %.lr.ph125.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx175 = shl i64 %2, 4
  br label %.lr.ph125.split.us.preheader

.lr.ph125.split.us.preheader:                     ; preds = %.lr.ph125.split.us.preheader, %.lr.ph125.split.us.preheader.preheader.new
  %.0123.us = phi ptr [ %.0123.us.unr, %.lr.ph125.split.us.preheader.preheader.new ], [ %i.ac, %.lr.ph125.split.us.preheader ]
  %.069122.us = phi ptr [ %.069122.us.unr, %.lr.ph125.split.us.preheader.preheader.new ], [ %i.ab, %.lr.ph125.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069122.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx175
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0123.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ac, %i.r
  br i1 %.not77.us.7, label %._crit_edge126, label %.lr.ph125.split.us.preheader, !llvm.loop !2995

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit
  %.071117 = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 9 uses
  %.072116 = phi i64 [ %i.h, %.lr.ph ], [ %i.bz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 4 uses
  %.073115 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 8 uses
  %.074114 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 2 uses
  %.075113 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ]
  %.0100112 = phi i64 [ %i.b, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 2 uses
  %.0101111 = phi ptr [ %i.f, %.lr.ph ], [ %.1102, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 4 uses
  %.val108110 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.072116, %.val108110
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.as, %.thread26.i ], [ %.072116, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.ar, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02228.i, %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ae
  %i.ag = mul i64 %.029.i, %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.02228.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.029.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !263 ; 2 uses
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !263 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult ptr %i.al, %i.ak
  br i1 %i.an, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !263
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !263
  %i.aq = icmp ult ptr %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.val108110
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit, label %.lr.ph.i, !llvm.loop !101

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread26.i ] ; 5 uses
  %.idx106 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.073115, i64 %.idx106 ; 4 uses
  %i.au = add i64 %.022.lcssa.i, 2
  %i.av = tail call i64 @llvm.umax.i64(i64 %.val108110, i64 %i.au) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.0100112)
  %i.aw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.aw, 3
  %i.ax = getelementptr i8, ptr %.071117, i64 %.idx ; 6 uses
  %i.ay = trunc nuw i8 %.074114 to i1
  %or.cond = and i1 %i.j, %i.ay
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !263
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.bb = icmp uge ptr %i.az, %i.ba
  %spec.select = zext i1 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit
  %.1 = phi i8 [ %.074114, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEES1M_S1V_EENS0_9iter_sizeISN_E4typeET_SJ_SN_S1Y_S1Y_S1Y_SR_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bc = zext nneg i8 %.1 to i64
  %i.bd = add i64 %.075113, %i.bc                 ; 3 uses
  %i.be = getelementptr i8, ptr %.071117, i64 %.idx105 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = shl i64 %.022.lcssa.i, 3
  %i.bg = add i64 %i.bf, 8
  %i.bh = mul i64 %2, %i.bg
  %scevgep162 = getelementptr i8, ptr %.071117, i64 %i.bh
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bi = or i1 %found.conflict, %stride.check
  br i1 %i.bi, label %.lr.ph.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.q
  %i.bk = getelementptr i8, ptr %.071117, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 4 uses
  %next.gep163 = getelementptr i8, ptr %.071117, i64 %i.bl ; 4 uses
  %i.bm = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep163, align 8, !tbaa !258, !alias.scope !3002, !noalias !3003
  %wide.load164 = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !258, !alias.scope !3002, !noalias !3003
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load165 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !258, !alias.scope !3003
  %wide.load166 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !258, !alias.scope !3003
  %i.bo = getelementptr i8, ptr %next.gep163, i64 16
  store <2 x i64> %wide.load165, ptr %next.gep163, align 8, !tbaa !258, !alias.scope !3002, !noalias !3003
  store <2 x i64> %wide.load166, ptr %i.bo, align 8, !tbaa !258, !alias.scope !3002, !noalias !3003
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !258, !alias.scope !3003
  store <2 x ptr> %wide.load164, ptr %i.bp, align 8, !tbaa !258, !alias.scope !3003
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !2999

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071117, %vector.memcheck ], [ %.071117, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !258
  %i.br = load i64, ptr %.010.i.i, align 8, !tbaa !258
  store i64 %i.br, ptr %.079.i.i, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !258
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bs, %i.be
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i, label %.lr.ph.i.i, !llvm.loop !3000

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.at, align 8, !tbaa !258
  %i.bu = load i64, ptr %.073115, align 8, !tbaa !258
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !258
  store ptr %.sroa.0.0.copyload.i.i, ptr %.073115, align 8, !tbaa !258
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS6_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSD_IiLin1ELin1ELi0ELin1ELin1EEESE_SE_SF_EEvRKNSC_10MatrixBaseIT0_EERKNSG_IT1_EERKNSG_IT2_EEbRNSC_15PlainObjectBaseIT3_EERNST_IT4_EEE9FaceInfo2S6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS10_S6_NS11_IS6_NS12_IvEEEEEEEEEEEEEEEEEENS1_7DefaultES1H_S1H_EELb0EEES1K_EESH_T_S1L_SH_.exit.i
  %i.bv = icmp eq ptr %i.at, %.0101111
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %.0101111, %.073115
  %spec.select103 = select i1 %i.bw, ptr %i.at, ptr %.0101111
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_EEvT_S1N_RS1N_SJ_SJ_SJ_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1102 = phi ptr [ %.0101111, %bb.f ], [ %spec.select103, %bb.j ], [ %.073115, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073115, i64 8
  %i.by = icmp ne i64 %.072116, 0
  %.neg = sext i1 %i.by to i64
  %i.bz = add i64 %.072116, %.neg
  %i.ca = icmp ne i64 %i.av, 0
  %.neg78 = sext i1 %i.ca to i64
  %i.cb = add i64 %.sroa.speculated89, %.neg78
  %i.cc = add i64 %.0100112, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3001

._crit_edge126.loopexit132:                       ; preds = %bb.l
  %i.cd = trunc nuw i8 %i.cu to i1
  %i.ce = select i1 %i.cd, ptr %i.cw, ptr %i.cx
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader, %._crit_edge.thread, %._crit_edge126.loopexit132, %._crit_edge
  %i.cf = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ce, %._crit_edge126.loopexit132 ], [ %.069122.us.lcssa.unr, %.lr.ph125.split.us.preheader.prol.loopexit ], [ %i.aa, %.lr.ph125.split.us.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.ch = ptrtoint ptr %i.e to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS7_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_SF_SG_EEvRKNSD_10MatrixBaseIT0_EERKNSH_IT1_EERKNSH_IT2_EEbRNSD_15PlainObjectBaseIT3_EERNSU_IT4_EEE9FaceInfo2S7_NS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS11_S7_NS12_IS7_NS13_IvEEEEEEEEEEEEEEEEEENS2_7DefaultES1I_S1I_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1K_ES1K_NS_11move_detail8identityIS1K_EEEEEEvT_S1V_S1V_NS0_9iter_sizeIS1V_E4typeES1Y_SI_(ptr noundef %i.cf, ptr noundef %i.e, ptr noundef %i.cg, i64 noundef %i.ck, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph125.split:                                  ; preds = %.lr.ph125, %bb.l
  %i.cl = phi i8 [ %i.cu, %bb.l ], [ 1, %.lr.ph125 ]
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph125 ] ; 2 uses
  %.0123 = phi ptr [ %i.cy, %bb.l ], [ %0, %.lr.ph125 ] ; 2 uses
  %.069122 = phi ptr [ %i.cx, %bb.l ], [ %i.d, %.lr.ph125 ] ; 4 uses
  %.070121 = phi ptr [ %i.cw, %bb.l ], [ %1, %.lr.ph125 ]
  %i.cn = load ptr, ptr %.0123, align 8, !tbaa !263
  %i.co = load ptr, ptr %.1102, align 8, !tbaa !263
end_hunk_1
