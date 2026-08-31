Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_edges_beginEv:bb.a
  %i.co = icmp eq ptr %i.cg, %i.j
  br i1 %i.co, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us, !llvm.loop !1546

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i25 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.74.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph ] ; 2 uses
  %i.cp = phi ptr [ %i.dw, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cq = zext nneg i32 %.pre7.i4.i25 to i64      ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40, !noalias !1543
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !223, !noalias !1543
  %i.cv = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cq
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !40, !noalias !1543
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cy
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !223, !noalias !1543
  %i.da = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.da, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge

.split.i.i.i.preheader:                           ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1
  %i.db = phi ptr [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %.promoted.i.i1.i.i.i.i = phi ptr [ %.promoted.i.i1.i.i8.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dc = phi ptr [ %i.dq, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dd = phi i32 [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.pre7.i4.i25, %.split.i.i.i.preheader ] ; 2 uses
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.m, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i

bb.m:                                             ; preds = %.split.i.i.i
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !1547, !alias.scope !1543
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.df = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be125, %.backedge ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 7 uses
  store ptr %i.dg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !231, !alias.scope !1543
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !231, !noalias !1543
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 1, label %bb.o
    i32 2, label %.backedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.dm = and i64 %i.dj, -4
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  store ptr %i.dn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !231, !alias.scope !1543
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be125 = phi ptr [ %i.dg, %bb.n ], [ %i.dn, %bb.o ]
  br label %bb.n, !llvm.loop !233

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  %.not3.i.i.i = icmp eq ptr %i.dg, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.do = add nuw nsw i32 %i.dd, 1                ; 3 uses
  store i32 %i.do, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !1547, !alias.scope !1543
  %.not2.i.i.i = icmp eq ptr %i.dc, %i.j
  br i1 %.not2.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i
  %i.dp = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.promoted.i.i1.i.i8.i.i = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.promoted.i.i1.i.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ]
  %i.dq = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dr = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.du, align 8, !tbaa !224, !noalias !1543
  %i.dv = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dq
  br i1 %i.dv, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !1548

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1
  %i.dw = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dx, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i, !llvm.loop !1546

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi30.in = phi ptr [ %i.by, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us ], [ %i.cp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi30 = ptrtoint ptr %.us-phi30.in to i64
  store i64 %.us-phi30, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !224, !alias.scope !1543
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %i.bi, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us ], [ %i.by, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us ], [ %i.cp, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !224, !alias.scope !1543
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit

_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit, %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 24576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.h = load i32, ptr %i.c, align 4
  %i.i = and i32 %i.h, -24577
  %i.j = or disjoint i32 %i.i, 16384
  store i32 %i.j, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load <2 x double>, ptr %1, align 8, !tbaa !17, !noalias !1549 ; 3 uses
  %i.l = fneg <2 x double> %i.k                   ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 2, i32 0>
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 3, i32 1>
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !17, !noalias !1552 ; 3 uses
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = load <2 x double>, ptr %3, align 8, !tbaa !17, !noalias !1555 ; 3 uses
  %i.t = fneg <2 x double> %i.s                   ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #32, !srcloc !1558
  %i.x = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #31, !srcloc !1559 ; 2 uses
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #32, !srcloc !1558
  %i.aa = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #32, !srcloc !1558
  %i.ab = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.n) #31, !srcloc !1559 ; 2 uses
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  %i.ad = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #32, !srcloc !1558
  %i.ae = bitcast <2 x double> %i.ad to <2 x i64>
  %i.af = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #32, !srcloc !1558
  %i.ag = fadd <2 x double> %i.x, %i.af
  %i.ah = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #32, !srcloc !1558
  %i.ai = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #32, !srcloc !1558
  %i.aj = fadd <2 x double> %i.ab, %i.ai
  %i.ak = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aj) #32, !srcloc !1558
  %i.al = bitcast <2 x double> %i.ak to <2 x i64>
  %i.am = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #31, !srcloc !1559 ; 3 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.aq = bitcast <2 x i64> %i.ap to <2 x double>
  %i.ar = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #32, !srcloc !1558 ; 3 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.at = fmul <2 x double> %i.am, %i.ar
  %i.au = fmul <2 x double> %i.am, %i.as
  %i.av = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.au, <2 x double> splat (double +inf))
  %i.aw = fmul <2 x double> %i.ao, %i.ar
  %i.ax = fmul <2 x double> %i.ao, %i.as
  %i.ay = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ax, <2 x double> splat (double +inf))
  %i.az = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.at, <2 x double> %i.av)
  %i.ba = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.aw, <2 x double> %i.ay)
  %i.bb = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.az, <2 x double> %i.ba)
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #32, !srcloc !1558 ; 2 uses
  %i.bd = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #31, !srcloc !1559 ; 3 uses
  %i.be = fneg <2 x double> %i.bd
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bg = xor <2 x i64> %i.ae, <i64 -9223372036854775808, i64 0>
  %i.bh = bitcast <2 x i64> %i.bg to <2 x double>
  %i.bi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bh) #32, !srcloc !1558 ; 3 uses
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = fmul <2 x double> %i.bd, %i.bi
  %i.bl = fmul <2 x double> %i.bd, %i.bj
  %i.bm = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bl, <2 x double> splat (double +inf))
  %i.bn = fmul <2 x double> %i.bf, %i.bi
  %i.bo = fmul <2 x double> %i.bf, %i.bj
  %i.bp = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bo, <2 x double> splat (double +inf))
  %i.bq = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bk, <2 x double> %i.bm)
  %i.br = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bn, <2 x double> %i.bp)
  %i.bs = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bq, <2 x double> %i.br)
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #32, !srcloc !1558 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bc, i64 0
  %i.bv = fneg double %i.bu                       ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bw = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.bv
  %4 = extractelement <2 x double> %i.bc, i64 1   ; 2 uses
  br i1 %i.bw, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = extractelement <2 x double> %i.bt, i64 0
  %i.by = fneg double %i.bx                       ; 2 uses
  %i.bz = fcmp olt double %4, %i.by
  br i1 %i.bz, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = fcmp une double %4, %i.by
  %i.cb = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.bv
  %or.cond.not.i.i.i.i.i.i = or i1 %i.cb, %i.ca
  %i.cc = select i1 %or.cond.not.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cc, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.not = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cd = load i32, ptr %i.a, align 4
  %i.ce = and i32 %i.cd, -24577
  %i.cf = or disjoint i32 %i.ce, %i.g
  store i32 %i.cf, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.3 = phi i32 [ %i.cg, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Point_2.1950", align 16 ; 14 uses
  %5 = alloca %"class.CGAL::Point_2.1950", align 16 ; 14 uses
  %6 = alloca %"class.CGAL::Point_2.1950", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.1950") align 16 %4, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.1950") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.1950") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = invoke noundef i32 @_ZN4CGAL13orientationC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(192) %4, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(192) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(192) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit unwind label %bb.l

