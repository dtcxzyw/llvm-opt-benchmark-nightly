inline.NumInlined: 11108
inline.NumDeleted: 3934
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3igl8copyleft4cgal13projected_cdtIN4CGAL5EpeckElEEvRKSt6vectorINS3_6ObjectESaIS6_EERKNS3_7Plane_3IT_EERS5_INS3_7Point_3ISC_EESaISH_EERS5_IS5_IT0_SaISL_EESaISN_EE:bb.a
  invoke void @_ZN3igl8copyleft4cgal15insert_into_cdtIN4CGAL5EpeckEEEvRKNS3_6ObjectERKNS3_7Plane_3IT_EERNS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2IS9_NS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS9_NS3_30Triangulation_ds_vertex_base_2IvEEEENS3_37Constrained_triangulation_face_base_2IS9_NS3_25Triangulation_face_base_2IS9_NS3_28Triangulation_ds_face_base_2IvEEEEEEEENS3_23Exact_intersections_tagEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.081.0105, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(312) %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.081.0105, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

._crit_edge109:                                   ; preds = %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit, %bb.c, %._crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE21finite_vertices_beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !124, !noalias !164
  %i.bu = icmp slt i32 %i.bt, 2
  br i1 %i.bu, label %._crit_edge113, label %bb.k

bb.k:                                             ; preds = %._crit_edge109
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !167, !noalias !164 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !noalias !164
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %._crit_edge113, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !168, !noalias !164 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !155, !noalias !164
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 3
  %i.ci = icmp eq i64 %i.ch, 2
  br i1 %i.ci, label %.preheader.i.i.i.i.i40, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i

