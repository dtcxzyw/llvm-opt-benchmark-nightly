inline.NumInlined: 12291
inline.NumDeleted: 3794
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7move_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %wide.load320 = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !69, !alias.scope !1979, !noalias !1982
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load321 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !69, !alias.scope !1986, !noalias !1987
  %wide.load322 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !69, !alias.scope !1986, !noalias !1987
  %i.cu = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.cv = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  store <2 x i64> %wide.load321, ptr %i.cu, align 8, !tbaa !69, !alias.scope !1979, !noalias !1982
  store <2 x i64> %wide.load322, ptr %i.cv, align 8, !tbaa !69, !alias.scope !1979, !noalias !1982
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.cw, align 8, !tbaa !69, !alias.scope !1986, !noalias !1987
  store <2 x ptr> %wide.load320, ptr %i.cx, align 8, !tbaa !69, !alias.scope !1986, !noalias !1987
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !1988

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader329

.lr.ph.i28.preheader329:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.055.0.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i28.preheader ], [ %i.cn, %middle.block ]
  %.ph = phi ptr [ %.sroa.074.0, %vector.memcheck ], [ %.sroa.074.0, %.lr.ph.i28.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader329, %.lr.ph.i28
  %.sroa.055.0 = phi ptr [ %i.db, %.lr.ph.i28 ], [ %.sroa.055.0.ph, %.lr.ph.i28.preheader329 ]
  %i.cz = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader329 ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.055.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.da, align 8, !tbaa !69, !noalias !1987
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !69, !noalias !1987
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !69, !noalias !1987
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.db, align 8, !tbaa !69, !noalias !1987
  %.not.i = icmp eq ptr %i.da, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !1989

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.by, %i.aa           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.049.0 = phi ptr [ %i.df, %.lr.ph.i29 ], [ %.sroa.074.0, %bb.v ]
  %.sroa.048.0 = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.sroa.067.0, %bb.v ]
  %i.dd = phi ptr [ %i.de, %.lr.ph.i29 ], [ %i.by, %bb.v ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !69, !noalias !1990
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !69, !noalias !1990
  %i.di = load i64, ptr %i.de, align 8, !tbaa !69, !noalias !1990
  store i64 %i.di, ptr %i.df, align 8, !tbaa !69, !noalias !1990
  %.not.i30 = icmp eq ptr %i.de, %i.aa
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !1993

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0101.0 = phi ptr [ %i.dl, %.lr.ph.i33 ], [ %.sroa.067.0, %bb.w ]
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i33 ], [ %i.by, %bb.w ]
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0101.0, i64 -8 ; 3 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !69, !noalias !1994
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !69, !noalias !1994
  %.not.i34 = icmp eq ptr %i.dk, %i.aa
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !1997

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.aa, %bb.s ], [ %i.dl, %.lr.ph.i33 ], [ %i.by, %bb.t ], [ %i.db, %.lr.ph.i28 ], [ %.sroa.067.0, %bb.v ], [ %.sroa.067.0, %bb.w ], [ %i.cn, %middle.block ], [ %i.dg, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1818
  %i.dn = load ptr, ptr %1, align 8, !tbaa !1818  ; 4 uses
  %.neg109 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.neg109 ; 3 uses
  %.not.i35 = icmp eq ptr %i.aa, %.sroa.074.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg109, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i37 = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !69
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i37, ptr %i.dq, align 8, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ds = load ptr, ptr %2, align 8, !tbaa !1818  ; 2 uses
  %i.dt = icmp eq ptr %i.do, %i.ds
  br i1 %i.dt, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = icmp eq ptr %i.ds, %i.dn
  br i1 %i.du, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dn, %bb.y ], [ %i.do, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1818
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !1818
  %i.dv = load ptr, ptr %1, align 8, !tbaa !1818
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 2 uses
  store ptr %i.dw, ptr %1, align 8, !tbaa !1818
  %i.dx = icmp ne i64 %.0151, 0
  %.neg = sext i1 %i.dx to i64
  %i.dy = add i64 %.0151, %.neg
  %i.dz = icmp ne i64 %i.z, 0
  %.neg24 = sext i1 %i.dz to i64
  %i.ea = add i64 %.sroa.speculated, %.neg24
  %i.eb = add i64 %.0106150, -1                   ; 2 uses
  %.not = icmp eq i64 %i.eb, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1998

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.ec = load ptr, ptr %6, align 8, !tbaa !1818
  store ptr %i.ec, ptr %0, align 8, !tbaa !1818
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !1579   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !1579   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !1579   ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !793
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !793
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !1999

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 8 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.p, ptr %i.m, align 8, !tbaa !69
  %i.q = load i64, ptr %4, align 8, !tbaa !69
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !69
  %i.r = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.r, ptr %4, align 8, !tbaa !69
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 8 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 11 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %.03962.i234.le = ptrtoaddr ptr %.03962.i to i64
  %i.t = add i64 %i.a, -16
  %7 = sub i64 %i.t, %i.j
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.u = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.v = mul i64 %indvar, -8
  %reass.sub = sub i64 %i.v, %i.j
  %op.rdx260 = add i64 %.03962.i234.le, -9
  %op.rdx261 = add i64 %op.rdx260, %reass.sub
  %diff.check = icmp ult i64 %op.rdx261, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader289, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %.03962.i, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %.04166.i, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.z ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.04166.i, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep235, align 8, !tbaa !69
  %wide.load236 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !69
  store <2 x i64> %wide.load236, ptr %i.ab, align 8, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2000

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader289

.lr.ph.i.i.preheader289:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader289, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader289 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader289 ] ; 2 uses
  %i.ad = load i64, ptr %.079.i.i, align 8, !tbaa !69
  store i64 %i.ad, ptr %.010.i.i, align 8, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2001

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ag = load ptr, ptr %.064.i, align 8, !tbaa !793
  %i.ah = load ptr, ptr %.03962.i, align 8, !tbaa !793
  %i.ai = icmp ult ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.03563.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.064.i, i64 8
  %i.al = load i64, ptr %.04166.i, align 8, !tbaa !69
  store i64 %i.al, ptr %.03765.i, align 8, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03962.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04166.sink85.i = phi ptr [ %.04166.i, %bb.i ], [ %.064.i, %bb.h ] ; 2 uses
  %.03765.sink.i = phi ptr [ %.03765.i, %bb.i ], [ %.04166.i, %bb.h ]
  %.03962.sink.i = phi ptr [ %.03962.i, %bb.i ], [ %.03563.i, %bb.h ]
  %.140.i = phi ptr [ %i.am, %bb.i ], [ %.03962.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03563.i, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.064.i, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.an = load i64, ptr %.04166.sink85.i, align 8, !tbaa !69
  store i64 %i.an, ptr %.03765.sink.i, align 8, !tbaa !69
  %i.ao = load i64, ptr %.03962.sink.i, align 8, !tbaa !69
  store i64 %i.ao, ptr %.04166.sink85.i, align 8, !tbaa !69
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2002

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aq = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.aq, ptr %i.m, align 8, !tbaa !69
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.ar, ptr %.0.lcssa.i, align 8, !tbaa !69
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.03451.i, %1
  br i1 %i.as, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar240 = phi i64 [ %indvar.next241, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 7 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 2 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ap, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 10 uses
  %i.at = icmp eq ptr %.053.i, %3
  br i1 %i.at, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03252.i239.le = ptrtoaddr ptr %.03252.i to i64
  %i.au = add i64 %i.a, -16
  %11 = sub i64 %i.au, %i.j
  %12 = lshr i64 %11, 3
  %13 = add nuw nsw i64 %12, 1
  %14 = mul i64 %indvar240, 2305843009213693951
  %i.av = add i64 %14, %13                        ; 3 uses
  %min.iters.check244 = icmp ult i64 %i.av, 24
  br i1 %min.iters.check244, label %.lr.ph.i.i40.preheader281, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.i.i40.preheader
  %i.aw = mul i64 %indvar240, -8
  %reass.sub258 = sub i64 %i.aw, %i.j
  %op.rdx = add i64 %.03252.i239.le, -9
  %op.rdx259 = add i64 %op.rdx, %reass.sub258
  %diff.check242 = icmp ult i64 %op.rdx259, 31
  br i1 %diff.check242, label %.lr.ph.i.i40.preheader281, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck238
  %n.vec246 = and i64 %i.av, -4                   ; 3 uses
  %i.ax = shl i64 %n.vec246, 3                    ; 2 uses
  %i.ay = getelementptr i8, ptr %.03252.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %.03455.i, i64 %i.ax
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.ba = shl i64 %index248, 3                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %.03252.i, i64 %i.ba ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.03455.i, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load251 = load <2 x i64>, ptr %next.gep250, align 8, !tbaa !69
  %wide.load252 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !69
  %i.bc = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x i64> %wide.load251, ptr %next.gep249, align 8, !tbaa !69
  store <2 x i64> %wide.load252, ptr %i.bc, align 8, !tbaa !69
  %index.next253 = add nuw i64 %index248, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.bd, label %middle.block254, label %vector.body247, !llvm.loop !2003

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.av, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader281

.lr.ph.i.i40.preheader281:                        ; preds = %vector.memcheck238, %.lr.ph.i.i40.preheader, %middle.block254
  %.010.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck238 ], [ %.03252.i, %.lr.ph.i.i40.preheader ], [ %i.ay, %middle.block254 ]
  %.079.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck238 ], [ %.03455.i, %.lr.ph.i.i40.preheader ], [ %i.az, %middle.block254 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader281, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bg, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader281 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bf, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader281 ] ; 2 uses
  %i.be = load i64, ptr %.079.i.i42, align 8, !tbaa !69
  store i64 %i.be, ptr %.010.i.i41, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2004

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bh = load ptr, ptr %.053.i, align 8, !tbaa !793
  %i.bi = load ptr, ptr %.03252.i, align 8, !tbaa !793
  %i.bj = icmp ult ptr %i.bh, %i.bi               ; 3 uses
  %.133.idx.i = select i1 %i.bj, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bj, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %storemerge42.i = load i64, ptr %.03455.i, align 8, !tbaa !69
  store i64 %storemerge42.i, ptr %.03054.i, align 8, !tbaa !69
  %.053.val.i = load i64, ptr %.053.i, align 8
  %.03252.val.i = load i64, ptr %.03252.i, align 8
  %storemerge.i = select i1 %i.bj, i64 %.053.val.i, i64 %.03252.val.i
  store i64 %storemerge.i, ptr %.03455.i, align 8, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 8 ; 2 uses
  %i.bk = icmp eq ptr %.034.i, %1
  %indvar.next241 = add i64 %indvar240, 1
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2005

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block254, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block254 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03252.i, %middle.block254 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.053.i, %middle.block254 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block254 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.x, %middle.block ], [ %i.ay, %middle.block254 ], [ %.030.i, %bb.m ], [ %i.bg, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.bt, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bp, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bq, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bl = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.bm = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bo, ptr %.030.i46, align 8, !tbaa !69
  %i.br = load i64, ptr %.026.i, align 8, !tbaa !69
  store i64 %i.br, ptr %.025.i, align 8, !tbaa !69
  %.not43.i = icmp eq ptr %i.bp, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2006

bb.o:                                             ; preds = %bb.n
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bs, ptr %.030.i46, align 8, !tbaa !69
  %.not42.i = icmp eq ptr %i.bt, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2006

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.ap, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bx, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cc, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bx, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bz, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bu = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.bv = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.bw = icmp ult ptr %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.by, ptr %.024.i, align 8, !tbaa !69
  %i.ca = icmp eq ptr %i.bz, %3
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2007

bb.q:                                             ; preds = %.preheader.i
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cb, ptr %.024.i, align 8, !tbaa !69
  %i.cd = icmp eq ptr %i.cc, %.086
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2007

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.cc, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bt, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %i.bp, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bz, %bb.p ], [ %.026.i, %bb.o ]
  %i.ce = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.bx, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bx, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !1579
  store ptr %.085, ptr %6, align 8, !tbaa !1579
  store ptr %.1, ptr %2, align 8, !tbaa !1579
  ret ptr %i.ce
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !1579   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !1579   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !1579   ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !793
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !793
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2008

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 8 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.o, ptr %i.l, align 8, !tbaa !69
  %i.p = load i64, ptr %4, align 8, !tbaa !69
  store i64 %i.p, ptr %.0.lcssa.i, align 8, !tbaa !69
  %i.q = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.q, ptr %4, align 8, !tbaa !69
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 8 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 3 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 6 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 11 uses
  %i.r = icmp eq ptr %.03564.i, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %.03963.i238.le = ptrtoaddr ptr %.03963.i to i64
  %i.s = add i64 %i.a, -16
  %8 = sub i64 %i.s, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.t = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader293, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = mul i64 %indvar, -8
  %reass.sub = sub i64 %i.u, %i.i
  %op.rdx264 = add i64 %.03963.i238.le, -9
  %op.rdx265 = add i64 %op.rdx264, %reass.sub
  %diff.check = icmp ult i64 %op.rdx265, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader293, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %.03963.i, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %.04167.i, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.y ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.04167.i, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !69
  %wide.load240 = load <2 x i64>, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !69
  store <2 x i64> %wide.load240, ptr %i.aa, align 8, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2009

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader293

