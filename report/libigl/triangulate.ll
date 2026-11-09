Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangulate?download=true
inline.NumInlined: 14225
inline.NumDeleted: 4674
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEET_S1Z_S1Z_RS1Z_S1Z_S1Z_RSJ_S21_SN_SR_:bb.a
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.aq, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.au = icmp eq ptr %.054.i, %3
  br i1 %i.au, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03253.i248.le = ptrtoaddr ptr %.03253.i to i64
  %i.av = add i64 %i.a, -16
  %i.aw = sub i64 %i.av, %i.i
  %i.ax = mul i64 %indvar249, -8                  ; 2 uses
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ay, 184
  br i1 %min.iters.check252, label %.lr.ph.i.i40.preheader291, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i40.preheader
  %reass.sub268 = sub i64 %i.ax, %i.i
  %op.rdx = add i64 %.03253.i248.le, -9
  %op.rdx269 = add i64 %op.rdx, %reass.sub268
  %diff.check254 = icmp ult i64 %op.rdx269, 31
  br i1 %diff.check254, label %.lr.ph.i.i40.preheader291, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck253
  %n.vec256 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.03253.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.03456.i, i64 %i.bb
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.be = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03253.i, i64 %i.be ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.03456.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x i64>, ptr %next.gep260, align 8, !tbaa !181
  %wide.load262 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !181
  %i.bg = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x i64> %wide.load261, ptr %next.gep259, align 8, !tbaa !181
  store <2 x i64> %wide.load262, ptr %i.bg, align 8, !tbaa !181
  %index.next263 = add nuw i64 %index258, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.bh, label %middle.block264, label %vector.body257, !llvm.loop !2360

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.ba, %n.vec256
  br i1 %cmp.n265, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i.i40.preheader291

.lr.ph.i.i40.preheader291:                        ; preds = %vector.memcheck253, %.lr.ph.i.i40.preheader, %middle.block264
  %.010.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck253 ], [ %.03253.i, %.lr.ph.i.i40.preheader ], [ %i.bc, %middle.block264 ]
  %.079.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck253 ], [ %.03456.i, %.lr.ph.i.i40.preheader ], [ %i.bd, %middle.block264 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader291, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bk, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader291 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bj, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader291 ] ; 2 uses
  %i.bi = load i64, ptr %.079.i.i42, align 8, !tbaa !181
  store i64 %i.bi, ptr %.010.i.i41, align 8, !tbaa !181
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i.i40, !llvm.loop !2361

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bl = load ptr, ptr %.03253.i, align 8, !tbaa !186
  %i.bm = load ptr, ptr %.054.i, align 8, !tbaa !186
  %.not42.i = icmp ult ptr %i.bl, %i.bm           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i64, ptr %.03456.i, align 8, !tbaa !181
  store i64 %storemerge43.i, ptr %.03055.i, align 8, !tbaa !181
  %.03253.val.i = load i64, ptr %.03253.i, align 8
  %.054.val.i = load i64, ptr %.054.i, align 8
  %storemerge.i = select i1 %.not42.i, i64 %.03253.val.i, i64 %.054.val.i
  store i64 %storemerge.i, ptr %.03456.i, align 8, !tbaa !181
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.bn = icmp eq ptr %.034.i, %1
  %indvar.next250 = add i64 %indvar249, 1
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i34, !llvm.loop !2362

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block264, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block264 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block264 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block264 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block264 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.z, %middle.block ], [ %i.bc, %middle.block264 ], [ %.030.i, %bb.m ], [ %i.bk, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bv, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.br, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bs, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bo = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bp = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not42.i47 = icmp ult ptr %i.bo, %i.bp
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bq, ptr %.030.i46, align 8, !tbaa !181
  %i.bt = load i64, ptr %.026.i, align 8, !tbaa !181
  store i64 %i.bt, ptr %.025.i, align 8, !tbaa !181
  %.not44.i = icmp eq ptr %i.br, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %bb.n, !llvm.loop !2363

bb.o:                                             ; preds = %bb.n
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bu, ptr %.030.i46, align 8, !tbaa !181
  %.not43.i = icmp eq ptr %i.bv, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.outer.i, !llvm.loop !2363

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.aq, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.by, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.by, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.ca, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bw = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.bx = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not37.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.bz, ptr %.024.i, align 8, !tbaa !181
  %i.cb = icmp eq ptr %i.ca, %3
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i, !llvm.loop !2364

bb.q:                                             ; preds = %.preheader.i
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cc, ptr %.024.i, align 8, !tbaa !181
  %i.ce = icmp eq ptr %i.cd, %.091
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i.outer, !llvm.loop !2364

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %i.br, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.ca, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bv, %bb.o ]
  %i.cf = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.by, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.by, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !217
  store ptr %.090, ptr %6, align 8, !tbaa !217
  store ptr %.178, ptr %2, align 8, !tbaa !217
  ret ptr %i.cf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1O_S1O_S1Z_NS0_7swap_opEEESX_T_S21_SK_SO_RSS_SS_SX_NS0_9iter_sizeISO_E4typeES25_S25_S25_S10_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #3 comdat {
