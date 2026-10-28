Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/insert_into_cdt?download=true
inline.NumInlined: 11835
inline.NumDeleted: 3665
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a

vector.ph373:                                     ; preds = %vector.memcheck353
  %n.vec374 = and i64 %i.du, 4611686018427387902  ; 3 uses
  %i.ec = shl i64 %n.vec374, 3                    ; 3 uses
  %i.ed = getelementptr i8, ptr %7, i64 %i.ec     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ec
  %i.ef = getelementptr i8, ptr %i.dj, i64 %i.ec
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next383, %vector.body375 ] ; 2 uses
  %i.eg = shl i64 %index376, 3                    ; 3 uses
  %next.gep377 = getelementptr i8, ptr %7, i64 %i.eg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.dp, i64 %i.eg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.dj, i64 %i.eg ; 2 uses
  %wide.load380 = load <2 x i64>, ptr %next.gep377, align 8, !tbaa !114, !alias.scope !1160, !noalias !1161
  %wide.load381 = load <2 x i64>, ptr %next.gep378, align 8, !tbaa !114, !alias.scope !1162, !noalias !1163
  store <2 x i64> %wide.load381, ptr %next.gep377, align 8, !tbaa !114, !alias.scope !1160, !noalias !1161
  %wide.load382 = load <2 x i64>, ptr %next.gep379, align 8, !tbaa !114, !alias.scope !1163
  store <2 x i64> %wide.load382, ptr %next.gep378, align 8, !tbaa !114, !alias.scope !1162, !noalias !1163
  store <2 x i64> %wide.load380, ptr %next.gep379, align 8, !tbaa !114, !alias.scope !1163
  %index.next383 = add nuw i64 %index376, 2       ; 2 uses
  %i.eh = icmp eq i64 %index.next383, %n.vec374
  br i1 %i.eh, label %middle.block384, label %vector.body375, !llvm.loop !1128

middle.block384:                                  ; preds = %vector.body375
  %cmp.n385 = icmp eq i64 %i.du, %n.vec374
  br i1 %cmp.n385, label %._crit_edge.i138, label %.lr.ph.i133.preheader449