.lr.ph.i.i.preheader293:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader293, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 2 uses
  %i.ac = load i64, ptr %.079.i.i, align 8, !tbaa !69
  store i64 %i.ac, ptr %.010.i.i, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2010

bb.g:                                             ; preds = %.lr.ph.i31
  %i.af = load ptr, ptr %.03963.i, align 8, !tbaa !793
  %i.ag = load ptr, ptr %.065.i, align 8, !tbaa !793
  %.not50.i = icmp ult ptr %i.af, %i.ag
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.03564.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.065.i, i64 8
  %i.aj = load i64, ptr %.04167.i, align 8, !tbaa !69
  store i64 %i.aj, ptr %.03766.i, align 8, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.03963.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04167.sink86.i = phi ptr [ %.04167.i, %bb.i ], [ %.065.i, %bb.h ] ; 2 uses
  %.03766.sink.i = phi ptr [ %.03766.i, %bb.i ], [ %.04167.i, %bb.h ]
  %.03963.sink.i = phi ptr [ %.03963.i, %bb.i ], [ %.03564.i, %bb.h ]
  %.140.i = phi ptr [ %i.ak, %bb.i ], [ %.03963.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03564.i, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.065.i, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.al = load i64, ptr %.04167.sink86.i, align 8, !tbaa !69
  store i64 %i.al, ptr %.03766.sink.i, align 8, !tbaa !69
  %i.am = load i64, ptr %.03963.sink.i, align 8, !tbaa !69
  store i64 %i.am, ptr %.04167.sink86.i, align 8, !tbaa !69
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2011

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ao = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !69
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.ap, ptr %.0.lcssa.i, align 8, !tbaa !69
  %.03051.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03452.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %.03452.i, %1
  br i1 %i.aq, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.m ], [ %.03452.i, %bb.l ] ; 7 uses
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.an, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.ar = icmp eq ptr %.054.i, %3
  br i1 %i.ar, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03253.i243.le = ptrtoaddr ptr %.03253.i to i64
  %i.as = add i64 %i.a, -16
  %12 = sub i64 %i.as, %i.i
  %13 = lshr i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = mul i64 %indvar244, 2305843009213693951
  %i.at = add i64 %15, %14                        ; 3 uses
  %min.iters.check248 = icmp ult i64 %i.at, 24
  br i1 %min.iters.check248, label %.lr.ph.i.i40.preheader285, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i40.preheader
  %i.au = mul i64 %indvar244, -8
  %reass.sub262 = sub i64 %i.au, %i.i
  %op.rdx = add i64 %.03253.i243.le, -9
  %op.rdx263 = add i64 %op.rdx, %reass.sub262
  %diff.check246 = icmp ult i64 %op.rdx263, 31
  br i1 %diff.check246, label %.lr.ph.i.i40.preheader285, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck242
  %n.vec250 = and i64 %i.at, -4                   ; 3 uses
  %i.av = shl i64 %n.vec250, 3                    ; 2 uses
  %i.aw = getelementptr i8, ptr %.03253.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %.03456.i, i64 %i.av
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.ay = shl i64 %index252, 3                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %.03253.i, i64 %i.ay ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.03456.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep254, i64 16
  %wide.load255 = load <2 x i64>, ptr %next.gep254, align 8, !tbaa !69
  %wide.load256 = load <2 x i64>, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr i8, ptr %next.gep253, i64 16
  store <2 x i64> %wide.load255, ptr %next.gep253, align 8, !tbaa !69
  store <2 x i64> %wide.load256, ptr %i.ba, align 8, !tbaa !69
  %index.next257 = add nuw i64 %index252, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.bb, label %middle.block258, label %vector.body251, !llvm.loop !2012

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.at, %n.vec250
  br i1 %cmp.n259, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader285

.lr.ph.i.i40.preheader285:                        ; preds = %vector.memcheck242, %.lr.ph.i.i40.preheader, %middle.block258
  %.010.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck242 ], [ %.03253.i, %.lr.ph.i.i40.preheader ], [ %i.aw, %middle.block258 ]
  %.079.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck242 ], [ %.03456.i, %.lr.ph.i.i40.preheader ], [ %i.ax, %middle.block258 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader285, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.be, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader285 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bd, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader285 ] ; 2 uses
  %i.bc = load i64, ptr %.079.i.i42, align 8, !tbaa !69
  store i64 %i.bc, ptr %.010.i.i41, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2013

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bf = load ptr, ptr %.03253.i, align 8, !tbaa !793
  %i.bg = load ptr, ptr %.054.i, align 8, !tbaa !793
  %.not42.i = icmp ult ptr %i.bf, %i.bg           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i64, ptr %.03456.i, align 8, !tbaa !69
  store i64 %storemerge43.i, ptr %.03055.i, align 8, !tbaa !69
  %.03253.val.i = load i64, ptr %.03253.i, align 8
  %.054.val.i = load i64, ptr %.054.i, align 8
  %storemerge.i = select i1 %.not42.i, i64 %.03253.val.i, i64 %.054.val.i
  store i64 %storemerge.i, ptr %.03456.i, align 8, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2014

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block258, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block258 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block258 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block258 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block258 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.w, %middle.block ], [ %i.aw, %middle.block258 ], [ %.030.i, %bb.m ], [ %i.be, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bp, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bl, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bm, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bi = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bj = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not42.i47 = icmp ult ptr %i.bi, %i.bj
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bk, ptr %.030.i46, align 8, !tbaa !69
  %i.bn = load i64, ptr %.026.i, align 8, !tbaa !69
  store i64 %i.bn, ptr %.025.i, align 8, !tbaa !69
  %.not44.i = icmp eq ptr %i.bl, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2015

bb.o:                                             ; preds = %bb.n
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bo, ptr %.030.i46, align 8, !tbaa !69
  %.not43.i = icmp eq ptr %i.bp, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2015

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.an, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bs, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.bx, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bs, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bu, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bq = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.br = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not37.i = icmp ult ptr %i.bq, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.bt, ptr %.024.i, align 8, !tbaa !69
  %i.bv = icmp eq ptr %i.bu, %3
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2016

bb.q:                                             ; preds = %.preheader.i
  %i.bw = ptrtoint ptr %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.bw, ptr %.024.i, align 8, !tbaa !69
  %i.by = icmp eq ptr %i.bx, %.091
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2016

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.bl, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bu, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.bx, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bp, %bb.o ]
  %i.bz = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.bs, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bs, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !1579
  store ptr %.090, ptr %6, align 8, !tbaa !1579
  store ptr %.178, ptr %2, align 8, !tbaa !1579
  ret ptr %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #3 comdat {
