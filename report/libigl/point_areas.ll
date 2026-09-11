Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN4CGAL7Point_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_:bb.a

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i:           ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.l, ptr %i.ai, align 16, !tbaa !311
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 0, ptr %i.aj, align 16, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.03.160..sroa_idx116 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 160
  %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160. = load i64, ptr %.sroa.03.160..sroa_idx116, align 16, !tbaa !304 ; 2 uses
  store i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., ptr %i.ak, align 16, !tbaa !304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.03.168..sroa_idx118 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 168
  %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168. = load i8, ptr %.sroa.03.168..sroa_idx118, align 8, !tbaa !305
  store i8 %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168., ptr %i.al, align 8, !tbaa !305
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 169
  %.sroa.03.169..sroa_idx120 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 169
  %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. = load i8, ptr %.sroa.03.169..sroa_idx120, align 1, !tbaa !306 ; 2 uses
  store i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169., ptr %i.am, align 1, !tbaa !306
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 170
  %.sroa.03.170..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 170
  %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170. = load i8, ptr %.sroa.03.170..sroa_idx122, align 2, !tbaa !307
  store i8 %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170., ptr %i.an, align 2, !tbaa !307
  %i.ao = trunc nuw i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. to i1
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.96..sroa_idx49, i64 16, i1 false), !tbaa.struct !328
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