.preheader.i.i.i.i.i40:                           ; preds = %bb.m, %.preheader.i.i.i.i.i40.backedge
  %i.cj = phi ptr [ %.be202, %.preheader.i.i.i.i.i40.backedge ], [ %i.cd, %bb.m ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !155, !noalias !164
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.co, 3
  switch i32 %i.cp, label %default.unreachable [
    i32 0, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i
    i32 3, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i
    i32 1, label %bb.n
    i32 2, label %.preheader.i.i.i.i.i40.backedge
  ]

bb.n:                                             ; preds = %.preheader.i.i.i.i.i40
  %i.cq = and i64 %i.cn, -4
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %.preheader.i.i.i.i.i40.backedge

.preheader.i.i.i.i.i40.backedge:                  ; preds = %bb.n, %.preheader.i.i.i.i.i40
  %.be202 = phi ptr [ %i.cr, %bb.n ], [ %i.ck, %.preheader.i.i.i.i.i40 ]
  br label %.preheader.i.i.i.i.i40, !llvm.loop !169

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i: ; preds = %.preheader.i.i.i.i.i40, %.preheader.i.i.i.i.i40, %bb.m, %bb.l
  %.sroa.0.0.i.i.i = phi ptr [ %i.cd, %bb.m ], [ null, %bb.l ], [ %i.ck, %.preheader.i.i.i.i.i40 ], [ %i.ck, %.preheader.i.i.i.i.i40 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.bw
  br i1 %.not4.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_faces_beginEv.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i36 = load ptr, ptr %i.j, align 8, !tbaa !146, !noalias !170 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i, %.lr.ph.i.i.i35
  %.sroa.4.0.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i35 ], [ %i.db, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i ] ; 5 uses
  %i.cs = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !144, !noalias !170
  %i.ct = icmp eq ptr %i.cs, %.sroa.0.0.copyload.i.i.i.i.i.i36
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !170
  %i.cw = icmp eq ptr %i.cv, %.sroa.0.0.copyload.i.i.i.i.i.i36
  %or.cond.i.i.i.i.i.i = select i1 %i.ct, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.i.i.i

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.i.i.i: ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !144, !noalias !170
  %i.cz = icmp eq ptr %i.cy, %.sroa.0.0.copyload.i.i.i.i.i.i36
  br i1 %i.cz, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_faces_beginEv.exit

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.preheader: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.i.i.i, %bb.o
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.backedge, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.preheader
  %i.da = phi ptr [ %.sroa.4.0.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.preheader ], [ %.be199, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.backedge ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !155, !noalias !170
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = and i32 %i.df, 3
  switch i32 %i.dg, label %default.unreachable [
    i32 0, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i
    i32 3, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i
    i32 1, label %bb.p
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.backedge
  ]

bb.p:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i
  %i.dh = and i64 %i.de, -4
  %i.di = inttoptr i64 %i.dh to ptr
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.backedge

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i.backedge: ; preds = %bb.p, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i
  %.be199 = phi ptr [ %i.db, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i ], [ %i.di, %bb.p ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i, !llvm.loop !169

_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.thread.i.i.i
  %.not.i.i.i38 = icmp eq ptr %i.db, %i.bw
  br i1 %.not.i.i.i38, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_faces_beginEv.exit, label %bb.o, !llvm.loop !173

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_faces_beginEv.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.i.i.i, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i
  %.sroa.4.1.sink.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_faces_beginEv.exit.i ], [ %i.db, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEENS3_IS4_NS5_IS4_NS6_IvEEEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEppEv.exit.i.i.i ], [ %.sroa.4.0.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESM_SM_EELb0EEE.exit.i.i.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.not88110 = icmp eq ptr %.sroa.4.1.sink.i, %i.bw
  br i1 %.not88110, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_faces_beginEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.an

bb.q:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.r:                                             ; preds = %.lr.ph108, %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit
  %i.dp = phi ptr [ %.sroa.4.0.sink.i, %.lr.ph108 ], [ %i.fu, %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit ]
  %.020107 = phi i64 [ 0, %.lr.ph108 ], [ %i.gc, %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !174
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_lifted_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Plane_3IS1_EENS_7Point_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 8 %8, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !174
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !177 ; 6 uses
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !180
  %.not.i.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i, label %bb.t, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.s
  %i.dt = load ptr, ptr %8, align 8, !tbaa !181
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !181
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.du, ptr %i.bp, align 8, !tbaa !177
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load ptr, ptr %2, align 8, !tbaa !184   ; 10 uses
  %i.dw = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 4 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.u, label %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #37
          to label %.noexc66 unwind label %.loopexit.split-lp

.noexc66:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i65 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i65)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #38
          to label %.noexc67 unwind label %.loopexit ; 10 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy
  %i.ei = load ptr, ptr %8, align 8, !tbaa !181
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !181
  store ptr null, ptr %8, align 8, !tbaa !181
  %.not10.i.i.i.i = icmp eq ptr %i.dv, %i.dr
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc67
  %13 = add i64 %i.dw, -8
  %14 = sub i64 %13, %i.dx                        ; 2 uses
  %i.ej = lshr i64 %14, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader206, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.eg, i64 8
  %i.el = add i64 %i.dw, -8
  %i.em = sub i64 %i.el, %i.dx
  %i.en = and i64 %i.em, -8                       ; 2 uses
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.en
  %scevgep192 = getelementptr i8, ptr %i.dv, i64 8
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.en
  %bound0 = icmp ult ptr %i.eg, %scevgep193
  %bound1 = icmp ult ptr %i.dv, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader206, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 4611686018427387900     ; 3 uses
  %i.eo = shl i64 %n.vec, 3                       ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eg, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dv, i64 %i.eo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eg, i64 %i.er ; 2 uses
  %next.gep194 = getelementptr i8, ptr %i.dv, i64 %i.er ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.es = getelementptr i8, ptr %next.gep194, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep194, align 8, !tbaa !181, !alias.scope !190, !noalias !185
  %wide.load195 = load <2 x ptr>, ptr %i.es, align 8, !tbaa !181, !alias.scope !190, !noalias !185
  %i.et = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !181, !alias.scope !193, !noalias !190
  store <2 x ptr> %wide.load195, ptr %i.et, align 8, !tbaa !181, !alias.scope !193, !noalias !190
  store <2 x ptr> splat (ptr null), ptr %next.gep194, align 8, !tbaa !181, !alias.scope !190, !noalias !185
  store <2 x ptr> splat (ptr null), ptr %i.es, align 8, !tbaa !181, !alias.scope !190, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i.preheader206

.lr.ph.i.i.i.i.preheader206:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.eg, %vector.memcheck ], [ %i.eg, %.lr.ph.i.i.i.i.preheader ], [ %i.ep, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph.i.i.i.i.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader206, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader206 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader206 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ev = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !188, !noalias !185
  store ptr %i.ev, ptr %.012.i.i.i.i, align 8, !tbaa !181, !alias.scope !185, !noalias !188
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !188, !noalias !185
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ew, %i.dr
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !198

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc67
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %.noexc67 ], [ %i.ep, %middle.block ], [ %i.ex, %.lr.ph.i.i.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dv, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dy) #36
  br label %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, %bb.v
  store ptr %i.eg, ptr %2, align 8, !tbaa !184
  store ptr %i.ey, ptr %i.bp, align 8, !tbaa !177
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.ez, ptr %i.bq, align 8, !tbaa !180
  %.pr = load ptr, ptr %8, align 8, !tbaa !181    ; 4 uses
  %.not.i.i42 = icmp eq ptr %.pr, null
  br i1 %.not.i.i42, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i43 = icmp eq i8 %i.fa, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 3 uses
  %i.fc = load atomic i32, ptr %i.fb monotonic, align 4 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 1                    ; 2 uses
  br i1 %.not.i.i.i43, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.fh = add nsw i32 %i.fc, -1
  store atomic i32 %i.fh, ptr %i.fb monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.aa:                                            ; preds = %bb.w
  br i1 %i.fd, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = atomicrmw sub ptr %i.fb, i32 1 release, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.ac, label %_ZN4CGAL6HandleD2Ev.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  fence acquire
  %i.fk = load ptr, ptr %8, align 8, !tbaa !181   ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !41
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(12) %i.fk) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit.thread, %_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE9push_backEOS3_.exit, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN4CGAL8internal11CC_iteratorINS0_17Compact_containerINS0_27Triangulation_vertex_base_2INS0_5EpeckENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS4_IS5_NS6_IvEEEENS0_37Constrained_triangulation_face_base_2IS5_NS0_25Triangulation_face_base_2IS5_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS0_7DefaultESJ_SJ_EELb0EEElSt4lessISL_ESaISt4pairIKSL_lEEEixERSP_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i)
          to label %bb.ae unwind label %bb.q