bb.a:
  %.not153 = icmp eq i64 %8, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !1818
  %i.b = shl i64 %7, 3                            ; 2 uses
  %i.c = add i64 %i.b, -8
  %i.d = add i64 %i.b, -8
  %i.e = shl i64 %7, 3
  %invariant.op = add i64 %i.e, -8
  %i.f = shl i64 %7, 3
  %invariant.op506 = add i64 %i.f, -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.ft, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 3 uses
  %.0155 = phi i64 [ %9, %.lr.ph ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 4 uses
  %.0110154 = phi i64 [ %8, %.lr.ph ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !1818   ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 6 uses
  %i.j = icmp ult i64 %.0155, %.0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread22.i
  %.025.i = phi i64 [ %i.ac, %.thread22.i ], [ %.0155, %bb.b ] ; 4 uses
  %.01824.i = phi i64 [ %i.ab, %.thread22.i ], [ 0, %bb.b ] ; 4 uses
  %i.k = mul i64 %.01824.i, %7
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.l
  %i.n = mul i64 %.025.i, %7
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !69, !noalias !2059
  %.not.i31 = icmp eq ptr %i.ec, %i.af
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !2061

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass507 = add i64 %i.cg, %invariant.op506
  %i.ei = sub i64 %.reass507, %i.i                ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ei, 72
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader394, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i34.preheader
  %scevgep329 = getelementptr i8, ptr %i.cf, i64 -8
  %i.el = add i64 %i.c, %i.cg
  %i.em = sub i64 %i.el, %i.i
  %i.en = lshr i64 %i.em, 3
  %i.eo = mul i64 %i.en, -8                       ; 2 uses
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.eo
  %scevgep331 = getelementptr i8, ptr %.sroa.071.0, i64 -8
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.eo
  %bound0333 = icmp ult ptr %scevgep330, %.sroa.071.0
  %bound1334 = icmp ult ptr %scevgep332, %i.cf
  %found.conflict335 = and i1 %bound0333, %bound1334
  br i1 %found.conflict335, label %.lr.ph.i34.preheader394, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck328
  %n.vec339 = and i64 %i.ek, 4611686018427387900  ; 3 uses
  %i.ep = mul i64 %n.vec339, -8                   ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.071.0, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.cf, i64 %i.ep
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next348, %vector.body340 ] ; 2 uses
  %i.es = mul i64 %index341, -8                   ; 2 uses
  %next.gep342 = getelementptr i8, ptr %.sroa.071.0, i64 %i.es ; 4 uses
  %next.gep343 = getelementptr i8, ptr %i.cf, i64 %i.es ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %next.gep343, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %next.gep343, i64 -32
  %wide.load344 = load <2 x ptr>, ptr %i.et, align 8, !tbaa !69, !alias.scope !2062, !noalias !2065
  %wide.load345 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !69, !alias.scope !2062, !noalias !2065
  %i.ev = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  %wide.load346 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !69, !alias.scope !2069, !noalias !2070
  %wide.load347 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !69, !alias.scope !2069, !noalias !2070
  %i.ex = getelementptr inbounds i8, ptr %next.gep343, i64 -16
  %i.ey = getelementptr inbounds i8, ptr %next.gep343, i64 -32
  store <2 x i64> %wide.load346, ptr %i.ex, align 8, !tbaa !69, !alias.scope !2062, !noalias !2065
  store <2 x i64> %wide.load347, ptr %i.ey, align 8, !tbaa !69, !alias.scope !2062, !noalias !2065
  %i.ez = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.fa = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  store <2 x ptr> %wide.load344, ptr %i.ez, align 8, !tbaa !69, !alias.scope !2069, !noalias !2070
  store <2 x ptr> %wide.load345, ptr %i.fa, align 8, !tbaa !69, !alias.scope !2069, !noalias !2070
  %index.next348 = add nuw i64 %index341, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next348, %n.vec339
  br i1 %i.fb, label %middle.block349, label %vector.body340, !llvm.loop !2071

middle.block349:                                  ; preds = %vector.body340
  %cmp.n350 = icmp eq i64 %i.ek, %n.vec339
  br i1 %cmp.n350, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader394

.lr.ph.i34.preheader394:                          ; preds = %vector.memcheck328, %.lr.ph.i34.preheader, %middle.block349
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck328 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.eq, %middle.block349 ]
  %.ph395 = phi ptr [ %i.cf, %vector.memcheck328 ], [ %i.cf, %.lr.ph.i34.preheader ], [ %i.er, %middle.block349 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader394, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fe, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader394 ]
  %i.fc = phi ptr [ %i.fd, %.lr.ph.i34 ], [ %.ph395, %.lr.ph.i34.preheader394 ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fd, align 8, !tbaa !69, !noalias !2070
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !69, !noalias !2070
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !69, !noalias !2070
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fe, align 8, !tbaa !69, !noalias !2070
  %.not.i36 = icmp eq ptr %i.fd, %i.af
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !2072

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block383, %middle.block349, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.af, %bb.s ], [ %i.fe, %.lr.ph.i34 ], [ %i.cf, %bb.t ], [ %i.dj, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.cv, %middle.block ], [ %i.eq, %middle.block349 ], [ %i.du, %middle.block383 ], [ %i.ee, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1818
  %i.fg = load ptr, ptr %1, align 8, !tbaa !1818  ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.af, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.fi, align 8, !tbaa !69
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !69
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fj, align 8, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fl = load ptr, ptr %2, align 8, !tbaa !1818  ; 2 uses
  %i.fm = icmp eq ptr %i.fh, %i.fl
  br i1 %i.fm, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fn, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fg, %bb.y ], [ %i.fh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !1818
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !1818
  %i.fo = load ptr, ptr %1, align 8, !tbaa !1818
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8 ; 2 uses
  store ptr %i.fp, ptr %1, align 8, !tbaa !1818
  %i.fq = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fq to i64
  %i.fr = add i64 %.0155, %.neg
  %i.fs = icmp ne i64 %i.ae, 0
  %.neg24 = sext i1 %i.fs to i64
  %i.ft = add i64 %.sroa.speculated, %.neg24
  %i.fu = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2073

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.fv = load ptr, ptr %6, align 8, !tbaa !1818
  store ptr %i.fv, ptr %0, align 8, !tbaa !1818
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !1579   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !1579   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !1579   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !793
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !793
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !1999

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !69
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.q, ptr %i.m, align 8, !tbaa !69
  %i.r = load i64, ptr %4, align 8, !tbaa !69
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !69
  %i.s = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.s, ptr %4, align 8, !tbaa !69
  store i64 %i.p, ptr %i.d, align 8, !tbaa !69
  %.03762.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04163.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4864.i = icmp eq ptr %.04163.i, %1
  br i1 %.not4864.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91, label %.lr.ph.i31

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
  %7 = sub i64 %i.u, %i.j
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.v = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %11 = add i64 %i.a, -16
  %12 = sub i64 %11, %i.j
  %13 = and i64 %12, -8                           ; 2 uses
  %i.w = getelementptr i8, ptr %.0.lcssa.i, i64 %13
  %scevgep = getelementptr i8, ptr %i.w, i64 16
  %i.x = add i64 %13, 8
  %i.y = shl i64 %indvar, 3
  %i.z = sub i64 %i.x, %i.y
  %scevgep237 = getelementptr i8, ptr %.03965.i, i64 %i.z
  %bound0 = icmp ult ptr %.04169.i, %scevgep237
  %bound1 = icmp ult ptr %.03965.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03965.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04169.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ad ; 4 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !69, !alias.scope !2074, !noalias !2077
  %wide.load239.a = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !69, !alias.scope !2074, !noalias !2077
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !69, !alias.scope !2077
  %wide.load241 = load <2 x i64>, ptr %i.af, align 8, !tbaa !69, !alias.scope !2077
  %i.ag = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !69, !alias.scope !2074, !noalias !2077
  store <2 x i64> %wide.load241, ptr %i.ag, align 8, !tbaa !69, !alias.scope !2074, !noalias !2077
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !69, !alias.scope !2077
  store <2 x ptr> %wide.load239.a, ptr %i.ah, align 8, !tbaa !69, !alias.scope !2077
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2079

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !69
  %i.aj = load i64, ptr %.010.i.i, align 8, !tbaa !69
  store i64 %i.aj, ptr %.079.i.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2080

bb.g:                                             ; preds = %.lr.ph.i31
  %i.am = load ptr, ptr %.067.i, align 8, !tbaa !793
  %i.an = load ptr, ptr %.03965.i, align 8, !tbaa !793
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ar = load i64, ptr %.03768.i, align 8, !tbaa !69
  %i.as = load i64, ptr %.04169.i, align 8, !tbaa !69
  store i64 %i.as, ptr %.03768.i, align 8, !tbaa !69
  %i.at = load i64, ptr %.067.i, align 8, !tbaa !69
  store i64 %i.at, ptr %.04169.i, align 8, !tbaa !69
  %i.au = load i64, ptr %.03566.i, align 8, !tbaa !69
  store i64 %i.au, ptr %.067.i, align 8, !tbaa !69
  store i64 %i.ar, ptr %.03566.i, align 8, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.aw = load i64, ptr %.03768.i, align 8, !tbaa !69
  %i.ax = load i64, ptr %.04169.i, align 8, !tbaa !69
  store i64 %i.ax, ptr %.03768.i, align 8, !tbaa !69
  %i.ay = load i64, ptr %.03965.i, align 8, !tbaa !69
  store i64 %i.ay, ptr %.04169.i, align 8, !tbaa !69
  store i64 %i.aw, ptr %.03965.i, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.ap, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.aq, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2081

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !69
  %i.bb = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.bb, ptr %i.m, align 8, !tbaa !69
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.bc, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !69
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.03453.i, %1
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.az, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.be = icmp eq ptr %.055.i, %3
  br i1 %i.be, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bf = add i64 %i.a, -16
  %14 = sub i64 %i.bf, %i.j
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar244, 2305843009213693951
  %i.bg = add i64 %17, %16                        ; 3 uses
  %min.iters.check254 = icmp ult i64 %i.bg, 22
  br i1 %min.iters.check254, label %.lr.ph.i.i40.preheader290, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i40.preheader
  %18 = add i64 %i.a, -16
  %19 = sub i64 %18, %i.j
  %20 = and i64 %19, -8                           ; 2 uses
  %i.bh = getelementptr i8, ptr %.0.lcssa.i, i64 %20
  %scevgep246 = getelementptr i8, ptr %i.bh, i64 16
  %i.bi = add i64 %20, 8
  %i.bj = shl i64 %indvar244, 3
  %i.bk = sub i64 %i.bi, %i.bj
  %scevgep249 = getelementptr i8, ptr %.03254.i, i64 %i.bk
  %bound0250 = icmp ult ptr %.03457.i, %scevgep249
  %bound1251 = icmp ult ptr %.03254.i, %scevgep246
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i40.preheader290, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck243
  %n.vec256 = and i64 %i.bg, -4                   ; 3 uses
  %i.bl = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %.03254.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %.03457.i, i64 %i.bl
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 2 uses
  %i.bo = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03254.i, i64 %i.bo ; 4 uses
  %next.gep260 = getelementptr i8, ptr %.03457.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x ptr>, ptr %next.gep260, align 8, !tbaa !69, !alias.scope !2082, !noalias !2085
  %wide.load262 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !69, !alias.scope !2082, !noalias !2085
  %i.bq = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load263 = load <2 x i64>, ptr %next.gep259, align 8, !tbaa !69, !alias.scope !2085
  %wide.load264 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !69, !alias.scope !2085
  %i.br = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x i64> %wide.load263, ptr %next.gep260, align 8, !tbaa !69, !alias.scope !2082, !noalias !2085
  store <2 x i64> %wide.load264, ptr %i.br, align 8, !tbaa !69, !alias.scope !2082, !noalias !2085
  %i.bs = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x ptr> %wide.load261, ptr %next.gep259, align 8, !tbaa !69, !alias.scope !2085
  store <2 x ptr> %wide.load262, ptr %i.bs, align 8, !tbaa !69, !alias.scope !2085
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.bt, label %middle.block266, label %vector.body257, !llvm.loop !2087

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.bg, %n.vec256
  br i1 %cmp.n267, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader290

.lr.ph.i.i40.preheader290:                        ; preds = %vector.memcheck243, %.lr.ph.i.i40.preheader, %middle.block266
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck243 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.bm, %middle.block266 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck243 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bn, %middle.block266 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader290, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bw, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bv, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !69
  %i.bu = load i64, ptr %.010.i.i41, align 8, !tbaa !69
  store i64 %i.bu, ptr %.079.i.i42, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2088

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bx = load ptr, ptr %.055.i, align 8, !tbaa !793
  %i.by = load ptr, ptr %.03254.i, align 8, !tbaa !793
  %i.bz = icmp ult ptr %i.bx, %i.by               ; 3 uses
  %i.ca = load i64, ptr %.03056.i, align 8, !tbaa !69
  %i.cb = load i64, ptr %.03457.i, align 8, !tbaa !69
  store i64 %i.cb, ptr %.03056.i, align 8, !tbaa !69
  %.03254.sink73.i = select i1 %i.bz, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.bz, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bz, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.cc = load i64, ptr %.03254.sink73.i, align 8, !tbaa !69
  store i64 %i.cc, ptr %.03457.i, align 8, !tbaa !69
  store i64 %i.ca, ptr %.03254.sink73.i, align 8, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cd = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2089

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block266, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block266 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block266 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block266 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block266 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bm, %middle.block266 ], [ %.030.i, %bb.m ], [ %i.bw, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.0101 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03762.i, %bb.f ] ; 5 uses
  %.028100 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.07099 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07198 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07697 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i45 = icmp eq ptr %.07099, %3
  %.not36.i = icmp eq ptr %.0101, %.07198
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.028.ph.i = phi ptr [ %i.cn, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ci, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cj, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.ce = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.cf = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.cf
  br i1 %i.cg, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.ck = load i64, ptr %.030.i47, align 8, !tbaa !69
  store i64 %i.ch, ptr %.030.i47, align 8, !tbaa !69
  %i.cl = load i64, ptr %.026.i, align 8, !tbaa !69
  store i64 %i.cl, ptr %.025.i, align 8, !tbaa !69
  store i64 %i.ck, ptr %.026.i, align 8, !tbaa !69
  %.not44.i = icmp eq ptr %i.ci, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2090

bb.o:                                             ; preds = %bb.n
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !69
  store i64 %i.cm, ptr %.030.i47, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !69
  %.not43.i = icmp eq ptr %i.cn, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2090

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.az, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cr, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cw, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cr, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ct, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.co = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cp = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !69 ; 2 uses
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cs, ptr %.024.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !69
  %i.cu = icmp eq ptr %i.ct, %3
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2091

bb.q:                                             ; preds = %.preheader.i
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cv, ptr %.024.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !69
  %i.cx = icmp eq ptr %i.cw, %.087
  br i1 %i.cx, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2091

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.cw, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cn, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.ci, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.ct, %bb.p ], [ %.026.i, %bb.o ]
  %i.cy = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.cr, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cr, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !1579
  store ptr %.086, ptr %6, align 8, !tbaa !1579
  store ptr %.1, ptr %2, align 8, !tbaa !1579
  ret ptr %i.cy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !1579   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !1579   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !1579   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !793
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !793
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2008

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !69
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.p, ptr %i.l, align 8, !tbaa !69
  %i.q = load i64, ptr %4, align 8, !tbaa !69
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !69
  %i.r = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.r, ptr %4, align 8, !tbaa !69
  store i64 %i.o, ptr %i.d, align 8, !tbaa !69
  %.03763.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04164.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4865.i = icmp eq ptr %.04164.i, %1
  br i1 %.not4865.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04170.i = phi ptr [ %.041.i, %bb.j ], [ %.04164.i, %bb.f ] ; 10 uses
  %.03769.i = phi ptr [ %.037.i, %bb.j ], [ %.03763.i, %bb.f ] ; 5 uses
  %.068.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03567.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 7 uses
  %.03966.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 13 uses
  %i.s = icmp eq ptr %.03567.i, %3
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -16
  %8 = sub i64 %i.t, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.u = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader300, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %12 = add i64 %i.a, -16
  %13 = sub i64 %12, %i.i
  %14 = and i64 %13, -8                           ; 2 uses
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %14
  %scevgep = getelementptr i8, ptr %i.v, i64 16
  %i.w = add i64 %14, 8
  %i.x = shl i64 %indvar, 3
  %i.y = sub i64 %i.w, %i.x
  %scevgep240 = getelementptr i8, ptr %.03966.i, i64 %i.y
  %bound0 = icmp ult ptr %.04170.i, %scevgep240
  %bound1 = icmp ult ptr %.03966.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03966.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04170.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.ac ; 4 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.ac ; 4 uses
  %i.ad = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !69, !alias.scope !2092, !noalias !2095
  %wide.load242.a = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !69, !alias.scope !2092, !noalias !2095
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !69, !alias.scope !2095
  %wide.load244 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !69, !alias.scope !2095
  %i.af = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !69, !alias.scope !2092, !noalias !2095
  store <2 x i64> %wide.load244, ptr %i.af, align 8, !tbaa !69, !alias.scope !2092, !noalias !2095
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !69, !alias.scope !2095
  store <2 x ptr> %wide.load242.a, ptr %i.ag, align 8, !tbaa !69, !alias.scope !2095
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader300