_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 169
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 170
  %i.i = load i8, ptr %i.h, align 2, !range !309
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.c, align 16
  %i.n = shl i64 %i.m, 3
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.d, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_2IS4_EES9_S9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 73
  %i.p = load i8, ptr %i.o, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 74
  %i.s = load i8, ptr %i.r, align 2, !range !309
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %6, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #40
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 169
  %i.z = load i8, ptr %i.y, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 170
  %i.ac = load i8, ptr %i.ab, align 2, !range !309
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i.i.i.i9 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.i.i.i9, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.b, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10:              ; preds = %bb.f, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 73
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 74
  %i.am = load i8, ptr %i.al, align 2, !range !309
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i.1.i.i.i11 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.1.i.i.i11, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %5, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #40
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i10, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !309
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.i.i.i13 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.i.i.i13, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.a, align 16
  %i.bb = shl i64 %i.ba, 3
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #40
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14:              ; preds = %bb.h, %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit12
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !1421, !range !309, !noundef !48
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.bg = load i8, ptr %i.bf, align 2, !range !309
  %i.bh = trunc nuw i8 %i.bg to i1
  %or.cond.i.i.i.1.i.i.i15 = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i.i.i.1.i.i.i15, label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i64, ptr %4, align 16
  %i.bl = shl i64 %i.bk, 3
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #40
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit16: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %i.d