bb.a:
  %.not153 = icmp eq i64 %8, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !569
  %i.b = shl i64 %7, 3
  %12 = add i64 %i.b, -8                          ; 2 uses
  %i.c = shl i64 %7, 3
  %invariant.op = add i64 %i.c, -8
  %i.d = shl i64 %7, 3
  %invariant.op527 = add i64 %i.d, -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.ft, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 3 uses
  %.0155 = phi i64 [ %9, %.lr.ph ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 4 uses
  %.0110154 = phi i64 [ %8, %.lr.ph ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !569    ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 6 uses
  %i.h = icmp ult i64 %.0155, %.0
  br i1 %i.h, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread22.i
  %.025.i = phi i64 [ %i.aa, %.thread22.i ], [ %.0155, %bb.b ] ; 4 uses
  %.01824.i = phi i64 [ %i.z, %.thread22.i ], [ 0, %bb.b ] ; 4 uses
  %i.i = mul i64 %.01824.i, %7
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.j
  %i.l = mul i64 %.025.i, %7
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m
  %i.o = xor i64 %.01824.i, -1
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  %i.q = xor i64 %.025.i, -1
  %i.r = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.q
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !186  ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp ult ptr %i.t, %i.s
  br i1 %i.v, label %.thread22.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !186
  %i.y = icmp ult ptr %i.w, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %.thread.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.z = phi i64 [ %.025.i, %.thread.i ], [ %.01824.i, %bb.d ], [ %.01824.i, %bb.c ] ; 2 uses
  %i.aa = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit, label %.lr.ph.i, !llvm.loop !71

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit: ; preds = %.thread22.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.z, %.thread22.i ] ; 6 uses
  %i.ab = add i64 %.018.lcssa.i, 2
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ab) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.0110154)
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 14 uses
  %i.ae = mul i64 %7, %.018.lcssa.i
  %i.af = sub i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.af ; 11 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !569   ; 5 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !569   ; 8 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !569, !noalias !120 ; 7 uses
  %.not21.i.i = icmp eq ptr %i.ai, %i.ak
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not21.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.028.0.i = phi ptr [ %i.as, %.split.i.i ], [ %i.aj, %bb.f ]
  %.sroa.013.0.ph.i.i = phi ptr [ %i.al, %.split.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %i.ar, %.split.i.i ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.022.0.ph.i.i = phi ptr [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.028.1.i = phi ptr [ %.sroa.028.0.i, %.outer.i.i ], [ %i.aw, %bb.h ] ; 2 uses
  %.sroa.022.0.i.i = phi ptr [ %.sroa.022.0.ph.i.i, %.outer.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.022.0.i.i, i64 -8 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !2404 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !noalias !2404 ; 2 uses
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i.i, i64 -8 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !181, !noalias !2404
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !181, !noalias !2404
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !181, !noalias !2404
  store i64 %i.au, ptr %i.al, align 8, !tbaa !181, !noalias !2404
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !181, !noalias !2404
  %.not35.i.i = icmp eq ptr %i.ar, %i.ad
  br i1 %.not35.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i.i, !llvm.loop !2369

bb.h:                                             ; preds = %bb.g
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !181, !noalias !2404
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !181, !noalias !2404
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.am, align 8, !tbaa !181, !noalias !2404
  %.not34.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not34.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.g, !llvm.loop !2369

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.021.0.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.aj, %bb.i ]
  %.sroa.013.0.ph.i9.i = phi ptr [ %i.ax, %.split.i14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i10.i = phi ptr [ %i.bc, %.split.i14.i ], [ %i.f, %bb.i ] ; 2 uses
  %.sroa.022.0.ph.i11.i = phi ptr [ %.sroa.022.0.i12.i, %.split.i14.i ], [ %i.ak, %bb.i ]
  %i.ax = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.021.1.i = phi ptr [ %.sroa.021.0.i, %.outer.i8.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.022.0.i12.i = phi ptr [ %.sroa.022.0.ph.i11.i, %.outer.i8.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.022.0.i12.i, i64 -8 ; 5 uses
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !2405 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !2405 ; 2 uses
  %.not34.i13.i = icmp ult ptr %i.az, %i.ba
  br i1 %.not34.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i10.i, i64 -8 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !181, !noalias !2405
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !181, !noalias !2405
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !181, !noalias !2405
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !181, !noalias !2405
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !181, !noalias !2405
  %.not36.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not36.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !2372

bb.k:                                             ; preds = %bb.j
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i19.i = load ptr, ptr %i.bh, align 8, !tbaa !181, !noalias !2405
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !181, !noalias !2405
  store ptr %.sroa.0.0.copyload.i.i19.i, ptr %i.ay, align 8, !tbaa !181, !noalias !2405
  %.not35.i20.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not35.i20.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.j, !llvm.loop !2372

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.08.0.i.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2406 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !noalias !2406 ; 2 uses
  %i.bm = icmp ult ptr %i.bk, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bn, align 8, !tbaa !181, !noalias !2406 ; 2 uses
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bo = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !181, !noalias !2406
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bo, align 8, !tbaa !181, !noalias !2406
  %i.bq = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bq, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !2377

bb.o:                                             ; preds = %.preheader.i.i
  %i.br = ptrtoint ptr %i.bk to i64
  store i64 %i.br, ptr %i.bn, align 8, !tbaa !181, !noalias !2406
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bj, align 8, !tbaa !181, !noalias !2406
  %i.bs = icmp eq ptr %i.bj, %i.ai
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !2377

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bx, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bt = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bx, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !noalias !2407 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2407 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.bv, %i.bw
  %i.bx = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.bx, align 8, !tbaa !181, !noalias !2407 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !181, !noalias !2407
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.by, align 8, !tbaa !181, !noalias !2407
  %i.ca = icmp eq ptr %i.by, %i.ad
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !2380

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cb = ptrtoint ptr %i.bw to i64
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !181, !noalias !2407
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bu, align 8, !tbaa !181, !noalias !2407
  %i.cc = icmp eq ptr %i.bu, %i.ai
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !2380

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.ay, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bj, %bb.o ], [ %i.bu, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.aw, %bb.h ], [ %i.bh, %bb.k ], [ %i.bx, %bb.r ], [ %i.bn, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.as, %.split.i.i ], [ %i.bn, %bb.n ], [ %i.bx, %bb.q ], [ %i.bd, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.ax, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !569, !noalias !120
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !569, !noalias !120
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 17 uses
  %.sroa.078.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 16 uses
  %.sroa.078.0323 = ptrtoaddr ptr %.sroa.078.0 to i64
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !569
  %i.cd = load ptr, ptr %3, align 8, !tbaa !569   ; 23 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 4 uses
  %i.cf = icmp eq ptr %i.cd, %.sroa.071.0
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.t
  %i.cg = shl i64 %.018.lcssa.i, 3
  %.neg408.a = add i64 %i.cg, 8
  %.neg409.a = mul i64 %.neg408.a, %7
  %i.ch = add i64 %.sroa.078.0323, -8             ; 2 uses
  %i.ci = add i64 %.neg409.a, %i.ch
  %i.cj = sub i64 %i.ci, %i.g                     ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 88
  br i1 %min.iters.check, label %.lr.ph.i29.preheader414, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i29.preheader
  %i.cm = shl i64 %.018.lcssa.i, 3
  %.neg410.a = add i64 %i.cm, 8
  %.neg411 = mul i64 %.neg410.a, %7
  %i.cn = add i64 %.neg411, %i.ch
  %i.co = xor i64 %i.cn, -1
  %.not412 = add i64 %i.co, %i.g
  %i.cp = and i64 %.not412, -8                    ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.078.0, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cd, i64 %i.cp
  %bound0 = icmp ult ptr %i.cq, %i.cd
  %bound1 = icmp ult ptr %i.cr, %.sroa.078.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i29.preheader414, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cs = mul i64 %n.vec, -8                      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cd, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.078.0, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cv ; 4 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.078.0, i64 %i.cv ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !181, !alias.scope !2408, !noalias !2409
  %wide.load325 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !181, !alias.scope !2408, !noalias !2409
  %i.cy = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load326 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !181, !alias.scope !2410, !noalias !2411
  %wide.load327 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !181, !alias.scope !2410, !noalias !2411
  %i.da = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.db = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  store <2 x i64> %wide.load326, ptr %i.da, align 8, !tbaa !181, !alias.scope !2408, !noalias !2409
  store <2 x i64> %wide.load327, ptr %i.db, align 8, !tbaa !181, !alias.scope !2408, !noalias !2409
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.dc, align 8, !tbaa !181, !alias.scope !2410, !noalias !2411
  store <2 x ptr> %wide.load325, ptr %i.dd, align 8, !tbaa !181, !alias.scope !2410, !noalias !2411
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !2386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29.preheader414

.lr.ph.i29.preheader414:                          ; preds = %vector.memcheck, %.lr.ph.i29.preheader, %middle.block
  %.sroa.059.0.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.i29.preheader ], [ %i.ct, %middle.block ]
  %.ph = phi ptr [ %.sroa.078.0, %vector.memcheck ], [ %.sroa.078.0, %.lr.ph.i29.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader414, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %.sroa.059.0.ph, %.lr.ph.i29.preheader414 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.ph, %.lr.ph.i29.preheader414 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dg, align 8, !tbaa !181, !noalias !2411
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !181, !noalias !2411
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !181, !noalias !2411
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dh, align 8, !tbaa !181, !noalias !2411
  %.not.i = icmp eq ptr %i.dg, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29, !llvm.loop !2387

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  %.not1.i32 = icmp eq ptr %i.cd, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.ce, %invariant.op
  %i.dj = sub i64 %.reass, %i.g                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.dj, 88
  br i1 %min.iters.check374, label %.lr.ph.i30.preheader418, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i30.preheader
  %reass.sub = sub i64 %i.ce, %i.g
  %.not405.a = add i64 %12, %reass.sub
  %i.dm = and i64 %.not405.a, -8
  %13 = xor i64 %i.dm, -8                         ; 3 uses
  %i.dn = getelementptr i8, ptr %.sroa.071.0, i64 %13 ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.078.0, i64 %13 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cd, i64 %13    ; 2 uses
  %bound0376 = icmp ult ptr %i.dn, %.sroa.078.0
  %bound1377 = icmp ult ptr %i.do, %.sroa.071.0
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %i.dn, %i.cd
  %bound1380 = icmp ult ptr %i.dp, %.sroa.071.0
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict378, %found.conflict381
  %bound0382 = icmp ult ptr %i.do, %i.cd
  %bound1383 = icmp ult ptr %i.dp, %.sroa.078.0
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  br i1 %conflict.rdx385, label %.lr.ph.i30.preheader418, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck375
  %n.vec387 = and i64 %i.dl, 4611686018427387900  ; 3 uses
  %i.dq = mul i64 %n.vec387, -8                   ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.078.0, i64 %i.dq
  %i.ds = getelementptr i8, ptr %.sroa.071.0, i64 %i.dq ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cd, i64 %i.dq
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next399, %vector.body388 ] ; 2 uses
  %i.du = mul i64 %index389, -8                   ; 3 uses
  %next.gep390 = getelementptr i8, ptr %.sroa.078.0, i64 %i.du ; 2 uses
  %next.gep391 = getelementptr i8, ptr %.sroa.071.0, i64 %i.du ; 2 uses
  %next.gep392 = getelementptr i8, ptr %i.cd, i64 %i.du ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %next.gep391, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep391, i64 -32 ; 2 uses
  %wide.load393 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !181, !alias.scope !2412, !noalias !2413
  %wide.load394 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !181, !alias.scope !2412, !noalias !2413
  %i.dx = getelementptr inbounds i8, ptr %next.gep390, i64 -16 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %next.gep390, i64 -32 ; 2 uses
  %wide.load395 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !181, !alias.scope !2414, !noalias !2415
  %wide.load396 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !181, !alias.scope !2414, !noalias !2415
  store <2 x i64> %wide.load395, ptr %i.dv, align 8, !tbaa !181, !alias.scope !2412, !noalias !2413
  store <2 x i64> %wide.load396, ptr %i.dw, align 8, !tbaa !181, !alias.scope !2412, !noalias !2413
  %i.dz = getelementptr inbounds i8, ptr %next.gep392, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep392, i64 -32 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !181, !alias.scope !2416, !noalias !2417
  %wide.load398 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !181, !alias.scope !2416, !noalias !2417
  store <2 x i64> %wide.load397, ptr %i.dx, align 8, !tbaa !181, !alias.scope !2414, !noalias !2415
  store <2 x i64> %wide.load398, ptr %i.dy, align 8, !tbaa !181, !alias.scope !2414, !noalias !2415
  store <2 x i64> %wide.load393, ptr %i.dz, align 8, !tbaa !181, !alias.scope !2416, !noalias !2417
  store <2 x i64> %wide.load394, ptr %i.ea, align 8, !tbaa !181, !alias.scope !2416, !noalias !2417
  %index.next399 = add nuw i64 %index389, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next399, %n.vec387
  br i1 %i.eb, label %middle.block400, label %vector.body388, !llvm.loop !2394

middle.block400:                                  ; preds = %vector.body388
  %cmp.n401 = icmp eq i64 %i.dl, %n.vec387
  br i1 %cmp.n401, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30.preheader418

.lr.ph.i30.preheader418:                          ; preds = %vector.memcheck375, %.lr.ph.i30.preheader, %middle.block400
  %.sroa.053.0.ph = phi ptr [ %.sroa.078.0, %vector.memcheck375 ], [ %.sroa.078.0, %.lr.ph.i30.preheader ], [ %i.dr, %middle.block400 ]
  %.sroa.052.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck375 ], [ %.sroa.071.0, %.lr.ph.i30.preheader ], [ %i.ds, %middle.block400 ]
  %.ph419 = phi ptr [ %i.cd, %vector.memcheck375 ], [ %i.cd, %.lr.ph.i30.preheader ], [ %i.dt, %middle.block400 ]
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader418, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ee, %.lr.ph.i30 ], [ %.sroa.053.0.ph, %.lr.ph.i30.preheader418 ]
  %.sroa.052.0 = phi ptr [ %i.ef, %.lr.ph.i30 ], [ %.sroa.052.0.ph, %.lr.ph.i30.preheader418 ]
  %i.ec = phi ptr [ %i.ed, %.lr.ph.i30 ], [ %.ph419, %.lr.ph.i30.preheader418 ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 4 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !181, !noalias !2417
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !181, !noalias !2417
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !181, !noalias !2417
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !181, !noalias !2417
  store i64 %i.ei, ptr %i.ee, align 8, !tbaa !181, !noalias !2417
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !181, !noalias !2417
  %.not.i31 = icmp eq ptr %i.ed, %i.ad
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30, !llvm.loop !2395

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass528 = add i64 %i.ce, %invariant.op527
  %i.ej = sub i64 %.reass528, %i.g                ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ej, 56
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader415, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i34.preheader
  %reass.sub407 = sub i64 %i.ce, %i.g
  %.not406.a = add i64 %12, %reass.sub407
  %i.em = and i64 %.not406.a, -8
  %14 = xor i64 %i.em, -8                         ; 2 uses
  %i.en = getelementptr i8, ptr %i.cd, i64 %14
  %i.eo = getelementptr i8, ptr %.sroa.071.0, i64 %14
  %bound0339 = icmp ult ptr %i.en, %.sroa.071.0
  %bound1340 = icmp ult ptr %i.eo, %i.cd
  %found.conflict341 = and i1 %bound0339, %bound1340
  br i1 %found.conflict341, label %.lr.ph.i34.preheader415, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.ep = mul i64 %n.vec343, -8                   ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.071.0, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.cd, i64 %i.ep
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next352, %vector.body344 ] ; 2 uses
  %i.es = mul i64 %index345, -8                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.071.0, i64 %i.es ; 4 uses
  %next.gep347 = getelementptr i8, ptr %i.cd, i64 %i.es ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  %wide.load348 = load <2 x ptr>, ptr %i.et, align 8, !tbaa !181, !alias.scope !2418, !noalias !2419
  %wide.load349 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !181, !alias.scope !2418, !noalias !2419
  %i.ev = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  %wide.load350 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !181, !alias.scope !2420, !noalias !2421
  %wide.load351 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !181, !alias.scope !2420, !noalias !2421
  %i.ex = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.ey = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  store <2 x i64> %wide.load350, ptr %i.ex, align 8, !tbaa !181, !alias.scope !2418, !noalias !2419
  store <2 x i64> %wide.load351, ptr %i.ey, align 8, !tbaa !181, !alias.scope !2418, !noalias !2419
  %i.ez = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.fa = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  store <2 x ptr> %wide.load348, ptr %i.ez, align 8, !tbaa !181, !alias.scope !2420, !noalias !2421
  store <2 x ptr> %wide.load349, ptr %i.fa, align 8, !tbaa !181, !alias.scope !2420, !noalias !2421
  %index.next352 = add nuw i64 %index345, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next352, %n.vec343
  br i1 %i.fb, label %middle.block353, label %vector.body344, !llvm.loop !2401

middle.block353:                                  ; preds = %vector.body344
  %cmp.n354 = icmp eq i64 %i.el, %n.vec343
  br i1 %cmp.n354, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34.preheader415

.lr.ph.i34.preheader415:                          ; preds = %vector.memcheck338, %.lr.ph.i34.preheader, %middle.block353
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck338 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.eq, %middle.block353 ]
  %.ph416 = phi ptr [ %i.cd, %vector.memcheck338 ], [ %i.cd, %.lr.ph.i34.preheader ], [ %i.er, %middle.block353 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader415, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fe, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader415 ]
  %i.fc = phi ptr [ %i.fd, %.lr.ph.i34 ], [ %.ph416, %.lr.ph.i34.preheader415 ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fd, align 8, !tbaa !181, !noalias !2421
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !181, !noalias !2421
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !181, !noalias !2421
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fe, align 8, !tbaa !181, !noalias !2421
  %.not.i36 = icmp eq ptr %i.fd, %i.ad
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34, !llvm.loop !2402

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block400, %middle.block353, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.fe, %.lr.ph.i34 ], [ %i.cd, %bb.t ], [ %i.dh, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.ct, %middle.block ], [ %i.eq, %middle.block353 ], [ %i.ds, %middle.block400 ], [ %i.ef, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !569
  %i.fg = load ptr, ptr %1, align 8, !tbaa !569   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ad, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.fi, align 8, !tbaa !181
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !181
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !181
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fj, align 8, !tbaa !181
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.fl = load ptr, ptr %2, align 8, !tbaa !569   ; 2 uses
  %i.fm = icmp eq ptr %i.fh, %i.fl
  br i1 %i.fm, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fn, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fg, %bb.y ], [ %i.fh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !569
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !569
  %i.fo = load ptr, ptr %1, align 8, !tbaa !569
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8 ; 2 uses
  store ptr %i.fp, ptr %1, align 8, !tbaa !569
  %i.fq = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fq to i64
  %i.fr = add i64 %.0155, %.neg
  %i.fs = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.fs to i64
  %i.ft = add i64 %.sroa.speculated, %.neg24
  %i.fu = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2403

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit, %bb.a
  %i.fv = load ptr, ptr %6, align 8, !tbaa !569
  store ptr %i.fv, ptr %0, align 8, !tbaa !569
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEET_S1X_S1X_RS1X_S1X_S1X_RSJ_S1Z_SN_SR_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !217    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !217    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !217    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_T_S1X_RSJ_SJ_S1Y_RSN_SR_SW_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !186
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !186
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %bb.c, !llvm.loop !77

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_RT_S1X_RSJ_SJ_S1Z_SN_SR_SW_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !181
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !181
  store i64 %i.q, ptr %i.m, align 8, !tbaa !181
  %i.r = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !181
  %i.s = load i64, ptr %i.d, align 8, !tbaa !181
  store i64 %i.s, ptr %4, align 8, !tbaa !181
  store i64 %i.p, ptr %i.d, align 8, !tbaa !181
  %.03762.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04163.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4864.i = icmp eq ptr %.04163.i, %1
  br i1 %.not4864.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_T_S1X_RSJ_SJ_S1Y_RSN_SR_SW_.exit.thread91, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04169.i = phi ptr [ %.041.i, %bb.j ], [ %.04163.i, %bb.f ] ; 10 uses
  %.03768.i = phi ptr [ %.037.i, %bb.j ], [ %.03762.i, %bb.f ] ; 5 uses
  %.067.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 7 uses
  %.03566.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03965.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 13 uses
  %i.t = icmp eq ptr %.03566.i, %3
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %i.u = add i64 %i.a, -16
  %i.v = shl i64 %indvar, 3
  %i.w = add i64 %i.v, %i.j
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader302, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %i.ab = and i64 %i.x, -8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEET_S1Z_S1Z_RS1Z_S1Z_S1Z_RSJ_S21_SN_SR_:bb.a
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.aq, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.au = icmp eq ptr %.054.i, %3
  br i1 %i.au, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03253.i248.le = ptrtoaddr ptr %.03253.i to i64
  %i.av = add i64 %i.a, -16
  %i.aw = sub i64 %i.av, %i.i
  %i.ax = mul i64 %indvar249, -8                  ; 2 uses
  %i.ay = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check252 = icmp ult i64 %i.ay, 184
  br i1 %min.iters.check252, label %.lr.ph.i.i40.preheader291, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i40.preheader
  %reass.sub268 = sub i64 %i.ax, %i.i
  %op.rdx = add i64 %.03253.i248.le, -9
  %op.rdx269 = add i64 %op.rdx, %reass.sub268
  %diff.check254 = icmp ult i64 %op.rdx269, 31
  br i1 %diff.check254, label %.lr.ph.i.i40.preheader291, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck253
  %n.vec256 = and i64 %i.ba, 4611686018427387900  ; 3 uses
  %i.bb = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.03253.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %.03456.i, i64 %i.bb
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.be = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03253.i, i64 %i.be ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.03456.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x i64>, ptr %next.gep260, align 8, !tbaa !252
  %wide.load262 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !252
  %i.bg = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x i64> %wide.load261, ptr %next.gep259, align 8, !tbaa !252
  store <2 x i64> %wide.load262, ptr %i.bg, align 8, !tbaa !252
  %index.next263 = add nuw i64 %index258, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.bh, label %middle.block264, label %vector.body257, !llvm.loop !3234

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.ba, %n.vec256
  br i1 %cmp.n265, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i.i40.preheader291

.lr.ph.i.i40.preheader291:                        ; preds = %vector.memcheck253, %.lr.ph.i.i40.preheader, %middle.block264
  %.010.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck253 ], [ %.03253.i, %.lr.ph.i.i40.preheader ], [ %i.bc, %middle.block264 ]
  %.079.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck253 ], [ %.03456.i, %.lr.ph.i.i40.preheader ], [ %i.bd, %middle.block264 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader291, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bk, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader291 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bj, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader291 ] ; 2 uses
  %i.bi = load i64, ptr %.079.i.i42, align 8, !tbaa !252
  store i64 %i.bi, ptr %.010.i.i41, align 8, !tbaa !252
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i.i40, !llvm.loop !3235

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bl = load ptr, ptr %.03253.i, align 8, !tbaa !257
  %i.bm = load ptr, ptr %.054.i, align 8, !tbaa !257
  %.not42.i = icmp ult ptr %i.bl, %i.bm           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i64, ptr %.03456.i, align 8, !tbaa !252
  store i64 %storemerge43.i, ptr %.03055.i, align 8, !tbaa !252
  %.03253.val.i = load i64, ptr %.03253.i, align 8
  %.054.val.i = load i64, ptr %.054.i, align 8
  %storemerge.i = select i1 %.not42.i, i64 %.03253.val.i, i64 %.054.val.i
  store i64 %storemerge.i, ptr %.03456.i, align 8, !tbaa !252
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.bn = icmp eq ptr %.034.i, %1
  %indvar.next250 = add i64 %indvar249, 1
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit, label %.lr.ph.i34, !llvm.loop !3236

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block264, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block264 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block264 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block264 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block264 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.z, %middle.block ], [ %i.bc, %middle.block264 ], [ %.030.i, %bb.m ], [ %i.bk, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bv, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.br, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bs, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bo = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bp = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not42.i47 = icmp ult ptr %i.bo, %i.bp
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bq, ptr %.030.i46, align 8, !tbaa !252
  %i.bt = load i64, ptr %.026.i, align 8, !tbaa !252
  store i64 %i.bt, ptr %.025.i, align 8, !tbaa !252
  %.not44.i = icmp eq ptr %i.br, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %bb.n, !llvm.loop !3237

bb.o:                                             ; preds = %bb.n
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bu, ptr %.030.i46, align 8, !tbaa !252
  %.not43.i = icmp eq ptr %i.bv, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.outer.i, !llvm.loop !3237

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit ], [ %i.aq, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.by, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.by, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.ca, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bw = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.bx = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not37.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.bz, ptr %.024.i, align 8, !tbaa !252
  %i.cb = icmp eq ptr %i.ca, %3
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i, !llvm.loop !3238

bb.q:                                             ; preds = %.preheader.i
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cc, ptr %.024.i, align 8, !tbaa !252
  %i.ce = icmp eq ptr %i.cd, %.091
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit, label %.preheader.i.outer, !llvm.loop !3238

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_RT_S1Z_RSJ_SJ_S21_SN_SR_SW_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %i.br, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.ca, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bv, %bb.o ]
  %i.cf = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.by, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEENS0_7move_opEEESN_T_S1Z_RSJ_SJ_S20_RSN_SR_SW_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.by, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !275
  store ptr %.090, ptr %6, align 8, !tbaa !275
  store ptr %.178, ptr %2, align 8, !tbaa !275
  ret ptr %i.cf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1O_S1O_S1Z_NS0_7swap_opEEESX_T_S21_SK_SO_RSS_SS_SX_NS0_9iter_sizeISO_E4typeES25_S25_S25_S10_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.953") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #3 comdat {