.lr.ph.i.i.preheader300:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader300, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !69
  %i.ai = load i64, ptr %.010.i.i, align 8, !tbaa !69
  store i64 %i.ai, ptr %.079.i.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2098

bb.g:                                             ; preds = %.lr.ph.i31
  %i.al = load ptr, ptr %.03966.i, align 8, !tbaa !793
  %i.am = load ptr, ptr %.068.i, align 8, !tbaa !793
  %.not53.i = icmp ult ptr %i.al, %i.am
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.ap = load i64, ptr %.03769.i, align 8, !tbaa !69
  %i.aq = load i64, ptr %.04170.i, align 8, !tbaa !69
  store i64 %i.aq, ptr %.03769.i, align 8, !tbaa !69
  %i.ar = load i64, ptr %.068.i, align 8, !tbaa !69
  store i64 %i.ar, ptr %.04170.i, align 8, !tbaa !69
  %i.as = load i64, ptr %.03567.i, align 8, !tbaa !69
  store i64 %i.as, ptr %.068.i, align 8, !tbaa !69
  store i64 %i.ap, ptr %.03567.i, align 8, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.au = load i64, ptr %.03769.i, align 8, !tbaa !69
  %i.av = load i64, ptr %.04170.i, align 8, !tbaa !69
  store i64 %i.av, ptr %.03769.i, align 8, !tbaa !69
  %i.aw = load i64, ptr %.03966.i, align 8, !tbaa !69
  store i64 %i.aw, ptr %.04170.i, align 8, !tbaa !69
  store i64 %i.au, ptr %.03966.i, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.an, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ao, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2099

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !69
  %i.az = load i64, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.az, ptr %i.l, align 8, !tbaa !69
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !69
  store i64 %i.ba, ptr %.0.lcssa.i, align 8, !tbaa !69
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !69
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bb = icmp eq ptr %.03454.i, %1
  br i1 %i.bb, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar247 = phi i64 [ %indvar.next248, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ax, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bc = icmp eq ptr %.056.i, %3
  br i1 %i.bc, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bd = add i64 %i.a, -16
  %15 = sub i64 %i.bd, %i.i
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = mul i64 %indvar247, 2305843009213693951
  %i.be = add i64 %18, %17                        ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.be, 22
  br i1 %min.iters.check257, label %.lr.ph.i.i40.preheader293, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i40.preheader
  %19 = add i64 %i.a, -16
  %20 = sub i64 %19, %i.i
  %21 = and i64 %20, -8                           ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i, i64 %21
  %scevgep249 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = add i64 %21, 8
  %i.bh = shl i64 %indvar247, 3
  %i.bi = sub i64 %i.bg, %i.bh
  %scevgep252 = getelementptr i8, ptr %.03255.i, i64 %i.bi
  %bound0253 = icmp ult ptr %.03458.i, %scevgep252
  %bound1254 = icmp ult ptr %.03255.i, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i40.preheader293, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck246
  %n.vec259 = and i64 %i.be, -4                   ; 3 uses
  %i.bj = shl i64 %n.vec259, 3                    ; 2 uses
  %i.bk = getelementptr i8, ptr %.03255.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %.03458.i, i64 %i.bj
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.bm = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03255.i, i64 %i.bm ; 4 uses
  %next.gep263 = getelementptr i8, ptr %.03458.i, i64 %i.bm ; 4 uses
  %i.bn = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x ptr>, ptr %next.gep263, align 8, !tbaa !69, !alias.scope !2100, !noalias !2103
  %wide.load265 = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !69, !alias.scope !2100, !noalias !2103
  %i.bo = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load266 = load <2 x i64>, ptr %next.gep262, align 8, !tbaa !69, !alias.scope !2103
  %wide.load267 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !69, !alias.scope !2103
  %i.bp = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load266, ptr %next.gep263, align 8, !tbaa !69, !alias.scope !2100, !noalias !2103
  store <2 x i64> %wide.load267, ptr %i.bp, align 8, !tbaa !69, !alias.scope !2100, !noalias !2103
  %i.bq = getelementptr i8, ptr %next.gep262, i64 16
  store <2 x ptr> %wide.load264, ptr %next.gep262, align 8, !tbaa !69, !alias.scope !2103
  store <2 x ptr> %wide.load265, ptr %i.bq, align 8, !tbaa !69, !alias.scope !2103
  %index.next268 = add nuw i64 %index261, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.br, label %middle.block269, label %vector.body260, !llvm.loop !2105

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.be, %n.vec259
  br i1 %cmp.n270, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader293

.lr.ph.i.i40.preheader293:                        ; preds = %vector.memcheck246, %.lr.ph.i.i40.preheader, %middle.block269
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck246 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bk, %middle.block269 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck246 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bl, %middle.block269 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader293, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bu, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bt, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !69
  %i.bs = load i64, ptr %.010.i.i41, align 8, !tbaa !69
  store i64 %i.bs, ptr %.079.i.i42, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2106

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bv = load ptr, ptr %.03255.i, align 8, !tbaa !793
  %i.bw = load ptr, ptr %.056.i, align 8, !tbaa !793
  %.not45.i = icmp ult ptr %i.bv, %i.bw           ; 3 uses
  %i.bx = load i64, ptr %.03057.i, align 8, !tbaa !69
  %i.by = load i64, ptr %.03458.i, align 8, !tbaa !69
  store i64 %i.by, ptr %.03057.i, align 8, !tbaa !69
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.bz = load i64, ptr %.03255.sink74.i, align 8, !tbaa !69
  store i64 %i.bz, ptr %.03458.i, align 8, !tbaa !69
  store i64 %i.bx, ptr %.03255.sink74.i, align 8, !tbaa !69
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.ca = icmp eq ptr %.034.i, %1
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2107

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block269, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block269 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block269 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block269 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block269 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.aa, %middle.block ], [ %i.bk, %middle.block269 ], [ %.030.i, %bb.m ], [ %i.bu, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03763.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i45 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.cj, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ce, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cf, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cb = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cc = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cb, %i.cc
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cg = load i64, ptr %.030.i47, align 8, !tbaa !69
  store i64 %i.cd, ptr %.030.i47, align 8, !tbaa !69
  %i.ch = load i64, ptr %.026.i, align 8, !tbaa !69
  store i64 %i.ch, ptr %.025.i, align 8, !tbaa !69
  store i64 %i.cg, ptr %.026.i, align 8, !tbaa !69
  %.not45.i48 = icmp eq ptr %i.ce, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2108

bb.o:                                             ; preds = %bb.n
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !69
  store i64 %i.ci, ptr %.030.i47, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !69
  %.not44.i = icmp eq ptr %i.cj, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2108

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.ax, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cm, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cr, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cm, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.co, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.ck = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cl = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.ck, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !69 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cn, ptr %.024.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !69
  %i.cp = icmp eq ptr %i.co, %3
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2109

bb.q:                                             ; preds = %.preheader.i
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cq, ptr %.024.i, align 8, !tbaa !69
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !69
  %i.cs = icmp eq ptr %i.cr, %.091
  br i1 %i.cs, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2109

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.ce, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.co, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cr, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cj, %bb.o ]
  %i.ct = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.cm, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cm, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !1579
  store ptr %.090, ptr %6, align 8, !tbaa !1579
  store ptr %.178, ptr %2, align 8, !tbaa !1579
  ret ptr %i.ct
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !127, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load ptr, ptr %1, align 8, !tbaa !793
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !793
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7move_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %wide.load320 = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !159, !alias.scope !2826, !noalias !2829
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load321 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !159, !alias.scope !2833, !noalias !2834
  %wide.load322 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !159, !alias.scope !2833, !noalias !2834
  %i.cu = getelementptr inbounds i8, ptr %next.gep319, i64 -16
  %i.cv = getelementptr inbounds i8, ptr %next.gep319, i64 -32
  store <2 x i64> %wide.load321, ptr %i.cu, align 8, !tbaa !159, !alias.scope !2826, !noalias !2829
  store <2 x i64> %wide.load322, ptr %i.cv, align 8, !tbaa !159, !alias.scope !2826, !noalias !2829
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <2 x ptr> %wide.load, ptr %i.cw, align 8, !tbaa !159, !alias.scope !2833, !noalias !2834
  store <2 x ptr> %wide.load320, ptr %i.cx, align 8, !tbaa !159, !alias.scope !2833, !noalias !2834
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !2835

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader329