.lr.ph.i133.preheader449:                         ; preds = %vector.memcheck353, %.lr.ph.i133.preheader, %middle.block384
  %.033.i134.ph = phi ptr [ %7, %vector.memcheck353 ], [ %7, %.lr.ph.i133.preheader ], [ %i.ed, %middle.block384 ] ; 2 uses
  %.02032.i135.ph = phi ptr [ %i.dp, %vector.memcheck353 ], [ %i.dp, %.lr.ph.i133.preheader ], [ %i.ee, %middle.block384 ] ; 2 uses
  %.02131.i136.ph = phi ptr [ %i.dj, %vector.memcheck353 ], [ %i.dj, %.lr.ph.i133.preheader ], [ %i.ef, %middle.block384 ] ; 3 uses
  %.02131.i136.ph452 = ptrtoaddr ptr %.02131.i136.ph to i64
  %i.ei = sub i64 %i.dr, %.02131.i136.ph452       ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1
  %xtraiter = and i64 %i.ek, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader449, %.lr.ph.i133.prol
  %.033.i134.prol = phi ptr [ %i.en, %.lr.ph.i133.prol ], [ %.033.i134.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %.02032.i135.prol = phi ptr [ %i.em, %.lr.ph.i133.prol ], [ %.02032.i135.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %.02131.i136.prol = phi ptr [ %i.el, %.lr.ph.i133.prol ], [ %.02131.i136.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader449 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.02131.i136.prol, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02032.i135.prol, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.033.i134.prol, i64 8 ; 3 uses
  %i.eo = load i64, ptr %.033.i134.prol, align 8, !tbaa !114
  %i.ep = load i64, ptr %.02032.i135.prol, align 8, !tbaa !114
  store i64 %i.ep, ptr %.033.i134.prol, align 8, !tbaa !114
  %i.eq = load i64, ptr %.02131.i136.prol, align 8, !tbaa !114
  store i64 %i.eq, ptr %.02032.i135.prol, align 8, !tbaa !114
  store i64 %i.eo, ptr %.02131.i136.prol, align 8, !tbaa !114
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !1129

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader449
  %.lcssa450.unr = phi ptr [ poison, %.lr.ph.i133.preheader449 ], [ %i.en, %.lr.ph.i133.prol ]
  %.033.i134.unr = phi ptr [ %.033.i134.ph, %.lr.ph.i133.preheader449 ], [ %i.en, %.lr.ph.i133.prol ]
  %.02032.i135.unr = phi ptr [ %.02032.i135.ph, %.lr.ph.i133.preheader449 ], [ %i.em, %.lr.ph.i133.prol ]
  %.02131.i136.unr = phi ptr [ %.02131.i136.ph, %.lr.ph.i133.preheader449 ], [ %i.el, %.lr.ph.i133.prol ]
  %i.er = icmp ult i64 %i.ei, 24
  br i1 %i.er, label %._crit_edge.i138, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.033.i134 = phi ptr [ %i.fm, %.lr.ph.i133 ], [ %.033.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02032.i135 = phi ptr [ %i.fl, %.lr.ph.i133 ], [ %.02032.i135.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02131.i136 = phi ptr [ %i.fk, %.lr.ph.i133 ], [ %.02131.i136.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.033.i134, i64 8 ; 2 uses
  %i.ev = load i64, ptr %.033.i134, align 8, !tbaa !114
  %i.ew = load i64, ptr %.02032.i135, align 8, !tbaa !114
  store i64 %i.ew, ptr %.033.i134, align 8, !tbaa !114
  %i.ex = load i64, ptr %.02131.i136, align 8, !tbaa !114
  store i64 %i.ex, ptr %.02032.i135, align 8, !tbaa !114
  store i64 %i.ev, ptr %.02131.i136, align 8, !tbaa !114
  %i.ey = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.033.i134, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !114
  %i.fc = load i64, ptr %i.et, align 8, !tbaa !114
  store i64 %i.fc, ptr %i.eu, align 8, !tbaa !114
  %i.fd = load i64, ptr %i.es, align 8, !tbaa !114
  store i64 %i.fd, ptr %i.et, align 8, !tbaa !114
  store i64 %i.fb, ptr %i.es, align 8, !tbaa !114
  %i.fe = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.033.i134, i64 24 ; 2 uses
  %i.fh = load i64, ptr %i.fa, align 8, !tbaa !114
  %i.fi = load i64, ptr %i.ez, align 8, !tbaa !114
  store i64 %i.fi, ptr %i.fa, align 8, !tbaa !114
  %i.fj = load i64, ptr %i.ey, align 8, !tbaa !114
  store i64 %i.fj, ptr %i.ez, align 8, !tbaa !114
  store i64 %i.fh, ptr %i.ey, align 8, !tbaa !114
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i134, i64 32 ; 2 uses
  %i.fn = load i64, ptr %i.fg, align 8, !tbaa !114
  %i.fo = load i64, ptr %i.ff, align 8, !tbaa !114
  store i64 %i.fo, ptr %i.fg, align 8, !tbaa !114
  %i.fp = load i64, ptr %i.fe, align 8, !tbaa !114
  store i64 %i.fp, ptr %i.ff, align 8, !tbaa !114
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !114
  %.not28.i137.3 = icmp eq ptr %i.fk, %i.bg
  br i1 %.not28.i137.3, label %._crit_edge.i138, label %.lr.ph.i133, !llvm.loop !1130

._crit_edge.i138:                                 ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %middle.block384, %.preheader.i131
  %.0.lcssa.i139 = phi ptr [ %7, %.preheader.i131 ], [ %i.ed, %middle.block384 ], [ %.lcssa450.unr, %.lr.ph.i133.prol.loopexit ], [ %i.fm, %.lr.ph.i133 ] ; 2 uses
  %.not29.i140 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i138
  %.sroa.0.0.copyload.i.i141 = load ptr, ptr %i.bl, align 8, !tbaa !114
  %i.fq = load i64, ptr %.0106236, align 8, !tbaa !114
  store i64 %i.fq, ptr %i.bl, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i141, ptr %.0106236, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i138
  %i.fr = icmp eq ptr %i.bl, %.0204231
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq ptr %.0204231, %.0106236
  %spec.select218 = select i1 %i.fs, ptr %i.bl, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0204231, %bb.q ], [ %spec.select218, %bb.t ], [ %.0106236, %bb.s ]
  %.1.i142 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i139, %bb.t ], [ %.0.lcssa.i139, %bb.s ] ; 2 uses
  store ptr %.1.i142, ptr %i.c, align 8, !tbaa !285
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  %.not.i146 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i147 = load ptr, ptr %i.bl, align 8, !tbaa !114
  %i.ft = load i64, ptr %.0106236, align 8, !tbaa !114
  store i64 %i.ft, ptr %i.bl, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i147, ptr %.0106236, align 8, !tbaa !114
  %i.fu = icmp eq ptr %i.bl, %.0204231
  br i1 %i.fu, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = icmp eq ptr %.0204231, %.0106236
  %spec.select219 = select i1 %i.fv, ptr %i.bl, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145
  %i.fw = phi ptr [ %.1.i142, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.dh, %bb.u ], [ %i.dh, %bb.w ], [ %i.dh, %bb.v ]
  %i.fx = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %.1205 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %.0204231, %bb.u ], [ %spec.select219, %bb.w ], [ %.0106236, %bb.v ]
  %i.fy = xor i1 %i.de, %i.di
  %i.fz = zext i1 %i.fy to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit
  %i.ga = phi ptr [ %i.fw, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gb = phi ptr [ %i.fx, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gc = phi i1 [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ]
  %.2206 = phi ptr [ %.1205, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.df, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.ag, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.fz, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.0108235, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gc, true
  %i.gd = sext i1 %not. to i64
  %.1 = add i64 %.0240, %i.gd
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0111233, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !285
  %i.gf = getelementptr inbounds nuw i8, ptr %.0106236, i64 8
  %i.gg = icmp ne i64 %.0104239, 0
  %.neg = sext i1 %i.gg to i64
  %i.gh = add i64 %.0104239, %.neg
  %i.gi = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.gi to i64
  %i.gj = add i64 %.sroa.speculated192, %.neg122
  %i.gk = add i64 %.0208230, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !1131

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gl = phi ptr [ %i.ga, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %i.gm = phi ptr [ %i.gb, %bb.x ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 8 uses
  %.0208.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0208230, %bb.g ], [ %.0208230, %bb.f ] ; 3 uses
  %.0204.lcssa.ph = phi ptr [ %.2206, %bb.x ], [ %.0204231, %bb.g ], [ %.0204231, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114232, %bb.g ], [ %.0114232, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.ge, %bb.x ], [ %.0111233, %bb.g ], [ %.0111233, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108235, %bb.f ]
  %i.gn = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.go = select i1 %i.gn, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i150 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not8.i150, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %.thread
  %i.gp = ptrtoaddr ptr %i.gm to i64
  %i.gq = ptrtoaddr ptr %i.gl to i64
  %i.gr = add i64 %i.gq, -8
  %i.gs = sub i64 %i.gr, %i.gp                    ; 3 uses
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check396 = icmp ult i64 %i.gs, 104
  br i1 %min.iters.check396, label %.lr.ph.i151.preheader446, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph.i151.preheader
  %i.gv = and i64 %i.gs, -8
  %i.gw = add i64 %i.gv, 8                        ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gw
  %i.gy = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.gw
  %bound0398 = icmp ult ptr %i.gm, %i.gy
  %bound1399 = icmp ult ptr %.0114.lcssa.ph, %i.gx
  %found.conflict400 = and i1 %bound0398, %bound1399
  br i1 %found.conflict400, label %.lr.ph.i151.preheader446, label %vector.ph401

vector.ph401:                                     ; preds = %vector.memcheck397
  %n.vec402 = and i64 %i.gu, 4611686018427387900  ; 3 uses
  %i.gz = shl i64 %n.vec402, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gz
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next411, %vector.body403 ] ; 2 uses
  %i.hc = shl i64 %index404, 3                    ; 2 uses
  %next.gep405 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hc ; 4 uses
  %next.gep406 = getelementptr i8, ptr %i.gm, i64 %i.hc ; 4 uses
  %i.hd = getelementptr i8, ptr %next.gep406, i64 16
  %wide.load407 = load <2 x ptr>, ptr %next.gep406, align 8, !tbaa !114, !alias.scope !1164, !noalias !1165
  %wide.load408 = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !114, !alias.scope !1164, !noalias !1165
  %i.he = getelementptr i8, ptr %next.gep405, i64 16
  %wide.load409 = load <2 x i64>, ptr %next.gep405, align 8, !tbaa !114, !alias.scope !1165
  %wide.load410 = load <2 x i64>, ptr %i.he, align 8, !tbaa !114, !alias.scope !1165
  %i.hf = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load409, ptr %next.gep406, align 8, !tbaa !114, !alias.scope !1164, !noalias !1165
  store <2 x i64> %wide.load410, ptr %i.hf, align 8, !tbaa !114, !alias.scope !1164, !noalias !1165
  %i.hg = getelementptr i8, ptr %next.gep405, i64 16
  store <2 x ptr> %wide.load407, ptr %next.gep405, align 8, !tbaa !114, !alias.scope !1165
  store <2 x ptr> %wide.load408, ptr %i.hg, align 8, !tbaa !114, !alias.scope !1165
  %index.next411 = add nuw i64 %index404, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next411, %n.vec402
  br i1 %i.hh, label %middle.block412, label %vector.body403, !llvm.loop !1135

middle.block412:                                  ; preds = %vector.body403
  %cmp.n413 = icmp eq i64 %i.gu, %n.vec402
  br i1 %cmp.n413, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader446

.lr.ph.i151.preheader446:                         ; preds = %vector.memcheck397, %.lr.ph.i151.preheader, %middle.block412
  %.010.i152.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck397 ], [ %.0114.lcssa.ph, %.lr.ph.i151.preheader ], [ %i.ha, %middle.block412 ]
  %.079.i153.ph = phi ptr [ %i.gm, %vector.memcheck397 ], [ %i.gm, %.lr.ph.i151.preheader ], [ %i.hb, %middle.block412 ]
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.preheader446, %.lr.ph.i151
  %.010.i152 = phi ptr [ %i.hk, %.lr.ph.i151 ], [ %.010.i152.ph, %.lr.ph.i151.preheader446 ] ; 3 uses
  %.079.i153 = phi ptr [ %i.hj, %.lr.ph.i151 ], [ %.079.i153.ph, %.lr.ph.i151.preheader446 ] ; 3 uses
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %.079.i153, align 8, !tbaa !114
  %i.hi = load i64, ptr %.010.i152, align 8, !tbaa !114
  store i64 %i.hi, ptr %.079.i153, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i154, ptr %.010.i152, align 8, !tbaa !114
  %i.hj = getelementptr inbounds nuw i8, ptr %.079.i153, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.010.i152, i64 8
  %.not.i155 = icmp eq ptr %i.hj, %i.gl
  br i1 %.not.i155, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151, !llvm.loop !1136

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158: ; preds = %.lr.ph.i151, %middle.block412, %bb.a, %.thread
  %.0108.lcssa304 = phi ptr [ %1, %bb.a ], [ %i.go, %.thread ], [ %i.go, %middle.block412 ], [ %i.go, %.lr.ph.i151 ]
  %.0111.lcssa303 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block412 ], [ %.0111.lcssa.ph, %.lr.ph.i151 ]
  %.0204.lcssa302 = phi ptr [ %i.f, %bb.a ], [ %.0204.lcssa.ph, %.thread ], [ %.0204.lcssa.ph, %middle.block412 ], [ %.0204.lcssa.ph, %.lr.ph.i151 ]
  %.0208.lcssa301 = phi i64 [ 0, %bb.a ], [ %.0208.lcssa.ph, %.thread ], [ %.0208.lcssa.ph, %middle.block412 ], [ %.0208.lcssa.ph, %.lr.ph.i151 ] ; 2 uses
  %.idx223 = shl i64 %6, 3                        ; 3 uses
  %i.hl = getelementptr i8, ptr %i.i, i64 %.idx223 ; 3 uses
  %.not8.i159 = icmp eq i64 %6, 0
  br i1 %.not8.i159, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader

.lr.ph.i160.preheader:                            ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  %i.hm = add i64 %.idx223, -8                    ; 2 uses
  %i.hn = lshr exact i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check422 = icmp ult i64 %i.hm, 40
  br i1 %min.iters.check422, label %.lr.ph.i160.preheader445, label %vector.memcheck423

vector.memcheck423:                               ; preds = %.lr.ph.i160.preheader
  %i.hp = getelementptr i8, ptr %7, i64 %.idx223
  %bound0424 = icmp ult ptr %i.i, %i.hp
  %bound1425 = icmp ult ptr %7, %i.hl
  %found.conflict426 = and i1 %bound0424, %bound1425
  br i1 %found.conflict426, label %.lr.ph.i160.preheader445, label %vector.ph427

vector.ph427:                                     ; preds = %vector.memcheck423
  %n.vec428 = and i64 %i.ho, 4611686018427387900  ; 3 uses
  %i.hq = shl i64 %n.vec428, 3                    ; 2 uses
  %i.hr = getelementptr i8, ptr %7, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.i, i64 %i.hq
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next437, %vector.body429 ] ; 2 uses
  %i.ht = shl i64 %index430, 3                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %7, i64 %i.ht ; 4 uses
  %next.gep432 = getelementptr i8, ptr %i.i, i64 %i.ht ; 4 uses
  %i.hu = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load433 = load <2 x ptr>, ptr %next.gep432, align 8, !tbaa !114, !alias.scope !1166, !noalias !1167
  %wide.load434 = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !114, !alias.scope !1166, !noalias !1167
  %i.hv = getelementptr i8, ptr %next.gep431, i64 16
  %wide.load435 = load <2 x i64>, ptr %next.gep431, align 8, !tbaa !114, !alias.scope !1167
  %wide.load436 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !114, !alias.scope !1167
  %i.hw = getelementptr i8, ptr %next.gep432, i64 16
  store <2 x i64> %wide.load435, ptr %next.gep432, align 8, !tbaa !114, !alias.scope !1166, !noalias !1167
  store <2 x i64> %wide.load436, ptr %i.hw, align 8, !tbaa !114, !alias.scope !1166, !noalias !1167
  %i.hx = getelementptr i8, ptr %next.gep431, i64 16
  store <2 x ptr> %wide.load433, ptr %next.gep431, align 8, !tbaa !114, !alias.scope !1167
  store <2 x ptr> %wide.load434, ptr %i.hx, align 8, !tbaa !114, !alias.scope !1167
  %index.next437 = add nuw i64 %index430, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next437, %n.vec428
  br i1 %i.hy, label %middle.block438, label %vector.body429, !llvm.loop !1140

middle.block438:                                  ; preds = %vector.body429
  %cmp.n439 = icmp eq i64 %i.ho, %n.vec428
  br i1 %cmp.n439, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader445

.lr.ph.i160.preheader445:                         ; preds = %vector.memcheck423, %.lr.ph.i160.preheader, %middle.block438
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck423 ], [ %7, %.lr.ph.i160.preheader ], [ %i.hr, %middle.block438 ]
  %.079.i162.ph = phi ptr [ %i.i, %vector.memcheck423 ], [ %i.i, %.lr.ph.i160.preheader ], [ %i.hs, %middle.block438 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader445, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.ib, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader445 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.ia, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader445 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !114
  %i.hz = load i64, ptr %.010.i161, align 8, !tbaa !114
  store i64 %i.hz, ptr %.079.i162, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !114
  %i.ia = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.ia, %i.hl
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160, !llvm.loop !1141

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167: ; preds = %.lr.ph.i160, %middle.block438, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  store ptr %7, ptr %i.b, align 8, !tbaa !285
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ic, ptr %i.c, align 8, !tbaa !285
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.ic, ptr %10, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %4
  store ptr %i.ie, ptr %12, align 8, !tbaa !369, !alias.scope !1168
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !369, !alias.scope !1169
  store ptr %i.i, ptr %14, align 8, !tbaa !369, !alias.scope !1170
  store ptr %7, ptr %15, align 8, !tbaa !369, !alias.scope !1171
  store ptr %i.hl, ptr %16, align 8, !tbaa !369, !alias.scope !1172
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.if = load ptr, ptr %11, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ig = load ptr, ptr %10, align 8, !tbaa !369  ; 3 uses
  store ptr %i.ig, ptr %i.c, align 8, !tbaa !285
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !285 ; 3 uses
  %.not28.i168 = icmp eq ptr %i.ih, %i.ig
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, %bb.ab
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.ig, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.ir, %bb.ab ], [ %i.if, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 2 uses
  %i.ii = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.ii, label %.lr.ph.i.i, label %bb.y

.lr.ph.i.i:                                       ; preds = %.lr.ph.i169, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ik, %.lr.ph.i.i ], [ %.02129.i, %.lr.ph.i169 ]
  %.057.i.i = phi ptr [ %i.ij, %.lr.ph.i.i ], [ %.031.i, %.lr.ph.i169 ]
  %i.ij = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !114
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !114
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ik, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %i.ih, %i.ij
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1152

bb.y:                                             ; preds = %.lr.ph.i169
  %i.im = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.io = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.ip = load ptr, ptr %i.in, align 8            ; 2 uses
  %i.iq = icmp ult ptr %i.io, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.ir, align 8, !tbaa !114 ; 2 uses
  br i1 %i.iq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.is = ptrtoint ptr %i.ip to i64
  store i64 %i.is, ptr %i.ir, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.in, align 8, !tbaa !114
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.it = ptrtoint ptr %i.io to i64
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.im, align 8, !tbaa !114
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.ag, %bb.m ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bf, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1280 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !noalias !1280 ; 2 uses
  %i.bi = icmp ult ptr %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bj, align 8, !tbaa !114, !noalias !1280 ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bk = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !114, !noalias !1280
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bk, align 8, !tbaa !114, !noalias !1280
  %i.bm = icmp eq ptr %i.bk, %i.z
  br i1 %i.bm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !1266

bb.o:                                             ; preds = %.preheader.i.i
  %i.bn = ptrtoint ptr %i.bg to i64
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !114, !noalias !1280
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bf, align 8, !tbaa !114, !noalias !1280
  %i.bo = icmp eq ptr %i.bf, %i.ae
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !1266

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bt, %bb.q ], [ %i.af, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.c, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.ag, %bb.p ]
  %i.bp = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bt, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bq, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.br = load ptr, ptr %i.bp, align 8, !noalias !1281 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !1281 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.br, %i.bs
  %i.bt = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.bt, align 8, !tbaa !114, !noalias !1281 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bu = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.bv = ptrtoint ptr %i.br to i64
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !114, !noalias !1281
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bu, align 8, !tbaa !114, !noalias !1281
  %i.bw = icmp eq ptr %i.bu, %i.z
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !1269

bb.r:                                             ; preds = %.preheader.i6.i
  %i.bx = ptrtoint ptr %i.bs to i64
  store i64 %i.bx, ptr %i.bt, align 8, !tbaa !114, !noalias !1281
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bq, align 8, !tbaa !114, !noalias !1281
  %i.by = icmp eq ptr %i.bq, %i.ae
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !1269

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.ai, %bb.h ], [ %i.au, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bf, %bb.o ], [ %i.bq, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.c, %bb.p ], [ %i.c, %bb.m ], [ %i.z, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.z, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.as, %bb.h ], [ %i.bd, %bb.k ], [ %i.bt, %bb.r ], [ %i.bj, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.bj, %bb.n ], [ %i.bt, %bb.q ], [ %i.az, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ac, %bb.r ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ], [ %i.ac, %bb.m ], [ %i.ah, %.split.i.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.q ], [ %i.at, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !369, !noalias !97
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !369, !noalias !97
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.078.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !369
  %i.bz = load ptr, ptr %3, align 8, !tbaa !369   ; 6 uses
  %i.ca = icmp eq ptr %i.bz, %.sroa.071.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.t, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.cd, %.lr.ph.i29 ], [ %i.bz, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i29 ], [ %.sroa.078.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cc, align 8, !tbaa !114, !noalias !1282
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !114, !noalias !1282
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !114, !noalias !1282
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cd, align 8, !tbaa !114, !noalias !1282
  %.not.i = icmp eq ptr %i.cc, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !38

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i32 = icmp eq ptr %i.bz, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.v, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ch, %.lr.ph.i30 ], [ %.sroa.078.0, %bb.v ]
  %.sroa.052.0 = phi ptr [ %i.ci, %.lr.ph.i30 ], [ %.sroa.071.0, %bb.v ]
  %i.cf = phi ptr [ %i.cg, %.lr.ph.i30 ], [ %i.bz, %bb.v ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !114, !noalias !1283
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !114, !noalias !1283
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !114, !noalias !1283
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !114, !noalias !1283
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !114, !noalias !1283
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !114, !noalias !1283
  %.not.i31 = icmp eq ptr %i.cg, %i.z
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !1274

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.w, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.co, %.lr.ph.i34 ], [ %.sroa.071.0, %bb.w ]
  %i.cm = phi ptr [ %i.cn, %.lr.ph.i34 ], [ %i.bz, %bb.w ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.cn, align 8, !tbaa !114, !noalias !1284
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !114, !noalias !1284
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !114, !noalias !1284
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.co, align 8, !tbaa !114, !noalias !1284
  %.not.i36 = icmp eq ptr %i.cn, %i.z
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !38

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.co, %.lr.ph.i34 ], [ %i.bz, %bb.t ], [ %i.cd, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.ci, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !369
  %i.cq = load ptr, ptr %1, align 8, !tbaa !369   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.z, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.cs, align 8, !tbaa !114
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !114
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.ct, align 8, !tbaa !114
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.cv = load ptr, ptr %2, align 8, !tbaa !369   ; 2 uses
  %i.cw = icmp eq ptr %i.cr, %i.cv
  br i1 %i.cw, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp eq ptr %i.cv, %i.cq
  br i1 %i.cx, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.cq, %bb.y ], [ %i.cr, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !369
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !369
  %i.cy = load ptr, ptr %1, align 8, !tbaa !369
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  store ptr %i.cz, ptr %1, align 8, !tbaa !369
  %i.da = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.da to i64
  %i.db = add i64 %.0155, %.neg
  %i.dc = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dc to i64
  %i.dd = add i64 %.sroa.speculated, %.neg24
  %i.de = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.de, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1277

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.df = load ptr, ptr %6, align 8, !tbaa !369
  store ptr %i.df, ptr %0, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !285    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !285    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !285    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !278
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !278
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !41

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
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
  %i.p = load i64, ptr %i.m, align 8, !tbaa !114
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.q, ptr %i.m, align 8, !tbaa !114
  %i.r = load i64, ptr %4, align 8, !tbaa !114
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !114
  %i.s = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.s, ptr %4, align 8, !tbaa !114
  store i64 %i.p, ptr %i.d, align 8, !tbaa !114
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
  %i.v = shl i64 %indvar, 3
  %i.w = add i64 %i.v, %i.j
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %7 = and i64 %i.x, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %8 = getelementptr i8, ptr %scevgep, i64 16
  %scevgep235 = getelementptr i8, ptr %8, i64 %7
  %scevgep236 = getelementptr i8, ptr %.03965.i, i64 %7
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 8
  %bound0 = icmp ult ptr %.04169.i, %scevgep237
  %bound1 = icmp ult ptr %.03965.i, %scevgep235
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %.03965.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %.04169.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ae ; 4 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !114, !alias.scope !1299, !noalias !1300
  %wide.load239 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !114, !alias.scope !1299, !noalias !1300
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1300
  %wide.load241 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !114, !alias.scope !1300
  %i.ah = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !114, !alias.scope !1299, !noalias !1300
  store <2 x i64> %wide.load241, ptr %i.ah, align 8, !tbaa !114, !alias.scope !1299, !noalias !1300
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1300
  store <2 x ptr> %wide.load239, ptr %i.ai, align 8, !tbaa !114, !alias.scope !1300
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !114
  %i.ak = load i64, ptr %.010.i.i, align 8, !tbaa !114
  store i64 %i.ak, ptr %.079.i.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !1289

bb.g:                                             ; preds = %.lr.ph.i31
  %i.an = load ptr, ptr %.067.i, align 8, !tbaa !278
  %i.ao = load ptr, ptr %.03965.i, align 8, !tbaa !278
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.as = load i64, ptr %.03768.i, align 8, !tbaa !114
  %i.at = load i64, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.at, ptr %.03768.i, align 8, !tbaa !114
  %i.au = load i64, ptr %.067.i, align 8, !tbaa !114
  store i64 %i.au, ptr %.04169.i, align 8, !tbaa !114
  %i.av = load i64, ptr %.03566.i, align 8, !tbaa !114
  store i64 %i.av, ptr %.067.i, align 8, !tbaa !114
  store i64 %i.as, ptr %.03566.i, align 8, !tbaa !114
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.ax = load i64, ptr %.03768.i, align 8, !tbaa !114
  %i.ay = load i64, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.ay, ptr %.03768.i, align 8, !tbaa !114
  %i.az = load i64, ptr %.03965.i, align 8, !tbaa !114
  store i64 %i.az, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.ax, ptr %.03965.i, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.aq, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ar, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !1290

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !114
  %i.bc = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.bc, ptr %i.m, align 8, !tbaa !114
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.bd, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !114
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %.03453.i, %1
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ba, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.bf = icmp eq ptr %.055.i, %3
  br i1 %i.bf, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bg = add i64 %i.a, -16
  %i.bh = shl i64 %indvar244, 3
  %i.bi = add i64 %i.bh, %i.j
  %i.bj = sub i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check254 = icmp ult i64 %i.bj, 168
  br i1 %min.iters.check254, label %.lr.ph.i.i40.preheader290, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bm = shl i64 %indvar244, 3
  %9 = and i64 %i.bj, -8                          ; 2 uses
  %scevgep246 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %10 = getelementptr i8, ptr %scevgep246, i64 16
  %scevgep247 = getelementptr i8, ptr %10, i64 %9
  %scevgep248 = getelementptr i8, ptr %.03254.i, i64 %9
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 8
  %bound0250 = icmp ult ptr %.03457.i, %scevgep249
  %bound1251 = icmp ult ptr %.03254.i, %scevgep247
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i40.preheader290, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck243
  %n.vec256 = and i64 %i.bl, 4611686018427387900  ; 3 uses
  %i.bn = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bo = getelementptr i8, ptr %.03254.i, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %.03457.i, i64 %i.bn
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 2 uses
  %i.bq = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03254.i, i64 %i.bq ; 4 uses
  %next.gep260 = getelementptr i8, ptr %.03457.i, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x ptr>, ptr %next.gep260, align 8, !tbaa !114, !alias.scope !1301, !noalias !1302
  %wide.load262 = load <2 x ptr>, ptr %i.br, align 8, !tbaa !114, !alias.scope !1301, !noalias !1302
  %i.bs = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load263 = load <2 x i64>, ptr %next.gep259, align 8, !tbaa !114, !alias.scope !1302
  %wide.load264 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !114, !alias.scope !1302
  %i.bt = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x i64> %wide.load263, ptr %next.gep260, align 8, !tbaa !114, !alias.scope !1301, !noalias !1302
  store <2 x i64> %wide.load264, ptr %i.bt, align 8, !tbaa !114, !alias.scope !1301, !noalias !1302
  %i.bu = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x ptr> %wide.load261, ptr %next.gep259, align 8, !tbaa !114, !alias.scope !1302
  store <2 x ptr> %wide.load262, ptr %i.bu, align 8, !tbaa !114, !alias.scope !1302
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.bv, label %middle.block266, label %vector.body257, !llvm.loop !1294

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.bl, %n.vec256
  br i1 %cmp.n267, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader290

.lr.ph.i.i40.preheader290:                        ; preds = %vector.memcheck243, %.lr.ph.i.i40.preheader, %middle.block266
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck243 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.bo, %middle.block266 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck243 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bp, %middle.block266 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader290, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.by, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bx, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !114
  %i.bw = load i64, ptr %.010.i.i41, align 8, !tbaa !114
  store i64 %i.bw, ptr %.079.i.i42, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !114
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !1295

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bz = load ptr, ptr %.055.i, align 8, !tbaa !278
  %i.ca = load ptr, ptr %.03254.i, align 8, !tbaa !278
  %i.cb = icmp ult ptr %i.bz, %i.ca               ; 3 uses
  %i.cc = load i64, ptr %.03056.i, align 8, !tbaa !114
  %i.cd = load i64, ptr %.03457.i, align 8, !tbaa !114
  store i64 %i.cd, ptr %.03056.i, align 8, !tbaa !114
  %.03254.sink73.i = select i1 %i.cb, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.cb, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.cb, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.ce = load i64, ptr %.03254.sink73.i, align 8, !tbaa !114
  store i64 %i.ce, ptr %.03457.i, align 8, !tbaa !114
  store i64 %i.cc, ptr %.03254.sink73.i, align 8, !tbaa !114
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cf = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.cf, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !1296

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block266, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block266 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block266 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block266 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block266 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ac, %middle.block ], [ %i.bo, %middle.block266 ], [ %.030.i, %bb.m ], [ %i.by, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cp, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ck, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cl, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cg = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.ch = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.ch
  br i1 %i.ci, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cm = load i64, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cj, ptr %.030.i47, align 8, !tbaa !114
  %i.cn = load i64, ptr %.026.i, align 8, !tbaa !114
  store i64 %i.cn, ptr %.025.i, align 8, !tbaa !114
  store i64 %i.cm, ptr %.026.i, align 8, !tbaa !114
  %.not44.i = icmp eq ptr %i.ck, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !1297

bb.o:                                             ; preds = %bb.n
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.co, ptr %.030.i47, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !114
  %.not43.i = icmp eq ptr %i.cp, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !1297

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.ba, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.ct, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cy, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.ct, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cv, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cq = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cr = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cs = icmp ult ptr %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !114 ; 2 uses
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cu, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !114
  %i.cw = icmp eq ptr %i.cv, %3
  br i1 %i.cw, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !1298

bb.q:                                             ; preds = %.preheader.i
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cx, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !114
  %i.cz = icmp eq ptr %i.cy, %.087
  br i1 %i.cz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1298

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.cy, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cp, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.ck, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cv, %bb.p ], [ %.026.i, %bb.o ]
  %i.da = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.ct, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.ct, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !285
  store ptr %.086, ptr %6, align 8, !tbaa !285
  store ptr %.1, ptr %2, align 8, !tbaa !285
  ret ptr %i.da
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !285    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !285    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !285    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !278
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !278
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !42

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
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
  %i.o = load i64, ptr %i.l, align 8, !tbaa !114
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.p, ptr %i.l, align 8, !tbaa !114
  %i.q = load i64, ptr %4, align 8, !tbaa !114
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !114
  %i.r = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.r, ptr %4, align 8, !tbaa !114
  store i64 %i.o, ptr %i.d, align 8, !tbaa !114
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
  %i.u = shl i64 %indvar, 3
  %i.v = add i64 %i.u, %i.i
  %i.w = sub i64 %i.t, %i.v                       ; 3 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader300, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = shl i64 %indvar, 3
  %8 = and i64 %i.w, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.z
  %9 = getelementptr i8, ptr %scevgep, i64 16
  %scevgep238 = getelementptr i8, ptr %9, i64 %8
  %scevgep239 = getelementptr i8, ptr %.03966.i, i64 %8
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 8
  %bound0 = icmp ult ptr %.04170.i, %scevgep240
  %bound1 = icmp ult ptr %.03966.i, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03966.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04170.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.ad ; 4 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !114, !alias.scope !1317, !noalias !1318
  %wide.load242 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !114, !alias.scope !1317, !noalias !1318
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1318
  %wide.load244 = load <2 x i64>, ptr %i.af, align 8, !tbaa !114, !alias.scope !1318
  %i.ag = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !114, !alias.scope !1317, !noalias !1318
  store <2 x i64> %wide.load244, ptr %i.ag, align 8, !tbaa !114, !alias.scope !1317, !noalias !1318
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1318
  store <2 x ptr> %wide.load242, ptr %i.ah, align 8, !tbaa !114, !alias.scope !1318
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader300