bb.a:
  %.not153 = icmp eq i64 %8, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !685
  %i.b = shl i64 %7, 3
  %12 = add i64 %i.b, -8                          ; 2 uses
  %i.c = shl i64 %7, 3
  %invariant.op = add i64 %i.c, -8
  %i.d = shl i64 %7, 3
  %invariant.op527 = add i64 %i.d, -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit
  %i.e = phi ptr [ %.pre, %.lr.ph ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.ft, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 3 uses
  %.0155 = phi i64 [ %9, %.lr.ph ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 4 uses
  %.0110154 = phi i64 [ %8, %.lr.ph ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit ] ; 2 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !685    ; 11 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 6 uses
  %i.h = icmp ult i64 %.0155, %.0
  br i1 %i.h, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread22.i
  %.025.i = phi i64 [ %i.aa, %.thread22.i ], [ %.0155, %bb.b ] ; 4 uses
  %.01824.i = phi i64 [ %i.z, %.thread22.i ], [ 0, %bb.b ] ; 4 uses
  %i.i = mul i64 %.01824.i, %7
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.j
  %i.l = mul i64 %.025.i, %7
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m
  %i.o = xor i64 %.01824.i, -1
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  %i.q = xor i64 %.025.i, -1
  %i.r = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.q
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !257  ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !257  ; 2 uses
  %i.u = icmp ult ptr %i.s, %i.t
  br i1 %i.u, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = icmp ult ptr %i.t, %i.s
  br i1 %i.v, label %.thread22.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !257
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !257
  %i.y = icmp ult ptr %i.w, %i.x
  %cond.fr.i = freeze i1 %i.y
  br i1 %cond.fr.i, label %.thread.i, label %.thread22.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.z = phi i64 [ %.025.i, %.thread.i ], [ %.01824.i, %bb.d ], [ %.01824.i, %bb.c ] ; 2 uses
  %i.aa = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit, label %.lr.ph.i, !llvm.loop !98

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit: ; preds = %.thread22.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.z, %.thread22.i ] ; 6 uses
  %i.ab = add i64 %.018.lcssa.i, 2
  %i.ac = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.ab) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.0110154)
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 14 uses
  %i.ae = mul i64 %7, %.018.lcssa.i
  %i.af = sub i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.af ; 11 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.a ; 2 uses
  %.not23 = icmp eq i64 %.018.lcssa.i, 0          ; 3 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !685   ; 5 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !685   ; 8 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !685, !noalias !120 ; 7 uses
  %.not21.i.i = icmp eq ptr %i.ai, %i.ak
  %or.cond.i26 = select i1 %.not.i.i, i1 true, i1 %.not21.i.i ; 4 uses
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit
  br i1 %11, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %.split.i.i
  %.sroa.028.0.i = phi ptr [ %i.as, %.split.i.i ], [ %i.aj, %bb.f ]
  %.sroa.013.0.ph.i.i = phi ptr [ %i.al, %.split.i.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.sroa.017.0.ph.i.i = phi ptr [ %i.ar, %.split.i.i ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.022.0.ph.i.i = phi ptr [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.028.1.i = phi ptr [ %.sroa.028.0.i, %.outer.i.i ], [ %i.aw, %bb.h ] ; 2 uses
  %.sroa.022.0.i.i = phi ptr [ %.sroa.022.0.ph.i.i, %.outer.i.i ], [ %i.am, %bb.h ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.022.0.i.i, i64 -8 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3278 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !noalias !3278 ; 2 uses
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i.i, i64 -8 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !252, !noalias !3278
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !252, !noalias !3278
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !252, !noalias !3278
  store i64 %i.au, ptr %i.al, align 8, !tbaa !252, !noalias !3278
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !252, !noalias !3278
  %.not35.i.i = icmp eq ptr %i.ar, %i.ad
  br i1 %.not35.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i.i, !llvm.loop !3243

bb.h:                                             ; preds = %bb.g
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !252, !noalias !3278
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !252, !noalias !3278
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.am, align 8, !tbaa !252, !noalias !3278
  %.not34.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not34.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.g, !llvm.loop !3243

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.021.0.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.aj, %bb.i ]
  %.sroa.013.0.ph.i9.i = phi ptr [ %i.ax, %.split.i14.i ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i10.i = phi ptr [ %i.bc, %.split.i14.i ], [ %i.f, %bb.i ] ; 2 uses
  %.sroa.022.0.ph.i11.i = phi ptr [ %.sroa.022.0.i12.i, %.split.i14.i ], [ %i.ak, %bb.i ]
  %i.ax = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.021.1.i = phi ptr [ %.sroa.021.0.i, %.outer.i8.i ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.022.0.i12.i = phi ptr [ %.sroa.022.0.ph.i11.i, %.outer.i8.i ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.022.0.i12.i, i64 -8 ; 5 uses
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !3279 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !3279 ; 2 uses
  %.not34.i13.i = icmp ult ptr %i.az, %i.ba
  br i1 %.not34.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i10.i, i64 -8 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !252, !noalias !3279
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !252, !noalias !3279
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !252, !noalias !3279
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !252, !noalias !3279
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !252, !noalias !3279
  %.not36.i.i = icmp eq ptr %i.bc, %i.ad
  br i1 %.not36.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !3246

bb.k:                                             ; preds = %bb.j
  %i.bg = ptrtoint ptr %i.ba to i64
  %i.bh = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i19.i = load ptr, ptr %i.bh, align 8, !tbaa !252, !noalias !3279
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !252, !noalias !3279
  store ptr %.sroa.0.0.copyload.i.i19.i, ptr %i.ay, align 8, !tbaa !252, !noalias !3279
  %.not35.i20.i = icmp eq ptr %i.ay, %i.ai
  br i1 %.not35.i20.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %bb.j, !llvm.loop !3246

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEES1O_S1Z_EENS0_9iter_sizeISO_E4typeET_SK_SO_S22_S22_S22_SS_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bn, %bb.n ], [ %i.aj, %bb.m ]
  %.sroa.08.0.i.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.f, %bb.m ] ; 3 uses
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.ak, %bb.m ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !3280 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !noalias !3280 ; 2 uses
  %i.bm = icmp ult ptr %i.bk, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bn, align 8, !tbaa !252, !noalias !3280 ; 2 uses
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bo = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !252, !noalias !3280
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bo, align 8, !tbaa !252, !noalias !3280
  %i.bq = icmp eq ptr %i.bo, %i.ad
  br i1 %i.bq, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !3251

bb.o:                                             ; preds = %.preheader.i.i
  %i.br = ptrtoint ptr %i.bk to i64
  store i64 %i.br, ptr %i.bn, align 8, !tbaa !252, !noalias !3280
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bj, align 8, !tbaa !252, !noalias !3280
  %i.bs = icmp eq ptr %i.bj, %i.ai
  br i1 %i.bs, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !3251

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bx, %bb.q ], [ %i.aj, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.f, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.ak, %bb.p ]
  %i.bt = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bx, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !noalias !3281 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !3281 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.bv, %i.bw
  %i.bx = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.bx, align 8, !tbaa !252, !noalias !3281 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !252, !noalias !3281
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.by, align 8, !tbaa !252, !noalias !3281
  %i.ca = icmp eq ptr %i.by, %i.ad
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !3254

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cb = ptrtoint ptr %i.bw to i64
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !252, !noalias !3281
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bu, align 8, !tbaa !252, !noalias !3281
  %i.cc = icmp eq ptr %i.bu, %i.ai
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !3254

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.am, %bb.h ], [ %i.ay, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bj, %bb.o ], [ %i.bu, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.ad, %bb.q ], [ %i.ad, %bb.n ], [ %i.f, %bb.p ], [ %i.f, %bb.m ], [ %i.ad, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.ad, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.aw, %bb.h ], [ %i.bh, %bb.k ], [ %i.bx, %bb.r ], [ %i.bn, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.as, %.split.i.i ], [ %i.bn, %bb.n ], [ %i.bx, %bb.q ], [ %i.bd, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ag, %bb.r ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %i.al, %.split.i.i ], [ %i.ag, %bb.n ], [ %i.ag, %bb.q ], [ %i.ax, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !685, !noalias !120
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !685, !noalias !120
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 17 uses
  %.sroa.078.0 = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit.sink.split ] ; 16 uses
  %.sroa.078.0323 = ptrtoaddr ptr %.sroa.078.0 to i64
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !685
  %i.cd = load ptr, ptr %3, align 8, !tbaa !685   ; 23 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 4 uses
  %i.cf = icmp eq ptr %i.cd, %.sroa.071.0
  br i1 %i.cf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ah
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.t
  %i.cg = shl i64 %.018.lcssa.i, 3
  %.neg408.a = add i64 %i.cg, 8
  %.neg409.a = mul i64 %.neg408.a, %7
  %i.ch = add i64 %.sroa.078.0323, -8             ; 2 uses
  %i.ci = add i64 %.neg409.a, %i.ch
  %i.cj = sub i64 %i.ci, %i.g                     ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 88
  br i1 %min.iters.check, label %.lr.ph.i29.preheader414, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i29.preheader
  %i.cm = shl i64 %.018.lcssa.i, 3
  %.neg410.a = add i64 %i.cm, 8
  %.neg411 = mul i64 %.neg410.a, %7
  %i.cn = add i64 %.neg411, %i.ch
  %i.co = xor i64 %i.cn, -1
  %.not412 = add i64 %i.co, %i.g
  %i.cp = and i64 %.not412, -8                    ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.078.0, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cd, i64 %i.cp
  %bound0 = icmp ult ptr %i.cq, %i.cd
  %bound1 = icmp ult ptr %i.cr, %.sroa.078.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i29.preheader414, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cs = mul i64 %n.vec, -8                      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cd, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.078.0, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.cv ; 4 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.078.0, i64 %i.cv ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !252, !alias.scope !3282, !noalias !3283
  %wide.load325 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !252, !alias.scope !3282, !noalias !3283
  %i.cy = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load326 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !252, !alias.scope !3284, !noalias !3285
  %wide.load327 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !252, !alias.scope !3284, !noalias !3285
  %i.da = getelementptr inbounds i8, ptr %next.gep324, i64 -16
  %i.db = getelementptr inbounds i8, ptr %next.gep324, i64 -32
  store <2 x i64> %wide.load326, ptr %i.da, align 8, !tbaa !252, !alias.scope !3282, !noalias !3283
  store <2 x i64> %wide.load327, ptr %i.db, align 8, !tbaa !252, !alias.scope !3282, !noalias !3283
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.dc, align 8, !tbaa !252, !alias.scope !3284, !noalias !3285
  store <2 x ptr> %wide.load325, ptr %i.dd, align 8, !tbaa !252, !alias.scope !3284, !noalias !3285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !3260

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29.preheader414

.lr.ph.i29.preheader414:                          ; preds = %vector.memcheck, %.lr.ph.i29.preheader, %middle.block
  %.sroa.059.0.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.i29.preheader ], [ %i.ct, %middle.block ]
  %.ph = phi ptr [ %.sroa.078.0, %vector.memcheck ], [ %.sroa.078.0, %.lr.ph.i29.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader414, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %.sroa.059.0.ph, %.lr.ph.i29.preheader414 ]
  %i.df = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.ph, %.lr.ph.i29.preheader414 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dg, align 8, !tbaa !252, !noalias !3285
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !252, !noalias !3285
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !252, !noalias !3285
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dh, align 8, !tbaa !252, !noalias !3285
  %.not.i = icmp eq ptr %i.dg, %i.ah
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i29, !llvm.loop !3261

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_S1O_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS1M_ES1M_NS_11move_detail8identityIS1M_EEEEEENS0_7swap_opEEESO_RT_S21_RSK_SK_S23_SO_SS_SX_b.exit
  %.not1.i32 = icmp eq ptr %i.cd, %i.ad           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.ce, %invariant.op
  %i.dj = sub i64 %.reass, %i.g                   ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.dj, 88
  br i1 %min.iters.check374, label %.lr.ph.i30.preheader418, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i30.preheader
  %reass.sub = sub i64 %i.ce, %i.g
  %.not405.a = add i64 %12, %reass.sub
  %i.dm = and i64 %.not405.a, -8
  %13 = xor i64 %i.dm, -8                         ; 3 uses
  %i.dn = getelementptr i8, ptr %.sroa.071.0, i64 %13 ; 2 uses
  %i.do = getelementptr i8, ptr %.sroa.078.0, i64 %13 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cd, i64 %13    ; 2 uses
  %bound0376 = icmp ult ptr %i.dn, %.sroa.078.0
  %bound1377 = icmp ult ptr %i.do, %.sroa.071.0
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %i.dn, %i.cd
  %bound1380 = icmp ult ptr %i.dp, %.sroa.071.0
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict378, %found.conflict381
  %bound0382 = icmp ult ptr %i.do, %i.cd
  %bound1383 = icmp ult ptr %i.dp, %.sroa.078.0
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  br i1 %conflict.rdx385, label %.lr.ph.i30.preheader418, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck375
  %n.vec387 = and i64 %i.dl, 4611686018427387900  ; 3 uses
  %i.dq = mul i64 %n.vec387, -8                   ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.078.0, i64 %i.dq
  %i.ds = getelementptr i8, ptr %.sroa.071.0, i64 %i.dq ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cd, i64 %i.dq
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next399, %vector.body388 ] ; 2 uses
  %i.du = mul i64 %index389, -8                   ; 3 uses
  %next.gep390 = getelementptr i8, ptr %.sroa.078.0, i64 %i.du ; 2 uses
  %next.gep391 = getelementptr i8, ptr %.sroa.071.0, i64 %i.du ; 2 uses
  %next.gep392 = getelementptr i8, ptr %i.cd, i64 %i.du ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %next.gep391, i64 -16 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep391, i64 -32 ; 2 uses
  %wide.load393 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !252, !alias.scope !3286, !noalias !3287
  %wide.load394 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !252, !alias.scope !3286, !noalias !3287
  %i.dx = getelementptr inbounds i8, ptr %next.gep390, i64 -16 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %next.gep390, i64 -32 ; 2 uses
  %wide.load395 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !252, !alias.scope !3288, !noalias !3289
  %wide.load396 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !252, !alias.scope !3288, !noalias !3289
  store <2 x i64> %wide.load395, ptr %i.dv, align 8, !tbaa !252, !alias.scope !3286, !noalias !3287
  store <2 x i64> %wide.load396, ptr %i.dw, align 8, !tbaa !252, !alias.scope !3286, !noalias !3287
  %i.dz = getelementptr inbounds i8, ptr %next.gep392, i64 -16 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %next.gep392, i64 -32 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !252, !alias.scope !3290, !noalias !3291
  %wide.load398 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !252, !alias.scope !3290, !noalias !3291
  store <2 x i64> %wide.load397, ptr %i.dx, align 8, !tbaa !252, !alias.scope !3288, !noalias !3289
  store <2 x i64> %wide.load398, ptr %i.dy, align 8, !tbaa !252, !alias.scope !3288, !noalias !3289
  store <2 x i64> %wide.load393, ptr %i.dz, align 8, !tbaa !252, !alias.scope !3290, !noalias !3291
  store <2 x i64> %wide.load394, ptr %i.ea, align 8, !tbaa !252, !alias.scope !3290, !noalias !3291
  %index.next399 = add nuw i64 %index389, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next399, %n.vec387
  br i1 %i.eb, label %middle.block400, label %vector.body388, !llvm.loop !3268