bb.j:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %6) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %5) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.bm, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn
}

end_hunk_0
begin_hunk_1_@_ZN4CGAL25side_of_oriented_circleC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_:bb.a
  %i.bo = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.bp = bitcast <2 x i64> %i.bo to <2 x double>
  %i.bq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp) #32, !srcloc !1558 ; 3 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bs = fmul <2 x double> %i.bl, %i.bq
  %i.bt = fmul <2 x double> %i.bl, %i.br
  %i.bu = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bt, <2 x double> splat (double +inf))
  %i.bv = fmul <2 x double> %i.bn, %i.bq
  %i.bw = fmul <2 x double> %i.bn, %i.br
  %i.bx = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bw, <2 x double> splat (double +inf))
  %i.by = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bs, <2 x double> %i.bu)
  %i.bz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bv, <2 x double> %i.bx)
  %i.ca = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.by, <2 x double> %i.bz)
  %i.cb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ca) #32, !srcloc !1558
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #32, !srcloc !1558
  %i.ce = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cc) #31, !srcloc !1559
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cf) #32, !srcloc !1558
  %i.ch = load <2 x double>, ptr %2, align 16, !tbaa !111
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = load <2 x double>, ptr %6, align 16, !tbaa !111
  %i.ck = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cj) #32, !srcloc !1558
  %i.cl = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ci) #31, !srcloc !1559
  %i.cm = fadd <2 x double> %i.ck, %i.cl
  %i.cn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cm) #32, !srcloc !1558
  %i.co = bitcast <2 x double> %i.cn to <2 x i64>
  %i.cp = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ak) #31, !srcloc !1559 ; 3 uses
  %i.cq = fneg <2 x double> %i.cp
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = xor <2 x i64> %i.co, <i64 -9223372036854775808, i64 0>
  %i.ct = bitcast <2 x i64> %i.cs to <2 x double>
  %i.cu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ct) #32, !srcloc !1558 ; 3 uses
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cw = fmul <2 x double> %i.cp, %i.cu
  %i.cx = fmul <2 x double> %i.cp, %i.cv
  %i.cy = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cx, <2 x double> splat (double +inf))
  %i.cz = fmul <2 x double> %i.cr, %i.cu
  %i.da = fmul <2 x double> %i.cr, %i.cv
  %i.db = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.da, <2 x double> splat (double +inf))
  %i.dc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cw, <2 x double> %i.cy)
  %i.dd = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cz, <2 x double> %i.db)
  %i.de = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dc, <2 x double> %i.dd)
  %i.df = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.de) #32, !srcloc !1558
  %i.dg = load <2 x double>, ptr %3, align 16, !tbaa !111
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.di = load <2 x double>, ptr %7, align 16, !tbaa !111
  %i.dj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.di) #32, !srcloc !1558
  %i.dk = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dh) #31, !srcloc !1559
  %i.dl = fadd <2 x double> %i.dj, %i.dk
  %i.dm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dl) #32, !srcloc !1558
  %i.dn = bitcast <2 x double> %i.dm to <2 x i64>
  %i.do = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.as) #31, !srcloc !1559 ; 3 uses
  %i.dp = fneg <2 x double> %i.do
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dr = xor <2 x i64> %i.dn, <i64 -9223372036854775808, i64 0>
  %i.ds = bitcast <2 x i64> %i.dr to <2 x double>
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #32, !srcloc !1558 ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dv = fmul <2 x double> %i.do, %i.dt
  %i.dw = fmul <2 x double> %i.do, %i.du
  %i.dx = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dw, <2 x double> splat (double +inf))
  %i.dy = fmul <2 x double> %i.dq, %i.dt
  %i.dz = fmul <2 x double> %i.dq, %i.du
  %i.ea = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dz, <2 x double> splat (double +inf))
  %i.eb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dv, <2 x double> %i.dx)
  %i.ec = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dy, <2 x double> %i.ea)
  %i.ed = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eb, <2 x double> %i.ec)
  %i.ee = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #32, !srcloc !1558
  %i.ef = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.df) #32, !srcloc !1558
  %i.eg = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ee) #31, !srcloc !1559
  %i.eh = fadd <2 x double> %i.ef, %i.eg
  %i.ei = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eh) #32, !srcloc !1558
  %i.ej = bitcast <2 x double> %i.ei to <2 x i64>
  %i.ek = xor <2 x i64> %i.ad, <i64 -9223372036854775808, i64 0>
  %i.el = bitcast <2 x i64> %i.ek to <2 x double>
  %i.em = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.el) #32, !srcloc !1558 ; 3 uses
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = fmul <2 x double> %i.au, %i.em
  %i.ep = fmul <2 x double> %i.au, %i.en
  %i.eq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ep, <2 x double> splat (double +inf))
  %i.er = fmul <2 x double> %i.aw, %i.em
  %i.es = fmul <2 x double> %i.aw, %i.en
  %i.et = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.es, <2 x double> splat (double +inf))
  %i.eu = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eo, <2 x double> %i.eq)
  %i.ev = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.er, <2 x double> %i.et)
  %i.ew = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eu, <2 x double> %i.ev)
  %i.ex = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ew) #32, !srcloc !1558
  %i.ey = xor <2 x i64> %i.v, <i64 -9223372036854775808, i64 0>
  %i.ez = bitcast <2 x i64> %i.ey to <2 x double>
  %i.fa = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez) #32, !srcloc !1558 ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = fmul <2 x double> %i.bl, %i.fa
  %i.fd = fmul <2 x double> %i.bl, %i.fb
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fd, <2 x double> splat (double +inf))
  %i.ff = fmul <2 x double> %i.bn, %i.fa
  %i.fg = fmul <2 x double> %i.bn, %i.fb
  %i.fh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fg, <2 x double> splat (double +inf))
  %i.fi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fc, <2 x double> %i.fe)
  %i.fj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ff, <2 x double> %i.fh)
  %i.fk = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fi, <2 x double> %i.fj)
  %i.fl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fk) #32, !srcloc !1558
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ex) #32, !srcloc !1558
  %i.fo = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fm) #31, !srcloc !1559
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fp) #32, !srcloc !1558
  %i.fr = load <2 x double>, ptr %2, align 16, !tbaa !111
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = load <2 x double>, ptr %4, align 16, !tbaa !111
  %i.fu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ft) #32, !srcloc !1558
  %i.fv = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fs) #31, !srcloc !1559
  %i.fw = fadd <2 x double> %i.fu, %i.fv
  %i.fx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fw) #32, !srcloc !1558
  %i.fy = bitcast <2 x double> %i.fx to <2 x i64>
  %i.fz = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #31, !srcloc !1559 ; 3 uses
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = xor <2 x i64> %i.fy, <i64 -9223372036854775808, i64 0>
  %i.gd = bitcast <2 x i64> %i.gc to <2 x double>
  %i.ge = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gd) #32, !srcloc !1558 ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gg = fmul <2 x double> %i.fz, %i.ge
  %i.gh = fmul <2 x double> %i.fz, %i.gf
  %i.gi = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gh, <2 x double> splat (double +inf))
  %i.gj = fmul <2 x double> %i.gb, %i.ge
  %i.gk = fmul <2 x double> %i.gb, %i.gf
  %i.gl = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gk, <2 x double> splat (double +inf))
  %i.gm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gg, <2 x double> %i.gi)
  %i.gn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gj, <2 x double> %i.gl)
  %i.go = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gm, <2 x double> %i.gn)
  %i.gp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.go) #32, !srcloc !1558
  %i.gq = load <2 x double>, ptr %3, align 16, !tbaa !111
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gs = load <2 x double>, ptr %5, align 16, !tbaa !111
  %i.gt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gs) #32, !srcloc !1558
  %i.gu = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gr) #31, !srcloc !1559
  %i.gv = fadd <2 x double> %i.gt, %i.gu
  %i.gw = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gv) #32, !srcloc !1558
  %i.gx = bitcast <2 x double> %i.gw to <2 x i64>
  %i.gy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #31, !srcloc !1559 ; 3 uses
  %i.gz = fneg <2 x double> %i.gy
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hb = xor <2 x i64> %i.gx, <i64 -9223372036854775808, i64 0>
  %i.hc = bitcast <2 x i64> %i.hb to <2 x double>
  %i.hd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hc) #32, !srcloc !1558 ; 3 uses
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hf = fmul <2 x double> %i.gy, %i.hd
  %i.hg = fmul <2 x double> %i.gy, %i.he
  %i.hh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hg, <2 x double> splat (double +inf))
  %i.hi = fmul <2 x double> %i.ha, %i.hd
  %i.hj = fmul <2 x double> %i.ha, %i.he
  %i.hk = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hj, <2 x double> splat (double +inf))
  %i.hl = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hf, <2 x double> %i.hh)
  %i.hm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hi, <2 x double> %i.hk)
  %i.hn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hl, <2 x double> %i.hm)
  %i.ho = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hn) #32, !srcloc !1558
  %i.hp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gp) #32, !srcloc !1558
  %i.hq = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ho) #31, !srcloc !1559
  %i.hr = fadd <2 x double> %i.hp, %i.hq
  %i.hs = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hr) #32, !srcloc !1558
  %i.ht = bitcast <2 x double> %i.hs to <2 x i64>
  %i.hu = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg) #31, !srcloc !1559 ; 3 uses
  %i.hv = fneg <2 x double> %i.hu
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hx = xor <2 x i64> %i.ht, <i64 -9223372036854775808, i64 0>
  %i.hy = bitcast <2 x i64> %i.hx to <2 x double>
  %i.hz = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hy) #32, !srcloc !1558 ; 3 uses
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ib = fmul <2 x double> %i.hu, %i.hz
  %i.ic = fmul <2 x double> %i.hu, %i.ia
  %i.id = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ic, <2 x double> splat (double +inf))
  %i.ie = fmul <2 x double> %i.hw, %i.hz
  %i.if = fmul <2 x double> %i.hw, %i.ia
  %i.ig = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.if, <2 x double> splat (double +inf))
  %i.ih = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ib, <2 x double> %i.id)
  %i.ii = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ie, <2 x double> %i.ig)
  %i.ij = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ih, <2 x double> %i.ii)
  %i.ik = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ij) #32, !srcloc !1558 ; 2 uses
  %i.il = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fq) #31, !srcloc !1559 ; 3 uses
  %i.im = fneg <2 x double> %i.il
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.io = xor <2 x i64> %i.ej, <i64 -9223372036854775808, i64 0>
  %i.ip = bitcast <2 x i64> %i.io to <2 x double>
  %i.iq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ip) #32, !srcloc !1558 ; 3 uses
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.is = fmul <2 x double> %i.il, %i.iq
  %i.it = fmul <2 x double> %i.il, %i.ir
  %i.iu = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.it, <2 x double> splat (double +inf))
  %i.iv = fmul <2 x double> %i.in, %i.iq
  %i.iw = fmul <2 x double> %i.in, %i.ir
  %i.ix = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iw, <2 x double> splat (double +inf))
  %i.iy = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.is, <2 x double> %i.iu)
  %i.iz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iv, <2 x double> %i.ix)
  %i.ja = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iy, <2 x double> %i.iz)
  %i.jb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ja) #32, !srcloc !1558 ; 2 uses
  %i.jc = extractelement <2 x double> %i.ik, i64 0
  %i.jd = fneg double %i.jc                       ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %i.jb, i64 1 ; 2 uses
  %i.je = fcmp olt double %.sroa.0.8.vec.extract.i, %i.jd
  %8 = extractelement <2 x double> %i.ik, i64 1   ; 2 uses
  br i1 %i.je, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.jf = extractelement <2 x double> %i.jb, i64 0
  %i.jg = fneg double %i.jf                       ; 2 uses
  %i.jh = fcmp olt double %8, %i.jg
  br i1 %i.jh, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ji = fcmp une double %8, %i.jg
  %i.jj = fcmp une double %.sroa.0.8.vec.extract.i, %i.jd
  %or.cond.not.i.i.i.i = or i1 %i.jj, %i.ji
  %i.jk = select i1 %or.cond.not.i.i.i.i, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.jk, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ]
  ret i64 %.sroa.5.0.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4CGAL25side_of_oriented_circleC2INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(84) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %7) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.CGAL::cpp_float", align 16  ; 15 uses
  %9 = alloca %"class.CGAL::cpp_float", align 16  ; 15 uses
  %10 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %11 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %12 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %13 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %14 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %15 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %16 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %17 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %18 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %19 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %20 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %21 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %22 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %23 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %24 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %25 = alloca %"class.CGAL::cpp_float", align 16 ; 13 uses
  %26 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %27 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  %28 = alloca %"class.CGAL::cpp_float", align 16 ; 15 uses
  %29 = alloca %"class.CGAL::cpp_float", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %8, ptr noundef nonnull align 16 dereferenceable(84) %2, ptr noundef nonnull align 16 dereferenceable(84) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %9, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %1)
          to label %bb.b unwind label %bb.bb

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %10, ptr noundef nonnull align 16 dereferenceable(84) %4, ptr noundef nonnull align 16 dereferenceable(84) %0)
          to label %bb.c unwind label %bb.bc

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %11, ptr noundef nonnull align 16 dereferenceable(84) %5, ptr noundef nonnull align 16 dereferenceable(84) %1)
          to label %bb.d unwind label %bb.bd

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %12, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %0)
          to label %bb.e unwind label %bb.be

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %13, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %1)
          to label %bb.f unwind label %bb.bf

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !1423, !noalias !1629
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !1423, !noalias !1629
  store i64 0, ptr %15, align 16, !tbaa !111, !alias.scope !1629
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i64 1, ptr %i.e, align 16, !tbaa !1418, !alias.scope !1629
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i8 0, ptr %i.f, align 8, !tbaa !1420, !alias.scope !1629
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 73 ; 4 uses
  store i8 1, ptr %i.g, align 1, !tbaa !1421, !alias.scope !1629
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 74 ; 4 uses
  store i8 0, ptr %i.h, align 2, !tbaa !1422, !alias.scope !1629
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %15, ptr noundef nonnull align 16 dereferenceable(84) %8, ptr noundef nonnull align 16 dereferenceable(84) %13)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load i8, ptr %i.g, align 1, !tbaa !1421, !range !309, !alias.scope !1629, !noundef !48
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load i8, ptr %i.h, align 2, !range !309, !alias.scope !1629
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i.i.i.i = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond.i.i.i.i, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.d, %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 80
  store i32 %i.n, ptr %i.o, align 16, !tbaa !1423, !alias.scope !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !1423, !noalias !1632
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.s = load i32, ptr %i.r, align 16, !tbaa !1423, !noalias !1632
  store i64 0, ptr %16, align 16, !tbaa !111, !alias.scope !1632
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 64
  store i64 1, ptr %i.t, align 16, !tbaa !1418, !alias.scope !1632
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i8 0, ptr %i.u, align 8, !tbaa !1420, !alias.scope !1632
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 73 ; 4 uses
  store i8 1, ptr %i.v, align 1, !tbaa !1421, !alias.scope !1632
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 74 ; 4 uses
  store i8 0, ptr %i.w, align 2, !tbaa !1422, !alias.scope !1632
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %16, ptr noundef nonnull align 16 dereferenceable(84) %9, ptr noundef nonnull align 16 dereferenceable(84) %12)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load i8, ptr %i.v, align 1, !tbaa !1421, !range !309, !alias.scope !1632, !noundef !48
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr %i.w, align 2, !range !309, !alias.scope !1632
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i.i.i63 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i.i63, label %.body65, label %.body65.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.s, %i.q
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i32 %i.ac, ptr %i.ad, align 16, !tbaa !1423, !alias.scope !1632
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %14, ptr noundef nonnull align 16 dereferenceable(84) %15, ptr noundef nonnull align 16 dereferenceable(84) %16)
          to label %bb.k unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %19, ptr noundef nonnull align 16 dereferenceable(84) %6, ptr noundef nonnull align 16 dereferenceable(84) %2)
          to label %bb.l unwind label %bb.bh

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.ae = load i32, ptr %i.r, align 16, !tbaa !1423, !noalias !1635
  %i.af = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.ag = load i32, ptr %i.af, align 16, !tbaa !1423, !noalias !1635
  store i64 0, ptr %18, align 16, !tbaa !111, !alias.scope !1635
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 1, ptr %i.ah, align 16, !tbaa !1418, !alias.scope !1635
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i8 0, ptr %i.ai, align 8, !tbaa !1420, !alias.scope !1635
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 73 ; 4 uses
  store i8 1, ptr %i.aj, align 1, !tbaa !1421, !alias.scope !1635
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 74 ; 4 uses
  store i8 0, ptr %i.ak, align 2, !tbaa !1422, !alias.scope !1635
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %18, ptr noundef nonnull align 16 dereferenceable(84) %12, ptr noundef nonnull align 16 dereferenceable(84) %19)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !1421, !range !309, !alias.scope !1635, !noundef !48
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = load i8, ptr %i.ak, align 2, !range !309, !alias.scope !1635
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i.i.i.i68 = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond.i.i.i.i68, label %.body70, label %.body70.sink.split