.lr.ph.i.i.preheader300:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader300, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !114
  %i.aj = load i64, ptr %.010.i.i, align 8, !tbaa !114
  store i64 %i.aj, ptr %.079.i.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !1307

bb.g:                                             ; preds = %.lr.ph.i31
  %i.am = load ptr, ptr %.03966.i, align 8, !tbaa !278
  %i.an = load ptr, ptr %.068.i, align 8, !tbaa !278
  %.not53.i = icmp ult ptr %i.am, %i.an
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.aq = load i64, ptr %.03769.i, align 8, !tbaa !114
  %i.ar = load i64, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.ar, ptr %.03769.i, align 8, !tbaa !114
  %i.as = load i64, ptr %.068.i, align 8, !tbaa !114
  store i64 %i.as, ptr %.04170.i, align 8, !tbaa !114
  %i.at = load i64, ptr %.03567.i, align 8, !tbaa !114
  store i64 %i.at, ptr %.068.i, align 8, !tbaa !114
  store i64 %i.aq, ptr %.03567.i, align 8, !tbaa !114
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.av = load i64, ptr %.03769.i, align 8, !tbaa !114
  %i.aw = load i64, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.aw, ptr %.03769.i, align 8, !tbaa !114
  %i.ax = load i64, ptr %.03966.i, align 8, !tbaa !114
  store i64 %i.ax, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.av, ptr %.03966.i, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.ao, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ap, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !1308

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.l, align 8, !tbaa !114
  %i.ba = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.ba, ptr %i.l, align 8, !tbaa !114
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.bb, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.az, ptr %i.d, align 8, !tbaa !114
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %.03454.i, %1
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar247 = phi i64 [ %indvar.next248, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ay, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bd = icmp eq ptr %.056.i, %3
  br i1 %i.bd, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.be = add i64 %i.a, -16
  %i.bf = shl i64 %indvar247, 3
  %i.bg = add i64 %i.bf, %i.i
  %i.bh = sub i64 %i.be, %i.bg                    ; 3 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.bh, 168
  br i1 %min.iters.check257, label %.lr.ph.i.i40.preheader293, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bk = shl i64 %indvar247, 3
  %10 = and i64 %i.bh, -8                         ; 2 uses
  %scevgep249 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bk
  %11 = getelementptr i8, ptr %scevgep249, i64 16
  %scevgep250 = getelementptr i8, ptr %11, i64 %10
  %scevgep251 = getelementptr i8, ptr %.03255.i, i64 %10
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 8
  %bound0253 = icmp ult ptr %.03458.i, %scevgep252
  %bound1254 = icmp ult ptr %.03255.i, %scevgep250
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i40.preheader293, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck246
  %n.vec259 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bl = shl i64 %n.vec259, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %.03255.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %.03458.i, i64 %i.bl
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.bo = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03255.i, i64 %i.bo ; 4 uses
  %next.gep263 = getelementptr i8, ptr %.03458.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x ptr>, ptr %next.gep263, align 8, !tbaa !114, !alias.scope !1319, !noalias !1320
  %wide.load265 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !114, !alias.scope !1319, !noalias !1320
  %i.bq = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load266 = load <2 x i64>, ptr %next.gep262, align 8, !tbaa !114, !alias.scope !1320
  %wide.load267 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !114, !alias.scope !1320
  %i.br = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load266, ptr %next.gep263, align 8, !tbaa !114, !alias.scope !1319, !noalias !1320
  store <2 x i64> %wide.load267, ptr %i.br, align 8, !tbaa !114, !alias.scope !1319, !noalias !1320
  %i.bs = getelementptr i8, ptr %next.gep262, i64 16
  store <2 x ptr> %wide.load264, ptr %next.gep262, align 8, !tbaa !114, !alias.scope !1320
  store <2 x ptr> %wide.load265, ptr %i.bs, align 8, !tbaa !114, !alias.scope !1320
  %index.next268 = add nuw i64 %index261, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.bt, label %middle.block269, label %vector.body260, !llvm.loop !1312

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.bj, %n.vec259
  br i1 %cmp.n270, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader293

.lr.ph.i.i40.preheader293:                        ; preds = %vector.memcheck246, %.lr.ph.i.i40.preheader, %middle.block269
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck246 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bm, %middle.block269 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck246 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bn, %middle.block269 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader293, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bw, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bv, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !114
  %i.bu = load i64, ptr %.010.i.i41, align 8, !tbaa !114
  store i64 %i.bu, ptr %.079.i.i42, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !1313

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bx = load ptr, ptr %.03255.i, align 8, !tbaa !278
  %i.by = load ptr, ptr %.056.i, align 8, !tbaa !278
  %.not45.i = icmp ult ptr %i.bx, %i.by           ; 3 uses
  %i.bz = load i64, ptr %.03057.i, align 8, !tbaa !114
  %i.ca = load i64, ptr %.03458.i, align 8, !tbaa !114
  store i64 %i.ca, ptr %.03057.i, align 8, !tbaa !114
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.cb = load i64, ptr %.03255.sink74.i, align 8, !tbaa !114
  store i64 %i.cb, ptr %.03458.i, align 8, !tbaa !114
  store i64 %i.bz, ptr %.03255.sink74.i, align 8, !tbaa !114
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.cc = icmp eq ptr %.034.i, %1
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !1314

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block269, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block269 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block269 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block269 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block269 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bm, %middle.block269 ], [ %.030.i, %bb.m ], [ %i.bw, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cl, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cg, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.ch, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cd = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.ce = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cd, %i.ce
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.ci = load i64, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cf, ptr %.030.i47, align 8, !tbaa !114
  %i.cj = load i64, ptr %.026.i, align 8, !tbaa !114
  store i64 %i.cj, ptr %.025.i, align 8, !tbaa !114
  store i64 %i.ci, ptr %.026.i, align 8, !tbaa !114
  %.not45.i48 = icmp eq ptr %i.cg, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !1315

bb.o:                                             ; preds = %bb.n
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.ck, ptr %.030.i47, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !114
  %.not44.i = icmp eq ptr %i.cl, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !1315

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.ay, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.co, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ct, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.co, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cq, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cm = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cn = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.cm, %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !114 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cp, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !114
  %i.cr = icmp eq ptr %i.cq, %3
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !1316

bb.q:                                             ; preds = %.preheader.i
  %i.cs = ptrtoint ptr %i.cm to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cs, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !114
  %i.cu = icmp eq ptr %i.ct, %.091
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1316

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.cg, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cq, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.ct, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cl, %bb.o ]
  %i.cv = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.co, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.co, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !285
  store ptr %.090, ptr %6, align 8, !tbaa !285
  store ptr %.178, ptr %2, align 8, !tbaa !285
  ret ptr %i.cv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !120, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split, label %bb.d
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a