bb.ae:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  store i64 %.020107, ptr %i.fp, align 8, !tbaa !95
  %.promoted.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !144, !noalias !201
  %i.fq = load ptr, ptr %7, align 8, !noalias !201
  %i.fr = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !201
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 192
  br label %bb.af

bb.af:                                            ; preds = %.backedge, %bb.ae
  %i.ft = phi ptr [ %.promoted.i.i.i, %bb.ae ], [ %.be205, %.backedge ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 8 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !155, !noalias !201
  %i.fw = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = and i32 %i.fx, 3
  switch i32 %i.fy, label %default.unreachable [
    i32 0, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IS4_NS5_IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESI_SI_EELb0EEppEv.exit.i.i.i44
    i32 3, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IS4_NS5_IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESI_SI_EELb0EEppEv.exit.i.i.i44
    i32 1, label %bb.ag
    i32 2, label %.backedge
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fz = and i64 %i.fw, -4
  %i.ga = inttoptr i64 %i.fz to ptr
  br label %.backedge

_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IS4_NS5_IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESI_SI_EELb0EEppEv.exit.i.i.i44: ; preds = %bb.af, %bb.af
  store ptr %i.fu, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !144, !noalias !201
  %.not.i.i.i45 = icmp eq ptr %i.fu, %i.fq
  br i1 %.not.i.i.i45, label %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IS4_NS5_IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESI_SI_EELb0EEppEv.exit.i.i.i44
  %.sroa.0.0.copyload.i.i.i.i.i.i46 = load ptr, ptr %i.fs, align 8, !tbaa !146, !noalias !201
  %i.gb = icmp eq ptr %i.fu, %.sroa.0.0.copyload.i.i.i.i.i.i46
  br i1 %i.gb, label %.backedge, label %_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit

.backedge:                                        ; preds = %bb.ah, %bb.ag, %bb.af
  %.be205 = phi ptr [ %i.fu, %bb.ah ], [ %i.fu, %bb.af ], [ %i.ga, %bb.ag ]
  br label %bb.af, !llvm.loop !157

_ZN4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE24Finite_vertices_iteratorppEi.exit: ; preds = %bb.ah, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS3_IS4_NS5_IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESI_SI_EELb0EEppEv.exit.i.i.i44
  %i.gc = add i64 %.020107, 1
  %i.gd = load ptr, ptr %i.bo, align 8, !tbaa !153, !noalias !204
  %.not87 = icmp eq ptr %i.fu, %i.gd
  br i1 %.not87, label %._crit_edge109, label %bb.r, !llvm.loop !207

bb.ai:                                            ; preds = %bb.r
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.ak
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !222 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !223
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !223
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !232, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #36
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !222
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !199
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !222
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !232, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #36
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !222
  store i64 1, ptr %0, align 16, !tbaa !199
  store ptr %i.av, ptr %i.as, align 8, !tbaa !199
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !222
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #39
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !223
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !231
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !223 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !223
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !223
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !223
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !223
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = add i64 %.187, -1                          ; 2 uses
  %3 = sub i64 %2, %.0
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %4 = add i64 %.0, %i.cg
  %i.ch = sub i64 %.187, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134 = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136 = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137 = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !223, !alias.scope !262
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !223, !alias.scope !265, !noalias !267
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !223, !alias.scope !269
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !223, !alias.scope !265, !noalias !267
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %5 = add i64 %n.vec, -1
  %i.dp = add i64 %.0, %5
  %i.dq = sub i64 %2, %i.dp
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ee, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = xor i64 %.1108, -1
  %i.ds = add i64 %.187, %i.dr                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !223
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !223
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !223
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !223
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !271

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ee, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.dq, %middle.block ], [ %i.ef, %scalar.ph ]
  %i.eg = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eg
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eh = xor i64 %.1.lcssa, -1
  %i.ei = add i64 %.187, %i.eh                    ; 2 uses
  %i.ej = sub i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !223
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !223
  %i.eo = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.eo, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.ep = sub i64 %.187, %.2
  %i.eq = shl i64 %i.ep, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !272, !noalias !275, !nonnull !14, !align !278 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !222
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i.i.i = select i1 %i.h, i64 2, i64 %i.i ; 2 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i, %spec.select.i8.i.i.i
  br i1 %i.j, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %spec.select.i8.i.i.i, 2
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %spec.select.i.i.i)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i, i64 288230376151711744) ; 2 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !232, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #36
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
  %i.t = trunc nuw i8 %.pre.pre.i.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i.i = phi i1 [ false, %bb.e ], [ %i.t, %bb.d ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !222
  store i64 %.sroa.speculated.i.i.i, ptr %0, align 16, !tbaa !199
  store ptr %i.m, ptr %i.n, align 8, !tbaa !199
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !222
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i.i = phi i1 [ %.pre.i.i, %bb.f ], [ %i.h, %bb.g ]
  %i.u = phi ptr [ %i.m, %bb.f ], [ %.pre8.i.i, %bb.g ]
  %i.v = select i1 %.pre-phi.i.i, ptr %0, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.a, ptr %i.aa
  %i.ac = load i64, ptr %i.d, align 16, !tbaa !222
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.ab, i64 %i.ad, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i
  %.sink = phi ptr [ %i.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit.i ], [ %0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !231, !range !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = trunc nuw i8 %.pre to i1
  %i.ag = xor i8 %.pre, 1
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !231
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = icmp ne i64 %i.ai, 1
  %or.cond.i.not = select i1 %i.af, i1 true, i1 %i.aj
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !223
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ae, align 8, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends16eval_right_shiftILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EEEE5valueEvE4typeERS9_o(ptr noundef nonnull align 16 dereferenceable(27) %0, i128 noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i128 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !231, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 1, ptr %i.b, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %i.h, ptr %0, ptr %i.j         ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !223  ; 2 uses
  %.not10.i = icmp eq i64 %i.l, 0
  br i1 %.not10.i, label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKy.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.l, -1
end_hunk_1
begin_hunk_2_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !470 ; 9 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !473, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !223
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !473, !range !13 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !223
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 8, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #38 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !474, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #36
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !473, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !473
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !470
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !199
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !199
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !470
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 20 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !474, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #36
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !473, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !473
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !470
  store i64 1, ptr %0, align 16, !tbaa !199
  store ptr %i.av, ptr %i.as, align 8, !tbaa !199
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !470
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #39
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !223
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !472
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !223 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !223
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !223
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = add i64 %i.f, -2
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !223
  %i.bz = sub nuw nsw i64 64, %i.d
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = or disjoint i64 %i.ca, %i.br
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !223
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.cc = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cd = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cd, %i.cc
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.d                ; 2 uses
  %2 = add i64 %.187, -1                          ; 2 uses
  %3 = sub i64 %2, %.0
  %i.cf = add i64 %i.b, 1
  %i.cg = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.cf)
  %4 = add i64 %.0, %i.cg
  %i.ch = sub i64 %.187, %4                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134 = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135 = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136 = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137 = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep134
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !223, !alias.scope !529
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !223, !alias.scope !532, !noalias !534
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !223, !alias.scope !536
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !223, !alias.scope !532, !noalias !534
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %5 = add i64 %n.vec, -1
  %i.dp = add i64 %.0, %5
  %i.dq = sub i64 %2, %i.dp
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ee, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = xor i64 %.1108, -1
  %i.ds = add i64 %.187, %i.dr                    ; 2 uses
  %i.dt = sub i64 %i.ds, %i.b
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !223
  %i.dw = shl i64 %i.dv, %i.d                     ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ds ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !223
  %i.dy = add i64 %.1108, %i.b
  %i.dz = sub i64 %invariant.op, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !223
  %i.ec = lshr i64 %i.eb, %i.ce
  %i.ed = or disjoint i64 %i.ec, %i.dw
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !223
  %i.ee = add i64 %.1108, 1                       ; 3 uses
  %i.ef = sub nsw i64 %.187, %i.ee                ; 2 uses
  %.not96 = icmp slt i64 %i.ef, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !538

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ee, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.dq, %middle.block ], [ %i.ef, %scalar.ph ]
  %i.eg = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eg
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eh = xor i64 %.1.lcssa, -1
  %i.ei = add i64 %.187, %i.eh                    ; 2 uses
  %i.ej = sub i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !223
  %i.em = shl i64 %i.el, %i.d
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ei
  store i64 %i.em, ptr %i.en, align 8, !tbaa !223
  %i.eo = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.eo, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.ep = sub i64 %.187, %.2
  %i.eq = shl i64 %i.ep, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.231", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.240", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !539, !noalias !541, !nonnull !14, !align !278
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496, !noalias !544, !nonnull !14, !align !278 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 0, ptr %7, align 16, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !470
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !472
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !473
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !474
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !547

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !473, !range !13, !noundef !14
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !13
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #36, !inline_history !495
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !503
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !308, !range !13, !noundef !14
  %i.v = load i8, ptr %i.t, align 8, !tbaa !308, !range !13, !noundef !14
  store i8 %i.v, ptr %i.h, align 8, !tbaa !308
  store i8 %i.u, ptr %i.t, align 8, !tbaa !308
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !308, !range !13, !noundef !14
  %i.y = load i8, ptr %i.w, align 1, !tbaa !308, !range !13, !noundef !14 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !308
  store i8 %i.x, ptr %i.w, align 1, !tbaa !308
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !95
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !95
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !95
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !308, !range !13, !noundef !14
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !308, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !308
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !308
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i25.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i25.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  store ptr %i.d, ptr %8, align 8, !tbaa !482, !alias.scope !548
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !487, !noalias !548
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !487, !alias.scope !548
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !487, !noalias !551 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.32)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @.str.33, ptr %5, align 8, !tbaa !225
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.34, ptr %i.ao, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !230
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #37
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
end_hunk_2
