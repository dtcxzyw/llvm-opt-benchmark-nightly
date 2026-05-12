inline.NumInlined: 1548
inline.NumDeleted: 830
begin_hunk_0_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  %i.m = load ptr, ptr %2, align 8                ; 2 uses
  %.not56 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit
  %12 = ptrtoint ptr %i.m to i64
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb:bb.a
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25 unwind label %bb.j ; 6 uses

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  store i64 %12, ptr %i.w, align 8, !tbaa !80
  store ptr null, ptr %2, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #21
  %.pre205.pre = load ptr, ptr %13, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  %.pre205 = phi ptr [ %.pre205.pre, %bb.an ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92 ]
  store ptr %i.hm, ptr %12, align 8, !tbaa !296
  store ptr %i.ih, ptr %i.al, align 8, !tbaa !295
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hk ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a

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
end_hunk_3
begin_hunk_4_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i113 = icmp eq ptr %.pr.i111, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %.pr.i111) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, %bb.ao
end_hunk_4