vector.ph373:                                     ; preds = %vector.memcheck353
  %n.vec374 = and i64 %i.du, 4611686018427387902  ; 3 uses
  %i.ec = shl i64 %n.vec374, 3                    ; 3 uses
  %i.ed = getelementptr i8, ptr %7, i64 %i.ec     ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dp, i64 %i.ec
  %i.ef = getelementptr i8, ptr %i.dj, i64 %i.ec
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next383, %vector.body375 ] ; 2 uses
  %i.eg = shl i64 %index376, 3                    ; 3 uses
  %next.gep377 = getelementptr i8, ptr %7, i64 %i.eg ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.dp, i64 %i.eg ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.dj, i64 %i.eg ; 2 uses
  %wide.load380 = load <2 x i64>, ptr %next.gep377, align 8, !tbaa !144, !alias.scope !2251, !noalias !2252
  %wide.load381 = load <2 x i64>, ptr %next.gep378, align 8, !tbaa !144, !alias.scope !2253, !noalias !2254
  store <2 x i64> %wide.load381, ptr %next.gep377, align 8, !tbaa !144, !alias.scope !2251, !noalias !2252
  %wide.load382 = load <2 x i64>, ptr %next.gep379, align 8, !tbaa !144, !alias.scope !2254
  store <2 x i64> %wide.load382, ptr %next.gep378, align 8, !tbaa !144, !alias.scope !2253, !noalias !2254
  store <2 x i64> %wide.load380, ptr %next.gep379, align 8, !tbaa !144, !alias.scope !2254
  %index.next383 = add nuw i64 %index376, 2       ; 2 uses
  %i.eh = icmp eq i64 %index.next383, %n.vec374
  br i1 %i.eh, label %middle.block384, label %vector.body375, !llvm.loop !2219