.lr.ph.i28.preheader329:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.055.0.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i28.preheader ], [ %i.cn, %middle.block ]
  %.ph = phi ptr [ %.sroa.074.0, %vector.memcheck ], [ %.sroa.074.0, %.lr.ph.i28.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader329, %.lr.ph.i28
  %.sroa.055.0 = phi ptr [ %i.db, %.lr.ph.i28 ], [ %.sroa.055.0.ph, %.lr.ph.i28.preheader329 ]
  %i.cz = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader329 ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.055.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.da, align 8, !tbaa !159, !noalias !2834
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !159, !noalias !2834
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !159, !noalias !2834
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.db, align 8, !tbaa !159, !noalias !2834
  %.not.i = icmp eq ptr %i.da, %i.ae
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !2836

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.by, %i.aa           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.049.0 = phi ptr [ %i.df, %.lr.ph.i29 ], [ %.sroa.074.0, %bb.v ]
  %.sroa.048.0 = phi ptr [ %i.dg, %.lr.ph.i29 ], [ %.sroa.067.0, %bb.v ]
  %i.dd = phi ptr [ %i.de, %.lr.ph.i29 ], [ %i.by, %bb.v ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !159, !noalias !2837
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !159, !noalias !2837
  %i.di = load i64, ptr %i.de, align 8, !tbaa !159, !noalias !2837
  store i64 %i.di, ptr %i.df, align 8, !tbaa !159, !noalias !2837
  %.not.i30 = icmp eq ptr %i.de, %i.aa
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2840

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0101.0 = phi ptr [ %i.dl, %.lr.ph.i33 ], [ %.sroa.067.0, %bb.w ]
  %i.dj = phi ptr [ %i.dk, %.lr.ph.i33 ], [ %i.by, %bb.w ]
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0101.0, i64 -8 ; 3 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !159, !noalias !2841
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !159, !noalias !2841
  %.not.i34 = icmp eq ptr %i.dk, %i.aa
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !2844

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.aa, %bb.s ], [ %i.dl, %.lr.ph.i33 ], [ %i.by, %bb.t ], [ %i.db, %.lr.ph.i28 ], [ %.sroa.067.0, %bb.v ], [ %.sroa.067.0, %bb.w ], [ %i.cn, %middle.block ], [ %i.dg, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2668
  %i.dn = load ptr, ptr %1, align 8, !tbaa !2668  ; 4 uses
  %.neg109 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.neg109 ; 3 uses
  %.not.i35 = icmp eq ptr %i.aa, %.sroa.074.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg109, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i37 = load ptr, ptr %i.dp, align 8, !tbaa !159
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !159
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i37, ptr %i.dq, align 8, !tbaa !159
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ds = load ptr, ptr %2, align 8, !tbaa !2668  ; 2 uses
  %i.dt = icmp eq ptr %i.do, %i.ds
  br i1 %i.dt, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = icmp eq ptr %i.ds, %i.dn
  br i1 %i.du, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.dn, %bb.y ], [ %i.do, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2668
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !2668
  %i.dv = load ptr, ptr %1, align 8, !tbaa !2668
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 2 uses
  store ptr %i.dw, ptr %1, align 8, !tbaa !2668
  %i.dx = icmp ne i64 %.0151, 0
  %.neg = sext i1 %i.dx to i64
  %i.dy = add i64 %.0151, %.neg
  %i.dz = icmp ne i64 %i.z, 0
  %.neg24 = sext i1 %i.dz to i64
  %i.ea = add i64 %.sroa.speculated, %.neg24
  %i.eb = add i64 %.0106150, -1                   ; 2 uses
  %.not = icmp eq i64 %i.eb, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2845

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.ec = load ptr, ptr %6, align 8, !tbaa !2668
  store ptr %i.ec, ptr %0, align 8, !tbaa !2668
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2456   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2456   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2456   ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !2212
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !2212
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2846

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 8 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.p, ptr %i.m, align 8, !tbaa !159
  %i.q = load i64, ptr %4, align 8, !tbaa !159
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !159
  %i.r = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.r, ptr %4, align 8, !tbaa !159
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 8 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 11 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %.03962.i234.le = ptrtoaddr ptr %.03962.i to i64
  %i.t = add i64 %i.a, -16
  %7 = sub i64 %i.t, %i.j
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.u = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.v = mul i64 %indvar, -8
  %reass.sub = sub i64 %i.v, %i.j
  %op.rdx260 = add i64 %.03962.i234.le, -9
  %op.rdx261 = add i64 %op.rdx260, %reass.sub
  %diff.check = icmp ult i64 %op.rdx261, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader289, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %.03962.i, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %.04166.i, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.z ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.04166.i, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep235, align 8, !tbaa !159
  %wide.load236 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !159
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !159
  store <2 x i64> %wide.load236, ptr %i.ab, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2847

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader289

.lr.ph.i.i.preheader289:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader289, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader289 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader289 ] ; 2 uses
  %i.ad = load i64, ptr %.079.i.i, align 8, !tbaa !159
  store i64 %i.ad, ptr %.010.i.i, align 8, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2848

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ag = load ptr, ptr %.064.i, align 8, !tbaa !2212
  %i.ah = load ptr, ptr %.03962.i, align 8, !tbaa !2212
  %i.ai = icmp ult ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.03563.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.064.i, i64 8
  %i.al = load i64, ptr %.04166.i, align 8, !tbaa !159
  store i64 %i.al, ptr %.03765.i, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03962.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04166.sink85.i = phi ptr [ %.04166.i, %bb.i ], [ %.064.i, %bb.h ] ; 2 uses
  %.03765.sink.i = phi ptr [ %.03765.i, %bb.i ], [ %.04166.i, %bb.h ]
  %.03962.sink.i = phi ptr [ %.03962.i, %bb.i ], [ %.03563.i, %bb.h ]
  %.140.i = phi ptr [ %i.am, %bb.i ], [ %.03962.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03563.i, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.064.i, %bb.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.an = load i64, ptr %.04166.sink85.i, align 8, !tbaa !159
  store i64 %i.an, ptr %.03765.sink.i, align 8, !tbaa !159
  %i.ao = load i64, ptr %.03962.sink.i, align 8, !tbaa !159
  store i64 %i.ao, ptr %.04166.sink85.i, align 8, !tbaa !159
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2849

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aq = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.aq, ptr %i.m, align 8, !tbaa !159
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.ar, ptr %.0.lcssa.i, align 8, !tbaa !159
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.03451.i, %1
  br i1 %i.as, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar240 = phi i64 [ %indvar.next241, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 7 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 2 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ap, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 10 uses
  %i.at = icmp eq ptr %.053.i, %3
  br i1 %i.at, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03252.i239.le = ptrtoaddr ptr %.03252.i to i64
  %i.au = add i64 %i.a, -16
  %11 = sub i64 %i.au, %i.j
  %12 = lshr i64 %11, 3
  %13 = add nuw nsw i64 %12, 1
  %14 = mul i64 %indvar240, 2305843009213693951
  %i.av = add i64 %14, %13                        ; 3 uses
  %min.iters.check244 = icmp ult i64 %i.av, 24
  br i1 %min.iters.check244, label %.lr.ph.i.i40.preheader281, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph.i.i40.preheader
  %i.aw = mul i64 %indvar240, -8
  %reass.sub258 = sub i64 %i.aw, %i.j
  %op.rdx = add i64 %.03252.i239.le, -9
  %op.rdx259 = add i64 %op.rdx, %reass.sub258
  %diff.check242 = icmp ult i64 %op.rdx259, 31
  br i1 %diff.check242, label %.lr.ph.i.i40.preheader281, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck238
  %n.vec246 = and i64 %i.av, -4                   ; 3 uses
  %i.ax = shl i64 %n.vec246, 3                    ; 2 uses
  %i.ay = getelementptr i8, ptr %.03252.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %.03455.i, i64 %i.ax
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.ba = shl i64 %index248, 3                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %.03252.i, i64 %i.ba ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.03455.i, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load251 = load <2 x i64>, ptr %next.gep250, align 8, !tbaa !159
  %wide.load252 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !159
  %i.bc = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x i64> %wide.load251, ptr %next.gep249, align 8, !tbaa !159
  store <2 x i64> %wide.load252, ptr %i.bc, align 8, !tbaa !159
  %index.next253 = add nuw i64 %index248, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.bd, label %middle.block254, label %vector.body247, !llvm.loop !2850

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.av, %n.vec246
  br i1 %cmp.n255, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader281

.lr.ph.i.i40.preheader281:                        ; preds = %vector.memcheck238, %.lr.ph.i.i40.preheader, %middle.block254
  %.010.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck238 ], [ %.03252.i, %.lr.ph.i.i40.preheader ], [ %i.ay, %middle.block254 ]
  %.079.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck238 ], [ %.03455.i, %.lr.ph.i.i40.preheader ], [ %i.az, %middle.block254 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader281, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bg, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader281 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bf, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader281 ] ; 2 uses
  %i.be = load i64, ptr %.079.i.i42, align 8, !tbaa !159
  store i64 %i.be, ptr %.010.i.i41, align 8, !tbaa !159
  %i.bf = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2851

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bh = load ptr, ptr %.053.i, align 8, !tbaa !2212
  %i.bi = load ptr, ptr %.03252.i, align 8, !tbaa !2212
  %i.bj = icmp ult ptr %i.bh, %i.bi               ; 3 uses
  %.133.idx.i = select i1 %i.bj, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bj, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %storemerge42.i = load i64, ptr %.03455.i, align 8, !tbaa !159
  store i64 %storemerge42.i, ptr %.03054.i, align 8, !tbaa !159
  %.053.val.i = load i64, ptr %.053.i, align 8
  %.03252.val.i = load i64, ptr %.03252.i, align 8
  %storemerge.i = select i1 %i.bj, i64 %.053.val.i, i64 %.03252.val.i
  store i64 %storemerge.i, ptr %.03455.i, align 8, !tbaa !159
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 8 ; 2 uses
  %i.bk = icmp eq ptr %.034.i, %1
  %indvar.next241 = add i64 %indvar240, 1
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2852

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block254, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block254 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03252.i, %middle.block254 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.053.i, %middle.block254 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block254 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.x, %middle.block ], [ %i.ay, %middle.block254 ], [ %.030.i, %bb.m ], [ %i.bg, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.bt, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bp, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bq, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bl = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.bm = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bo, ptr %.030.i46, align 8, !tbaa !159
  %i.br = load i64, ptr %.026.i, align 8, !tbaa !159
  store i64 %i.br, ptr %.025.i, align 8, !tbaa !159
  %.not43.i = icmp eq ptr %i.bp, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2853

bb.o:                                             ; preds = %bb.n
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bs, ptr %.030.i46, align 8, !tbaa !159
  %.not42.i = icmp eq ptr %i.bt, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2853

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.ap, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bx, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cc, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bx, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bz, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bu = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.bv = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.bw = icmp ult ptr %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.by, ptr %.024.i, align 8, !tbaa !159
  %i.ca = icmp eq ptr %i.bz, %3
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2854

bb.q:                                             ; preds = %.preheader.i
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cb, ptr %.024.i, align 8, !tbaa !159
  %i.cd = icmp eq ptr %i.cc, %.086
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2854

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.cc, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bt, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %i.bp, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bz, %bb.p ], [ %.026.i, %bb.o ]
  %i.ce = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.bx, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bx, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !2456
  store ptr %.085, ptr %6, align 8, !tbaa !2456
  store ptr %.1, ptr %2, align 8, !tbaa !2456
  ret ptr %i.ce
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2456   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2456   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2456   ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !2212
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !2212
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2855

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 8 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.o, ptr %i.l, align 8, !tbaa !159
  %i.p = load i64, ptr %4, align 8, !tbaa !159
  store i64 %i.p, ptr %.0.lcssa.i, align 8, !tbaa !159
  %i.q = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.q, ptr %4, align 8, !tbaa !159
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 8 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 3 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 6 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 11 uses
  %i.r = icmp eq ptr %.03564.i, %3
  br i1 %i.r, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %.03963.i238.le = ptrtoaddr ptr %.03963.i to i64
  %i.s = add i64 %i.a, -16
  %8 = sub i64 %i.s, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.t = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader293, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = mul i64 %indvar, -8
  %reass.sub = sub i64 %i.u, %i.i
  %op.rdx264 = add i64 %.03963.i238.le, -9
  %op.rdx265 = add i64 %op.rdx264, %reass.sub
  %diff.check = icmp ult i64 %op.rdx265, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader293, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %.03963.i, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %.04167.i, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.y ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.04167.i, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !159
  %wide.load240 = load <2 x i64>, ptr %i.z, align 8, !tbaa !159
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !159
  store <2 x i64> %wide.load240, ptr %i.aa, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2856

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader293