middle.block400:                                  ; preds = %vector.body388
  %cmp.n401 = icmp eq i64 %i.dl, %n.vec387
  br i1 %cmp.n401, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30.preheader418

.lr.ph.i30.preheader418:                          ; preds = %vector.memcheck375, %.lr.ph.i30.preheader, %middle.block400
  %.sroa.053.0.ph = phi ptr [ %.sroa.078.0, %vector.memcheck375 ], [ %.sroa.078.0, %.lr.ph.i30.preheader ], [ %i.dr, %middle.block400 ]
  %.sroa.052.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck375 ], [ %.sroa.071.0, %.lr.ph.i30.preheader ], [ %i.ds, %middle.block400 ]
  %.ph419 = phi ptr [ %i.cd, %vector.memcheck375 ], [ %i.cd, %.lr.ph.i30.preheader ], [ %i.dt, %middle.block400 ]
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader418, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ee, %.lr.ph.i30 ], [ %.sroa.053.0.ph, %.lr.ph.i30.preheader418 ]
  %.sroa.052.0 = phi ptr [ %i.ef, %.lr.ph.i30 ], [ %.sroa.052.0.ph, %.lr.ph.i30.preheader418 ]
  %i.ec = phi ptr [ %i.ed, %.lr.ph.i30 ], [ %.ph419, %.lr.ph.i30.preheader418 ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 4 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !252, !noalias !3291
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !252, !noalias !3291
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !252, !noalias !3291
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !252, !noalias !3291
  store i64 %i.ei, ptr %i.ee, align 8, !tbaa !252, !noalias !3291
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !252, !noalias !3291
  %.not.i31 = icmp eq ptr %i.ed, %i.ad
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i30, !llvm.loop !3269

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass528 = add i64 %i.ce, %invariant.op527
  %i.ej = sub i64 %.reass528, %i.g                ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ej, 56
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader415, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i34.preheader
  %reass.sub407 = sub i64 %i.ce, %i.g
  %.not406.a = add i64 %12, %reass.sub407
  %i.em = and i64 %.not406.a, -8
  %14 = xor i64 %i.em, -8                         ; 2 uses
  %i.en = getelementptr i8, ptr %i.cd, i64 %14
  %i.eo = getelementptr i8, ptr %.sroa.071.0, i64 %14
  %bound0339 = icmp ult ptr %i.en, %.sroa.071.0
  %bound1340 = icmp ult ptr %i.eo, %i.cd
  %found.conflict341 = and i1 %bound0339, %bound1340
  br i1 %found.conflict341, label %.lr.ph.i34.preheader415, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.ep = mul i64 %n.vec343, -8                   ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.071.0, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.cd, i64 %i.ep
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next352, %vector.body344 ] ; 2 uses
  %i.es = mul i64 %index345, -8                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.071.0, i64 %i.es ; 4 uses
  %next.gep347 = getelementptr i8, ptr %i.cd, i64 %i.es ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  %wide.load348 = load <2 x ptr>, ptr %i.et, align 8, !tbaa !252, !alias.scope !3292, !noalias !3293
  %wide.load349 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !252, !alias.scope !3292, !noalias !3293
  %i.ev = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  %wide.load350 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !252, !alias.scope !3294, !noalias !3295
  %wide.load351 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !252, !alias.scope !3294, !noalias !3295
  %i.ex = getelementptr inbounds i8, ptr %next.gep347, i64 -16
  %i.ey = getelementptr inbounds i8, ptr %next.gep347, i64 -32
  store <2 x i64> %wide.load350, ptr %i.ex, align 8, !tbaa !252, !alias.scope !3292, !noalias !3293
  store <2 x i64> %wide.load351, ptr %i.ey, align 8, !tbaa !252, !alias.scope !3292, !noalias !3293
  %i.ez = getelementptr inbounds i8, ptr %next.gep346, i64 -16
  %i.fa = getelementptr inbounds i8, ptr %next.gep346, i64 -32
  store <2 x ptr> %wide.load348, ptr %i.ez, align 8, !tbaa !252, !alias.scope !3294, !noalias !3295
  store <2 x ptr> %wide.load349, ptr %i.fa, align 8, !tbaa !252, !alias.scope !3294, !noalias !3295
  %index.next352 = add nuw i64 %index345, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next352, %n.vec343
  br i1 %i.fb, label %middle.block353, label %vector.body344, !llvm.loop !3275