middle.block384:                                  ; preds = %vector.body375
  %cmp.n385 = icmp eq i64 %i.du, %n.vec374
  br i1 %cmp.n385, label %._crit_edge.i138, label %.lr.ph.i133.preheader449

.lr.ph.i133.preheader449:                         ; preds = %vector.memcheck353, %.lr.ph.i133.preheader, %middle.block384
  %.033.i134.ph = phi ptr [ %7, %vector.memcheck353 ], [ %7, %.lr.ph.i133.preheader ], [ %i.ed, %middle.block384 ] ; 2 uses
  %.02032.i135.ph = phi ptr [ %i.dp, %vector.memcheck353 ], [ %i.dp, %.lr.ph.i133.preheader ], [ %i.ee, %middle.block384 ] ; 2 uses
  %.02131.i136.ph = phi ptr [ %i.dj, %vector.memcheck353 ], [ %i.dj, %.lr.ph.i133.preheader ], [ %i.ef, %middle.block384 ] ; 3 uses
  %.02131.i136.ph452 = ptrtoaddr ptr %.02131.i136.ph to i64
  %i.ei = sub i64 %i.dr, %.02131.i136.ph452       ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1
  %xtraiter = and i64 %i.ek, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader449, %.lr.ph.i133.prol
  %.033.i134.prol = phi ptr [ %i.en, %.lr.ph.i133.prol ], [ %.033.i134.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %.02032.i135.prol = phi ptr [ %i.em, %.lr.ph.i133.prol ], [ %.02032.i135.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %.02131.i136.prol = phi ptr [ %i.el, %.lr.ph.i133.prol ], [ %.02131.i136.ph, %.lr.ph.i133.preheader449 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader449 ]
  %i.el = getelementptr inbounds nuw i8, ptr %.02131.i136.prol, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02032.i135.prol, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.033.i134.prol, i64 8 ; 3 uses
  %i.eo = load i64, ptr %.033.i134.prol, align 8, !tbaa !144
  %i.ep = load i64, ptr %.02032.i135.prol, align 8, !tbaa !144
  store i64 %i.ep, ptr %.033.i134.prol, align 8, !tbaa !144
  %i.eq = load i64, ptr %.02131.i136.prol, align 8, !tbaa !144
  store i64 %i.eq, ptr %.02032.i135.prol, align 8, !tbaa !144
  store i64 %i.eo, ptr %.02131.i136.prol, align 8, !tbaa !144
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !2220

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader449
  %.lcssa450.unr = phi ptr [ poison, %.lr.ph.i133.preheader449 ], [ %i.en, %.lr.ph.i133.prol ]
  %.033.i134.unr = phi ptr [ %.033.i134.ph, %.lr.ph.i133.preheader449 ], [ %i.en, %.lr.ph.i133.prol ]
  %.02032.i135.unr = phi ptr [ %.02032.i135.ph, %.lr.ph.i133.preheader449 ], [ %i.em, %.lr.ph.i133.prol ]
  %.02131.i136.unr = phi ptr [ %.02131.i136.ph, %.lr.ph.i133.preheader449 ], [ %i.el, %.lr.ph.i133.prol ]
  %i.er = icmp ult i64 %i.ei, 24
  br i1 %i.er, label %._crit_edge.i138, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.033.i134 = phi ptr [ %i.fm, %.lr.ph.i133 ], [ %.033.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02032.i135 = phi ptr [ %i.fl, %.lr.ph.i133 ], [ %.02032.i135.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02131.i136 = phi ptr [ %i.fk, %.lr.ph.i133 ], [ %.02131.i136.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.033.i134, i64 8 ; 2 uses
  %i.ev = load i64, ptr %.033.i134, align 8, !tbaa !144
  %i.ew = load i64, ptr %.02032.i135, align 8, !tbaa !144
  store i64 %i.ew, ptr %.033.i134, align 8, !tbaa !144
  %i.ex = load i64, ptr %.02131.i136, align 8, !tbaa !144
  store i64 %i.ex, ptr %.02032.i135, align 8, !tbaa !144
  store i64 %i.ev, ptr %.02131.i136, align 8, !tbaa !144
  %i.ey = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.033.i134, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !144
  %i.fc = load i64, ptr %i.et, align 8, !tbaa !144
  store i64 %i.fc, ptr %i.eu, align 8, !tbaa !144
  %i.fd = load i64, ptr %i.es, align 8, !tbaa !144
  store i64 %i.fd, ptr %i.et, align 8, !tbaa !144
  store i64 %i.fb, ptr %i.es, align 8, !tbaa !144
  %i.fe = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 24 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.033.i134, i64 24 ; 2 uses
  %i.fh = load i64, ptr %i.fa, align 8, !tbaa !144
  %i.fi = load i64, ptr %i.ez, align 8, !tbaa !144
  store i64 %i.fi, ptr %i.fa, align 8, !tbaa !144
  %i.fj = load i64, ptr %i.ey, align 8, !tbaa !144
  store i64 %i.fj, ptr %i.ez, align 8, !tbaa !144
  store i64 %i.fh, ptr %i.ey, align 8, !tbaa !144
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i134, i64 32 ; 2 uses
  %i.fn = load i64, ptr %i.fg, align 8, !tbaa !144
  %i.fo = load i64, ptr %i.ff, align 8, !tbaa !144
  store i64 %i.fo, ptr %i.fg, align 8, !tbaa !144
  %i.fp = load i64, ptr %i.fe, align 8, !tbaa !144
  store i64 %i.fp, ptr %i.ff, align 8, !tbaa !144
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !144
  %.not28.i137.3 = icmp eq ptr %i.fk, %i.bg
  br i1 %.not28.i137.3, label %._crit_edge.i138, label %.lr.ph.i133, !llvm.loop !2221

._crit_edge.i138:                                 ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %middle.block384, %.preheader.i131
  %.0.lcssa.i139 = phi ptr [ %7, %.preheader.i131 ], [ %i.ed, %middle.block384 ], [ %.lcssa450.unr, %.lr.ph.i133.prol.loopexit ], [ %i.fm, %.lr.ph.i133 ] ; 2 uses
  %.not29.i140 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i138
  %.sroa.0.0.copyload.i.i141 = load ptr, ptr %i.bl, align 8, !tbaa !144
  %i.fq = load i64, ptr %.0106236, align 8, !tbaa !144
  store i64 %i.fq, ptr %i.bl, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i141, ptr %.0106236, align 8, !tbaa !144
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i138
  %i.fr = icmp eq ptr %i.bl, %.0204231
  br i1 %i.fr, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq ptr %.0204231, %.0106236
  %spec.select218 = select i1 %i.fs, ptr %i.bl, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0204231, %bb.q ], [ %spec.select218, %bb.t ], [ %.0106236, %bb.s ]
  %.1.i142 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i139, %bb.t ], [ %.0.lcssa.i139, %bb.s ] ; 2 uses
  store ptr %.1.i142, ptr %i.c, align 8, !tbaa !467
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  %.not.i146 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i147 = load ptr, ptr %i.bl, align 8, !tbaa !144
  %i.ft = load i64, ptr %.0106236, align 8, !tbaa !144
  store i64 %i.ft, ptr %i.bl, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i147, ptr %.0106236, align 8, !tbaa !144
  %i.fu = icmp eq ptr %i.bl, %.0204231
  br i1 %i.fu, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = icmp eq ptr %.0204231, %.0106236
  %spec.select219 = select i1 %i.fv, ptr %i.bl, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145
  %i.fw = phi ptr [ %.1.i142, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.dh, %bb.u ], [ %i.dh, %bb.w ], [ %i.dh, %bb.v ]
  %i.fx = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.dg, %bb.u ], [ %i.dg, %bb.w ], [ %i.dg, %bb.v ]
  %.1205 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %.0204231, %bb.u ], [ %spec.select219, %bb.w ], [ %.0106236, %bb.v ]
  %i.fy = xor i1 %i.de, %i.di
  %i.fz = zext i1 %i.fy to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit
  %i.ga = phi ptr [ %i.fw, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gb = phi ptr [ %i.fx, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gc = phi i1 [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ]
  %.2206 = phi ptr [ %.1205, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.df, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.ag, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.fz, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.0108235, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gc, true
  %i.gd = sext i1 %not. to i64
  %.1 = add i64 %.0240, %i.gd
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0111233, i64 %2 ; 2 uses
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !467
  %i.gf = getelementptr inbounds nuw i8, ptr %.0106236, i64 8
  %i.gg = icmp ne i64 %.0104239, 0
  %.neg = sext i1 %i.gg to i64
  %i.gh = add i64 %.0104239, %.neg
  %i.gi = icmp ne i64 %i.bc, 0
  %.neg122 = sext i1 %i.gi to i64
  %i.gj = add i64 %.sroa.speculated192, %.neg122
  %i.gk = add i64 %.0208230, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2222

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gl = phi ptr [ %i.ga, %bb.x ], [ %i.ae, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %i.gm = phi ptr [ %i.gb, %bb.x ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 8 uses
  %.0208.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0208230, %bb.g ], [ %.0208230, %bb.f ] ; 3 uses
  %.0204.lcssa.ph = phi ptr [ %.2206, %bb.x ], [ %.0204231, %bb.g ], [ %.0204231, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114232, %bb.g ], [ %.0114232, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.ge, %bb.x ], [ %.0111233, %bb.g ], [ %.0111233, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108235, %bb.f ]
  %i.gn = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.go = select i1 %i.gn, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i150 = icmp eq ptr %i.gm, %i.gl
  br i1 %.not8.i150, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %.thread
  %i.gp = ptrtoaddr ptr %i.gm to i64
  %i.gq = ptrtoaddr ptr %i.gl to i64
  %i.gr = add i64 %i.gq, -8
  %i.gs = sub i64 %i.gr, %i.gp                    ; 3 uses
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check396 = icmp ult i64 %i.gs, 104
  br i1 %min.iters.check396, label %.lr.ph.i151.preheader446, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph.i151.preheader
  %i.gv = and i64 %i.gs, -8
  %i.gw = add i64 %i.gv, 8                        ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gw
  %i.gy = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.gw
  %bound0398 = icmp ult ptr %i.gm, %i.gy
  %bound1399 = icmp ult ptr %.0114.lcssa.ph, %i.gx
  %found.conflict400 = and i1 %bound0398, %bound1399
  br i1 %found.conflict400, label %.lr.ph.i151.preheader446, label %vector.ph401

vector.ph401:                                     ; preds = %vector.memcheck397
  %n.vec402 = and i64 %i.gu, 4611686018427387900  ; 3 uses
  %i.gz = shl i64 %n.vec402, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.gm, i64 %i.gz
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next411, %vector.body403 ] ; 2 uses
  %i.hc = shl i64 %index404, 3                    ; 2 uses
  %next.gep405 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hc ; 4 uses
  %next.gep406 = getelementptr i8, ptr %i.gm, i64 %i.hc ; 4 uses
  %i.hd = getelementptr i8, ptr %next.gep406, i64 16
  %wide.load407 = load <2 x ptr>, ptr %next.gep406, align 8, !tbaa !144, !alias.scope !2255, !noalias !2256
  %wide.load408 = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !144, !alias.scope !2255, !noalias !2256
  %i.he = getelementptr i8, ptr %next.gep405, i64 16
  %wide.load409 = load <2 x i64>, ptr %next.gep405, align 8, !tbaa !144, !alias.scope !2256
  %wide.load410 = load <2 x i64>, ptr %i.he, align 8, !tbaa !144, !alias.scope !2256
  %i.hf = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load409, ptr %next.gep406, align 8, !tbaa !144, !alias.scope !2255, !noalias !2256
  store <2 x i64> %wide.load410, ptr %i.hf, align 8, !tbaa !144, !alias.scope !2255, !noalias !2256
  %i.hg = getelementptr i8, ptr %next.gep405, i64 16
  store <2 x ptr> %wide.load407, ptr %next.gep405, align 8, !tbaa !144, !alias.scope !2256
  store <2 x ptr> %wide.load408, ptr %i.hg, align 8, !tbaa !144, !alias.scope !2256
  %index.next411 = add nuw i64 %index404, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next411, %n.vec402
  br i1 %i.hh, label %middle.block412, label %vector.body403, !llvm.loop !2226

middle.block412:                                  ; preds = %vector.body403
  %cmp.n413 = icmp eq i64 %i.gu, %n.vec402
  br i1 %cmp.n413, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader446

.lr.ph.i151.preheader446:                         ; preds = %vector.memcheck397, %.lr.ph.i151.preheader, %middle.block412
  %.010.i152.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck397 ], [ %.0114.lcssa.ph, %.lr.ph.i151.preheader ], [ %i.ha, %middle.block412 ]
  %.079.i153.ph = phi ptr [ %i.gm, %vector.memcheck397 ], [ %i.gm, %.lr.ph.i151.preheader ], [ %i.hb, %middle.block412 ]
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.preheader446, %.lr.ph.i151
  %.010.i152 = phi ptr [ %i.hk, %.lr.ph.i151 ], [ %.010.i152.ph, %.lr.ph.i151.preheader446 ] ; 3 uses
  %.079.i153 = phi ptr [ %i.hj, %.lr.ph.i151 ], [ %.079.i153.ph, %.lr.ph.i151.preheader446 ] ; 3 uses
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %.079.i153, align 8, !tbaa !144
  %i.hi = load i64, ptr %.010.i152, align 8, !tbaa !144
  store i64 %i.hi, ptr %.079.i153, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i154, ptr %.010.i152, align 8, !tbaa !144
  %i.hj = getelementptr inbounds nuw i8, ptr %.079.i153, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.010.i152, i64 8
  %.not.i155 = icmp eq ptr %i.hj, %i.gl
  br i1 %.not.i155, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151, !llvm.loop !2227

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158: ; preds = %.lr.ph.i151, %middle.block412, %bb.a, %.thread
  %.0108.lcssa304 = phi ptr [ %1, %bb.a ], [ %i.go, %.thread ], [ %i.go, %middle.block412 ], [ %i.go, %.lr.ph.i151 ]
  %.0111.lcssa303 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block412 ], [ %.0111.lcssa.ph, %.lr.ph.i151 ]
  %.0204.lcssa302 = phi ptr [ %i.f, %bb.a ], [ %.0204.lcssa.ph, %.thread ], [ %.0204.lcssa.ph, %middle.block412 ], [ %.0204.lcssa.ph, %.lr.ph.i151 ]
  %.0208.lcssa301 = phi i64 [ 0, %bb.a ], [ %.0208.lcssa.ph, %.thread ], [ %.0208.lcssa.ph, %middle.block412 ], [ %.0208.lcssa.ph, %.lr.ph.i151 ] ; 2 uses
  %.idx223 = shl i64 %6, 3                        ; 3 uses
  %i.hl = getelementptr i8, ptr %i.i, i64 %.idx223 ; 3 uses
  %.not8.i159 = icmp eq i64 %6, 0
  br i1 %.not8.i159, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader

.lr.ph.i160.preheader:                            ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  %i.hm = add i64 %.idx223, -8                    ; 2 uses
  %i.hn = lshr exact i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %min.iters.check422 = icmp ult i64 %i.hm, 40
  br i1 %min.iters.check422, label %.lr.ph.i160.preheader445, label %vector.memcheck423

vector.memcheck423:                               ; preds = %.lr.ph.i160.preheader
  %i.hp = getelementptr i8, ptr %7, i64 %.idx223
  %bound0424 = icmp ult ptr %i.i, %i.hp
  %bound1425 = icmp ult ptr %7, %i.hl
  %found.conflict426 = and i1 %bound0424, %bound1425
  br i1 %found.conflict426, label %.lr.ph.i160.preheader445, label %vector.ph427

vector.ph427:                                     ; preds = %vector.memcheck423
  %n.vec428 = and i64 %i.ho, 4611686018427387900  ; 3 uses
  %i.hq = shl i64 %n.vec428, 3                    ; 2 uses
  %i.hr = getelementptr i8, ptr %7, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.i, i64 %i.hq
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next437, %vector.body429 ] ; 2 uses
  %i.ht = shl i64 %index430, 3                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %7, i64 %i.ht ; 4 uses
  %next.gep432 = getelementptr i8, ptr %i.i, i64 %i.ht ; 4 uses
  %i.hu = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load433 = load <2 x ptr>, ptr %next.gep432, align 8, !tbaa !144, !alias.scope !2257, !noalias !2258
  %wide.load434 = load <2 x ptr>, ptr %i.hu, align 8, !tbaa !144, !alias.scope !2257, !noalias !2258
  %i.hv = getelementptr i8, ptr %next.gep431, i64 16
  %wide.load435 = load <2 x i64>, ptr %next.gep431, align 8, !tbaa !144, !alias.scope !2258
  %wide.load436 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !144, !alias.scope !2258
  %i.hw = getelementptr i8, ptr %next.gep432, i64 16
  store <2 x i64> %wide.load435, ptr %next.gep432, align 8, !tbaa !144, !alias.scope !2257, !noalias !2258
  store <2 x i64> %wide.load436, ptr %i.hw, align 8, !tbaa !144, !alias.scope !2257, !noalias !2258
  %i.hx = getelementptr i8, ptr %next.gep431, i64 16
  store <2 x ptr> %wide.load433, ptr %next.gep431, align 8, !tbaa !144, !alias.scope !2258
  store <2 x ptr> %wide.load434, ptr %i.hx, align 8, !tbaa !144, !alias.scope !2258
  %index.next437 = add nuw i64 %index430, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next437, %n.vec428
  br i1 %i.hy, label %middle.block438, label %vector.body429, !llvm.loop !2231

middle.block438:                                  ; preds = %vector.body429
  %cmp.n439 = icmp eq i64 %i.ho, %n.vec428
  br i1 %cmp.n439, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader445

.lr.ph.i160.preheader445:                         ; preds = %vector.memcheck423, %.lr.ph.i160.preheader, %middle.block438
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck423 ], [ %7, %.lr.ph.i160.preheader ], [ %i.hr, %middle.block438 ]
  %.079.i162.ph = phi ptr [ %i.i, %vector.memcheck423 ], [ %i.i, %.lr.ph.i160.preheader ], [ %i.hs, %middle.block438 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader445, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.ib, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader445 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.ia, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader445 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !144
  %i.hz = load i64, ptr %.010.i161, align 8, !tbaa !144
  store i64 %i.hz, ptr %.079.i162, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !144
  %i.ia = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.ia, %i.hl
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160, !llvm.loop !2232

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167: ; preds = %.lr.ph.i160, %middle.block438, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  store ptr %7, ptr %i.b, align 8, !tbaa !467
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ic, ptr %i.c, align 8, !tbaa !467
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.ic, ptr %10, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %4
  store ptr %i.ie, ptr %12, align 8, !tbaa !512, !alias.scope !2259
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !512, !alias.scope !2260
  store ptr %i.i, ptr %14, align 8, !tbaa !512, !alias.scope !2261
  store ptr %7, ptr %15, align 8, !tbaa !512, !alias.scope !2262
  store ptr %i.hl, ptr %16, align 8, !tbaa !512, !alias.scope !2263
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.677") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.if = load ptr, ptr %11, align 8, !tbaa !512
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ig = load ptr, ptr %10, align 8, !tbaa !512  ; 3 uses
  store ptr %i.ig, ptr %i.c, align 8, !tbaa !467
  %i.ih = load ptr, ptr %i.b, align 8, !tbaa !467 ; 3 uses
  %.not28.i168 = icmp eq ptr %i.ih, %i.ig
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, %bb.ab
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.ig, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.ir, %bb.ab ], [ %i.if, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 2 uses
  %i.ii = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.ii, label %.lr.ph.i.i, label %bb.y

.lr.ph.i.i:                                       ; preds = %.lr.ph.i169, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ik, %.lr.ph.i.i ], [ %.02129.i, %.lr.ph.i169 ]
  %.057.i.i = phi ptr [ %i.ij, %.lr.ph.i.i ], [ %.031.i, %.lr.ph.i169 ]
  %i.ij = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !144
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !144
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ik, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.ih, %i.ij
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i, !llvm.loop !2243

