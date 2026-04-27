inline.NumInlined: 1548
inline.NumDeleted: 830
begin_hunk_0_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  store ptr %i.y, ptr %i.v, align 8, !tbaa !295
  store ptr %i.y, ptr %i.w, align 8, !tbaa !315
  %i.z = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.lr.ph.i.i.i.i.i.i.i29.preheader unwind label %bb.j ; 5 uses

.lr.ph.i.i.i.i.i.i.i29.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !80, !alias.scope !332, !noalias !329
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !80, !alias.scope !329, !noalias !332
  store ptr null, ptr %i.x, align 8, !tbaa !80, !alias.scope !332, !noalias !329
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  store ptr %i.z, ptr %i.h, align 8, !tbaa !296
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !295
end_hunk_1
begin_hunk_2_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  br label %bb.x

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i._ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39_crit_edge: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.i, ptr %i.h, align 8, !tbaa !296
  store ptr %i.k, ptr %i.an, align 8, !tbaa !295
end_hunk_2
begin_hunk_3_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !315
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i._ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39_crit_edge, %.lr.ph.i.i.i.i.i.i.i29.preheader
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %13 = load ptr, ptr %12, align 8, !tbaa !295
  %14 = load ptr, ptr %i.h, align 8, !tbaa !296
  %i.ar = ptrtoint ptr %13 to i64
  %i.as = ptrtoint ptr %14 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 9
  br i1 %i.au, label %bb.r, label %bb.w
end_hunk_3
begin_hunk_4_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #22
  %.pre205.pre = load ptr, ptr %13, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  %.pre205 = phi ptr [ %.pre205.pre, %bb.an ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92 ]
  store ptr %i.hm, ptr %12, align 8, !tbaa !296
  store ptr %i.ih, ptr %i.al, align 8, !tbaa !295
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hk ; 3 uses
end_hunk_4
begin_hunk_5_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95, %bb.ak
  %i.ij = phi ptr [ %i.ii, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dr, %bb.ak ]
  %.pr.i111 = phi ptr [ %.pre205, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ null, %bb.ak ] ; 4 uses
  %i.ik = phi ptr [ %i.hm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.ds, %bb.ak ]
  %i.il = phi ptr [ %i.ii, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dt, %bb.ak ]
  %i.im = phi ptr [ %i.ih, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.hb, %bb.ak ]
  %i.in = load ptr, ptr %i.ak, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i103 = icmp eq ptr %.pr.i111, %i.in
  br i1 %.not4.i.i.i103, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108
  %.05.i.i.i105 = phi ptr [ %i.is, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108 ], [ %.pr.i111, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.io = load ptr, ptr %.05.i.i.i105, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i106, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107
end_hunk_5
begin_hunk_6_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i113 = icmp eq ptr %.pr.i111, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %.pr.i111) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, %bb.ao
end_hunk_6