middle.block353:                                  ; preds = %vector.body344
  %cmp.n354 = icmp eq i64 %i.el, %n.vec343
  br i1 %cmp.n354, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34.preheader415

.lr.ph.i34.preheader415:                          ; preds = %vector.memcheck338, %.lr.ph.i34.preheader, %middle.block353
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck338 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.eq, %middle.block353 ]
  %.ph416 = phi ptr [ %i.cd, %vector.memcheck338 ], [ %i.cd, %.lr.ph.i34.preheader ], [ %i.er, %middle.block353 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader415, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fe, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader415 ]
  %i.fc = phi ptr [ %i.fd, %.lr.ph.i34 ], [ %.ph416, %.lr.ph.i34.preheader415 ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fd, align 8, !tbaa !252, !noalias !3295
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !252, !noalias !3295
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !252, !noalias !3295
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fe, align 8, !tbaa !252, !noalias !3295
  %.not.i36 = icmp eq ptr %i.fd, %i.ad
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, label %.lr.ph.i34, !llvm.loop !3276

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block400, %middle.block353, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ad, %bb.s ], [ %i.fe, %.lr.ph.i34 ], [ %i.cd, %bb.t ], [ %i.dh, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.ct, %middle.block ], [ %i.eq, %middle.block353 ], [ %i.ds, %middle.block400 ], [ %i.ef, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !685
  %i.fg = load ptr, ptr %1, align 8, !tbaa !685   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ad, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.fi, align 8, !tbaa !252
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !252
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !252
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fj, align 8, !tbaa !252
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit.i
  %i.fl = load ptr, ptr %2, align 8, !tbaa !685   ; 2 uses
  %i.fm = icmp eq ptr %i.fh, %i.fl
  br i1 %i.fm, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fn, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fg, %bb.y ], [ %i.fh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !685
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEEEES1N_EESJ_T_S1O_SJ_.exit, %bb.z, %.sink.split.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !685
  %i.fo = load ptr, ptr %1, align 8, !tbaa !685
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8 ; 2 uses
  store ptr %i.fp, ptr %1, align 8, !tbaa !685
  %i.fq = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fq to i64
  %i.fr = add i64 %.0155, %.neg
  %i.fs = icmp ne i64 %i.ac, 0
  %.neg24 = sext i1 %i.fs to i64
  %i.ft = add i64 %.sroa.speculated, %.neg24
  %i.fu = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3277

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS9_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSG_IiLin1ELin1ELi0ELin1ELin1EEESH_SH_SI_EEvRKNSF_10MatrixBaseIT0_EERKNSJ_IT1_EERKNSJ_IT2_EEbRNSF_15PlainObjectBaseIT3_EERNSW_IT4_EEE9FaceInfo2S9_NS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS13_S9_NS14_IS9_NS15_IvEEEEEEEEEEEEEEEEEENS4_7DefaultES1K_S1K_EELb0EEEEES1O_EEvT_S1P_RS1P_SK_SK_SK_.exit, %bb.a
  %i.fv = load ptr, ptr %6, align 8, !tbaa !685
  store ptr %i.fv, ptr %0, align 8, !tbaa !685
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEET_S1X_S1X_RS1X_S1X_S1X_RSJ_S1Z_SN_SR_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !275    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !275    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !275    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_T_S1X_RSJ_SJ_S1Y_RSN_SR_SW_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !257
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !257
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit, label %bb.c, !llvm.loop !104

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEEEET_S1W_S1W_RKNS0_15iterator_traitsIS1W_E10value_typeESJ_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_RT_S1X_RSJ_SJ_S1Z_SN_SR_SW_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !252
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !252
  store i64 %i.q, ptr %i.m, align 8, !tbaa !252
  %i.r = load i64, ptr %4, align 8, !tbaa !252
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !252
  %i.s = load i64, ptr %i.d, align 8, !tbaa !252
  store i64 %i.s, ptr %4, align 8, !tbaa !252
  store i64 %i.p, ptr %i.d, align 8, !tbaa !252
  %.03762.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04163.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4864.i = icmp eq ptr %.04163.i, %1
  br i1 %.not4864.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_35Triangulation_face_base_with_info_2IZN3igl8copyleft4cgal11triangulateIS8_N5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSF_IiLin1ELin1ELi0ELin1ELin1EEESG_SG_SH_EEvRKNSE_10MatrixBaseIT0_EERKNSI_IT1_EERKNSI_IT2_EEbRNSE_15PlainObjectBaseIT3_EERNSV_IT4_EEE9FaceInfo2S8_NS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS12_S8_NS13_IS8_NS14_IvEEEEEEEEEEEEEEEEEENS3_7DefaultES1J_S1J_EELb0EEES1M_S1M_NS_9container3dtl23flat_tree_value_compareISt4lessIS1L_ES1L_NS_11move_detail8identityIS1L_EEEENS0_7swap_opEEESN_T_S1X_RSJ_SJ_S1Y_RSN_SR_SW_.exit.thread91, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04169.i = phi ptr [ %.041.i, %bb.j ], [ %.04163.i, %bb.f ] ; 10 uses
  %.03768.i = phi ptr [ %.037.i, %bb.j ], [ %.03762.i, %bb.f ] ; 5 uses
  %.067.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 7 uses
  %.03566.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03965.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 13 uses
  %i.t = icmp eq ptr %.03566.i, %3
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %i.u = add i64 %i.a, -16
  %i.v = shl i64 %indvar, 3
  %i.w = add i64 %i.v, %i.j
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader302, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %i.ab = and i64 %i.x, -8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
end_hunk_1