bb.y:                                             ; preds = %.lr.ph.i169
  %i.im = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.io = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.ip = load ptr, ptr %i.in, align 8            ; 2 uses
  %i.iq = icmp ult ptr %i.io, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.ir, align 8, !tbaa !144 ; 2 uses
  br i1 %i.iq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.is = ptrtoint ptr %i.ip to i64
  store i64 %i.is, ptr %i.ir, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.in, align 8, !tbaa !144
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.it = ptrtoint ptr %i.io to i64
  store i64 %i.it, ptr %i.ir, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.im, align 8, !tbaa !144
  br label %bb.ab
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.ag, %bb.m ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bf, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2371 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !noalias !2371 ; 2 uses
  %i.bi = icmp ult ptr %i.bg, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bj, align 8, !tbaa !144, !noalias !2371 ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bk = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !144, !noalias !2371
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bk, align 8, !tbaa !144, !noalias !2371
  %i.bm = icmp eq ptr %i.bk, %i.z
  br i1 %i.bm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !2357

bb.o:                                             ; preds = %.preheader.i.i
  %i.bn = ptrtoint ptr %i.bg to i64
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !144, !noalias !2371
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bf, align 8, !tbaa !144, !noalias !2371
  %i.bo = icmp eq ptr %i.bf, %i.ae
  br i1 %i.bo, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !2357

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bt, %bb.q ], [ %i.af, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.c, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.ag, %bb.p ]
  %i.bp = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bt, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bq, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.br = load ptr, ptr %i.bp, align 8, !noalias !2372 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !2372 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.br, %i.bs
  %i.bt = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.bt, align 8, !tbaa !144, !noalias !2372 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bu = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.bv = ptrtoint ptr %i.br to i64
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !144, !noalias !2372
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bu, align 8, !tbaa !144, !noalias !2372
  %i.bw = icmp eq ptr %i.bu, %i.z
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !2360

