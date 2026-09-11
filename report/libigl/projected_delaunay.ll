Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/projected_delaunay?download=true
inline.NumInlined: 12286
inline.NumDeleted: 3794
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE17collinear_betweenERKNS_7Point_2IS1_EESI_SI_:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !103, !noalias !1296
  %i.ek = load double, ptr %i.eh, align 16, !tbaa !103, !noalias !1296
  %i.el = fneg double %i.ek
  %i.em = fcmp oeq double %i.ej, %i.el
  br i1 %i.em, label %bb.w, label %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit9.i.i36

_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit9.i.i36: ; preds = %bb.v, %bb.u
  %i.en = call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors11Compare_x_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39

bb.w:                                             ; preds = %bb.v
  %i.eo = fcmp ogt double %i.dq, %i.ee
  %i.ep = fcmp olt double %i.dq, %i.ee
  %..i.i.i.i.i37 = zext i1 %i.ep to i32
  %.0.i.i.i.i.i38 = select i1 %i.eo, i32 -1, i32 %..i.i.i.i.i37
  br label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39: ; preds = %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i34, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit9.i.i36, %bb.w
  %.1.i.i35 = phi i32 [ %i.dz, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit.i.i34 ], [ %.0.i.i.i.i.i38, %bb.w ], [ %i.en, %_ZNK4CGAL14Epic_converterINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Point_2IS4_EE.exit9.i.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.x

bb.x:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_yERKNS_7Point_2IS1_EESI_.exit27
  %.016 = phi i32 [ %.1.i.i18, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_yERKNS_7Point_2IS1_EESI_.exit27 ], [ %.1.i.i29, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39 ] ; 2 uses
  %.0 = phi i32 [ %.1.i.i23, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_yERKNS_7Point_2IS1_EESI_.exit27 ], [ %.1.i.i35, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9compare_xERKNS_7Point_2IS1_EESI_.exit39 ] ; 2 uses
  %i.eq = and i32 %.0, %.016
  %or.cond = icmp eq i32 %i.eq, -1
  br i1 %or.cond, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = icmp eq i32 %.016, 1
  %i.es = icmp eq i32 %.0, 1
  %i.et = and i1 %i.er, %i.es
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.eu = phi i1 [ true, %bb.x ], [ %i.et, %bb.y ]
  ret i1 %i.eu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_edges_beginEv(ptr dead_on_unwind noalias writable sret(%"struct.CGAL::Filter_iterator.402") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !257, !noalias !1319 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !alias.scope !1318
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !1318
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1318
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1318
  store ptr %i.a, ptr %0, align 8, !alias.scope !1318
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !1318
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !1318
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !1318
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !1320, !alias.scope !1321
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !257, !noalias !1322 ; 9 uses
  %i.k = icmp eq i32 %i.b, 1                      ; 3 uses
  %spec.store.select.i.i.i = select i1 %i.k, i32 2, i32 0 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !280, !noalias !1323
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !281, !noalias !1323 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !256, !noalias !1323
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i.backedge
  %i.x = phi ptr [ %.be137, %.preheader.i.i.i.i.i.backedge ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !256, !noalias !1323
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.be137 = phi ptr [ %i.af, %bb.f ], [ %i.y, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !18

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader, %bb.n, %.split.us.i.i.i.us.us, %.split.us.i.i.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.c, %bb.e, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ %i.r, %bb.e ], [ %i.y, %.preheader.i.i.i.i.i ], [ %i.y, %.preheader.i.i.i.i.i ] ; 5 uses
  br i1 %i.k, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ag, %i.j
  br i1 %.not57.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.g, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
  %.sroa.2.0 = phi ptr [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.sroa.74.0 = phi i32 [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %i.ax, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = zext nneg i32 %.sroa.74.0 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !120, !noalias !1323
  %i.al = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i
  %i.am = icmp eq i32 %.sroa.74.0, 2
  br i1 %i.am, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader.backedge
  %i.an = phi ptr [ %.be134, %.preheader.backedge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !256, !noalias !1323
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 1, label %bb.i
    i32 2, label %.preheader.backedge
  ]

bb.i:                                             ; preds = %.preheader
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.preheader
  %.be134 = phi ptr [ %i.av, %bb.i ], [ %i.ao, %.preheader ]
  br label %.preheader, !llvm.loop !18

bb.j:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %.sroa.74.0, 1
  br label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.j
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.sroa.74.1 = phi i32 [ %i.aw, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ax, %i.j
  br i1 %.not5.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, !llvm.loop !1313

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, %bb.g
  %.sroa.2.2 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.2.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 5 uses
  %.sroa.74.2 = phi i32 [ 0, %bb.g ], [ 2, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpeckENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.74.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
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
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !1320, !alias.scope !1324
  %i.bb = icmp eq ptr %.sroa.2.2, %i.j
  %.not.i.i23 = icmp eq i32 %.sroa.74.2, %spec.store.select.i.i.i
  %.not.i.i.us.fr = freeze i1 %.not.i.i23         ; 2 uses
  %or.cond.i.i24 = and i1 %i.bb, %.not.i.i.us.fr
  br i1 %or.cond.i.i24, label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !126, !noalias !1324 ; 6 uses
  br i1 %i.k, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph
  %i.bd = zext nneg i32 %.sroa.74.2 to i64        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !98, !noalias !1324
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.bd ; 2 uses
  br i1 %.not.i.i.us.fr, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit: ; preds = %.split.us.i.i.i.us.us, %.split.us.i.i.i.us.us
  br label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
  %i.bi = phi ptr [ %i.bq, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us = load ptr, ptr %i.bj, align 8, !tbaa !126, !noalias !1324
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !98, !noalias !1324
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us = load ptr, ptr %i.bn, align 8, !tbaa !126, !noalias !1324
  %i.bo = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.us.preheader:                  ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  br label %.split.us.i.i.i.us.us

.split.us.i.i.i.us.us:                            ; preds = %.split.us.i.i.i.us.us.backedge, %.split.us.i.i.i.us.us.preheader
  %i.bp = phi ptr [ %i.bi, %.split.us.i.i.i.us.us.preheader ], [ %.be118, %.split.us.i.i.i.us.us.backedge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  store ptr %i.bq, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !256, !noalias !1324
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
  switch i32 %i.bv, label %default.unreachable [
    i32 0, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
    i32 3, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
    i32 1, label %bb.k
    i32 2, label %.split.us.i.i.i.us.us.backedge
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.us.us
  %i.bw = and i64 %i.bt, -4
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  br label %.split.us.i.i.i.us.us.backedge

.split.us.i.i.i.us.us.backedge:                   ; preds = %bb.k, %.split.us.i.i.i.us.us
  %.be118 = phi ptr [ %i.bq, %.split.us.i.i.i.us.us ], [ %i.bx, %bb.k ]
  br label %.split.us.i.i.i.us.us, !llvm.loop !18

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %i.by = phi ptr [ %i.cg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 5 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us = load ptr, ptr %i.bz, align 8, !tbaa !126, !noalias !1324
  %i.ca = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ca, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  %i.cb = load i32, ptr %i.bh, align 4, !tbaa !98, !noalias !1324
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us = load ptr, ptr %i.cd, align 8, !tbaa !126, !noalias !1324
  %i.ce = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ce, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.preheader:                     ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  br label %.split.us.i.i.i.us

.split.us.i.i.i.us:                               ; preds = %.split.us.i.i.i.us.backedge, %.split.us.i.i.i.us.preheader
  %i.cf = phi ptr [ %i.by, %.split.us.i.i.i.us.preheader ], [ %.be, %.split.us.i.i.i.us.backedge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 4 uses
  store ptr %i.cg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !256, !noalias !1324
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 3
  switch i32 %i.cl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 1, label %bb.l
    i32 2, label %.split.us.i.i.i.us.backedge
  ]

bb.l:                                             ; preds = %.split.us.i.i.i.us
  %i.cm = and i64 %i.cj, -4
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  store ptr %i.cn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  br label %.split.us.i.i.i.us.backedge

.split.us.i.i.i.us.backedge:                      ; preds = %bb.l, %.split.us.i.i.i.us
  %.be = phi ptr [ %i.cg, %.split.us.i.i.i.us ], [ %i.cn, %bb.l ]
  br label %.split.us.i.i.i.us, !llvm.loop !18

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us: ; preds = %.split.us.i.i.i.us, %.split.us.i.i.i.us
  %i.co = icmp eq ptr %i.cg, %i.j
  br i1 %i.co, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, !llvm.loop !1316

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i25 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.74.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 2 uses
  %i.cp = phi ptr [ %i.dw, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cq = zext nneg i32 %.pre7.i4.i25 to i64      ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !98, !noalias !1324
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !126, !noalias !1324
  %i.cv = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cq
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !98, !noalias !1324
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cy
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !126, !noalias !1324
  %i.da = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.da, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.i.i.i.preheader:                           ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %i.db = phi ptr [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %.promoted.i.i1.i.i.i.i = phi ptr [ %.promoted.i.i1.i.i8.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dc = phi ptr [ %i.dq, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dd = phi i32 [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.pre7.i4.i25, %.split.i.i.i.preheader ] ; 2 uses
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.m, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i

bb.m:                                             ; preds = %.split.i.i.i
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !282, !alias.scope !1324
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.df = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be125, %.backedge ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 7 uses
  store ptr %i.dg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !256, !noalias !1324
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 1, label %bb.o
    i32 2, label %.backedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.dm = and i64 %i.dj, -4
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  store ptr %i.dn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !256, !alias.scope !1324
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be125 = phi ptr [ %i.dg, %bb.n ], [ %i.dn, %bb.o ]
  br label %bb.n, !llvm.loop !18

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  %.not3.i.i.i = icmp eq ptr %i.dg, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.do = add nuw nsw i32 %i.dd, 1                ; 3 uses
  store i32 %i.do, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !282, !alias.scope !1324
  %.not2.i.i.i = icmp eq ptr %i.dc, %i.j
  br i1 %.not2.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
  %i.dp = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.promoted.i.i1.i.i8.i.i = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.promoted.i.i1.i.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ]
  %i.dq = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dr = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.du, align 8, !tbaa !120, !noalias !1324
  %i.dv = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dq
  br i1 %i.dv, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !1317

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %i.dw = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dx, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i, !llvm.loop !1316

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi30.in = phi ptr [ %i.by, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %i.cp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi30 = ptrtoint ptr %.us-phi30.in to i64
  store i64 %.us-phi30, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !120, !alias.scope !1324
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %i.bi, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us ], [ %i.by, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us ], [ %i.cp, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !120, !alias.scope !1324
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpeckENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_2ISP_EES18_S18_EENS_4SignERKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #28 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.341", align 8    ; 6 uses
  %5 = alloca %"struct.std::pair.341", align 8    ; 6 uses
  %6 = alloca %"struct.std::pair.341", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !102    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !103, !noalias !1337
  %i.e = load double, ptr %i.b, align 16, !tbaa !103, !noalias !1337 ; 3 uses
  %i.f = fneg double %i.e                         ; 2 uses
  %i.g = fcmp oeq double %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !103, !noalias !1337
  %i.k = load double, ptr %i.h, align 16, !tbaa !103, !noalias !1337 ; 3 uses
  %i.l = fneg double %i.k                         ; 2 uses
  %i.m = fcmp oeq double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_SV_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  store double %i.f, ptr %4, align 8, !alias.scope !1337
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1337
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.o, align 8, !tbaa !289, !alias.scope !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = load ptr, ptr %2, align 8, !tbaa !102    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !103, !noalias !1339
  %i.t = load double, ptr %i.q, align 16, !tbaa !103, !noalias !1339 ; 2 uses
  %i.u = fneg double %i.t                         ; 2 uses
  %i.v = fcmp oeq double %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !103, !noalias !1339
  %i.z = load double, ptr %i.w, align 16, !tbaa !103, !noalias !1339 ; 2 uses
  %i.aa = fneg double %i.z                        ; 2 uses
  %i.ab = fcmp oeq double %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = tail call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_SV_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  store double %i.u, ptr %5, align 8, !alias.scope !1339
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.aa, ptr %.sroa.4.0..sroa_idx.i14, align 8, !alias.scope !1339
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.ad, align 8, !tbaa !289, !alias.scope !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ae = load ptr, ptr %3, align 8, !tbaa !102   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !103, !noalias !1341
  %i.ai = load double, ptr %i.af, align 16, !tbaa !103, !noalias !1341 ; 2 uses
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.an = load double, ptr %i.am, align 8, !tbaa !103, !noalias !1341
  %i.ao = load double, ptr %i.al, align 16, !tbaa !103, !noalias !1341 ; 2 uses
  %i.ap = fneg double %i.ao                       ; 2 uses
  %i.aq = fcmp oeq double %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = tail call noundef i32 @_ZNK4CGAL18Filtered_predicateINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_15Exact_converterINS_5EpeckESH_EENS_16Approx_converterISO_SL_EELb1EEclIJNS_7Point_2ISO_EESV_SV_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit

bb.j:                                             ; preds = %bb.h
  store double %i.aj, ptr %6, align 8, !alias.scope !1341
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.ap, ptr %.sroa.4.0..sroa_idx.i17, align 8, !alias.scope !1341
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.as, align 8, !tbaa !289, !alias.scope !1342
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = fsub double %i.e, %i.t                  ; 2 uses
  %i.av = fsub double %i.k, %i.z                  ; 2 uses
  %i.aw = fsub double %i.e, %i.ai                 ; 2 uses
  %i.ax = fsub double %i.k, %i.ao                 ; 2 uses
  %i.ay = fneg double %i.av
  %i.az = fmul double %i.aw, %i.ay
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.ax, double %i.az) ; 2 uses
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.au) ; 2 uses
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.bd = tail call noundef double @llvm.fabs.f64(double %i.aw) ; 2 uses
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.bf = fcmp olt double %i.bb, %i.bd
  %.054.i = select i1 %i.bf, double %i.bd, double %i.bb ; 3 uses
  %i.bg = fcmp olt double %i.bc, %i.be
  %.0.i = select i1 %i.bg, double %i.be, double %i.bc ; 3 uses
  %i.bh = fcmp ogt double %.054.i, %.0.i          ; 2 uses
  %.155.i = select i1 %i.bh, double %.0.i, double %.054.i ; 3 uses
  %.1.i = select i1 %i.bh, double %.054.i, double %.0.i ; 2 uses
  %i.bi = fcmp olt double %.155.i, 1.000000e-146
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = fcmp oeq double %.155.i, 0.000000e+00
  br i1 %i.bj, label %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bk = fcmp olt double %.1.i, f0x5FB317E5EF3AB327
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = fmul double %.155.i, f0x3CD0028010000004
  %i.bm = fmul double %.1.i, %i.bl                ; 2 uses
  %i.bn = fcmp ule double %i.ba, %i.bm            ; 2 uses
  %i.bo = fneg double %i.bm
  %i.bp = fcmp uge double %i.ba, %i.bo
  %.021.i = select i1 %i.bn, i32 -1, i32 1
  %cond1.i = and i1 %i.bn, %i.bp
  br i1 %cond1.i, label %bb.n, label %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bq = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_2INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_2IST_EES16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit

_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.0 = phi i32 [ %i.ar, %bb.i ], [ %i.bq, %bb.n ], [ 0, %bb.k ], [ %.021.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.o

bb.o:                                             ; preds = %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit, %bb.f
  %.1 = phi i32 [ %.0, %_ZNK4CGAL8internal25Static_filters_predicates13Orientation_2INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_2IS6_EESE_SE_.exit ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.2 = phi i32 [ %.1, %bb.o ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.2
}
end_hunk_0
begin_hunk_1_@_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15march_locate_2DENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEERKNS_7Point_2IS1_EERNSE_11Locate_typeERi:bb.a
    i32 2, label %bb.co
  ]

bb.cm:                                            ; preds = %.loopexit
  store i32 2, ptr %3, align 4, !tbaa !153
  br label %.thread.sink.split

bb.cn:                                            ; preds = %.loopexit
  store i32 1, ptr %3, align 4, !tbaa !153
  %not. = xor i1 %i.rp, true
  %i.rv = zext i1 %not. to i32
  %i.rw = select i1 %i.rn, i32 2, i32 %i.rv
  br label %.thread.sink.split

bb.co:                                            ; preds = %.loopexit
  store i32 0, ptr %3, align 4, !tbaa !153
  %i.rx = select i1 %i.rn, i32 %i.rq, i32 2
  br label %.thread.sink.split

bb.cp:                                            ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit186, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit168, %bb.bw, %bb.bp, %bb.bj, %bb.as, %bb.ag, %bb.aa, %bb.s, %bb.m, %bb.g
  %.sroa.0266.1.in = phi ptr [ %i.ba, %bb.g ], [ %i.cf, %bb.m ], [ %i.dj, %bb.s ], [ %i.fw, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit186 ], [ %i.lr, %bb.bj ], [ %i.mv, %bb.bp ], [ %i.oc, %bb.bw ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit195 ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit233 ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit242 ], [ %i.er, %bb.aa ], [ %i.fv, %bb.ag ], [ %i.dl, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit168 ], [ %i.if, %bb.as ], [ %i.mw, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11orientationERKNS_7Point_2IS1_EESI_SI_.exit251 ]
  %.sroa.0266.1 = load ptr, ptr %.sroa.0266.1.in, align 8, !tbaa !150 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !155 ; 4 uses
  %i.ry = load ptr, ptr %.sroa.0266.1, align 8, !tbaa !173 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %.sroa.0.0.copyload.i.i ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0266.1, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8            ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %.sroa.0.0.copyload.i.i
  %or.cond.i.i = select i1 %i.rz, i1 true, i1 %i.sc
  br i1 %or.cond.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit

.thread.sink.split:                               ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread, %bb.co, %bb.cn, %bb.cm
  %.sink = phi i32 [ 4, %bb.cm ], [ %i.rw, %bb.cn ], [ %i.rx, %bb.co ], [ %..i404, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %spec.select, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  %.sroa.0266.0356.ph = phi ptr [ %.sroa.0266.0363, %bb.cm ], [ %.sroa.0266.0363, %bb.cn ], [ %.sroa.0266.0363, %bb.co ], [ %.sroa.0266.0363, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread.thread ], [ %.sroa.0266.0.lcssa358, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE11is_infiniteENS_8internal11CC_iteratorINS_17Compact_containerINS7_IS1_NS8_IS1_NS9_ISD_EEEEEENS_7DefaultESL_SL_EELb0EEE.exit.thread ]
  store i32 %.sink, ptr %4, align 4, !tbaa !98
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit
  %.sroa.0266.0356 = phi ptr [ %.sroa.0266.0363, %.loopexit ], [ %.sroa.0266.0356.ph, %.thread.sink.split ]
  ret ptr %.sroa.0266.0356
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE18finite_edges_beginEv(ptr dead_on_unwind noalias writable sret(%"struct.CGAL::Filter_iterator.586") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !450, !noalias !2251 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.f, align 8, !alias.scope !2250
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !2250
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2250
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2250
  store ptr %i.a, ptr %0, align 8, !alias.scope !2250
  %.sroa.54.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx5.i, align 8, !alias.scope !2250
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !2250
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx9.i, align 8, !alias.scope !2250
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !2252, !alias.scope !2253
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !450, !noalias !2254 ; 9 uses
  %i.k = icmp eq i32 %i.b, 1                      ; 3 uses
  %spec.store.select.i.i.i = select i1 %i.k, i32 2, i32 0 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !456, !noalias !2255
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !457, !noalias !2255 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !449, !noalias !2255
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 3
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.preheader.i.i.i.i.i, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.e, %.preheader.i.i.i.i.i.backedge
  %i.x = phi ptr [ %.be137, %.preheader.i.i.i.i.i.backedge ], [ %i.r, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !449, !noalias !2255
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  switch i32 %i.ad, label %.preheader.i.i.i.i.i.unreachabledefault [
    i32 0, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 3, label %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
    i32 1, label %bb.f
    i32 2, label %.preheader.i.i.i.i.i.backedge
  ]

bb.f:                                             ; preds = %.preheader.i.i.i.i.i
  %i.ae = and i64 %i.ab, -4
  %i.af = inttoptr i64 %i.ae to ptr
  br label %.preheader.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.backedge:                    ; preds = %bb.f, %.preheader.i.i.i.i.i
  %.be137 = phi ptr [ %i.af, %bb.f ], [ %i.y, %.preheader.i.i.i.i.i ]
  br label %.preheader.i.i.i.i.i, !llvm.loop !59

.preheader.i.i.i.i.i.unreachabledefault:          ; preds = %.preheader.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader, %bb.n, %.split.us.i.i.i.us.us, %.split.us.i.i.i.us
  unreachable

_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.c, %bb.e, %bb.d
  %i.ag = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ %i.r, %bb.e ], [ %i.y, %.preheader.i.i.i.i.i ], [ %i.y, %.preheader.i.i.i.i.i ] ; 5 uses
  br i1 %i.k, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i
  %.not57.i.i.i = icmp eq ptr %i.ag, %i.j
  br i1 %.not57.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i: ; preds = %bb.g, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
  %.sroa.2.0 = phi ptr [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.sroa.74.0 = phi i32 [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ 0, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %i.ax, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ], [ %i.ag, %bb.g ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = zext nneg i32 %.sroa.74.0 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !150, !noalias !2255
  %i.al = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.ah
  br i1 %i.al, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i
  %i.am = icmp eq i32 %.sroa.74.0, 2
  br i1 %i.am, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h, %.preheader.backedge
  %i.an = phi ptr [ %.be134, %.preheader.backedge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !449, !noalias !2255
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i
    i32 1, label %bb.i
    i32 2, label %.preheader.backedge
  ]

bb.i:                                             ; preds = %.preheader
  %i.au = and i64 %i.ar, -4
  %i.av = inttoptr i64 %i.au to ptr
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.preheader
  %.be134 = phi ptr [ %i.av, %bb.i ], [ %i.ao, %.preheader ]
  br label %.preheader, !llvm.loop !59

bb.j:                                             ; preds = %bb.h
  %i.aw = add nuw nsw i32 %.sroa.74.0, 1
  br label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i: ; preds = %.preheader, %.preheader, %bb.j
  %.sroa.2.1 = phi ptr [ %.sroa.2.0, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.sroa.74.1 = phi i32 [ %i.aw, %bb.j ], [ 0, %.preheader ], [ 0, %.preheader ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %i.ao, %.preheader ], [ %i.ao, %.preheader ] ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ax, %i.j
  br i1 %.not5.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, !llvm.loop !2245

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i, %bb.g
  %.sroa.2.2 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.2.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.2.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 5 uses
  %.sroa.74.2 = phi i32 [ 0, %bb.g ], [ 2, %_ZN4CGAL17Compact_containerINS_37Constrained_triangulation_face_base_2INS_5EpickENS_25Triangulation_face_base_2IS2_NS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEENS1_IS2_NS3_IS2_NS4_IvEEEEEEEEEEEEEENS_7DefaultESH_SH_E5beginEv.exit.i.i.i ], [ %.sroa.74.0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i ], [ %.sroa.74.1, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
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
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !2252, !alias.scope !2256
  %i.bb = icmp eq ptr %.sroa.2.2, %i.j
  %.not.i.i23 = icmp eq i32 %.sroa.74.2, %spec.store.select.i.i.i
  %.not.i.i.us.fr = freeze i1 %.not.i.i23         ; 2 uses
  %or.cond.i.i24 = and i1 %i.bb, %.not.i.i.us.fr
  br i1 %or.cond.i.i24, label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !155, !noalias !2256 ; 6 uses
  br i1 %i.k, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph
  %i.bd = zext nneg i32 %.sroa.74.2 to i64        ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !98, !noalias !2256
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.bd ; 2 uses
  br i1 %.not.i.i.us.fr, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit: ; preds = %.split.us.i.i.i.us.us, %.split.us.i.i.i.us.us
  br label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
  %i.bi = phi ptr [ %i.bq, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us = load ptr, ptr %i.bj, align 8, !tbaa !155, !noalias !2256
  %i.bk = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bk, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !98, !noalias !2256
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bm
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us = load ptr, ptr %i.bn, align 8, !tbaa !155, !noalias !2256
  %i.bo = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.bo, label %.split.us.i.i.i.us.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.us.preheader:                  ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us
  br label %.split.us.i.i.i.us.us

.split.us.i.i.i.us.us:                            ; preds = %.split.us.i.i.i.us.us.backedge, %.split.us.i.i.i.us.us.preheader
  %i.bp = phi ptr [ %i.bi, %.split.us.i.i.i.us.us.preheader ], [ %.be118, %.split.us.i.i.i.us.us.backedge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  store ptr %i.bq, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !449, !noalias !2256
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = and i32 %i.bu, 3
  switch i32 %i.bv, label %default.unreachable [
    i32 0, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
    i32 3, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us.us.loopexit
    i32 1, label %bb.k
    i32 2, label %.split.us.i.i.i.us.us.backedge
  ]

bb.k:                                             ; preds = %.split.us.i.i.i.us.us
  %i.bw = and i64 %i.bt, -4
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  store ptr %i.bx, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  br label %.split.us.i.i.i.us.us.backedge

.split.us.i.i.i.us.us.backedge:                   ; preds = %bb.k, %.split.us.i.i.i.us.us
  %.be118 = phi ptr [ %i.bq, %.split.us.i.i.i.us.us ], [ %i.bx, %bb.k ]
  br label %.split.us.i.i.i.us.us, !llvm.loop !59

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %i.by = phi ptr [ %i.cg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph.split.us ] ; 5 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bg
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.us = load ptr, ptr %i.bz, align 8, !tbaa !155, !noalias !2256
  %i.ca = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ca, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  %i.cb = load i32, ptr %i.bh, align 4, !tbaa !98, !noalias !2256
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us = load ptr, ptr %i.cd, align 8, !tbaa !155, !noalias !2256
  %i.ce = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ce, label %.split.us.i.i.i.us.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.us.i.i.i.us.preheader:                     ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us
  br label %.split.us.i.i.i.us

.split.us.i.i.i.us:                               ; preds = %.split.us.i.i.i.us.backedge, %.split.us.i.i.i.us.preheader
  %i.cf = phi ptr [ %i.by, %.split.us.i.i.i.us.preheader ], [ %.be, %.split.us.i.i.i.us.backedge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56 ; 4 uses
  store ptr %i.cg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !449, !noalias !2256
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 3
  switch i32 %i.cl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
    i32 1, label %bb.l
    i32 2, label %.split.us.i.i.i.us.backedge
  ]

bb.l:                                             ; preds = %.split.us.i.i.i.us
  %i.cm = and i64 %i.cj, -4
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  store ptr %i.cn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  br label %.split.us.i.i.i.us.backedge

.split.us.i.i.i.us.backedge:                      ; preds = %bb.l, %.split.us.i.i.i.us
  %.be = phi ptr [ %i.cg, %.split.us.i.i.i.us ], [ %i.cn, %bb.l ]
  br label %.split.us.i.i.i.us, !llvm.loop !59

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us: ; preds = %.split.us.i.i.i.us, %.split.us.i.i.i.us
  %i.co = icmp eq ptr %i.cg, %i.j
  br i1 %i.co, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.us, !llvm.loop !2248

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17
  %.pre7.i4.i25 = phi i32 [ %.pre7.i3.i.ph, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.74.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 2 uses
  %i.cp = phi ptr [ %i.dw, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ], [ %.sroa.2.2, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i.lr.ph ] ; 7 uses
  %i.cq = zext nneg i32 %.pre7.i4.i25 to i64      ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !98, !noalias !2256
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !155, !noalias !2256
  %i.cv = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.cv, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i: ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.cq
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !98, !noalias !2256
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cy
  %.sroa.0.0.copyload.i3.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !155, !noalias !2256
  %i.da = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.da, label %.split.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge

.split.i.i.i.preheader:                           ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %i.db = phi ptr [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %.promoted.i.i1.i.i.i.i = phi ptr [ %.promoted.i.i1.i.i8.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dc = phi ptr [ %i.dq, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.cp, %.split.i.i.i.preheader ] ; 2 uses
  %i.dd = phi i32 [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %.pre7.i4.i25, %.split.i.i.i.preheader ] ; 2 uses
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.m, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i

bb.m:                                             ; preds = %.split.i.i.i
  store i32 0, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !458, !alias.scope !2256
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %i.df = phi ptr [ %.promoted.i.i1.i.i.i.i, %bb.m ], [ %.be125, %.backedge ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 7 uses
  store ptr %i.dg, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !449, !noalias !2256
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
    i32 1, label %bb.o
    i32 2, label %.backedge
  ]

bb.o:                                             ; preds = %bb.n
  %i.dm = and i64 %i.dj, -4
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  store ptr %i.dn, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !449, !alias.scope !2256
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.n
  %.be125 = phi ptr [ %i.dg, %bb.n ], [ %i.dn, %bb.o ]
  br label %bb.n, !llvm.loop !59

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i: ; preds = %bb.n, %bb.n
  %.not3.i.i.i = icmp eq ptr %i.dg, %i.j
  br i1 %.not3.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i: ; preds = %.split.i.i.i
  %i.do = add nuw nsw i32 %i.dd, 1                ; 3 uses
  store i32 %i.do, ptr %.sroa.615.0..sroa_idx, align 8, !tbaa !458, !alias.scope !2256
  %.not2.i.i.i = icmp eq ptr %i.dc, %i.j
  br i1 %.not2.i.i.i, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i
  %i.dp = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.promoted.i.i1.i.i8.i.i = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %.promoted.i.i1.i.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ]
  %i.dq = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dc, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.dr = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.du, align 8, !tbaa !150, !noalias !2256
  %i.dv = icmp ugt ptr %.sroa.0.0.copyload.i.i.i.i.i2, %i.dq
  br i1 %i.dv, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, label %.split.i.i.i, !llvm.loop !2249

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1
  %i.dw = phi ptr [ %i.dg, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.db, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %.pre7.i3.i.ph = phi i32 [ 0, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.loopexit4.i.i.i ], [ %i.dr, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.i.i1 ], [ %i.do, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.j
  %.not.i.i = icmp eq i32 %.pre7.i3.i.ph, %spec.store.select.i.i.i
  %or.cond.i.i = select i1 %i.dx, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.i.i, !llvm.loop !2248

._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us
  %.us-phi30.in = phi ptr [ %i.by, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit.us ], [ %i.cp, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.i.i.loopexit17 ]
  %.us-phi30 = ptrtoint ptr %.us-phi30.in to i64
  store i64 %.us-phi30, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !150, !alias.scope !2256
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us
  %.us-phi.in = phi ptr [ %i.bi, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us.us ], [ %i.by, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i.us ], [ %i.cp, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i ]
  %.us-phi = ptrtoint ptr %.us-phi.in to i64
  store i64 %.us-phi, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !150, !alias.scope !2256
  br label %_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit

_ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15all_edges_beginEv.exit, %._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.i.i._ZN4CGAL15filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEENS_15Filter_iteratorIT_T0_EESK_RKSL_SK_.exit.loopexit_crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN4CGAL15Filter_iteratorINS_32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS4_NS_25Triangulation_face_base_2IS4_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_15Triangulation_2IS4_SE_E15Infinite_testerEEppEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !454  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !171
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.h = load ptr, ptr %0, align 8
  %.fr17 = freeze ptr %i.h
  %i.i = icmp eq ptr %i.b, %.fr17                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 4 uses
  %i.r = load i32, ptr %i.e, align 8              ; 4 uses
  br i1 %i.d, label %.split3.us, label %.split3

.split3.us:                                       ; preds = %bb.a
  %.not.us = icmp ne i32 %i.r, %i.m
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE7ccw_mapE, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN4CGAL29Triangulation_cw_ccw_static_2IvE6cw_mapE, i64 %i.s ; 2 uses
  %.promoted.i.i.i.us.i.us.us.pre = load ptr, ptr %i.f, align 8, !tbaa !449 ; 2 uses
  br i1 %i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  %i.v = phi ptr [ %.be, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 8 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !449
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !449
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.unreachabledefault [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
    i32 1, label %bb.b
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge
  ]

bb.b:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ac = and i64 %i.z, -4
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !449
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge: ; preds = %bb.b, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %.split.us.us, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %.be = phi ptr [ %i.w, %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us ], [ %i.ad, %bb.b ], [ %i.w, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us ], [ %i.w, %.split.us.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, !llvm.loop !2257

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  %i.ae = icmp ne ptr %i.w, %i.k
  %brmerge = select i1 %i.ae, i1 true, i1 %.not.us
  br i1 %brmerge, label %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us, label %.critedge

_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us: ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us.us
  %i.af = ptrtoint ptr %i.w to i64
  store i64 %i.af, ptr %i.p, align 8, !tbaa !150
  %i.ag = load i32, ptr %i.t, align 4, !tbaa !98
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ah
  %.sroa.0.0.copyload.i.i.i.i.i.us.us = load ptr, ptr %i.ai, align 8, !tbaa !155
  %.sroa.0.0.copyload.i.i.i.i.i.i.us.us = load ptr, ptr %i.q, align 8, !tbaa !155 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.aj, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.split.us.us

.split.us.us:                                     ; preds = %_ZNK4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEneERKSE_.exit.thread.us.us
  %i.ak = load i32, ptr %i.u, align 4, !tbaa !98
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.al
  %.sroa.0.0.copyload.i3.i.i.i.i.us.us = load ptr, ptr %i.am, align 8, !tbaa !155
  %i.an = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us.us
  br i1 %i.an, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us.backedge, label %.critedge

.unreachabledefault:                              ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.us
  unreachable

default.unreachable:                              ; preds = %bb.h, %bb.e, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  unreachable

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us: ; preds = %.split3.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  %i.ao = phi ptr [ %.be55, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge ], [ %.promoted.i.i.i.us.i.us.us.pre, %.split3.us ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 7 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !449
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !449
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 3
  switch i32 %i.au, label %default.unreachable [
    i32 0, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 3, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
    i32 1, label %bb.c
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge
  ]

bb.c:                                             ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.av = and i64 %i.as, -4
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !449
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge: ; preds = %bb.c, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %.split.us, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %.be55 = phi ptr [ %i.ap, %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us ], [ %i.aw, %bb.c ], [ %i.ap, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us ], [ %i.ap, %.split.us ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, !llvm.loop !2257

.split.us:                                        ; preds = %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us
  %i.ax = load i32, ptr %i.u, align 4, !tbaa !98
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ay
  %.sroa.0.0.copyload.i3.i.i.i.i.us = load ptr, ptr %i.az, align 8, !tbaa !155
  %i.ba = icmp eq ptr %.sroa.0.0.copyload.i3.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.ba, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.critedge

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit.us: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us
  %i.bb = ptrtoint ptr %i.ap to i64
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !150
  %i.bc = load i32, ptr %i.t, align 4, !tbaa !98
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bd
  %.sroa.0.0.copyload.i.i.i.i.i.us = load ptr, ptr %i.be, align 8, !tbaa !155
  %.sroa.0.0.copyload.i.i.i.i.i.i.us = load ptr, ptr %i.q, align 8, !tbaa !155 ; 2 uses
  %i.bf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.us, %.sroa.0.0.copyload.i.i.i.i.i.i.us
  br i1 %i.bf, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS1_NS_25Triangulation_face_base_2IS1_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15Infinite_testerclERKNS_32Triangulation_ds_edge_iterator_2ISD_EE.exit.us.backedge, label %.split.us

.split3:                                          ; preds = %bb.a
  br i1 %i.i, label %.split.i.us, label %.split.i

.split.i.us:                                      ; preds = %.split3, %.split.i.us.backedge
  %i.bg = phi i32 [ %.be59, %.split.i.us.backedge ], [ %i.r, %.split3 ] ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.d, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us

_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE9incrementEv.exit.thread.i.us: ; preds = %.split.i.us
  %i.bi = add nsw i32 %i.bg, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.e, align 8, !tbaa !458
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !450 ; 2 uses
  %i.bk = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not2.i.us = icmp eq ptr %i.bk, %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  br i1 %.not2.i.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEppEv.exit.loopexit1.us, label %_ZN4CGAL32Triangulation_ds_edge_iterator_2INS_30Triangulation_data_structure_2INS_27Triangulation_vertex_base_2INS_5EpickENS_30Triangulation_ds_vertex_base_2IvEEEENS_37Constrained_triangulation_face_base_2IS3_NS_25Triangulation_face_base_2IS3_NS_28Triangulation_ds_face_base_2IvEEEEEEEEE15associated_edgeEv.exit.i.us

bb.d:                                             ; preds = %.split.i.us
  store i32 0, ptr %i.e, align 8, !tbaa !458
  %.promoted.i.i1.i.i.us = load ptr, ptr %i.f, align 8, !tbaa !449
  br label %bb.e

end_hunk_1