.lr.ph.i.i.preheader293:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader293, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 2 uses
  %i.ac = load i64, ptr %.079.i.i, align 8, !tbaa !159
  store i64 %i.ac, ptr %.010.i.i, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2857

bb.g:                                             ; preds = %.lr.ph.i31
  %i.af = load ptr, ptr %.03963.i, align 8, !tbaa !2212
  %i.ag = load ptr, ptr %.065.i, align 8, !tbaa !2212
  %.not50.i = icmp ult ptr %i.af, %i.ag
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.03564.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.065.i, i64 8
  %i.aj = load i64, ptr %.04167.i, align 8, !tbaa !159
  store i64 %i.aj, ptr %.03766.i, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.03963.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04167.sink86.i = phi ptr [ %.04167.i, %bb.i ], [ %.065.i, %bb.h ] ; 2 uses
  %.03766.sink.i = phi ptr [ %.03766.i, %bb.i ], [ %.04167.i, %bb.h ]
  %.03963.sink.i = phi ptr [ %.03963.i, %bb.i ], [ %.03564.i, %bb.h ]
  %.140.i = phi ptr [ %i.ak, %bb.i ], [ %.03963.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03564.i, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.065.i, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.al = load i64, ptr %.04167.sink86.i, align 8, !tbaa !159
  store i64 %i.al, ptr %.03766.sink.i, align 8, !tbaa !159
  %i.am = load i64, ptr %.03963.sink.i, align 8, !tbaa !159
  store i64 %i.am, ptr %.04167.sink86.i, align 8, !tbaa !159
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2858

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ao = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.ao, ptr %i.l, align 8, !tbaa !159
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.ap, ptr %.0.lcssa.i, align 8, !tbaa !159
  %.03051.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03452.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %.03452.i, %1
  br i1 %i.aq, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03456.i = phi ptr [ %.034.i, %bb.m ], [ %.03452.i, %bb.l ] ; 7 uses
  %.03055.i = phi ptr [ %.030.i, %bb.m ], [ %.03051.i, %bb.l ] ; 2 uses
  %.054.i = phi ptr [ %.1.i35, %bb.m ], [ %i.an, %bb.l ] ; 6 uses
  %.03253.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 10 uses
  %i.ar = icmp eq ptr %.054.i, %3
  br i1 %i.ar, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %.03253.i243.le = ptrtoaddr ptr %.03253.i to i64
  %i.as = add i64 %i.a, -16
  %12 = sub i64 %i.as, %i.i
  %13 = lshr i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = mul i64 %indvar244, 2305843009213693951
  %i.at = add i64 %15, %14                        ; 3 uses
  %min.iters.check248 = icmp ult i64 %i.at, 24
  br i1 %min.iters.check248, label %.lr.ph.i.i40.preheader285, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i40.preheader
  %i.au = mul i64 %indvar244, -8
  %reass.sub262 = sub i64 %i.au, %i.i
  %op.rdx = add i64 %.03253.i243.le, -9
  %op.rdx263 = add i64 %op.rdx, %reass.sub262
  %diff.check246 = icmp ult i64 %op.rdx263, 31
  br i1 %diff.check246, label %.lr.ph.i.i40.preheader285, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck242
  %n.vec250 = and i64 %i.at, -4                   ; 3 uses
  %i.av = shl i64 %n.vec250, 3                    ; 2 uses
  %i.aw = getelementptr i8, ptr %.03253.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr i8, ptr %.03456.i, i64 %i.av
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.ay = shl i64 %index252, 3                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %.03253.i, i64 %i.ay ; 2 uses
  %next.gep254 = getelementptr i8, ptr %.03456.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep254, i64 16
  %wide.load255 = load <2 x i64>, ptr %next.gep254, align 8, !tbaa !159
  %wide.load256 = load <2 x i64>, ptr %i.az, align 8, !tbaa !159
  %i.ba = getelementptr i8, ptr %next.gep253, i64 16
  store <2 x i64> %wide.load255, ptr %next.gep253, align 8, !tbaa !159
  store <2 x i64> %wide.load256, ptr %i.ba, align 8, !tbaa !159
  %index.next257 = add nuw i64 %index252, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.bb, label %middle.block258, label %vector.body251, !llvm.loop !2859

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.at, %n.vec250
  br i1 %cmp.n259, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader285

.lr.ph.i.i40.preheader285:                        ; preds = %vector.memcheck242, %.lr.ph.i.i40.preheader, %middle.block258
  %.010.i.i41.ph = phi ptr [ %.03253.i, %vector.memcheck242 ], [ %.03253.i, %.lr.ph.i.i40.preheader ], [ %i.aw, %middle.block258 ]
  %.079.i.i42.ph = phi ptr [ %.03456.i, %vector.memcheck242 ], [ %.03456.i, %.lr.ph.i.i40.preheader ], [ %i.ax, %middle.block258 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader285, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.be, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader285 ] ; 2 uses
  %.079.i.i42 = phi ptr [ %i.bd, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader285 ] ; 2 uses
  %i.bc = load i64, ptr %.079.i.i42, align 8, !tbaa !159
  store i64 %i.bc, ptr %.010.i.i41, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2860

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bf = load ptr, ptr %.03253.i, align 8, !tbaa !2212
  %i.bg = load ptr, ptr %.054.i, align 8, !tbaa !2212
  %.not42.i = icmp ult ptr %i.bf, %i.bg           ; 3 uses
  %.133.idx.i = select i1 %.not42.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03253.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.054.i, i64 %.1.idx.i ; 2 uses
  %storemerge43.i = load i64, ptr %.03456.i, align 8, !tbaa !159
  store i64 %storemerge43.i, ptr %.03055.i, align 8, !tbaa !159
  %.03253.val.i = load i64, ptr %.03253.i, align 8
  %.054.val.i = load i64, ptr %.054.i, align 8
  %storemerge.i = select i1 %.not42.i, i64 %.03253.val.i, i64 %.054.val.i
  store i64 %storemerge.i, ptr %.03456.i, align 8, !tbaa !159
  %.030.i = getelementptr inbounds nuw i8, ptr %.03055.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03456.i, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.bh, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2861

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block258, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.054.i, %middle.block258 ], [ %.1.i35, %bb.m ], [ %.054.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03253.i, %middle.block258 ], [ %.133.i, %bb.m ], [ %.03253.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block258 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block258 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.w, %middle.block ], [ %i.aw, %middle.block258 ], [ %.030.i, %bb.m ], [ %i.be, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bp, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 3 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bl, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 4 uses
  %.025.i = phi ptr [ %i.bm, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.bi = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.bj = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not42.i47 = icmp ult ptr %i.bi, %i.bj
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i64 %i.bk, ptr %.030.i46, align 8, !tbaa !159
  %i.bn = load i64, ptr %.026.i, align 8, !tbaa !159
  store i64 %i.bn, ptr %.025.i, align 8, !tbaa !159
  %.not44.i = icmp eq ptr %i.bl, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2862

bb.o:                                             ; preds = %bb.n
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  store i64 %i.bo, ptr %.030.i46, align 8, !tbaa !159
  %.not43.i = icmp eq ptr %i.bp, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2862

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03051.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.an, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.bs, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.bx, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.bs, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.bu, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.bq = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.br = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not37.i = icmp ult ptr %i.bq, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.bt, ptr %.024.i, align 8, !tbaa !159
  %i.bv = icmp eq ptr %i.bu, %3
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2863

bb.q:                                             ; preds = %.preheader.i
  %i.bw = ptrtoint ptr %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.bw, ptr %.024.i, align 8, !tbaa !159
  %i.by = icmp eq ptr %i.bx, %.091
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2863

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.bl, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.bu, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.bx, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bp, %bb.o ]
  %i.bz = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.bs, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7move_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.bs, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !2456
  store ptr %.090, ptr %6, align 8, !tbaa !2456
  store ptr %.178, ptr %2, align 8, !tbaa !2456
  ret ptr %i.bz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.753") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #3 comdat {
bb.a:
  %.not153 = icmp eq i64 %8, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i64 0, %7                            ; 2 uses
  %.idx = shl nsw i64 %i.a, 3
  %.not.i.i = icmp eq i64 %7, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !2668
  %i.b = shl i64 %7, 3                            ; 2 uses
  %i.c = add i64 %i.b, -8
  %i.d = add i64 %i.b, -8
  %i.e = shl i64 %7, 3
  %invariant.op = add i64 %i.e, -8
  %i.f = shl i64 %7, 3
  %invariant.op506 = add i64 %i.f, -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 2 uses
  %.0 = phi i64 [ %10, %.lr.ph ], [ %i.ft, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 3 uses
  %.0155 = phi i64 [ %9, %.lr.ph ], [ %i.fr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 4 uses
  %.0110154 = phi i64 [ %8, %.lr.ph ], [ %i.fu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit ] ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !2668   ; 11 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 6 uses
  %i.j = icmp ult i64 %.0155, %.0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread22.i
  %.025.i = phi i64 [ %i.ac, %.thread22.i ], [ %.0155, %bb.b ] ; 4 uses
  %.01824.i = phi i64 [ %i.ab, %.thread22.i ], [ 0, %bb.b ] ; 4 uses
  %i.k = mul i64 %.01824.i, %7
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.l
  %i.n = mul i64 %.025.i, %7
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !159, !noalias !2906
  %.not.i31 = icmp eq ptr %i.ec, %i.af
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !2908

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass507 = add i64 %i.cg, %invariant.op506
  %i.ei = sub i64 %.reass507, %i.i                ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ei, 72
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader394, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i34.preheader
  %scevgep329 = getelementptr i8, ptr %i.cf, i64 -8
  %i.el = add i64 %i.c, %i.cg
  %i.em = sub i64 %i.el, %i.i
  %i.en = lshr i64 %i.em, 3
  %i.eo = mul i64 %i.en, -8                       ; 2 uses
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.eo
  %scevgep331 = getelementptr i8, ptr %.sroa.071.0, i64 -8
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.eo
  %bound0333 = icmp ult ptr %scevgep330, %.sroa.071.0
  %bound1334 = icmp ult ptr %scevgep332, %i.cf
  %found.conflict335 = and i1 %bound0333, %bound1334
  br i1 %found.conflict335, label %.lr.ph.i34.preheader394, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck328
  %n.vec339 = and i64 %i.ek, 4611686018427387900  ; 3 uses
  %i.ep = mul i64 %n.vec339, -8                   ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.071.0, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %i.cf, i64 %i.ep
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next348, %vector.body340 ] ; 2 uses
  %i.es = mul i64 %index341, -8                   ; 2 uses
  %next.gep342 = getelementptr i8, ptr %.sroa.071.0, i64 %i.es ; 4 uses
  %next.gep343 = getelementptr i8, ptr %i.cf, i64 %i.es ; 4 uses
  %i.et = getelementptr inbounds i8, ptr %next.gep343, i64 -16
  %i.eu = getelementptr inbounds i8, ptr %next.gep343, i64 -32
  %wide.load344 = load <2 x ptr>, ptr %i.et, align 8, !tbaa !159, !alias.scope !2909, !noalias !2912
  %wide.load345 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !159, !alias.scope !2909, !noalias !2912
  %i.ev = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.ew = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  %wide.load346 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !159, !alias.scope !2916, !noalias !2917
  %wide.load347 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !159, !alias.scope !2916, !noalias !2917
  %i.ex = getelementptr inbounds i8, ptr %next.gep343, i64 -16
  %i.ey = getelementptr inbounds i8, ptr %next.gep343, i64 -32
  store <2 x i64> %wide.load346, ptr %i.ex, align 8, !tbaa !159, !alias.scope !2909, !noalias !2912
  store <2 x i64> %wide.load347, ptr %i.ey, align 8, !tbaa !159, !alias.scope !2909, !noalias !2912
  %i.ez = getelementptr inbounds i8, ptr %next.gep342, i64 -16
  %i.fa = getelementptr inbounds i8, ptr %next.gep342, i64 -32
  store <2 x ptr> %wide.load344, ptr %i.ez, align 8, !tbaa !159, !alias.scope !2916, !noalias !2917
  store <2 x ptr> %wide.load345, ptr %i.fa, align 8, !tbaa !159, !alias.scope !2916, !noalias !2917
  %index.next348 = add nuw i64 %index341, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next348, %n.vec339
  br i1 %i.fb, label %middle.block349, label %vector.body340, !llvm.loop !2918

middle.block349:                                  ; preds = %vector.body340
  %cmp.n350 = icmp eq i64 %i.ek, %n.vec339
  br i1 %cmp.n350, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader394

.lr.ph.i34.preheader394:                          ; preds = %vector.memcheck328, %.lr.ph.i34.preheader, %middle.block349
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck328 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.eq, %middle.block349 ]
  %.ph395 = phi ptr [ %i.cf, %vector.memcheck328 ], [ %i.cf, %.lr.ph.i34.preheader ], [ %i.er, %middle.block349 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader394, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fe, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader394 ]
  %i.fc = phi ptr [ %i.fd, %.lr.ph.i34 ], [ %.ph395, %.lr.ph.i34.preheader394 ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 4 uses
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fd, align 8, !tbaa !159, !noalias !2917
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !159, !noalias !2917
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !159, !noalias !2917
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fe, align 8, !tbaa !159, !noalias !2917
  %.not.i36 = icmp eq ptr %i.fd, %i.af
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !2919

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block383, %middle.block349, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.af, %bb.s ], [ %i.fe, %.lr.ph.i34 ], [ %i.cf, %bb.t ], [ %i.dj, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.cv, %middle.block ], [ %i.eq, %middle.block349 ], [ %i.du, %middle.block383 ], [ %i.ee, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2668
  %i.fg = load ptr, ptr %1, align 8, !tbaa !2668  ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.af, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.fi, align 8, !tbaa !159
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !159
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fj, align 8, !tbaa !159
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fl = load ptr, ptr %2, align 8, !tbaa !2668  ; 2 uses
  %i.fm = icmp eq ptr %i.fh, %i.fl
  br i1 %i.fm, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = icmp eq ptr %i.fl, %i.fg
  br i1 %i.fn, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fg, %bb.y ], [ %i.fh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2668
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.af, ptr %3, align 8, !tbaa !2668
  %i.fo = load ptr, ptr %1, align 8, !tbaa !2668
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -8 ; 2 uses
  store ptr %i.fp, ptr %1, align 8, !tbaa !2668
  %i.fq = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fq to i64
  %i.fr = add i64 %.0155, %.neg
  %i.fs = icmp ne i64 %i.ae, 0
  %.neg24 = sext i1 %i.fs to i64
  %i.ft = add i64 %.sroa.speculated, %.neg24
  %i.fu = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2920

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.fv = load ptr, ptr %6, align 8, !tbaa !2668
  store ptr %i.fv, ptr %0, align 8, !tbaa !2668
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2456   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2456   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2456   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !2212
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !2212
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2846

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !159
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.q, ptr %i.m, align 8, !tbaa !159
  %i.r = load i64, ptr %4, align 8, !tbaa !159
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !159
  %i.s = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.s, ptr %4, align 8, !tbaa !159
  store i64 %i.p, ptr %i.d, align 8, !tbaa !159
  %.03762.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.04163.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4864.i = icmp eq ptr %.04163.i, %1
  br i1 %.not4864.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91, label %.lr.ph.i31

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
  %7 = sub i64 %i.u, %i.j
  %8 = lshr i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = mul i64 %indvar, 2305843009213693951
  %i.v = add i64 %10, %9                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %11 = add i64 %i.a, -16
  %12 = sub i64 %11, %i.j
  %13 = and i64 %12, -8                           ; 2 uses
  %i.w = getelementptr i8, ptr %.0.lcssa.i, i64 %13
  %scevgep = getelementptr i8, ptr %i.w, i64 16
  %i.x = add i64 %13, 8
  %i.y = shl i64 %indvar, 3
  %i.z = sub i64 %i.x, %i.y
  %scevgep237 = getelementptr i8, ptr %.03965.i, i64 %i.z
  %bound0 = icmp ult ptr %.04169.i, %scevgep237
  %bound1 = icmp ult ptr %.03965.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03965.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04169.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ad ; 4 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !159, !alias.scope !2921, !noalias !2924
  %wide.load239.a = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !159, !alias.scope !2921, !noalias !2924
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !159, !alias.scope !2924
  %wide.load241 = load <2 x i64>, ptr %i.af, align 8, !tbaa !159, !alias.scope !2924
  %i.ag = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !159, !alias.scope !2921, !noalias !2924
  store <2 x i64> %wide.load241, ptr %i.ag, align 8, !tbaa !159, !alias.scope !2921, !noalias !2924
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !159, !alias.scope !2924
  store <2 x ptr> %wide.load239.a, ptr %i.ah, align 8, !tbaa !159, !alias.scope !2924
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !159
  %i.aj = load i64, ptr %.010.i.i, align 8, !tbaa !159
  store i64 %i.aj, ptr %.079.i.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2927

bb.g:                                             ; preds = %.lr.ph.i31
  %i.am = load ptr, ptr %.067.i, align 8, !tbaa !2212
  %i.an = load ptr, ptr %.03965.i, align 8, !tbaa !2212
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.ar = load i64, ptr %.03768.i, align 8, !tbaa !159
  %i.as = load i64, ptr %.04169.i, align 8, !tbaa !159
  store i64 %i.as, ptr %.03768.i, align 8, !tbaa !159
  %i.at = load i64, ptr %.067.i, align 8, !tbaa !159
  store i64 %i.at, ptr %.04169.i, align 8, !tbaa !159
  %i.au = load i64, ptr %.03566.i, align 8, !tbaa !159
  store i64 %i.au, ptr %.067.i, align 8, !tbaa !159
  store i64 %i.ar, ptr %.03566.i, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.aw = load i64, ptr %.03768.i, align 8, !tbaa !159
  %i.ax = load i64, ptr %.04169.i, align 8, !tbaa !159
  store i64 %i.ax, ptr %.03768.i, align 8, !tbaa !159
  %i.ay = load i64, ptr %.03965.i, align 8, !tbaa !159
  store i64 %i.ay, ptr %.04169.i, align 8, !tbaa !159
  store i64 %i.aw, ptr %.03965.i, align 8, !tbaa !159
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.av, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.ap, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.aq, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2928

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !159
  %i.bb = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.bb, ptr %i.m, align 8, !tbaa !159
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.bc, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !159
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bd = icmp eq ptr %.03453.i, %1
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.az, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.be = icmp eq ptr %.055.i, %3
  br i1 %i.be, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bf = add i64 %i.a, -16
  %14 = sub i64 %i.bf, %i.j
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = mul i64 %indvar244, 2305843009213693951
  %i.bg = add i64 %17, %16                        ; 3 uses
  %min.iters.check254 = icmp ult i64 %i.bg, 22
  br i1 %min.iters.check254, label %.lr.ph.i.i40.preheader290, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i40.preheader
  %18 = add i64 %i.a, -16
  %19 = sub i64 %18, %i.j
  %20 = and i64 %19, -8                           ; 2 uses
  %i.bh = getelementptr i8, ptr %.0.lcssa.i, i64 %20
  %scevgep246 = getelementptr i8, ptr %i.bh, i64 16
  %i.bi = add i64 %20, 8
  %i.bj = shl i64 %indvar244, 3
  %i.bk = sub i64 %i.bi, %i.bj
  %scevgep249 = getelementptr i8, ptr %.03254.i, i64 %i.bk
  %bound0250 = icmp ult ptr %.03457.i, %scevgep249
  %bound1251 = icmp ult ptr %.03254.i, %scevgep246
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i40.preheader290, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck243
  %n.vec256 = and i64 %i.bg, -4                   ; 3 uses
  %i.bl = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %.03254.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %.03457.i, i64 %i.bl
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 2 uses
  %i.bo = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03254.i, i64 %i.bo ; 4 uses
  %next.gep260 = getelementptr i8, ptr %.03457.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x ptr>, ptr %next.gep260, align 8, !tbaa !159, !alias.scope !2929, !noalias !2932
  %wide.load262 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !159, !alias.scope !2929, !noalias !2932
  %i.bq = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load263 = load <2 x i64>, ptr %next.gep259, align 8, !tbaa !159, !alias.scope !2932
  %wide.load264 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !159, !alias.scope !2932
  %i.br = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x i64> %wide.load263, ptr %next.gep260, align 8, !tbaa !159, !alias.scope !2929, !noalias !2932
  store <2 x i64> %wide.load264, ptr %i.br, align 8, !tbaa !159, !alias.scope !2929, !noalias !2932
  %i.bs = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x ptr> %wide.load261, ptr %next.gep259, align 8, !tbaa !159, !alias.scope !2932
  store <2 x ptr> %wide.load262, ptr %i.bs, align 8, !tbaa !159, !alias.scope !2932
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.bt, label %middle.block266, label %vector.body257, !llvm.loop !2934

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.bg, %n.vec256
  br i1 %cmp.n267, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader290

.lr.ph.i.i40.preheader290:                        ; preds = %vector.memcheck243, %.lr.ph.i.i40.preheader, %middle.block266
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck243 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.bm, %middle.block266 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck243 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bn, %middle.block266 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader290, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bw, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bv, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !159
  %i.bu = load i64, ptr %.010.i.i41, align 8, !tbaa !159
  store i64 %i.bu, ptr %.079.i.i42, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !159
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2935

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bx = load ptr, ptr %.055.i, align 8, !tbaa !2212
  %i.by = load ptr, ptr %.03254.i, align 8, !tbaa !2212
  %i.bz = icmp ult ptr %i.bx, %i.by               ; 3 uses
  %i.ca = load i64, ptr %.03056.i, align 8, !tbaa !159
  %i.cb = load i64, ptr %.03457.i, align 8, !tbaa !159
  store i64 %i.cb, ptr %.03056.i, align 8, !tbaa !159
  %.03254.sink73.i = select i1 %i.bz, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.bz, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.bz, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.cc = load i64, ptr %.03254.sink73.i, align 8, !tbaa !159
  store i64 %i.cc, ptr %.03457.i, align 8, !tbaa !159
  store i64 %i.ca, ptr %.03254.sink73.i, align 8, !tbaa !159
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cd = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2936

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block266, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block266 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block266 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block266 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block266 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bm, %middle.block266 ], [ %.030.i, %bb.m ], [ %i.bw, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.0101 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03762.i, %bb.f ] ; 5 uses
  %.028100 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.07099 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07198 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07697 = phi ptr [ %.076, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i45 = icmp eq ptr %.07099, %3
  %.not36.i = icmp eq ptr %.0101, %.07198
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.028.ph.i = phi ptr [ %i.cn, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ci, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cj, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.ce = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.cf = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cg = icmp ult ptr %i.ce, %i.cf
  br i1 %i.cg, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.ck = load i64, ptr %.030.i47, align 8, !tbaa !159
  store i64 %i.ch, ptr %.030.i47, align 8, !tbaa !159
  %i.cl = load i64, ptr %.026.i, align 8, !tbaa !159
  store i64 %i.cl, ptr %.025.i, align 8, !tbaa !159
  store i64 %i.ck, ptr %.026.i, align 8, !tbaa !159
  %.not44.i = icmp eq ptr %i.ci, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2937

bb.o:                                             ; preds = %bb.n
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !159
  store i64 %i.cm, ptr %.030.i47, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !159
  %.not43.i = icmp eq ptr %i.cn, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2937

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.az, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cr, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cw, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cr, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.ct, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.co = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cp = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !159 ; 2 uses
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cs, ptr %.024.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !159
  %i.cu = icmp eq ptr %i.ct, %3
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2938

bb.q:                                             ; preds = %.preheader.i
  %i.cv = ptrtoint ptr %i.cp to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cv, ptr %.024.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !159
  %i.cx = icmp eq ptr %i.cw, %.087
  br i1 %i.cx, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2938

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.cw, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cn, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.ci, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.ct, %bb.p ], [ %.026.i, %bb.o ]
  %i.cy = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.cr, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cr, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !2456
  store ptr %.086, ptr %6, align 8, !tbaa !2456
  store ptr %.1, ptr %2, align 8, !tbaa !2456
  ret ptr %i.cy
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !2456   ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !2456   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !2456   ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !2212
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !2212
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2855

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 14 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !159
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.p, ptr %i.l, align 8, !tbaa !159
  %i.q = load i64, ptr %4, align 8, !tbaa !159
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !159
  %i.r = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.r, ptr %4, align 8, !tbaa !159
  store i64 %i.o, ptr %i.d, align 8, !tbaa !159
  %.03763.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.04164.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %.not4865.i = icmp eq ptr %.04164.i, %1
  br i1 %.not4865.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04170.i = phi ptr [ %.041.i, %bb.j ], [ %.04164.i, %bb.f ] ; 10 uses
  %.03769.i = phi ptr [ %.037.i, %bb.j ], [ %.03763.i, %bb.f ] ; 5 uses
  %.068.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 7 uses
  %.03567.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 7 uses
  %.03966.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 13 uses
  %i.s = icmp eq ptr %.03567.i, %3
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %bb.g

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -16
  %8 = sub i64 %i.t, %i.i
  %9 = lshr i64 %8, 3
  %10 = add nuw nsw i64 %9, 1
  %11 = mul i64 %indvar, 2305843009213693951
  %i.u = add i64 %11, %10                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 22
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader300, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %12 = add i64 %i.a, -16
  %13 = sub i64 %12, %i.i
  %14 = and i64 %13, -8                           ; 2 uses
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %14
  %scevgep = getelementptr i8, ptr %i.v, i64 16
  %i.w = add i64 %14, 8
  %i.x = shl i64 %indvar, 3
  %i.y = sub i64 %i.w, %i.x
  %scevgep240 = getelementptr i8, ptr %.03966.i, i64 %i.y
  %bound0 = icmp ult ptr %.04170.i, %scevgep240
  %bound1 = icmp ult ptr %.03966.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03966.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04170.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.ac ; 4 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.ac ; 4 uses
  %i.ad = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !159, !alias.scope !2939, !noalias !2942
  %wide.load242.a = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !159, !alias.scope !2939, !noalias !2942
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !159, !alias.scope !2942
  %wide.load244 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !159, !alias.scope !2942
  %i.af = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !159, !alias.scope !2939, !noalias !2942
  store <2 x i64> %wide.load244, ptr %i.af, align 8, !tbaa !159, !alias.scope !2939, !noalias !2942
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !159, !alias.scope !2942
  store <2 x ptr> %wide.load242.a, ptr %i.ag, align 8, !tbaa !159, !alias.scope !2942
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader300

.lr.ph.i.i.preheader300:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader300, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !159
  %i.ai = load i64, ptr %.010.i.i, align 8, !tbaa !159
  store i64 %i.ai, ptr %.079.i.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !159
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2945

bb.g:                                             ; preds = %.lr.ph.i31
  %i.al = load ptr, ptr %.03966.i, align 8, !tbaa !2212
  %i.am = load ptr, ptr %.068.i, align 8, !tbaa !2212
  %.not53.i = icmp ult ptr %i.al, %i.am
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.ap = load i64, ptr %.03769.i, align 8, !tbaa !159
  %i.aq = load i64, ptr %.04170.i, align 8, !tbaa !159
  store i64 %i.aq, ptr %.03769.i, align 8, !tbaa !159
  %i.ar = load i64, ptr %.068.i, align 8, !tbaa !159
  store i64 %i.ar, ptr %.04170.i, align 8, !tbaa !159
  %i.as = load i64, ptr %.03567.i, align 8, !tbaa !159
  store i64 %i.as, ptr %.068.i, align 8, !tbaa !159
  store i64 %i.ap, ptr %.03567.i, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.au = load i64, ptr %.03769.i, align 8, !tbaa !159
  %i.av = load i64, ptr %.04170.i, align 8, !tbaa !159
  store i64 %i.av, ptr %.03769.i, align 8, !tbaa !159
  %i.aw = load i64, ptr %.03966.i, align 8, !tbaa !159
  store i64 %i.aw, ptr %.04170.i, align 8, !tbaa !159
  store i64 %i.au, ptr %.03966.i, align 8, !tbaa !159
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.an, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ao, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2946

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !159
  %i.az = load i64, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.az, ptr %i.l, align 8, !tbaa !159
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !159
  store i64 %i.ba, ptr %.0.lcssa.i, align 8, !tbaa !159
  store i64 %i.ay, ptr %i.d, align 8, !tbaa !159
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bb = icmp eq ptr %.03454.i, %1
  br i1 %i.bb, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar247 = phi i64 [ %indvar.next248, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ax, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bc = icmp eq ptr %.056.i, %3
  br i1 %i.bc, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bd = add i64 %i.a, -16
  %15 = sub i64 %i.bd, %i.i
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = mul i64 %indvar247, 2305843009213693951
  %i.be = add i64 %18, %17                        ; 3 uses
  %min.iters.check257 = icmp ult i64 %i.be, 22
  br i1 %min.iters.check257, label %.lr.ph.i.i40.preheader293, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i40.preheader
  %19 = add i64 %i.a, -16
  %20 = sub i64 %19, %i.i
  %21 = and i64 %20, -8                           ; 2 uses
  %i.bf = getelementptr i8, ptr %.0.lcssa.i, i64 %21
  %scevgep249 = getelementptr i8, ptr %i.bf, i64 16
  %i.bg = add i64 %21, 8
  %i.bh = shl i64 %indvar247, 3
  %i.bi = sub i64 %i.bg, %i.bh
  %scevgep252 = getelementptr i8, ptr %.03255.i, i64 %i.bi
  %bound0253 = icmp ult ptr %.03458.i, %scevgep252
  %bound1254 = icmp ult ptr %.03255.i, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i40.preheader293, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck246
  %n.vec259 = and i64 %i.be, -4                   ; 3 uses
  %i.bj = shl i64 %n.vec259, 3                    ; 2 uses
  %i.bk = getelementptr i8, ptr %.03255.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %.03458.i, i64 %i.bj
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.bm = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03255.i, i64 %i.bm ; 4 uses
  %next.gep263 = getelementptr i8, ptr %.03458.i, i64 %i.bm ; 4 uses
  %i.bn = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x ptr>, ptr %next.gep263, align 8, !tbaa !159, !alias.scope !2947, !noalias !2950
  %wide.load265 = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !159, !alias.scope !2947, !noalias !2950
  %i.bo = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load266 = load <2 x i64>, ptr %next.gep262, align 8, !tbaa !159, !alias.scope !2950
  %wide.load267 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !159, !alias.scope !2950
  %i.bp = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load266, ptr %next.gep263, align 8, !tbaa !159, !alias.scope !2947, !noalias !2950
  store <2 x i64> %wide.load267, ptr %i.bp, align 8, !tbaa !159, !alias.scope !2947, !noalias !2950
  %i.bq = getelementptr i8, ptr %next.gep262, i64 16
  store <2 x ptr> %wide.load264, ptr %next.gep262, align 8, !tbaa !159, !alias.scope !2950
  store <2 x ptr> %wide.load265, ptr %i.bq, align 8, !tbaa !159, !alias.scope !2950
  %index.next268 = add nuw i64 %index261, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.br, label %middle.block269, label %vector.body260, !llvm.loop !2952

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.be, %n.vec259
  br i1 %cmp.n270, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader293

.lr.ph.i.i40.preheader293:                        ; preds = %vector.memcheck246, %.lr.ph.i.i40.preheader, %middle.block269
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck246 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bk, %middle.block269 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck246 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bl, %middle.block269 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader293, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bu, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bt, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !159
  %i.bs = load i64, ptr %.010.i.i41, align 8, !tbaa !159
  store i64 %i.bs, ptr %.079.i.i42, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !159
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bt, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2953

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bv = load ptr, ptr %.03255.i, align 8, !tbaa !2212
  %i.bw = load ptr, ptr %.056.i, align 8, !tbaa !2212
  %.not45.i = icmp ult ptr %i.bv, %i.bw           ; 3 uses
  %i.bx = load i64, ptr %.03057.i, align 8, !tbaa !159
  %i.by = load i64, ptr %.03458.i, align 8, !tbaa !159
  store i64 %i.by, ptr %.03057.i, align 8, !tbaa !159
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.bz = load i64, ptr %.03255.sink74.i, align 8, !tbaa !159
  store i64 %i.bz, ptr %.03458.i, align 8, !tbaa !159
  store i64 %i.bx, ptr %.03255.sink74.i, align 8, !tbaa !159
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.ca = icmp eq ptr %.034.i, %1
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2954

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block269, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block269 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block269 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block269 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block269 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.aa, %middle.block ], [ %i.bk, %middle.block269 ], [ %.030.i, %bb.m ], [ %i.bu, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03763.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i45 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i46 = select i1 %.not.i45, i1 true, i1 %.not36.i
  br i1 %or.cond.i46, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.cj, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ce, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cf, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cb = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cc = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cb, %i.cc
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cg = load i64, ptr %.030.i47, align 8, !tbaa !159
  store i64 %i.cd, ptr %.030.i47, align 8, !tbaa !159
  %i.ch = load i64, ptr %.026.i, align 8, !tbaa !159
  store i64 %i.ch, ptr %.025.i, align 8, !tbaa !159
  store i64 %i.cg, ptr %.026.i, align 8, !tbaa !159
  %.not45.i48 = icmp eq ptr %i.ce, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2955

bb.o:                                             ; preds = %bb.n
  %i.ci = ptrtoint ptr %i.cb to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !159
  store i64 %i.ci, ptr %.030.i47, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !159
  %.not44.i = icmp eq ptr %i.cj, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2955

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.ax, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cm, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cr, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cm, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.co, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.ck = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cl = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.ck, %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !159 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cn, ptr %.024.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !159
  %i.cp = icmp eq ptr %i.co, %3
  br i1 %i.cp, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2956

bb.q:                                             ; preds = %.preheader.i
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cq, ptr %.024.i, align 8, !tbaa !159
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !159
  %i.cs = icmp eq ptr %i.cr, %.091
  br i1 %i.cs, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2956

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.ce, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.co, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cr, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cj, %bb.o ]
  %i.ct = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.cm, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cm, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !2456
  store ptr %.090, ptr %6, align 8, !tbaa !2456
  store ptr %.178, ptr %2, align 8, !tbaa !2456
  ret ptr %i.ct
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !127, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load ptr, ptr %1, align 8, !tbaa !2212
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !2212
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split
end_hunk_3