bb.r:                                             ; preds = %.preheader.i6.i
  %i.bx = ptrtoint ptr %i.bs to i64
  store i64 %i.bx, ptr %i.bt, align 8, !tbaa !144, !noalias !2372
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bq, align 8, !tbaa !144, !noalias !2372
  %i.by = icmp eq ptr %i.bq, %i.ae
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !2360

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.ai, %bb.h ], [ %i.au, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bf, %bb.o ], [ %i.bq, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.c, %bb.p ], [ %i.c, %bb.m ], [ %i.z, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.z, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.as, %bb.h ], [ %i.bd, %bb.k ], [ %i.bt, %bb.r ], [ %i.bj, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.bj, %bb.n ], [ %i.bt, %bb.q ], [ %i.az, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ac, %bb.r ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ], [ %i.ac, %bb.m ], [ %i.ah, %.split.i.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.q ], [ %i.at, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !512, !noalias !97
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !512, !noalias !97
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.078.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !512
  %i.bz = load ptr, ptr %3, align 8, !tbaa !512   ; 6 uses
  %i.ca = icmp eq ptr %i.bz, %.sroa.071.0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.t, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.cd, %.lr.ph.i29 ], [ %i.bz, %bb.t ]
  %i.cb = phi ptr [ %i.cc, %.lr.ph.i29 ], [ %.sroa.078.0, %bb.t ]
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cc, align 8, !tbaa !144, !noalias !2373
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !144, !noalias !2373
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !144, !noalias !2373
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cd, align 8, !tbaa !144, !noalias !2373
  %.not.i = icmp eq ptr %i.cc, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !71

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i32 = icmp eq ptr %i.bz, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.v, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ch, %.lr.ph.i30 ], [ %.sroa.078.0, %bb.v ]
  %.sroa.052.0 = phi ptr [ %i.ci, %.lr.ph.i30 ], [ %.sroa.071.0, %bb.v ]
  %i.cf = phi ptr [ %i.cg, %.lr.ph.i30 ], [ %i.bz, %bb.v ]
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !144, !noalias !2374
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !144, !noalias !2374
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !144, !noalias !2374
  %i.cl = load i64, ptr %i.cg, align 8, !tbaa !144, !noalias !2374
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !144, !noalias !2374
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !144, !noalias !2374
  %.not.i31 = icmp eq ptr %i.cg, %i.z
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !2365

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.w, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.co, %.lr.ph.i34 ], [ %.sroa.071.0, %bb.w ]
  %i.cm = phi ptr [ %i.cn, %.lr.ph.i34 ], [ %i.bz, %bb.w ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.cn, align 8, !tbaa !144, !noalias !2375
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !144, !noalias !2375
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !144, !noalias !2375
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.co, align 8, !tbaa !144, !noalias !2375
  %.not.i36 = icmp eq ptr %i.cn, %i.z
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !71

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.co, %.lr.ph.i34 ], [ %i.bz, %bb.t ], [ %i.cd, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.ci, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !512
  %i.cq = load ptr, ptr %1, align 8, !tbaa !512   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.z, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.cs, align 8, !tbaa !144
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !144
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.ct, align 8, !tbaa !144
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.cv = load ptr, ptr %2, align 8, !tbaa !512   ; 2 uses
  %i.cw = icmp eq ptr %i.cr, %i.cv
  br i1 %i.cw, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp eq ptr %i.cv, %i.cq
  br i1 %i.cx, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.cq, %bb.y ], [ %i.cr, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !512
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !512
  %i.cy = load ptr, ptr %1, align 8, !tbaa !512
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 2 uses
  store ptr %i.cz, ptr %1, align 8, !tbaa !512
  %i.da = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.da to i64
  %i.db = add i64 %.0155, %.neg
  %i.dc = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dc to i64
  %i.dd = add i64 %.sroa.speculated, %.neg24
  %i.de = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.de, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2368

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.df = load ptr, ptr %6, align 8, !tbaa !512
  store ptr %i.df, ptr %0, align 8, !tbaa !512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !467    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !467    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !467    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !460
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !460
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !74

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 10 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
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
  %i.p = load i64, ptr %i.m, align 8, !tbaa !144
  %i.q = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.q, ptr %i.m, align 8, !tbaa !144
  %i.r = load i64, ptr %4, align 8, !tbaa !144
  store i64 %i.r, ptr %.0.lcssa.i, align 8, !tbaa !144
  %i.s = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.s, ptr %4, align 8, !tbaa !144
  store i64 %i.p, ptr %i.d, align 8, !tbaa !144
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
  %i.v = shl i64 %indvar, 3
  %i.w = add i64 %i.v, %i.j
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %7 = and i64 %i.x, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %8 = getelementptr i8, ptr %scevgep, i64 16
  %scevgep235 = getelementptr i8, ptr %8, i64 %7
  %scevgep236 = getelementptr i8, ptr %.03965.i, i64 %7
  %scevgep237 = getelementptr i8, ptr %scevgep236, i64 8
  %bound0 = icmp ult ptr %.04169.i, %scevgep237
  %bound1 = icmp ult ptr %.03965.i, %scevgep235
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %.03965.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %.04169.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ae ; 4 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !144, !alias.scope !2390, !noalias !2391
  %wide.load239 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !144, !alias.scope !2390, !noalias !2391
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2391
  %wide.load241 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !144, !alias.scope !2391
  %i.ah = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !144, !alias.scope !2390, !noalias !2391
  store <2 x i64> %wide.load241, ptr %i.ah, align 8, !tbaa !144, !alias.scope !2390, !noalias !2391
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2391
  store <2 x ptr> %wide.load239, ptr %i.ai, align 8, !tbaa !144, !alias.scope !2391
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !144
  %i.ak = load i64, ptr %.010.i.i, align 8, !tbaa !144
  store i64 %i.ak, ptr %.079.i.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !144
  %i.al = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2380

bb.g:                                             ; preds = %.lr.ph.i31
  %i.an = load ptr, ptr %.067.i, align 8, !tbaa !460
  %i.ao = load ptr, ptr %.03965.i, align 8, !tbaa !460
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.as = load i64, ptr %.03768.i, align 8, !tbaa !144
  %i.at = load i64, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.at, ptr %.03768.i, align 8, !tbaa !144
  %i.au = load i64, ptr %.067.i, align 8, !tbaa !144
  store i64 %i.au, ptr %.04169.i, align 8, !tbaa !144
  %i.av = load i64, ptr %.03566.i, align 8, !tbaa !144
  store i64 %i.av, ptr %.067.i, align 8, !tbaa !144
  store i64 %i.as, ptr %.03566.i, align 8, !tbaa !144
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.ax = load i64, ptr %.03768.i, align 8, !tbaa !144
  %i.ay = load i64, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.ay, ptr %.03768.i, align 8, !tbaa !144
  %i.az = load i64, ptr %.03965.i, align 8, !tbaa !144
  store i64 %i.az, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.ax, ptr %.03965.i, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.aq, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ar, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2381

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !144
  %i.bc = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.bc, ptr %i.m, align 8, !tbaa !144
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.bd, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !144
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %.03453.i, %1
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar244 = phi i64 [ %indvar.next245, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ba, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.bf = icmp eq ptr %.055.i, %3
  br i1 %i.bf, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bg = add i64 %i.a, -16
  %i.bh = shl i64 %indvar244, 3
  %i.bi = add i64 %i.bh, %i.j
  %i.bj = sub i64 %i.bg, %i.bi                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check254 = icmp ult i64 %i.bj, 168
  br i1 %min.iters.check254, label %.lr.ph.i.i40.preheader290, label %vector.memcheck243

vector.memcheck243:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bm = shl i64 %indvar244, 3
  %9 = and i64 %i.bj, -8                          ; 2 uses
  %scevgep246 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %10 = getelementptr i8, ptr %scevgep246, i64 16
  %scevgep247 = getelementptr i8, ptr %10, i64 %9
  %scevgep248 = getelementptr i8, ptr %.03254.i, i64 %9
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 8
  %bound0250 = icmp ult ptr %.03457.i, %scevgep249
  %bound1251 = icmp ult ptr %.03254.i, %scevgep247
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i40.preheader290, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck243
  %n.vec256 = and i64 %i.bl, 4611686018427387900  ; 3 uses
  %i.bn = shl i64 %n.vec256, 3                    ; 2 uses
  %i.bo = getelementptr i8, ptr %.03254.i, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %.03457.i, i64 %i.bn
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next265, %vector.body257 ] ; 2 uses
  %i.bq = shl i64 %index258, 3                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.03254.i, i64 %i.bq ; 4 uses
  %next.gep260 = getelementptr i8, ptr %.03457.i, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <2 x ptr>, ptr %next.gep260, align 8, !tbaa !144, !alias.scope !2392, !noalias !2393
  %wide.load262 = load <2 x ptr>, ptr %i.br, align 8, !tbaa !144, !alias.scope !2392, !noalias !2393
  %i.bs = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load263 = load <2 x i64>, ptr %next.gep259, align 8, !tbaa !144, !alias.scope !2393
  %wide.load264 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !144, !alias.scope !2393
  %i.bt = getelementptr i8, ptr %next.gep260, i64 16
  store <2 x i64> %wide.load263, ptr %next.gep260, align 8, !tbaa !144, !alias.scope !2392, !noalias !2393
  store <2 x i64> %wide.load264, ptr %i.bt, align 8, !tbaa !144, !alias.scope !2392, !noalias !2393
  %i.bu = getelementptr i8, ptr %next.gep259, i64 16
  store <2 x ptr> %wide.load261, ptr %next.gep259, align 8, !tbaa !144, !alias.scope !2393
  store <2 x ptr> %wide.load262, ptr %i.bu, align 8, !tbaa !144, !alias.scope !2393
  %index.next265 = add nuw i64 %index258, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.bv, label %middle.block266, label %vector.body257, !llvm.loop !2385

middle.block266:                                  ; preds = %vector.body257
  %cmp.n267 = icmp eq i64 %i.bl, %n.vec256
  br i1 %cmp.n267, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader290

.lr.ph.i.i40.preheader290:                        ; preds = %vector.memcheck243, %.lr.ph.i.i40.preheader, %middle.block266
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck243 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.bo, %middle.block266 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck243 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bp, %middle.block266 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader290, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.by, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bx, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader290 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !144
  %i.bw = load i64, ptr %.010.i.i41, align 8, !tbaa !144
  store i64 %i.bw, ptr %.079.i.i42, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !144
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2386

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bz = load ptr, ptr %.055.i, align 8, !tbaa !460
  %i.ca = load ptr, ptr %.03254.i, align 8, !tbaa !460
  %i.cb = icmp ult ptr %i.bz, %i.ca               ; 3 uses
  %i.cc = load i64, ptr %.03056.i, align 8, !tbaa !144
  %i.cd = load i64, ptr %.03457.i, align 8, !tbaa !144
  store i64 %i.cd, ptr %.03056.i, align 8, !tbaa !144
  %.03254.sink73.i = select i1 %i.cb, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.cb, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.cb, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.ce = load i64, ptr %.03254.sink73.i, align 8, !tbaa !144
  store i64 %i.ce, ptr %.03457.i, align 8, !tbaa !144
  store i64 %i.cc, ptr %.03254.sink73.i, align 8, !tbaa !144
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cf = icmp eq ptr %.034.i, %1
  %indvar.next245 = add i64 %indvar244, 1
  br i1 %i.cf, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2387

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block266, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block266 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block266 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block266 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block266 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ac, %middle.block ], [ %i.bo, %middle.block266 ], [ %.030.i, %bb.m ], [ %i.by, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cp, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.ck, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cl, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cg = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.ch = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.ci = icmp ult ptr %i.cg, %i.ch
  br i1 %i.ci, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cm = load i64, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cj, ptr %.030.i47, align 8, !tbaa !144
  %i.cn = load i64, ptr %.026.i, align 8, !tbaa !144
  store i64 %i.cn, ptr %.025.i, align 8, !tbaa !144
  store i64 %i.cm, ptr %.026.i, align 8, !tbaa !144
  %.not44.i = icmp eq ptr %i.ck, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2388

bb.o:                                             ; preds = %bb.n
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.co, ptr %.030.i47, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !144
  %.not43.i = icmp eq ptr %i.cp, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2388

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.ba, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.ct, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cy, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.ct, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cv, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cq = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cr = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cs = icmp ult ptr %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !144 ; 2 uses
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cu, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !144
  %i.cw = icmp eq ptr %i.cv, %3
  br i1 %i.cw, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2389

bb.q:                                             ; preds = %.preheader.i
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cx, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !144
  %i.cz = icmp eq ptr %i.cy, %.087
  br i1 %i.cz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2389

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.cy, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cp, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.ck, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cv, %bb.p ], [ %.026.i, %bb.o ]
  %i.da = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.ct, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.ct, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !467
  store ptr %.086, ptr %6, align 8, !tbaa !467
  store ptr %.1, ptr %2, align 8, !tbaa !467
  ret ptr %i.da
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !467    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !467    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !467    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !460
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !460
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !75

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 10 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 3 uses
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
  %i.o = load i64, ptr %i.l, align 8, !tbaa !144
  %i.p = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.p, ptr %i.l, align 8, !tbaa !144
  %i.q = load i64, ptr %4, align 8, !tbaa !144
  store i64 %i.q, ptr %.0.lcssa.i, align 8, !tbaa !144
  %i.r = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.r, ptr %4, align 8, !tbaa !144
  store i64 %i.o, ptr %i.d, align 8, !tbaa !144
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
  %i.u = shl i64 %indvar, 3
  %i.v = add i64 %i.u, %i.i
  %i.w = sub i64 %i.t, %i.v                       ; 3 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader300, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = shl i64 %indvar, 3
  %8 = and i64 %i.w, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.z
  %9 = getelementptr i8, ptr %scevgep, i64 16
  %scevgep238 = getelementptr i8, ptr %9, i64 %8
  %scevgep239 = getelementptr i8, ptr %.03966.i, i64 %8
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 8
  %bound0 = icmp ult ptr %.04170.i, %scevgep240
  %bound1 = icmp ult ptr %.03966.i, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03966.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04170.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.ad ; 4 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep241, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !144, !alias.scope !2408, !noalias !2409
  %wide.load242 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !144, !alias.scope !2408, !noalias !2409
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2409
  %wide.load244 = load <2 x i64>, ptr %i.af, align 8, !tbaa !144, !alias.scope !2409
  %i.ag = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !144, !alias.scope !2408, !noalias !2409
  store <2 x i64> %wide.load244, ptr %i.ag, align 8, !tbaa !144, !alias.scope !2408, !noalias !2409
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2409
  store <2 x ptr> %wide.load242, ptr %i.ah, align 8, !tbaa !144, !alias.scope !2409
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader300