bb.n:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ag, %i.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i32 %i.aq, ptr %i.ar, align 16, !tbaa !1423, !alias.scope !1635
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZN4CGALmiERKNS_9cpp_floatES2_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::cpp_float") align 16 %21, ptr noundef nonnull align 16 dereferenceable(84) %7, ptr noundef nonnull align 16 dereferenceable(84) %3)
          to label %bb.o unwind label %bb.bi

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %i.as = load i32, ptr %i.c, align 16, !tbaa !1423, !noalias !1638
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.au = load i32, ptr %i.at, align 16, !tbaa !1423, !noalias !1638
  store i64 0, ptr %20, align 16, !tbaa !111, !alias.scope !1638
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 64
  store i64 1, ptr %i.av, align 16, !tbaa !1418, !alias.scope !1638
  %i.aw = getelementptr inbounds nuw i8, ptr %20, i64 72
  store i8 0, ptr %i.aw, align 8, !tbaa !1420, !alias.scope !1638
  %i.ax = getelementptr inbounds nuw i8, ptr %20, i64 73 ; 4 uses
  store i8 1, ptr %i.ax, align 1, !tbaa !1421, !alias.scope !1638
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 74 ; 4 uses
  store i8 0, ptr %i.ay, align 2, !tbaa !1422, !alias.scope !1638
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(84) %20, ptr noundef nonnull align 16 dereferenceable(84) %13, ptr noundef nonnull align 16 dereferenceable(84) %21)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !1421, !range !309, !alias.scope !1638, !noundef !48
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i8, ptr %i.ay, align 2, !range !309, !alias.scope !1638
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i.i.i73 = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond.i.i.i.i73, label %.body75, label %.body75.sink.split

end_hunk_1