bb.m:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  %i.ap = shl i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., 3
  %.sroa.03.96..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.aj, ptr nonnull align 16 dereferenceable(84) %.sroa.03.96..sroa_idx113, i64 %i.ap, i1 false)
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.x, ptr %i.aq, align 16, !tbaa !311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_edges_beginEv(ptr dead_on_unwind noalias writable sret(%"struct.CGAL::Filter_iterator.1986") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141, !noalias !1573 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !alias.scope !1572
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1572
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1572
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1572
  store ptr %i.a, ptr %0, align 8, !alias.scope !1572
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !1572
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !1572
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !1572
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !1575, !alias.scope !1576
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !141, !noalias !1577 ; 9 uses
  %i.k = icmp eq i32 %i.b, 1                      ; 3 uses
  %spec.store.select.i.i.i = select i1 %i.k, i32 2, i32 0 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !267, !noalias !1578
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !1578 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !144, !noalias !1578
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i.backedge
  %i.x = phi ptr [ %.be137, %.preheader.i.i.i.i.i.backedge ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !144, !noalias !1578
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.be137 = phi ptr [ %i.af, %bb.f ], [ %i.y, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !6

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader, %bb.n, %.split.us.i.i.i.us.us, %.split.us.i.i.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.c, %bb.e, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ %i.r, %bb.e ], [ %i.y, %.preheader.i.i.i.i.i ], [ %i.y, %.preheader.i.i.i.i.i ] ; 5 uses
  br i1 %i.k, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ag, %i.j
  br i1 %.not57.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.g, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i
  %.sroa.2.0 = phi ptr [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.sroa.74.0 = phi i32 [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %i.ax, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = zext nneg i32 %.sroa.74.0 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !140, !noalias !1578
  %i.al = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i
  %i.am = icmp eq i32 %.sroa.74.0, 2
  br i1 %i.am, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader.backedge
  %i.an = phi ptr [ %.be134, %.preheader.backedge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !144, !noalias !1578
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i
    i32 1, label %bb.i
    i32 2, label %.preheader.backedge
  ]

bb.i:                                             ; preds = %.preheader
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.preheader
  %.be134 = phi ptr [ %i.av, %bb.i ], [ %i.ao, %.preheader ]
  br label %.preheader, !llvm.loop !6

bb.j:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %.sroa.74.0, 1
  br label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.j
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.sroa.74.1 = phi i32 [ %i.aw, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ax, %i.j
  br i1 %.not5.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i, !llvm.loop !1567

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i, %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i, %bb.g
  %.sroa.2.2 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i ], [ %.sroa.2.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i ] ; 5 uses
  %.sroa.74.2 = phi i32 [ 0, %bb.g ], [ 2, %_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_E5beginEv.exit.i.i.i ], [ %.sroa.74.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  store ptr %i.a, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.store.select.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.ay, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %.sroa.2.2, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %.sroa.74.2, ptr %.sroa.615.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = ptrtoint ptr %1 to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !1575, !alias.scope !1579
  %i.bb = icmp eq ptr %.sroa.2.2, %i.j
  %.not.i.i23 = icmp eq i32 %.sroa.74.2, %spec.store.select.i.i.i
  %.not.i.i.us.fr = freeze i1 %.not.i.i23         ; 2 uses
  %or.cond.i.i24 = and i1 %i.bb, %.not.i.i.us.fr
  br i1 %or.cond.i.i24, label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_edges_beginEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !139, !noalias !1579 ; 6 uses
  br i1 %i.k, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph
  %i.bd = zext nneg i32 %.sroa.74.2 to i64        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !60, !noalias !1579
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.bd ; 2 uses
  br i1 %.not.i.i.us.fr, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us.loopexit: ; preds = %.split.us.i.i.i.us.us, %.split.us.i.i.i.us.us
  br label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us.loopexit
  %i.bi = phi ptr [ %i.bq, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us.loopexit ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us ] ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us = load ptr, ptr %i.bj, align 8, !tbaa !139, !noalias !1579
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !60, !noalias !1579
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us = load ptr, ptr %i.bn, align 8, !tbaa !139, !noalias !1579
  %i.bo = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge

.split.us.i.i.i.us.us.preheader:                  ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us
  br label %.split.us.i.i.i.us.us

.split.us.i.i.i.us.us:                            ; preds = %.split.us.i.i.i.us.us.backedge, %.split.us.i.i.i.us.us.preheader
  %i.bp = phi ptr [ %i.bi, %.split.us.i.i.i.us.us.preheader ], [ %.be118, %.split.us.i.i.i.us.us.backedge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  store ptr %i.bq, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !144, !noalias !1579
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
  switch i32 %i.bv, label %default.unreachable [
    i32 0, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us.loopexit
    i32 3, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us.us.loopexit
    i32 1, label %bb.k
    i32 2, label %.split.us.i.i.i.us.us.backedge
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.us.us
  %i.bw = and i64 %i.bt, -4
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  br label %.split.us.i.i.i.us.us.backedge

.split.us.i.i.i.us.us.backedge:                   ; preds = %bb.k, %.split.us.i.i.i.us.us
  %.be118 = phi ptr [ %i.bq, %.split.us.i.i.i.us.us ], [ %i.bx, %bb.k ]
  br label %.split.us.i.i.i.us.us, !llvm.loop !6

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us
  %i.by = phi ptr [ %i.cg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph.split.us ] ; 5 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us = load ptr, ptr %i.bz, align 8, !tbaa !139, !noalias !1579
  %i.ca = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ca, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us
  %i.cb = load i32, ptr %i.bh, align 4, !tbaa !60, !noalias !1579
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us = load ptr, ptr %i.cd, align 8, !tbaa !139, !noalias !1579
  %i.ce = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ce, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge

.split.us.i.i.i.us.preheader:                     ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us
  br label %.split.us.i.i.i.us

.split.us.i.i.i.us:                               ; preds = %.split.us.i.i.i.us.backedge, %.split.us.i.i.i.us.preheader
  %i.cf = phi ptr [ %i.by, %.split.us.i.i.i.us.preheader ], [ %.be, %.split.us.i.i.i.us.backedge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 4 uses
  store ptr %i.cg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !144, !noalias !1579
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 3
  switch i32 %i.cl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us
    i32 1, label %bb.l
    i32 2, label %.split.us.i.i.i.us.backedge
  ]

bb.l:                                             ; preds = %.split.us.i.i.i.us
  %i.cm = and i64 %i.cj, -4
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  store ptr %i.cn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  br label %.split.us.i.i.i.us.backedge

.split.us.i.i.i.us.backedge:                      ; preds = %bb.l, %.split.us.i.i.i.us
  %.be = phi ptr [ %i.cg, %.split.us.i.i.i.us ], [ %i.cn, %bb.l ]
  br label %.split.us.i.i.i.us, !llvm.loop !6

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us: ; preds = %.split.us.i.i.i.us, %.split.us.i.i.i.us
  %i.co = icmp eq ptr %i.cg, %i.j
  br i1 %i.co, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.us, !llvm.loop !1570

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i25 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.74.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph ] ; 2 uses
  %i.cp = phi ptr [ %i.dw, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cq = zext nneg i32 %.pre7.i4.i25 to i64      ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !60, !noalias !1579
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !139, !noalias !1579
  %i.cv = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cq
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !60, !noalias !1579
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cy
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !139, !noalias !1579
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
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !329, !alias.scope !1579
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.df = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be125, %.backedge ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 7 uses
  store ptr %i.dg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !144, !noalias !1579
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
  store ptr %i.dn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !144, !alias.scope !1579
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be125 = phi ptr [ %i.dg, %bb.n ], [ %i.dn, %bb.o ]
  br label %bb.n, !llvm.loop !6

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  %.not3.i.i.i = icmp eq ptr %i.dg, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.do = add nuw nsw i32 %i.dd, 1                ; 3 uses
  store i32 %i.do, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !329, !alias.scope !1579
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
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.du, align 8, !tbaa !140, !noalias !1579
  %i.dv = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dq
  br i1 %i.dv, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !1571

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1
  %i.dw = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dx, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEneERKSC_.exit.thread.i.i, !llvm.loop !1570

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi30.in = phi ptr [ %i.by, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit.us ], [ %i.cp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS3_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi30 = ptrtoint ptr %.us-phi30.in to i64
  store i64 %.us-phi30, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !140, !alias.scope !1579
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEENS_15Triangulation_2IS4_SC_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESI_RKSJ_SI_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %i.bi, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us.us ], [ %i.by, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i.us ], [ %i.cp, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISB_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !140, !alias.scope !1579
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
  %i.k = load <2 x double>, ptr %1, align 8, !tbaa !44, !noalias !1586 ; 3 uses
  %i.l = fneg <2 x double> %i.k                   ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 2, i32 0>
  %i.n = shufflevector <2 x double> %i.l, <2 x double> %i.k, <2 x i32> <i32 3, i32 1>
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !44, !noalias !1587 ; 3 uses
  %i.p = fneg <2 x double> %i.o                   ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = load <2 x double>, ptr %3, align 8, !tbaa !44, !noalias !1588 ; 3 uses
  %i.t = fneg <2 x double> %i.s                   ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.t, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #32, !srcloc !330
  %i.x = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #31, !srcloc !331 ; 2 uses
  %i.y = fadd <2 x double> %i.w, %i.x
  %i.z = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #32, !srcloc !330
  %i.aa = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.r) #32, !srcloc !330
  %i.ab = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.n) #31, !srcloc !331 ; 2 uses
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  %i.ad = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #32, !srcloc !330
  %i.ae = bitcast <2 x double> %i.ad to <2 x i64>
  %i.af = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #32, !srcloc !330
  %i.ag = fadd <2 x double> %i.x, %i.af
  %i.ah = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #32, !srcloc !330
  %i.ai = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #32, !srcloc !330
  %i.aj = fadd <2 x double> %i.ab, %i.ai
  %i.ak = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aj) #32, !srcloc !330
  %i.al = bitcast <2 x double> %i.ak to <2 x i64>
  %i.am = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #31, !srcloc !331 ; 3 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.aq = bitcast <2 x i64> %i.ap to <2 x double>
  %i.ar = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #32, !srcloc !330 ; 3 uses
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
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #32, !srcloc !330 ; 2 uses
  %i.bd = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #31, !srcloc !331 ; 3 uses
  %i.be = fneg <2 x double> %i.bd
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bg = xor <2 x i64> %i.ae, <i64 -9223372036854775808, i64 0>
  %i.bh = bitcast <2 x i64> %i.bg to <2 x double>
  %i.bi = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bh) #32, !srcloc !330 ; 3 uses
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
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #32, !srcloc !330 ; 2 uses
  %.sroa.05.0.vec.extract.i.i.i = extractelement <2 x double> %i.bc, i64 0
  %i.bu = fneg double %.sroa.05.0.vec.extract.i.i.i ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bv = fcmp olt double %.sroa.0.8.vec.extract.i.i.i, %i.bu
  br i1 %i.bv, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.bt, i64 0
  %i.bw = fneg double %.sroa.0.0.vec.extract.i.i.i ; 2 uses
  %.sroa.05.8.vec.extract.i.i.i = extractelement <2 x double> %i.bc, i64 1 ; 2 uses
  %i.bx = fcmp olt double %.sroa.05.8.vec.extract.i.i.i, %i.bw
  br i1 %i.bx, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = fcmp une double %.sroa.05.8.vec.extract.i.i.i, %i.bw
  %i.bz = fcmp une double %.sroa.0.8.vec.extract.i.i.i, %i.bu
  %or.cond.not.i.i.i.i.i.i = or i1 %i.bz, %i.by
  %i.ca = select i1 %or.cond.not.i.i.i.i.i.i, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.not = icmp eq i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cb = load i32, ptr %i.a, align 4
  %i.cc = and i32 %i.cb, -24577
  %i.cd = or disjoint i32 %i.cc, %i.g
  store i32 %i.cd, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ce = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_2IST_EES16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.3 = phi i32 [ %i.ce, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
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
end_hunk_0