.lr.ph.i.i.preheader300:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader300, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader300 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !144
  %i.aj = load i64, ptr %.010.i.i, align 8, !tbaa !144
  store i64 %i.aj, ptr %.079.i.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2398

bb.g:                                             ; preds = %.lr.ph.i31
  %i.am = load ptr, ptr %.03966.i, align 8, !tbaa !460
  %i.an = load ptr, ptr %.068.i, align 8, !tbaa !460
  %.not53.i = icmp ult ptr %i.am, %i.an
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.aq = load i64, ptr %.03769.i, align 8, !tbaa !144
  %i.ar = load i64, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.ar, ptr %.03769.i, align 8, !tbaa !144
  %i.as = load i64, ptr %.068.i, align 8, !tbaa !144
  store i64 %i.as, ptr %.04170.i, align 8, !tbaa !144
  %i.at = load i64, ptr %.03567.i, align 8, !tbaa !144
  store i64 %i.at, ptr %.068.i, align 8, !tbaa !144
  store i64 %i.aq, ptr %.03567.i, align 8, !tbaa !144
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.av = load i64, ptr %.03769.i, align 8, !tbaa !144
  %i.aw = load i64, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.aw, ptr %.03769.i, align 8, !tbaa !144
  %i.ax = load i64, ptr %.03966.i, align 8, !tbaa !144
  store i64 %i.ax, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.av, ptr %.03966.i, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.au, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.ao, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.ap, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2399

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.l, align 8, !tbaa !144
  %i.ba = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.ba, ptr %i.l, align 8, !tbaa !144
  %i.bb = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.bb, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.az, ptr %i.d, align 8, !tbaa !144
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %.03454.i, %1
  br i1 %i.bc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar247 = phi i64 [ %indvar.next248, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ay, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bd = icmp eq ptr %.056.i, %3
  br i1 %i.bd, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.be = add i64 %i.a, -16
  %i.bf = shl i64 %indvar247, 3
  %i.bg = add i64 %i.bf, %i.i
  %i.bh = sub i64 %i.be, %i.bg                    ; 3 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.bh, 168
  br i1 %min.iters.check257, label %.lr.ph.i.i40.preheader293, label %vector.memcheck246

vector.memcheck246:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bk = shl i64 %indvar247, 3
  %10 = and i64 %i.bh, -8                         ; 2 uses
  %scevgep249 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bk
  %11 = getelementptr i8, ptr %scevgep249, i64 16
  %scevgep250 = getelementptr i8, ptr %11, i64 %10
  %scevgep251 = getelementptr i8, ptr %.03255.i, i64 %10
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 8
  %bound0253 = icmp ult ptr %.03458.i, %scevgep252
  %bound1254 = icmp ult ptr %.03255.i, %scevgep250
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i40.preheader293, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck246
  %n.vec259 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bl = shl i64 %n.vec259, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %.03255.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr i8, ptr %.03458.i, i64 %i.bl
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.bo = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.03255.i, i64 %i.bo ; 4 uses
  %next.gep263 = getelementptr i8, ptr %.03458.i, i64 %i.bo ; 4 uses
  %i.bp = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x ptr>, ptr %next.gep263, align 8, !tbaa !144, !alias.scope !2410, !noalias !2411
  %wide.load265 = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !144, !alias.scope !2410, !noalias !2411
  %i.bq = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load266 = load <2 x i64>, ptr %next.gep262, align 8, !tbaa !144, !alias.scope !2411
  %wide.load267 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !144, !alias.scope !2411
  %i.br = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x i64> %wide.load266, ptr %next.gep263, align 8, !tbaa !144, !alias.scope !2410, !noalias !2411
  store <2 x i64> %wide.load267, ptr %i.br, align 8, !tbaa !144, !alias.scope !2410, !noalias !2411
  %i.bs = getelementptr i8, ptr %next.gep262, i64 16
  store <2 x ptr> %wide.load264, ptr %next.gep262, align 8, !tbaa !144, !alias.scope !2411
  store <2 x ptr> %wide.load265, ptr %i.bs, align 8, !tbaa !144, !alias.scope !2411
  %index.next268 = add nuw i64 %index261, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.bt, label %middle.block269, label %vector.body260, !llvm.loop !2403

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.bj, %n.vec259
  br i1 %cmp.n270, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader293

.lr.ph.i.i40.preheader293:                        ; preds = %vector.memcheck246, %.lr.ph.i.i40.preheader, %middle.block269
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck246 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bm, %middle.block269 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck246 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bn, %middle.block269 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader293, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.bw, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.bv, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader293 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !144
  %i.bu = load i64, ptr %.010.i.i41, align 8, !tbaa !144
  store i64 %i.bu, ptr %.079.i.i42, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !144
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2404

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bx = load ptr, ptr %.03255.i, align 8, !tbaa !460
  %i.by = load ptr, ptr %.056.i, align 8, !tbaa !460
  %.not45.i = icmp ult ptr %i.bx, %i.by           ; 3 uses
  %i.bz = load i64, ptr %.03057.i, align 8, !tbaa !144
  %i.ca = load i64, ptr %.03458.i, align 8, !tbaa !144
  store i64 %i.ca, ptr %.03057.i, align 8, !tbaa !144
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.cb = load i64, ptr %.03255.sink74.i, align 8, !tbaa !144
  store i64 %i.cb, ptr %.03458.i, align 8, !tbaa !144
  store i64 %i.bz, ptr %.03255.sink74.i, align 8, !tbaa !144
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.cc = icmp eq ptr %.034.i, %1
  %indvar.next248 = add i64 %indvar247, 1
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2405

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block269, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block269 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block269 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block269 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block269 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bm, %middle.block269 ], [ %.030.i, %bb.m ], [ %i.bw, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cl, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cg, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.ch, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cd = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.ce = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cd, %i.ce
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.ci = load i64, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cf, ptr %.030.i47, align 8, !tbaa !144
  %i.cj = load i64, ptr %.026.i, align 8, !tbaa !144
  store i64 %i.cj, ptr %.025.i, align 8, !tbaa !144
  store i64 %i.ci, ptr %.026.i, align 8, !tbaa !144
  %.not45.i48 = icmp eq ptr %i.cg, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2406

bb.o:                                             ; preds = %bb.n
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.ck, ptr %.030.i47, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !144
  %.not44.i = icmp eq ptr %i.cl, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2406

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.ay, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.co, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ct, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.co, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cq, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cm = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cn = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.cm, %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !144 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cp, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !144
  %i.cr = icmp eq ptr %i.cq, %3
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2407

bb.q:                                             ; preds = %.preheader.i
  %i.cs = ptrtoint ptr %i.cm to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.cs, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !144
  %i.cu = icmp eq ptr %i.ct, %.091
  br i1 %i.cu, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2407

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.cg, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cq, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.ct, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cl, %bb.o ]
  %i.cv = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.co, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.co, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !467
  store ptr %.090, ptr %6, align 8, !tbaa !467
  store ptr %.178, ptr %2, align 8, !tbaa !467
  ret ptr %i.cv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !120, !range !96, !noundef !97
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp eq ptr %1, %2                       ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split, label %bb.d
end_hunk_3
