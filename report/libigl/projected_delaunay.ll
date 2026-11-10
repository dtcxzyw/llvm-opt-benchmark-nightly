Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/projected_delaunay?download=true
inline.NumInlined: 12286
inline.NumDeleted: 3794
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_:bb.a

bb.m:                                             ; preds = %bb.k
  %i.at = sub i64 %.06898, %.064
  %i.au = sub i64 %.06799, %.0
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_(ptr noundef %i.an, ptr noundef %.065, ptr noundef %.07096, i64 noundef %i.at, i64 noundef %i.au)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.175 = phi ptr [ %i.an, %bb.l ], [ %.07493, %bb.m ]
  %.173 = phi ptr [ %.065, %bb.l ], [ %.066, %bb.m ]
  %.171 = phi ptr [ %.07096, %bb.l ], [ %i.an, %bb.m ]
  %.169 = phi i64 [ %i.ar, %bb.l ], [ %.064, %bb.m ] ; 2 uses
  %.1 = phi i64 [ %i.as, %bb.l ], [ %.0, %bb.m ]  ; 2 uses
  %i.av = icmp ne i64 %.1, 0
  %i.aw = icmp ne i64 %.169, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !1886

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib20merge_bufferless_ON2IPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader71, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %.not77 = icmp eq ptr %1, %2
  br i1 %.not77, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %.not15.i54114 = icmp eq ptr %1, %0
  br i1 %.not15.i54114, label %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader71:                                     ; preds = %bb.a
  %.not5280 = icmp eq ptr %0, %1
  br i1 %.not5280, label %.critedge.thread, label %.lr.ph83

.lr.ph83.loopexit:                                ; preds = %bb.c
  br label %.lr.ph83, !llvm.loop !1887

.lr.ph83:                                         ; preds = %.preheader71, %.lr.ph83.loopexit
  %.04282 = phi ptr [ %.013.lcssa.i, %.lr.ph83.loopexit ], [ %1, %.preheader71 ] ; 5 uses
  %.04481 = phi ptr [ %i.s, %.lr.ph83.loopexit ], [ %0, %.preheader71 ] ; 2 uses
  %.not15.i = icmp eq ptr %2, %.04282
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph83
  %i.g = ptrtoint ptr %.04282 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = load ptr, ptr %.04481, align 8, !tbaa !250
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.017.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01316.i = phi ptr [ %.04282, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !250
  %i.n = icmp ult ptr %i.m, %i.j                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %i.o, ptr %.01316.i ; 2 uses
  %.1.i = select i1 %i.n, i64 %i.p, i64 %i.k      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %bb.b, !llvm.loop !38

_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph83
  %.013.lcssa.i = phi ptr [ %.04282, %.lr.ph83 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.q = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef nonnull %.04481, ptr noundef %.04282, ptr noundef %.013.lcssa.i)
  %i.r = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.r, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %bb.c
  %.145 = phi ptr [ %i.s, %bb.c ], [ %i.q, %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.145, i64 8 ; 4 uses
  %.not53 = icmp eq ptr %i.s, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.t = load ptr, ptr %.013.lcssa.i, align 8, !tbaa !250
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !250
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph83.loopexit, label %.preheader, !llvm.loop !1887

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !1888

_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.w = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14378116 = phi ptr [ %.114.i59, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04079115 = phi ptr [ %i.al, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.04079115, i64 -8
  %i.y = ptrtoint ptr %.14378116 to i64
  %i.z = sub i64 %i.y, %i.b
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !250
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.017.i56 = phi i64 [ %i.aa, %.lr.ph.i55 ], [ %.1.i60, %bb.d ] ; 2 uses
  %.01316.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i59, %bb.d ] ; 2 uses
  %i.ac = lshr i64 %.017.i56, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01316.i57, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !250
  %i.af = icmp ult ptr %i.ab, %i.ae               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.neg.i58 = xor i64 %i.ac, -1
  %i.ah = add i64 %.017.i56, %.neg.i58
  %.114.i59 = select i1 %i.af, ptr %.01316.i57, ptr %i.ag ; 6 uses
  %.1.i60 = select i1 %i.af, i64 %i.ac, i64 %i.ah ; 2 uses
  %.not.i61 = icmp eq i64 %.1.i60, 0
  br i1 %.not.i61, label %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %bb.d, !llvm.loop !40

_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit: ; preds = %bb.d
  %i.ai = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %.114.i59, ptr noundef %.14378116, ptr noundef nonnull %.04079115)
  %i.aj = icmp eq ptr %.114.i59, %0
  br i1 %i.aj, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit
  %i.ak = getelementptr inbounds i8, ptr %.114.i59, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.141 = phi ptr [ %i.ai, %bb.e ], [ %i.al, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.141, i64 -8 ; 3 uses
  %.not51 = icmp eq ptr %.114.i59, %i.al
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %.141, i64 -16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !250
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !250
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.loopexit, label %bb.f, !llvm.loop !1888

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %.preheader, %.preheader72, %.preheader71, %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.n = and i64 %i.k, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %i.q
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !114, !alias.scope !1896, !noalias !1897
  %wide.load78 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !114, !alias.scope !1896, !noalias !1897
  %i.w = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1897
  %wide.load80 = load <2 x i64>, ptr %i.w, align 8, !tbaa !114, !alias.scope !1897
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !114, !alias.scope !1896, !noalias !1897
  store <2 x i64> %wide.load80, ptr %i.v, align 8, !tbaa !114, !alias.scope !1896, !noalias !1897
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1897
  store <2 x ptr> %wide.load78, ptr %i.w, align 8, !tbaa !114, !alias.scope !1897
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1892

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.079.i, align 8, !tbaa !114
  %i.y = load i64, ptr %.010.i, align 8, !tbaa !114
  store i64 %i.y, ptr %.079.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.010.i, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.z, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i, !llvm.loop !1893

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = ashr exact i64 %i.ac, 3                 ; 6 uses
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.ad
  %i.ag = add nsw i64 %i.f, -1
  %i.ah = and i64 %i.ag, %i.f
  %i.ai = or i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.ak = or i64 %i.ad, %i.f
  %i.al = and i64 %i.ak, 1
  %.not.not37.i = icmp eq i64 %i.al, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ad, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.as, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ]
  %i.an = icmp ne i64 %.030.lcssa.i, 0
  %i.ao = icmp ne i64 %.029.lcssa.i, 0
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.as, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.ad, %.preheader36.i ]
  %i.aq = shl i64 %.040.i, 1                      ; 2 uses
  %i.ar = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.as = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.at = or i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 1
  %.not.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !43

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.av = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.av, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.aw = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.ax = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.ax, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = sub nuw i64 %.13143.i, %.144.i
  %i.ba = lshr exact i64 %i.az, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bb = sub nuw i64 %.144.i, %.13143.i
  %i.bc = lshr exact i64 %i.bb, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.ba, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.aw, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bc, %bb.k ], [ %i.ay, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bd = icmp ne i64 %.232.i, 0
  %i.be = icmp ne i64 %.2.i, 0
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bg = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bh = mul i64 %i.bg, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.am, %bb.e ], [ %i.bh, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bk = add i64 %.idx, -8                       ; 2 uses
  %i.bl = and i64 %i.bk, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bm = load i64, ptr %0, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bw, %bb.m ] ; 5 uses
  %i.bo = load i64, ptr %.0.prol, align 8, !tbaa !114
  store i64 %i.bo, ptr %.044.prol, align 8, !tbaa !114
  %i.bp = ptrtoint ptr %.0.prol to i64
  %i.bq = sub i64 %i.ab, %i.bp
  %i.br = ashr exact i64 %i.bq, 3                 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %i.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bu = sub nsw i64 0, %i.br
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bu
  %i.bw = select i1 %i.bs, ptr %i.bt, ptr %i.bv   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bw, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !1894

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store i64 %i.bm, ptr %.0.prol, align 8, !tbaa !114
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %i.by = icmp eq i64 %i.bk, 0
  br i1 %i.by, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cw, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.bz = load i64, ptr %.04561, align 8, !tbaa !114
  %i.ca = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
  %.0 = phi ptr [ %i.ca, %.lr.ph.new ], [ %i.cj, %bb.n ] ; 5 uses
  %i.cb = load i64, ptr %.0, align 8, !tbaa !114
  store i64 %i.cb, ptr %.044, align 8, !tbaa !114
  %i.cc = ptrtoint ptr %.0 to i64
  %i.cd = sub i64 %i.ab, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.ch = sub nsw i64 0, %i.ce
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ch
  %i.cj = select i1 %i.cf, ptr %i.cg, ptr %i.ci   ; 2 uses
  %.not53 = icmp eq ptr %i.cj, %.04561
  br i1 %.not53, label %bb.o, label %bb.n, !llvm.loop !1894

bb.o:                                             ; preds = %bb.n
  store i64 %i.bz, ptr %.0, align 8, !tbaa !114
  %i.ck = getelementptr inbounds nuw i8, ptr %.04561, i64 8 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.e
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.044.1 = phi ptr [ %i.ck, %bb.o ], [ %.0.1, %bb.p ]
  %.0.1 = phi ptr [ %i.cm, %bb.o ], [ %i.cv, %bb.p ] ; 5 uses
  %i.cn = load i64, ptr %.0.1, align 8, !tbaa !114
  store i64 %i.cn, ptr %.044.1, align 8, !tbaa !114
  %i.co = ptrtoint ptr %.0.1 to i64
  %i.cp = sub i64 %i.ab, %i.co
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.f
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7move_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %7, ptr %i.b, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !382
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.g, ptr %i.d, align 8, !tbaa !382
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 10 uses
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx221 = shl i64 %2, 3                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx221 ; 2 uses
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = add i64 %i.n, 8
  %i.p = add i64 %i.n, %i.a
  %i.q = add i64 %i.p, %.idx221
  %i.r = add i64 %i.q, -8
  %scevgep385 = getelementptr i8, ptr %7, i64 8
  %i.s = shl i64 %3, 3
  %i.t = add i64 %i.s, %i.a
  %i.u = add i64 %i.t, %.idx221
  %i.v = add i64 %i.u, -8
  %i.w = add i64 %.idx221, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 72
  %bound0322 = icmp ult ptr %7, %i.i
  %bound1323 = icmp ult ptr %i.g, %scevgep
  %found.conflict324 = and i1 %bound0322, %bound1323
  %stride.check = icmp slt i64 %.idx221, 0
  %i.z = or i1 %found.conflict324, %stride.check
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gi, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gj, %bb.x ] ; 10 uses
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gr, %bb.x ] ; 3 uses
  %.0240 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104239 = phi i64 [ %i.k, %.lr.ph ], [ %i.gp, %bb.x ] ; 4 uses
  %.0106236 = phi ptr [ %0, %.lr.ph ], [ %i.gn, %bb.x ] ; 16 uses
  %.0108235 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111233 = phi ptr [ %i.g, %.lr.ph ], [ %i.gm, %bb.x ] ; 5 uses
  %.0114232 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0204231 = phi ptr [ %i.f, %.lr.ph ], [ %.2206, %bb.x ] ; 16 uses
  %.0208230 = phi i64 [ %i.e, %.lr.ph ], [ %i.gs, %bb.x ] ; 4 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = icmp ult i64 %.0104239, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.aw, %.thread26.i ], [ %.0104239, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.av, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02228.i, %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = mul i64 %.029.i, %2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0106236, i64 %.02228.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106236, i64 %.029.i
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !250 ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !250 ; 2 uses
  %i.aq = icmp ult ptr %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = icmp ult ptr %i.ap, %i.ao
  br i1 %i.ar, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !250
  %i.au = icmp ult ptr %i.as, %i.at
  %cond.fr.i = freeze i1 %i.au
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.av = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.aw = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit, label %.lr.ph.i, !llvm.loop !45

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.av, %.thread26.i ] ; 7 uses
  %i.ax = add i64 %.022.lcssa.i, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ax) ; 2 uses
  %.sroa.speculated192 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.0208230)
  %i.az = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.az, 3
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %2 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %.idx221 ; 8 uses
  %i.bd = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0240, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !250
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !250
  %i.bg = icmp ult ptr %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108235 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %.idx222 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106236, i64 %.idx222 ; 13 uses
  %i.bi = icmp eq ptr %.0204231, %i.m
  br i1 %i.bi, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bj = trunc nuw i8 %.0108235 to i1
  br i1 %i.bj, label %bb.j, label %.thread294

.thread294:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !250
  %i.bl = load ptr, ptr %.0204231, align 8, !tbaa !250
  %i.bm = icmp ult ptr %i.bk, %i.bl               ; 4 uses
  %i.bn = trunc nuw i8 %.0108235 to i1            ; 2 uses
  %i.bo = xor i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bp = phi i1 [ true, %._crit_edge ], [ %i.bm, %bb.i ]
  br i1 %i.bd, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %bb.j
  %i.bq = add i64 %i.af, -8
  %i.br = sub i64 %i.bq, %i.ag                    ; 3 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check347 = icmp ult i64 %i.br, 40
  br i1 %min.iters.check347, label %.lr.ph.i125.preheader515, label %vector.memcheck348

vector.memcheck348:                               ; preds = %.lr.ph.i125.preheader
  %i.bu = and i64 %i.br, -8
  %i.bv = add i64 %i.bu, 8                        ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ad, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.0114232, i64 %i.bv
  %bound0349 = icmp ult ptr %i.ad, %i.bx
  %bound1350 = icmp ult ptr %.0114232, %i.bw
  %found.conflict351 = and i1 %bound0349, %bound1350
  br i1 %found.conflict351, label %.lr.ph.i125.preheader515, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck348
  %n.vec353 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.by = shl i64 %n.vec353, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %.0114232, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next362, %vector.body354 ] ; 2 uses
  %i.cb = shl i64 %index355, 3                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0114232, i64 %i.cb ; 3 uses
  %next.gep357 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep357, i64 16 ; 2 uses
  %wide.load358 = load <2 x ptr>, ptr %next.gep357, align 8, !tbaa !114, !alias.scope !1986, !noalias !1987
  %wide.load359 = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !114, !alias.scope !1986, !noalias !1987
  %i.cd = getelementptr i8, ptr %next.gep356, i64 16 ; 2 uses
  %wide.load360 = load <2 x i64>, ptr %next.gep356, align 8, !tbaa !114, !alias.scope !1987
  %wide.load361 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !114, !alias.scope !1987
  store <2 x i64> %wide.load360, ptr %next.gep357, align 8, !tbaa !114, !alias.scope !1986, !noalias !1987
  store <2 x i64> %wide.load361, ptr %i.cc, align 8, !tbaa !114, !alias.scope !1986, !noalias !1987
  store <2 x ptr> %wide.load358, ptr %next.gep356, align 8, !tbaa !114, !alias.scope !1987
  store <2 x ptr> %wide.load359, ptr %i.cd, align 8, !tbaa !114, !alias.scope !1987
  %index.next362 = add nuw i64 %index355, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next362, %n.vec353
  br i1 %i.ce, label %middle.block363, label %vector.body354, !llvm.loop !1944

middle.block363:                                  ; preds = %vector.body354
  %cmp.n364 = icmp eq i64 %i.bt, %n.vec353
  br i1 %cmp.n364, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125.preheader515

.lr.ph.i125.preheader515:                         ; preds = %vector.memcheck348, %.lr.ph.i125.preheader, %middle.block363
  %.010.i.ph = phi ptr [ %.0114232, %vector.memcheck348 ], [ %.0114232, %.lr.ph.i125.preheader ], [ %i.bz, %middle.block363 ]
  %.079.i.ph = phi ptr [ %i.ad, %vector.memcheck348 ], [ %i.ad, %.lr.ph.i125.preheader ], [ %i.ca, %middle.block363 ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader515, %.lr.ph.i125
  %.010.i = phi ptr [ %i.ch, %.lr.ph.i125 ], [ %.010.i.ph, %.lr.ph.i125.preheader515 ] ; 3 uses
  %.079.i = phi ptr [ %i.cg, %.lr.ph.i125 ], [ %.079.i.ph, %.lr.ph.i125.preheader515 ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.079.i, align 8, !tbaa !114
  %i.cf = load i64, ptr %.010.i, align 8, !tbaa !114
  store i64 %i.cf, ptr %.079.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.010.i, align 8, !tbaa !114
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125, !llvm.loop !1945

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit: ; preds = %.lr.ph.i125, %middle.block363, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !382
  %.not.i126 = icmp eq i64 %i.az, 0
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i127.preheader514, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i127.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0325 = icmp ult ptr %i.ba, %i.i
  %bound1326 = icmp ult ptr %i.g, %i.bb
  %found.conflict327 = and i1 %bound0325, %bound1326
  %conflict.rdx328 = or i1 %conflict.rdx, %found.conflict327
  br i1 %conflict.rdx328, label %.lr.ph.i127.preheader514, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck ; 3 uses
  %next.gep329 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep330 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1988, !noalias !1989
  %wide.load331 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !114, !alias.scope !1988, !noalias !1989
  %i.cm = getelementptr i8, ptr %next.gep329, i64 16 ; 2 uses
  %wide.load332 = load <2 x i64>, ptr %next.gep329, align 8, !tbaa !114, !alias.scope !1990, !noalias !1991
  %wide.load333 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !114, !alias.scope !1990, !noalias !1991
  store <2 x i64> %wide.load332, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1988, !noalias !1989
  store <2 x i64> %wide.load333, ptr %i.cl, align 8, !tbaa !114, !alias.scope !1988, !noalias !1989
  %i.cn = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load334 = load <2 x i64>, ptr %next.gep330, align 8, !tbaa !114, !alias.scope !1991
  %wide.load335 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !114, !alias.scope !1991
  store <2 x i64> %wide.load334, ptr %next.gep329, align 8, !tbaa !114, !alias.scope !1990, !noalias !1991
  store <2 x i64> %wide.load335, ptr %i.cm, align 8, !tbaa !114, !alias.scope !1990, !noalias !1991
  store <2 x i64> %wide.load, ptr %next.gep330, align 8, !tbaa !114, !alias.scope !1991
  store <2 x i64> %wide.load331, ptr %i.cn, align 8, !tbaa !114, !alias.scope !1991
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1950

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i127.preheader514

.lr.ph.i127.preheader514:                         ; preds = %vector.memcheck, %.lr.ph.i127.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i127.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i127.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i127.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.preheader514, %.lr.ph.i127
  %.033.i = phi ptr [ %i.cr, %.lr.ph.i127 ], [ %.033.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %.02032.i = phi ptr [ %i.cq, %.lr.ph.i127 ], [ %.02032.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cp, %.lr.ph.i127 ], [ %.02131.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.cs = load i64, ptr %.033.i, align 8, !tbaa !114
  %i.ct = load i64, ptr %.02032.i, align 8, !tbaa !114
  store i64 %i.ct, ptr %.033.i, align 8, !tbaa !114
  %i.cu = load i64, ptr %.02131.i, align 8, !tbaa !114
  store i64 %i.cu, ptr %.02032.i, align 8, !tbaa !114
  store i64 %i.cs, ptr %.02131.i, align 8, !tbaa !114
  %.not28.i = icmp eq ptr %i.cp, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i127, !llvm.loop !1951

._crit_edge.i:                                    ; preds = %.lr.ph.i127, %middle.block, %.preheader.i
  %.0.lcssa.i128 = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.cr, %.lr.ph.i127 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %.sroa.0.0.copyload.i.i129 = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.cv = load i64, ptr %.0106236, align 8, !tbaa !114
  store i64 %i.cv, ptr %i.bh, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i129, ptr %.0106236, align 8, !tbaa !114
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cw = icmp eq ptr %i.bh, %.0204231
  br i1 %i.cw, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = icmp eq ptr %.0204231, %.0106236
  %spec.select = select i1 %i.cx, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit
  %.5 = phi ptr [ %.0204231, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit ], [ %spec.select, %bb.m ], [ %.0106236, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit ], [ %.0.lcssa.i128, %bb.m ], [ %.0.lcssa.i128, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !382
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %.0114232, ptr noundef %.0111233, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit

bb.p:                                             ; preds = %.thread294, %bb.n
  %i.cz = phi i1 [ true, %.thread294 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !430
  %i.da = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %.0114232, ptr noundef %.0111233, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.db = phi i1 [ %i.bm, %bb.o ], [ %i.cz, %bb.p ]
  %i.dc = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.dd = phi ptr [ %i.cy, %bb.o ], [ %i.da, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !382 ; 4 uses
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !382 ; 4 uses
  %i.dg = icmp eq ptr %i.de, %i.df                ; 2 uses
  br i1 %i.dg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !382
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !382 ; 10 uses
  %i.di = ptrtoint ptr %i.bc to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.dm ; 7 uses
  %.not.i130 = icmp eq ptr %i.dh, %i.dn
  br i1 %.not.i130, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %.preheader.i131

.preheader.i131:                                  ; preds = %bb.q
  %.not2830.i132 = icmp eq ptr %i.dh, %i.bc
  br i1 %.not2830.i132, label %._crit_edge.i138, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.preheader.i131
  %i.do = mul i64 %indvar, %.idx221               ; 3 uses
  %i.dp = add i64 %i.v, %i.do                     ; 2 uses
  %i.dq = sub i64 %i.dp, %i.dj                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.dq, 104
  br i1 %min.iters.check387, label %.lr.ph.i133.preheader516, label %vector.memcheck388

vector.memcheck388:                               ; preds = %.lr.ph.i133.preheader
  %i.dt = add i64 %i.r, %i.do
  %i.du = sub i64 %i.dt, %i.dj
  %i.dv = and i64 %i.du, -8                       ; 3 uses
  %i.dw = getelementptr i8, ptr %scevgep385, i64 %i.dv ; 2 uses
  %i.dx = add i64 %i.o, %i.do
  %i.dy = shl i64 %.022.lcssa.i, 3
  %i.dz = add i64 %i.dy, 8
  %i.ea = mul i64 %2, %i.dz
  %i.eb = add i64 %i.dx, %i.ea
  %i.ec = add i64 %i.eb, %i.dv
  %i.ed = sub i64 %i.ec, %i.dk
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dh, i64 %i.dv
  %i.eg = getelementptr i8, ptr %i.ef, i64 8      ; 2 uses
  %bound0389 = icmp ult ptr %7, %i.ee
  %bound1390 = icmp ult ptr %i.dn, %i.dw
  %found.conflict391 = and i1 %bound0389, %bound1390
  %bound0392 = icmp ult ptr %7, %i.eg
  %bound1393 = icmp ult ptr %i.dh, %i.dw
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a
.lr.ph.i133.preheader516:                         ; preds = %vector.memcheck388, %.lr.ph.i133.preheader, %middle.block414
  %.033.i134.ph = phi ptr [ %7, %vector.memcheck388 ], [ %7, %.lr.ph.i133.preheader ], [ %i.ei, %middle.block414 ] ; 2 uses
  %.02032.i135.ph = phi ptr [ %i.dn, %vector.memcheck388 ], [ %i.dn, %.lr.ph.i133.preheader ], [ %i.ej, %middle.block414 ] ; 2 uses
  %.02131.i136.ph = phi ptr [ %i.dh, %vector.memcheck388 ], [ %i.dh, %.lr.ph.i133.preheader ], [ %i.ek, %middle.block414 ] ; 3 uses
  %.02131.i136.ph519 = ptrtoaddr ptr %.02131.i136.ph to i64
  %i.eq = sub i64 %i.dp, %.02131.i136.ph519       ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1
  %xtraiter = and i64 %i.es, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader516, %.lr.ph.i133.prol
  %.033.i134.prol = phi ptr [ %i.ev, %.lr.ph.i133.prol ], [ %.033.i134.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %.02032.i135.prol = phi ptr [ %i.eu, %.lr.ph.i133.prol ], [ %.02032.i135.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %.02131.i136.prol = phi ptr [ %i.et, %.lr.ph.i133.prol ], [ %.02131.i136.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader516 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.02131.i136.prol, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02032.i135.prol, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.033.i134.prol, i64 8 ; 3 uses
  %i.ew = load i64, ptr %.033.i134.prol, align 8, !tbaa !114
  %i.ex = load i64, ptr %.02032.i135.prol, align 8, !tbaa !114
  store i64 %i.ex, ptr %.033.i134.prol, align 8, !tbaa !114
  %i.ey = load i64, ptr %.02131.i136.prol, align 8, !tbaa !114
  store i64 %i.ey, ptr %.02032.i135.prol, align 8, !tbaa !114
  store i64 %i.ew, ptr %.02131.i136.prol, align 8, !tbaa !114
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !1957

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader516
  %.lcssa517.unr = phi ptr [ poison, %.lr.ph.i133.preheader516 ], [ %i.ev, %.lr.ph.i133.prol ]
  %.033.i134.unr = phi ptr [ %.033.i134.ph, %.lr.ph.i133.preheader516 ], [ %i.ev, %.lr.ph.i133.prol ]
  %.02032.i135.unr = phi ptr [ %.02032.i135.ph, %.lr.ph.i133.preheader516 ], [ %i.eu, %.lr.ph.i133.prol ]
  %.02131.i136.unr = phi ptr [ %.02131.i136.ph, %.lr.ph.i133.preheader516 ], [ %i.et, %.lr.ph.i133.prol ]
  %i.ez = icmp ult i64 %i.eq, 24
  br i1 %i.ez, label %._crit_edge.i138, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.033.i134 = phi ptr [ %i.fu, %.lr.ph.i133 ], [ %.033.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02032.i135 = phi ptr [ %i.ft, %.lr.ph.i133 ], [ %.02032.i135.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02131.i136 = phi ptr [ %i.fs, %.lr.ph.i133 ], [ %.02131.i136.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i134, i64 8 ; 2 uses
  %i.fd = load i64, ptr %.033.i134, align 8, !tbaa !114
  %i.fe = load i64, ptr %.02032.i135, align 8, !tbaa !114
  store i64 %i.fe, ptr %.033.i134, align 8, !tbaa !114
  %i.ff = load i64, ptr %.02131.i136, align 8, !tbaa !114
  store i64 %i.ff, ptr %.02032.i135, align 8, !tbaa !114
  store i64 %i.fd, ptr %.02131.i136, align 8, !tbaa !114
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i134, i64 16 ; 2 uses
  %i.fj = load i64, ptr %i.fc, align 8, !tbaa !114
  %i.fk = load i64, ptr %i.fb, align 8, !tbaa !114
  store i64 %i.fk, ptr %i.fc, align 8, !tbaa !114
  %i.fl = load i64, ptr %i.fa, align 8, !tbaa !114
  store i64 %i.fl, ptr %i.fb, align 8, !tbaa !114
  store i64 %i.fj, ptr %i.fa, align 8, !tbaa !114
  %i.fm = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 24 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 24 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.033.i134, i64 24 ; 2 uses
  %i.fp = load i64, ptr %i.fi, align 8, !tbaa !114
  %i.fq = load i64, ptr %i.fh, align 8, !tbaa !114
  store i64 %i.fq, ptr %i.fi, align 8, !tbaa !114
  %i.fr = load i64, ptr %i.fg, align 8, !tbaa !114
  store i64 %i.fr, ptr %i.fh, align 8, !tbaa !114
  store i64 %i.fp, ptr %i.fg, align 8, !tbaa !114
  %i.fs = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.033.i134, i64 32 ; 2 uses
  %i.fv = load i64, ptr %i.fo, align 8, !tbaa !114
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !114
  store i64 %i.fw, ptr %i.fo, align 8, !tbaa !114
  %i.fx = load i64, ptr %i.fm, align 8, !tbaa !114
  store i64 %i.fx, ptr %i.fn, align 8, !tbaa !114
  store i64 %i.fv, ptr %i.fm, align 8, !tbaa !114
  %.not28.i137.3 = icmp eq ptr %i.fs, %i.bc
  br i1 %.not28.i137.3, label %._crit_edge.i138, label %.lr.ph.i133, !llvm.loop !1958

._crit_edge.i138:                                 ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %middle.block414, %.preheader.i131
  %.0.lcssa.i139 = phi ptr [ %7, %.preheader.i131 ], [ %i.ei, %middle.block414 ], [ %.lcssa517.unr, %.lr.ph.i133.prol.loopexit ], [ %i.fu, %.lr.ph.i133 ] ; 2 uses
  %.not29.i140 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i138
  %.sroa.0.0.copyload.i.i141 = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.fy = load i64, ptr %.0106236, align 8, !tbaa !114
  store i64 %i.fy, ptr %i.bh, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i141, ptr %.0106236, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i138
  %i.fz = icmp eq ptr %i.bh, %.0204231
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = icmp eq ptr %.0204231, %.0106236
  %spec.select218 = select i1 %i.ga, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0204231, %bb.q ], [ %spec.select218, %bb.t ], [ %.0106236, %bb.s ]
  %.1.i142 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i139, %bb.t ], [ %.0.lcssa.i139, %bb.s ] ; 2 uses
  store ptr %.1.i142, ptr %i.c, align 8, !tbaa !382
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  %.not.i146 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i147 = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.gb = load i64, ptr %.0106236, align 8, !tbaa !114
  store i64 %i.gb, ptr %i.bh, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i147, ptr %.0106236, align 8, !tbaa !114
  %i.gc = icmp eq ptr %i.bh, %.0204231
  br i1 %i.gc, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = icmp eq ptr %.0204231, %.0106236
  %spec.select219 = select i1 %i.gd, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145
  %i.ge = phi ptr [ %.1.i142, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.df, %bb.u ], [ %i.df, %bb.w ], [ %i.df, %bb.v ]
  %i.gf = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.de, %bb.u ], [ %i.de, %bb.w ], [ %i.de, %bb.v ]
  %.1205 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %.0204231, %bb.u ], [ %spec.select219, %bb.w ], [ %.0106236, %bb.v ]
  %i.gg = xor i1 %i.dc, %i.dg
  %i.gh = zext i1 %i.gg to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit
  %i.gi = phi ptr [ %i.ge, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gj = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gk = phi i1 [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ]
  %.2206 = phi ptr [ %.1205, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gh, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.0108235, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gk, true
  %i.gl = sext i1 %not. to i64
  %.1 = add i64 %.0240, %i.gl
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0111233, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !382
  %i.gn = getelementptr inbounds nuw i8, ptr %.0106236, i64 8
  %i.go = icmp ne i64 %.0104239, 0
  %.neg = sext i1 %i.go to i64
  %i.gp = add i64 %.0104239, %.neg
  %i.gq = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gq to i64
  %i.gr = add i64 %.sroa.speculated192, %.neg122
  %i.gs = add i64 %.0208230, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !1959

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gt = phi ptr [ %i.gi, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.gu = phi ptr [ %i.gj, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 8 uses
  %.0208.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0208230, %bb.g ], [ %.0208230, %bb.f ] ; 3 uses
  %.0204.lcssa.ph = phi ptr [ %.2206, %bb.x ], [ %.0204231, %bb.g ], [ %.0204231, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114232, %bb.g ], [ %.0114232, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gm, %bb.x ], [ %.0111233, %bb.g ], [ %.0111233, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108235, %bb.f ]
  %i.gv = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gw = select i1 %i.gv, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i150 = icmp eq ptr %i.gu, %i.gt
  br i1 %.not8.i150, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %.thread
  %i.gx = ptrtoaddr ptr %i.gu to i64
  %i.gy = ptrtoaddr ptr %i.gt to i64
  %i.gz = add i64 %i.gy, -8
  %i.ha = sub i64 %i.gz, %i.gx                    ; 3 uses
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.ha, 104
  br i1 %min.iters.check426, label %.lr.ph.i151.preheader513, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph.i151.preheader
  %i.hd = and i64 %i.ha, -8
  %i.he = add i64 %i.hd, 8                        ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.he
  %i.hg = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.he
  %bound0428 = icmp ult ptr %i.gu, %i.hg
  %bound1429 = icmp ult ptr %.0114.lcssa.ph, %i.hf
  %found.conflict430 = and i1 %bound0428, %bound1429
  br i1 %found.conflict430, label %.lr.ph.i151.preheader513, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck427
  %n.vec432 = and i64 %i.hc, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec432, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.gu, i64 %i.hh
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body433 ] ; 2 uses
  %i.hk = shl i64 %index434, 3                    ; 2 uses
  %next.gep435 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hk ; 3 uses
  %next.gep436 = getelementptr i8, ptr %i.gu, i64 %i.hk ; 3 uses
  %i.hl = getelementptr i8, ptr %next.gep436, i64 16 ; 2 uses
  %wide.load437 = load <2 x ptr>, ptr %next.gep436, align 8, !tbaa !114, !alias.scope !1996, !noalias !1997
  %wide.load438 = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !114, !alias.scope !1996, !noalias !1997
  %i.hm = getelementptr i8, ptr %next.gep435, i64 16 ; 2 uses
  %wide.load439 = load <2 x i64>, ptr %next.gep435, align 8, !tbaa !114, !alias.scope !1997
  %wide.load440 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !114, !alias.scope !1997
  store <2 x i64> %wide.load439, ptr %next.gep436, align 8, !tbaa !114, !alias.scope !1996, !noalias !1997
  store <2 x i64> %wide.load440, ptr %i.hl, align 8, !tbaa !114, !alias.scope !1996, !noalias !1997
  store <2 x ptr> %wide.load437, ptr %next.gep435, align 8, !tbaa !114, !alias.scope !1997
  store <2 x ptr> %wide.load438, ptr %i.hm, align 8, !tbaa !114, !alias.scope !1997
  %index.next441 = add nuw i64 %index434, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.hn, label %middle.block442, label %vector.body433, !llvm.loop !1963

middle.block442:                                  ; preds = %vector.body433
  %cmp.n443 = icmp eq i64 %i.hc, %n.vec432
  br i1 %cmp.n443, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader513

.lr.ph.i151.preheader513:                         ; preds = %vector.memcheck427, %.lr.ph.i151.preheader, %middle.block442
  %.010.i152.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck427 ], [ %.0114.lcssa.ph, %.lr.ph.i151.preheader ], [ %i.hi, %middle.block442 ]
  %.079.i153.ph = phi ptr [ %i.gu, %vector.memcheck427 ], [ %i.gu, %.lr.ph.i151.preheader ], [ %i.hj, %middle.block442 ]
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.preheader513, %.lr.ph.i151
  %.010.i152 = phi ptr [ %i.hq, %.lr.ph.i151 ], [ %.010.i152.ph, %.lr.ph.i151.preheader513 ] ; 3 uses
  %.079.i153 = phi ptr [ %i.hp, %.lr.ph.i151 ], [ %.079.i153.ph, %.lr.ph.i151.preheader513 ] ; 3 uses
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %.079.i153, align 8, !tbaa !114
  %i.ho = load i64, ptr %.010.i152, align 8, !tbaa !114
  store i64 %i.ho, ptr %.079.i153, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i154, ptr %.010.i152, align 8, !tbaa !114
  %i.hp = getelementptr inbounds nuw i8, ptr %.079.i153, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i152, i64 8
  %.not.i155 = icmp eq ptr %i.hp, %i.gt
  br i1 %.not.i155, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151, !llvm.loop !1964

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158: ; preds = %.lr.ph.i151, %middle.block442, %bb.a, %.thread
  %.0108.lcssa304 = phi ptr [ %1, %bb.a ], [ %i.gw, %.thread ], [ %i.gw, %middle.block442 ], [ %i.gw, %.lr.ph.i151 ]
  %.0111.lcssa303 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block442 ], [ %.0111.lcssa.ph, %.lr.ph.i151 ]
  %.0204.lcssa302 = phi ptr [ %i.f, %bb.a ], [ %.0204.lcssa.ph, %.thread ], [ %.0204.lcssa.ph, %middle.block442 ], [ %.0204.lcssa.ph, %.lr.ph.i151 ]
  %.0208.lcssa301 = phi i64 [ 0, %bb.a ], [ %.0208.lcssa.ph, %.thread ], [ %.0208.lcssa.ph, %middle.block442 ], [ %.0208.lcssa.ph, %.lr.ph.i151 ] ; 2 uses
  %.idx223 = shl i64 %6, 3                        ; 3 uses
  %i.hr = getelementptr i8, ptr %i.i, i64 %.idx223 ; 3 uses
  %.not8.i159 = icmp eq i64 %6, 0
  br i1 %.not8.i159, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader

.lr.ph.i160.preheader:                            ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  %i.hs = add i64 %.idx223, -8                    ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check452 = icmp ult i64 %i.hs, 40
  br i1 %min.iters.check452, label %.lr.ph.i160.preheader512, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph.i160.preheader
  %i.hv = getelementptr i8, ptr %7, i64 %.idx223
  %bound0454 = icmp ult ptr %i.i, %i.hv
  %bound1455 = icmp ult ptr %7, %i.hr
  %found.conflict456 = and i1 %bound0454, %bound1455
  br i1 %found.conflict456, label %.lr.ph.i160.preheader512, label %vector.ph457

vector.ph457:                                     ; preds = %vector.memcheck453
  %n.vec458 = and i64 %i.hu, 4611686018427387900  ; 3 uses
  %i.hw = shl i64 %n.vec458, 3                    ; 2 uses
  %i.hx = getelementptr i8, ptr %7, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.i, i64 %i.hw
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next467, %vector.body459 ] ; 2 uses
  %i.hz = shl i64 %index460, 3                    ; 2 uses
  %next.gep461 = getelementptr i8, ptr %7, i64 %i.hz ; 3 uses
  %next.gep462 = getelementptr i8, ptr %i.i, i64 %i.hz ; 3 uses
  %i.ia = getelementptr i8, ptr %next.gep462, i64 16 ; 2 uses
  %wide.load463 = load <2 x ptr>, ptr %next.gep462, align 8, !tbaa !114, !alias.scope !1998, !noalias !1999
  %wide.load464 = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !114, !alias.scope !1998, !noalias !1999
  %i.ib = getelementptr i8, ptr %next.gep461, i64 16 ; 2 uses
  %wide.load465 = load <2 x i64>, ptr %next.gep461, align 8, !tbaa !114, !alias.scope !1999
  %wide.load466 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !114, !alias.scope !1999
  store <2 x i64> %wide.load465, ptr %next.gep462, align 8, !tbaa !114, !alias.scope !1998, !noalias !1999
  store <2 x i64> %wide.load466, ptr %i.ia, align 8, !tbaa !114, !alias.scope !1998, !noalias !1999
  store <2 x ptr> %wide.load463, ptr %next.gep461, align 8, !tbaa !114, !alias.scope !1999
  store <2 x ptr> %wide.load464, ptr %i.ib, align 8, !tbaa !114, !alias.scope !1999
  %index.next467 = add nuw i64 %index460, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.ic, label %middle.block468, label %vector.body459, !llvm.loop !1968

middle.block468:                                  ; preds = %vector.body459
  %cmp.n469 = icmp eq i64 %i.hu, %n.vec458
  br i1 %cmp.n469, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader512

.lr.ph.i160.preheader512:                         ; preds = %vector.memcheck453, %.lr.ph.i160.preheader, %middle.block468
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck453 ], [ %7, %.lr.ph.i160.preheader ], [ %i.hx, %middle.block468 ]
  %.079.i162.ph = phi ptr [ %i.i, %vector.memcheck453 ], [ %i.i, %.lr.ph.i160.preheader ], [ %i.hy, %middle.block468 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader512, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.if, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader512 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.ie, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader512 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !114
  %i.id = load i64, ptr %.010.i161, align 8, !tbaa !114
  store i64 %i.id, ptr %.079.i162, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !114
  %i.ie = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.ie, %i.hr
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160, !llvm.loop !1969

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167: ; preds = %.lr.ph.i160, %middle.block468, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  store ptr %7, ptr %i.b, align 8, !tbaa !382
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ig, ptr %i.c, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.ig, ptr %10, align 8, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %4
  store ptr %i.ii, ptr %12, align 8, !tbaa !432, !alias.scope !2000
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !432, !alias.scope !2001
  store ptr %i.i, ptr %14, align 8, !tbaa !432, !alias.scope !2002
  store ptr %7, ptr %15, align 8, !tbaa !432, !alias.scope !2003
  store ptr %i.hr, ptr %16, align 8, !tbaa !432, !alias.scope !2004
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.ij = load ptr, ptr %11, align 8, !tbaa !432  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ik = load ptr, ptr %10, align 8, !tbaa !432  ; 3 uses
  store ptr %i.ik, ptr %i.c, align 8, !tbaa !382
  %i.il = load ptr, ptr %i.b, align 8, !tbaa !382 ; 4 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %.not28.i168 = icmp eq ptr %i.il, %i.ik
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, %bb.ab
  %indvar484 = phi i64 [ %indvar.next485, %bb.ab ], [ 0, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 2 uses
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.ik, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 9 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.jq, %bb.ab ], [ %i.ij, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 6 uses
  %i.in = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.in, label %.lr.ph.i.i.preheader, label %bb.y

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i169
  %.031.i483 = ptrtoaddr ptr %.031.i to i64
  %i.io = add i64 %.031.i483, -8
  %i.ip = sub i64 %i.io, %i.im                    ; 3 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %min.iters.check487 = icmp ult i64 %i.ip, 168
  br i1 %min.iters.check487, label %.lr.ph.i.i.preheader507, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph.i.i.preheader
  %i.is = and i64 %i.ip, -8                       ; 2 uses
  %i.it = sub nuw nsw i64 -8, %i.is
  %i.iu = getelementptr i8, ptr %.031.i, i64 %i.it
  %i.iv = shl i64 %indvar484, 3
  %i.iw = add i64 %i.iv, %i.is
  %i.ix = sub nuw nsw i64 -8, %i.iw
  %i.iy = getelementptr i8, ptr %i.ij, i64 %i.ix
  %bound0489 = icmp ult ptr %i.iu, %.02129.i
  %bound1490 = icmp ult ptr %i.iy, %.031.i
  %found.conflict491 = and i1 %bound0489, %bound1490
  br i1 %found.conflict491, label %.lr.ph.i.i.preheader507, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %i.ir, 4611686018427387900  ; 3 uses
  %i.iz = mul i64 %n.vec493, -8                   ; 2 uses
  %i.ja = getelementptr i8, ptr %.02129.i, i64 %i.iz
  %i.jb = getelementptr i8, ptr %.031.i, i64 %i.iz
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next502, %vector.body494 ] ; 2 uses
  %i.jc = mul i64 %index495, -8                   ; 2 uses
  %next.gep496 = getelementptr i8, ptr %.02129.i, i64 %i.jc ; 2 uses
  %next.gep497 = getelementptr i8, ptr %.031.i, i64 %i.jc ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %next.gep497, i64 -16 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %next.gep497, i64 -32 ; 2 uses
  %wide.load498 = load <2 x ptr>, ptr %i.jd, align 8, !tbaa !114, !alias.scope !2005, !noalias !2006
  %wide.load499 = load <2 x ptr>, ptr %i.je, align 8, !tbaa !114, !alias.scope !2005, !noalias !2006
  %i.jf = getelementptr inbounds i8, ptr %next.gep496, i64 -16 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep496, i64 -32 ; 2 uses
  %wide.load500 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !114, !alias.scope !2006
  %wide.load501 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !114, !alias.scope !2006
  store <2 x i64> %wide.load500, ptr %i.jd, align 8, !tbaa !114, !alias.scope !2005, !noalias !2006
  store <2 x i64> %wide.load501, ptr %i.je, align 8, !tbaa !114, !alias.scope !2005, !noalias !2006
  store <2 x ptr> %wide.load498, ptr %i.jf, align 8, !tbaa !114, !alias.scope !2006
  store <2 x ptr> %wide.load499, ptr %i.jg, align 8, !tbaa !114, !alias.scope !2006
  %index.next502 = add nuw i64 %index495, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next502, %n.vec493
  br i1 %i.jh, label %middle.block503, label %vector.body494, !llvm.loop !1983

middle.block503:                                  ; preds = %vector.body494
  %cmp.n504 = icmp eq i64 %i.ir, %n.vec493
  br i1 %cmp.n504, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i.preheader507

.lr.ph.i.i.preheader507:                          ; preds = %vector.memcheck488, %.lr.ph.i.i.preheader, %middle.block503
  %.08.i.i.ph = phi ptr [ %.02129.i, %vector.memcheck488 ], [ %.02129.i, %.lr.ph.i.i.preheader ], [ %i.ja, %middle.block503 ]
  %.057.i.i.ph = phi ptr [ %.031.i, %vector.memcheck488 ], [ %.031.i, %.lr.ph.i.i.preheader ], [ %i.jb, %middle.block503 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader507, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.jj, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader507 ]
  %.057.i.i = phi ptr [ %i.ji, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader507 ]
  %i.ji = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !114
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !114
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.jj, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %i.il, %i.ji
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i, !llvm.loop !1984

bb.y:                                             ; preds = %.lr.ph.i169
  %i.jl = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.jn = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.jp = icmp ult ptr %i.jn, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.jq, align 8, !tbaa !114 ; 2 uses
  br i1 %i.jp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jr = ptrtoint ptr %i.jo to i64
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jm, align 8, !tbaa !114
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.js = ptrtoint ptr %i.jn to i64
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jl, align 8, !tbaa !114
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.jm, %bb.z ], [ %.01930.i, %bb.aa ]
  %.1.i171 = phi ptr [ %.031.i, %bb.z ], [ %i.jl, %bb.aa ] ; 2 uses
  %.not.i172 = icmp eq ptr %i.il, %.1.i171
  %indvar.next485 = add i64 %indvar484, 1
  br i1 %.not.i172, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169, !llvm.loop !1985

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i, %middle.block503, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EEvT_T0_T1_NS0_9iter_sizeIS12_E4typeES15_S15_S15_S15_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat {
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
  store i8 1, ptr %i.a, align 1, !tbaa !118
  br label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx105 = shl i64 %2, 3                        ; 4 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = shl i64 %3, 3
  %i.l = mul i64 %2, %i.b
  %i.m = add i64 %i.l, %3
  %i.n = shl i64 %i.m, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.n
  %i.o = add i64 %.idx105, -8                     ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 56
  %i.r = getelementptr i8, ptr %1, i64 %i.k
  %stride.check = icmp slt i64 %.idx105, 0
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit
  %.idx130 = shl i64 %i.bl, 3                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx130 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !118
  %.not77120 = icmp eq i64 %i.bl, 0
  br i1 %.not77120, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.v = icmp eq ptr %.1102, %i.u
  br i1 %i.v, label %.lr.ph125.split.us.preheader.preheader, label %.lr.ph125.split

.lr.ph125.split.us.preheader.preheader:           ; preds = %.lr.ph125
  %i.w = add i64 %.idx130, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol

.lr.ph125.split.us.preheader.prol:                ; preds = %.lr.ph125.split.us.preheader.preheader, %.lr.ph125.split.us.preheader.prol
  %.0123.us.prol = phi ptr [ %i.aa, %.lr.ph125.split.us.preheader.prol ], [ %0, %.lr.ph125.split.us.preheader.preheader ]
  %.069122.us.prol = phi ptr [ %i.z, %.lr.ph125.split.us.preheader.prol ], [ %i.d, %.lr.ph125.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph125.split.us.preheader.prol ], [ 0, %.lr.ph125.split.us.preheader.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.069122.us.prol, i64 %2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0123.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol, !llvm.loop !2007

.lr.ph125.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph125.split.us.preheader.prol, %.lr.ph125.split.us.preheader.preheader
  %.069122.us.lcssa.unr = phi ptr [ poison, %.lr.ph125.split.us.preheader.preheader ], [ %.069122.us.prol, %.lr.ph125.split.us.preheader.prol ]
  %.0123.us.unr = phi ptr [ %0, %.lr.ph125.split.us.preheader.preheader ], [ %i.aa, %.lr.ph125.split.us.preheader.prol ]
  %.069122.us.unr = phi ptr [ %i.d, %.lr.ph125.split.us.preheader.preheader ], [ %i.z, %.lr.ph125.split.us.preheader.prol ]
  %i.ab = icmp ult i64 %i.w, 56
  br i1 %i.ab, label %._crit_edge126, label %.lr.ph125.split.us.preheader

.lr.ph125.split.us.preheader:                     ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader
  %.0123.us = phi ptr [ %i.ak, %.lr.ph125.split.us.preheader ], [ %.0123.us.unr, %.lr.ph125.split.us.preheader.prol.loopexit ]
  %.069122.us = phi ptr [ %i.aj, %.lr.ph125.split.us.preheader ], [ %.069122.us.unr, %.lr.ph125.split.us.preheader.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.069122.us, i64 %2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = getelementptr inbounds nuw i8, ptr %.0123.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ak, %i.t
  br i1 %.not77.us.7, label %._crit_edge126, label %.lr.ph125.split.us.preheader, !llvm.loop !2008

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.071117 = phi ptr [ %i.d, %.lr.ph ], [ %i.bm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 8 uses
  %.072116 = phi i64 [ %i.h, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 4 uses
  %.073115 = phi ptr [ %0, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 8 uses
  %.074114 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.075113 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ]
  %.0100112 = phi i64 [ %i.b, %.lr.ph ], [ %i.cl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.0101111 = phi ptr [ %i.f, %.lr.ph ], [ %.1102, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 4 uses
  %.val108110 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 3 uses
  %i.al = icmp ult i64 %.072116, %.val108110
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.ba, %.thread26.i ], [ %.072116, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.az, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.02228.i, %2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.am
  %i.ao = mul i64 %.029.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.02228.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.029.i
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !250 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !250 ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.at
  br i1 %i.au, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.av = icmp ult ptr %i.at, %i.as
  br i1 %i.av, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !250
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !250
  %i.ay = icmp ult ptr %i.aw, %i.ax
  %cond.fr.i = freeze i1 %i.ay
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.az = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.ba = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %.val108110
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit, label %.lr.ph.i, !llvm.loop !45

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.az, %.thread26.i ] ; 5 uses
  %.idx106 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.073115, i64 %.idx106 ; 4 uses
  %i.bc = add i64 %.022.lcssa.i, 2
  %i.bd = tail call i64 @llvm.umax.i64(i64 %.val108110, i64 %i.bc) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %.0100112)
  %i.be = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.be, 3
  %i.bf = getelementptr i8, ptr %.071117, i64 %.idx ; 6 uses
  %i.bg = trunc nuw i8 %.074114 to i1
  %or.cond = and i1 %i.j, %i.bg
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !250
  %i.bj = icmp uge ptr %i.bh, %i.bi
  %spec.select = zext i1 %i.bj to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %.1 = phi i8 [ %.074114, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bk = zext nneg i8 %.1 to i64
  %i.bl = add i64 %.075113, %i.bk                 ; 3 uses
  %i.bm = getelementptr i8, ptr %.071117, i64 %.idx105 ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bn = mul i64 %indvar, %.idx105
  %i.bo = shl i64 %.022.lcssa.i, 3
  %i.bp = add i64 %i.bo, 8
  %i.bq = mul i64 %2, %i.bp
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq
  %bound0 = icmp ult ptr %i.d, %i.bs
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bt = or i1 %found.conflict, %stride.check
  br i1 %i.bt, label %.lr.ph.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bu = getelementptr i8, ptr %i.bf, i64 %i.s
  %i.bv = getelementptr i8, ptr %.071117, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bw ; 3 uses
  %next.gep163 = getelementptr i8, ptr %.071117, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep163, align 8, !tbaa !114, !alias.scope !2015, !noalias !2016
  %wide.load164 = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !114, !alias.scope !2015, !noalias !2016
  %i.by = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2016
  %wide.load166 = load <2 x i64>, ptr %i.by, align 8, !tbaa !114, !alias.scope !2016
  store <2 x i64> %wide.load165, ptr %next.gep163, align 8, !tbaa !114, !alias.scope !2015, !noalias !2016
  store <2 x i64> %wide.load166, ptr %i.bx, align 8, !tbaa !114, !alias.scope !2015, !noalias !2016
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2016
  store <2 x ptr> %wide.load164, ptr %i.by, align 8, !tbaa !114, !alias.scope !2016
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2012

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071117, %vector.memcheck ], [ %.071117, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !114
  %i.ca = load i64, ptr %.010.i.i, align 8, !tbaa !114
  store i64 %i.ca, ptr %.079.i.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cb, %i.bm
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i, !llvm.loop !2013

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bb, align 8, !tbaa !114
  %i.cd = load i64, ptr %.073115, align 8, !tbaa !114
  store i64 %i.cd, ptr %i.bb, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.073115, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i
  %i.ce = icmp eq ptr %i.bb, %.0101111
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp eq ptr %.0101111, %.073115
  %spec.select103 = select i1 %i.cf, ptr %i.bb, ptr %.0101111
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1102 = phi ptr [ %.0101111, %bb.f ], [ %spec.select103, %bb.j ], [ %.073115, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.073115, i64 8
  %i.ch = icmp ne i64 %.072116, 0
  %.neg = sext i1 %i.ch to i64
  %i.ci = add i64 %.072116, %.neg
  %i.cj = icmp ne i64 %i.bd, 0
  %.neg78 = sext i1 %i.cj to i64
  %i.ck = add i64 %.sroa.speculated89, %.neg78
  %i.cl = add i64 %.0100112, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2014

._crit_edge126.loopexit132:                       ; preds = %bb.l
  %i.cm = trunc nuw i8 %i.dd to i1
  %i.cn = select i1 %i.cm, ptr %i.df, ptr %i.dg
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader, %._crit_edge.thread, %._crit_edge126.loopexit132, %._crit_edge
  %i.co = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cn, %._crit_edge126.loopexit132 ], [ %.069122.us.lcssa.unr, %.lr.ph125.split.us.preheader.prol.loopexit ], [ %i.ai, %.lr.ph125.split.us.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.cq = ptrtoint ptr %i.e to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpeckENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_(ptr noundef %i.co, ptr noundef %i.e, ptr noundef %i.cp, i64 noundef %i.ct, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph125.split:                                  ; preds = %.lr.ph125, %bb.l
  %i.cu = phi i8 [ %i.dd, %bb.l ], [ 1, %.lr.ph125 ]
  %i.cv = phi i8 [ %i.de, %bb.l ], [ 1, %.lr.ph125 ] ; 2 uses
  %.0123 = phi ptr [ %i.dh, %bb.l ], [ %0, %.lr.ph125 ] ; 2 uses
  %.069122 = phi ptr [ %i.dg, %bb.l ], [ %i.d, %.lr.ph125 ] ; 4 uses
  %.070121 = phi ptr [ %i.df, %bb.l ], [ %1, %.lr.ph125 ]
  %i.cw = load ptr, ptr %.0123, align 8, !tbaa !250
  %i.cx = load ptr, ptr %.1102, align 8, !tbaa !250
  %i.cy = icmp ult ptr %i.cw, %i.cx
  %i.cz = zext i1 %i.cy to i8
  %i.da = icmp eq i8 %i.cv, %i.cz
  br i1 %i.da, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph125.split
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.069122, i64 %2
  %i.dc = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %.070121, ptr noundef %.069122, ptr noundef %i.db, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !118, !range !90 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph125.split, %bb.k
  %i.dd = phi i8 [ %.pre, %bb.k ], [ %i.cu, %.lr.ph125.split ] ; 2 uses
  %i.de = phi i8 [ %.pre, %bb.k ], [ %i.cv, %.lr.ph125.split ]
  %i.df = phi ptr [ %i.dc, %bb.k ], [ %.069122, %.lr.ph125.split ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.069122, i64 %2 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0123, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dh, %i.t
  br i1 %.not77, label %._crit_edge126.loopexit132, label %.lr.ph125.split, !llvm.loop !2008
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPN4CGAL8internal11CC_iteratorINS5_17Compact_containerINS5_37Constrained_triangulation_face_base_2INS5_5EpeckENS5_25Triangulation_face_base_2ISA_NS5_28Triangulation_ds_face_base_2INS5_30Triangulation_data_structure_2INS5_27Triangulation_vertex_base_2ISA_NS5_30Triangulation_ds_vertex_base_2IvEEEENS9_ISA_NSB_ISA_NSC_IvEEEEEEEEEEEEEENS5_7DefaultESP_SP_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISR_ESR_NS_11move_detail8identityISR_EEEENS0_7move_opESS_EEvT_T0_T1_NS0_9iter_sizeIS15_E4typeES18_S18_S18_S18_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.545", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.545", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %7, ptr %i.d, align 8, !tbaa !382
  %i.h = getelementptr [8 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr %i.h, ptr %i.e, align 8, !tbaa !382
  %i.i = mul i64 %i.f, %2
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %.not220 = icmp eq i64 %i.f, 0
  br i1 %.not220, label %_ZN5boost4moveIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpeckENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit154, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = icmp eq i64 %5, 0
  %i.l = select i1 %i.k, i64 0, i64 %4            ; 2 uses
  %i.m = add i64 %i.l, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %.idx212 = shl i64 %2, 3                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx212 ; 2 uses
  %i.o = shl i64 %3, 3                            ; 2 uses
  %i.p = add i64 %i.o, 8
  %i.q = add i64 %i.o, %i.b
  %i.r = add i64 %i.q, %.idx212
  %i.s = add i64 %i.r, -8
  %scevgep360 = getelementptr i8, ptr %7, i64 8
  %i.t = shl i64 %3, 3
  %i.u = add i64 %i.t, %i.b
  %i.v = add i64 %i.u, %.idx212
  %i.w = add i64 %i.v, -8
  %i.x = add i64 %.idx212, -8                     ; 2 uses
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 88
  %bound0309 = icmp ult ptr %7, %i.j
  %bound1310 = icmp ult ptr %i.h, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %stride.check = icmp slt i64 %.idx212, 0
  %i.aa = or i1 %found.conflict311, %stride.check
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 3 uses
  %i.ac = getelementptr i8, ptr %7, i64 %i.ab     ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gd, %bb.x ] ; 5 uses
  %i.ae = phi ptr [ %7, %.lr.ph ], [ %i.ge, %bb.x ] ; 7 uses
  %i.af = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gm, %bb.x ] ; 3 uses
  %.0231 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104230 = phi i64 [ %i.l, %.lr.ph ], [ %i.gk, %bb.x ] ; 4 uses
  %.0106227 = phi ptr [ %0, %.lr.ph ], [ %i.gi, %bb.x ] ; 16 uses
  %.0108226 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111224 = phi ptr [ %i.h, %.lr.ph ], [ %i.gh, %bb.x ] ; 5 uses
  %.0114223 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0195222 = phi ptr [ %i.g, %.lr.ph ], [ %.2197, %bb.x ] ; 16 uses
  %.0199221 = phi i64 [ %i.f, %.lr.ph ], [ %i.gn, %bb.x ] ; 4 uses
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %.0114223325 = ptrtoaddr ptr %.0114223 to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = icmp ult i64 %.0104230, %.0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPN4CGAL8internal11CC_iteratorINS5_17Compact_containerINS5_37Constrained_triangulation_face_base_2INS5_5EpeckENS5_25Triangulation_face_base_2ISA_NS5_28Triangulation_ds_face_base_2INS5_30Triangulation_data_structure_2INS5_27Triangulation_vertex_base_2ISA_NS5_30Triangulation_ds_vertex_base_2IvEEEENS9_ISA_NSB_ISA_NSC_IvEEEEEEEEEEEEEENS5_7DefaultESP_SP_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISR_ESR_NS_11move_detail8identityISR_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_S13_S15_S15_S15_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread25.i
  %.028.i = phi i64 [ %i.ax, %.thread25.i ], [ %.0104230, %bb.b ] ; 4 uses
  %.02227.i = phi i64 [ %i.aw, %.thread25.i ], [ 0, %bb.b ] ; 4 uses
  %i.aj = mul i64 %.02227.i, %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = mul i64 %.028.i, %2
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106227, i64 %.02227.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0106227, i64 %.028.i
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !250 ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !250 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7move_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %.sroa.015.0.ph.i.i = phi ptr [ %i.aq, %.split.i.i ], [ %i.e, %bb.f ] ; 2 uses
  %.sroa.020.0.ph.i.i = phi ptr [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.aj, %bb.f ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.al, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2089 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !2089 ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !114, !noalias !2089
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !114, !noalias !2089
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !114, !noalias !2089
  %.not32.i.i = icmp eq ptr %i.aq, %i.ac
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !47

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !114, !noalias !2089
  %.not31.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !47

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bb, %.split.i14.i ], [ %i.ai, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.av, %.split.i14.i ], [ %i.af, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.ba, %.split.i14.i ], [ %i.e, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.aj, %bb.i ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.aw, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !2090 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !noalias !2090 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.ax, %i.ay
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !114, !noalias !2090
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !114, !noalias !2090
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !114, !noalias !2090
  %.not33.i.i = icmp eq ptr %i.ba, %i.ac
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !48

bb.k:                                             ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !114, !noalias !2090
  %.not32.i19.i = icmp eq ptr %i.aw, %i.ah
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !48

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bk, %bb.n ], [ %i.ai, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bl, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.aj, %bb.m ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bg, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2091 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !noalias !2091 ; 2 uses
  %i.bj = icmp ult ptr %i.bh, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bl = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bm = ptrtoint ptr %i.bi to i64
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !114, !noalias !2091
  %i.bn = icmp eq ptr %i.bl, %i.ac
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !49

bb.o:                                             ; preds = %.preheader.i.i
  %i.bo = ptrtoint ptr %i.bh to i64
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !114, !noalias !2091
  %i.bp = icmp eq ptr %i.bg, %i.ah
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !49

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ai, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.e, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.aj, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !2092 ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !2092 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !114, !noalias !2092
  %i.bx = icmp eq ptr %i.bv, %i.ac
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !50

bb.r:                                             ; preds = %.preheader.i6.i
  %i.by = ptrtoint ptr %i.bt to i64
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !114, !noalias !2092
  %i.bz = icmp eq ptr %i.br, %i.ah
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !50

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.al, %bb.h ], [ %i.aw, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bg, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ac, %bb.q ], [ %i.ac, %bb.n ], [ %i.e, %bb.p ], [ %i.e, %bb.m ], [ %i.ac, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ac, %.split.i14.i ]
  %.sroa.067.0.ph = phi ptr [ %i.au, %bb.h ], [ %i.be, %bb.k ], [ %i.bu, %bb.r ], [ %i.bk, %bb.o ], [ %i.ai, %bb.p ], [ %i.ai, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bk, %bb.n ], [ %i.bu, %bb.q ], [ %i.bb, %.split.i14.i ]
  %.sroa.074.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.af, %bb.r ], [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.ak, %.split.i.i ], [ %i.af, %bb.n ], [ %i.af, %bb.q ], [ %i.av, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !432, !noalias !91
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !432, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.067.0 = phi ptr [ %i.ai, %bb.f ], [ %i.ai, %bb.i ], [ %.sroa.067.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 12 uses
  %.sroa.074.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.074.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.074.0319 = ptrtoaddr ptr %.sroa.074.0 to i64
  store ptr %.sroa.067.0, ptr %6, align 8, !tbaa !432
  %i.ca = load ptr, ptr %3, align 8, !tbaa !432   ; 18 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %.sroa.067.0
  br i1 %i.cc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.074.0, %i.ag
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cd = shl i64 %.018.lcssa.i, 3
  %.neg373 = add i64 %i.cd, 8
  %.neg374 = mul i64 %.neg373, %7
  %i.ce = add i64 %.sroa.074.0319, -8             ; 2 uses
  %i.cf = add i64 %.neg374, %i.ce
  %i.cg = sub i64 %i.cf, %i.f                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 88
  br i1 %min.iters.check, label %.lr.ph.i28.preheader379, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cj = shl i64 %.018.lcssa.i, 3
  %.neg375 = add i64 %i.cj, 8
  %.neg376 = mul i64 %.neg375, %7
  %i.ck = add i64 %.neg376, %i.ce
  %i.cl = xor i64 %i.ck, -1
  %.not377 = add i64 %i.cl, %i.f
  %i.cm = and i64 %.not377, -8                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.074.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ca, i64 %i.cm
  %bound0 = icmp ult ptr %i.cn, %i.ca
  %bound1 = icmp ult ptr %i.co, %.sroa.074.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader379, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cp = mul i64 %n.vec, -8                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ca, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.074.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.cs ; 2 uses
  %next.gep320 = getelementptr i8, ptr %.sroa.074.0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep320, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep320, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !114, !alias.scope !2093, !noalias !2094
  %wide.load321 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !114, !alias.scope !2093, !noalias !2094
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load322 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !114, !alias.scope !2095, !noalias !2096
  %wide.load323 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !114, !alias.scope !2095, !noalias !2096
  store <2 x i64> %wide.load322, ptr %i.ct, align 8, !tbaa !114, !alias.scope !2093, !noalias !2094
  store <2 x i64> %wide.load323, ptr %i.cu, align 8, !tbaa !114, !alias.scope !2093, !noalias !2094
  store <2 x ptr> %wide.load, ptr %i.cv, align 8, !tbaa !114, !alias.scope !2095, !noalias !2096
  store <2 x ptr> %wide.load321, ptr %i.cw, align 8, !tbaa !114, !alias.scope !2095, !noalias !2096
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader379

.lr.ph.i28.preheader379:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.055.0.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.074.0, %vector.memcheck ], [ %.sroa.074.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader379, %.lr.ph.i28
  %.sroa.055.0 = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.sroa.055.0.ph, %.lr.ph.i28.preheader379 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader379 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.055.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cz, align 8, !tbaa !114, !noalias !2096
  %i.db = load i64, ptr %i.da, align 8, !tbaa !114, !noalias !2096
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !114, !noalias !2096
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.da, align 8, !tbaa !114, !noalias !2096
  %.not.i = icmp eq ptr %i.cz, %i.ag
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !2077

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.ca, %i.ac           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.cb, %invariant.op
  %i.dc = sub i64 %.reass, %i.f                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check342 = icmp ult i64 %i.dc, 120
  br i1 %min.iters.check342, label %.lr.ph.i29.preheader381, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph.i29.preheader
  %i.df = add i64 %i.b, %i.cb
  %reass.sub = sub i64 %i.f, %i.df
  %.not371 = add i64 %reass.sub, 7
  %i.dg = and i64 %.not371, -8                    ; 3 uses
  %i.dh = getelementptr i8, ptr %.sroa.067.0, i64 %i.dg ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.074.0, i64 %i.dg ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ca, i64 %i.dg  ; 2 uses
  %bound0344 = icmp ult ptr %i.dh, %.sroa.074.0
  %bound1345 = icmp ult ptr %i.di, %.sroa.067.0
  %found.conflict346 = and i1 %bound0344, %bound1345
  %bound0347 = icmp ult ptr %i.dh, %i.ca
  %bound1348 = icmp ult ptr %i.dj, %.sroa.067.0
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx = or i1 %found.conflict346, %found.conflict349
  %bound0350 = icmp ult ptr %i.di, %i.ca
  %bound1351 = icmp ult ptr %i.dj, %.sroa.074.0
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx, %found.conflict352
  br i1 %conflict.rdx353, label %.lr.ph.i29.preheader381, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck343
  %n.vec355 = and i64 %i.de, 4611686018427387900  ; 3 uses
  %i.dk = mul i64 %n.vec355, -8                   ; 3 uses
  %i.dl = getelementptr i8, ptr %.sroa.074.0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.sroa.067.0, i64 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ca, i64 %i.dk
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next365, %vector.body356 ] ; 2 uses
  %i.do = mul i64 %index357, -8                   ; 3 uses
  %next.gep358 = getelementptr i8, ptr %.sroa.074.0, i64 %i.do ; 2 uses
  %next.gep359 = getelementptr i8, ptr %.sroa.067.0, i64 %i.do ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.ca, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep358, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep358, i64 -32 ; 2 uses
  %wide.load361 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !114, !alias.scope !2097, !noalias !2098
  %wide.load362 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !114, !alias.scope !2097, !noalias !2098
  %i.dr = getelementptr inbounds i8, ptr %next.gep359, i64 -16
  %i.ds = getelementptr inbounds i8, ptr %next.gep359, i64 -32
  store <2 x i64> %wide.load361, ptr %i.dr, align 8, !tbaa !114, !alias.scope !2099, !noalias !2100
  store <2 x i64> %wide.load362, ptr %i.ds, align 8, !tbaa !114, !alias.scope !2099, !noalias !2100
  %i.dt = getelementptr inbounds i8, ptr %next.gep360, i64 -16
  %i.du = getelementptr inbounds i8, ptr %next.gep360, i64 -32
  %wide.load363 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !114, !alias.scope !2101, !noalias !2102
  %wide.load364 = load <2 x i64>, ptr %i.du, align 8, !tbaa !114, !alias.scope !2101, !noalias !2102
  store <2 x i64> %wide.load363, ptr %i.dp, align 8, !tbaa !114, !alias.scope !2097, !noalias !2098
  store <2 x i64> %wide.load364, ptr %i.dq, align 8, !tbaa !114, !alias.scope !2097, !noalias !2098
  %index.next365 = add nuw i64 %index357, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next365, %n.vec355
  br i1 %i.dv, label %middle.block366, label %vector.body356, !llvm.loop !2084

middle.block366:                                  ; preds = %vector.body356
  %cmp.n367 = icmp eq i64 %i.de, %n.vec355
  br i1 %cmp.n367, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader381

.lr.ph.i29.preheader381:                          ; preds = %vector.memcheck343, %.lr.ph.i29.preheader, %middle.block366
  %.sroa.049.0.ph = phi ptr [ %.sroa.074.0, %vector.memcheck343 ], [ %.sroa.074.0, %.lr.ph.i29.preheader ], [ %i.dl, %middle.block366 ]
  %.sroa.048.0.ph = phi ptr [ %.sroa.067.0, %vector.memcheck343 ], [ %.sroa.067.0, %.lr.ph.i29.preheader ], [ %i.dm, %middle.block366 ]
  %.ph382 = phi ptr [ %i.ca, %vector.memcheck343 ], [ %i.ca, %.lr.ph.i29.preheader ], [ %i.dn, %middle.block366 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader381, %.lr.ph.i29
  %.sroa.049.0 = phi ptr [ %i.dy, %.lr.ph.i29 ], [ %.sroa.049.0.ph, %.lr.ph.i29.preheader381 ]
  %.sroa.048.0 = phi ptr [ %i.dz, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader381 ]
  %i.dw = phi ptr [ %i.dx, %.lr.ph.i29 ], [ %.ph382, %.lr.ph.i29.preheader381 ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !114, !noalias !2102
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !114, !noalias !2102
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !114, !noalias !2102
  store i64 %i.eb, ptr %i.dy, align 8, !tbaa !114, !noalias !2102
  %.not.i30 = icmp eq ptr %i.dx, %i.ac
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2085

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0101.0 = phi ptr [ %i.ee, %.lr.ph.i33 ], [ %.sroa.067.0, %bb.w ]
  %i.ec = phi ptr [ %i.ed, %.lr.ph.i33 ], [ %i.ca, %bb.w ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0101.0, i64 -8 ; 3 uses
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !114, !noalias !2103
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !114, !noalias !2103
  %.not.i34 = icmp eq ptr %i.ed, %i.ac
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !51

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block366, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ac, %bb.s ], [ %i.ee, %.lr.ph.i33 ], [ %i.ca, %bb.t ], [ %i.da, %.lr.ph.i28 ], [ %.sroa.067.0, %bb.v ], [ %.sroa.067.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.dm, %middle.block366 ], [ %i.dz, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !432
  %i.eg = load ptr, ptr %1, align 8, !tbaa !432   ; 4 uses
  %.neg109 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %.neg109 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ac, %.sroa.074.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg109, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i37 = load ptr, ptr %i.ei, align 8, !tbaa !114
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !114
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i37, ptr %i.ej, align 8, !tbaa !114
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.el = load ptr, ptr %2, align 8, !tbaa !432   ; 2 uses
  %i.em = icmp eq ptr %i.eh, %i.el
  br i1 %i.em, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = icmp eq ptr %i.el, %i.eg
  br i1 %i.en, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eg, %bb.y ], [ %i.eh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !432
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !432
  %i.eo = load ptr, ptr %1, align 8, !tbaa !432
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 2 uses
  store ptr %i.ep, ptr %1, align 8, !tbaa !432
  %i.eq = icmp ne i64 %.0151, 0
  %.neg = sext i1 %i.eq to i64
  %i.er = add i64 %.0151, %.neg
  %i.es = icmp ne i64 %i.ab, 0
  %.neg24 = sext i1 %i.es to i64
  %i.et = add i64 %.sroa.speculated, %.neg24
  %i.eu = add i64 %.0106150, -1                   ; 2 uses
  %.not = icmp eq i64 %i.eu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2088

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.ev = load ptr, ptr %6, align 8, !tbaa !432
  store ptr %i.ev, ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !382    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !382    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !382    ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
.split.i.i:                                       ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i.i, i64 -8 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114, !noalias !2159
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !114, !noalias !2159
  %i.av = load i64, ptr %i.as, align 8, !tbaa !114, !noalias !2159
  store i64 %i.av, ptr %i.am, align 8, !tbaa !114, !noalias !2159
  store i64 %i.au, ptr %i.as, align 8, !tbaa !114, !noalias !2159
  %.not35.i.i = icmp eq ptr %i.as, %i.ae
  br i1 %.not35.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !2124

bb.h:                                             ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !114, !noalias !2159
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !114, !noalias !2159
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.an, align 8, !tbaa !114, !noalias !2159
  %.not34.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not34.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !2124

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.021.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ak, %bb.i ]
  %.sroa.013.0.ph.i9.i = phi ptr [ %i.ay, %.split.i14.i ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.g, %bb.i ] ; 2 uses
  %.sroa.022.0.ph.i11.i = phi ptr [ %.sroa.022.0.i12.i, %.split.i14.i ], [ %i.al, %bb.i ]
  %i.ay = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.021.1.i = phi ptr [ %.sroa.021.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.022.0.i12.i = phi ptr [ %.sroa.022.0.ph.i11.i, %.outer.i8.i ], [ %i.az, %bb.k ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.022.0.i12.i, i64 -8 ; 5 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !2160 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !2160 ; 2 uses
  %.not34.i13.i = icmp ult ptr %i.ba, %i.bb
  br i1 %.not34.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i10.i, i64 -8 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !114, !noalias !2160
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !114, !noalias !2160
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !114, !noalias !2160
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !114, !noalias !2160
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !114, !noalias !2160
  %.not36.i.i = icmp eq ptr %i.bd, %i.ae
  br i1 %.not36.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !2127

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i19.i = load ptr, ptr %i.bi, align 8, !tbaa !114, !noalias !2160
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !114, !noalias !2160
  store ptr %.sroa.0.0.copyload.i.i19.i, ptr %i.az, align 8, !tbaa !114, !noalias !2160
  %.not35.i20.i = icmp eq ptr %i.az, %i.aj
  br i1 %.not35.i20.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !2127

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.08.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.g, %bb.m ] ; 3 uses
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.al, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2161 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !2161 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bo, align 8, !tbaa !114, !noalias !2161 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !114, !noalias !2161
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bp, align 8, !tbaa !114, !noalias !2161
  %i.br = icmp eq ptr %i.bp, %i.ae
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !2132

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !114, !noalias !2161
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bk, align 8, !tbaa !114, !noalias !2161
  %i.bt = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !2132

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.ak, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.g, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.al, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2162 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !2162 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.by, align 8, !tbaa !114, !noalias !2162 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !114, !noalias !2162
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bz, align 8, !tbaa !114, !noalias !2162
  %i.cb = icmp eq ptr %i.bz, %i.ae
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !2135

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !114, !noalias !2162
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bv, align 8, !tbaa !114, !noalias !2162
  %i.cd = icmp eq ptr %i.bv, %i.aj
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !2135

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.an, %bb.h ], [ %i.az, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.ae, %bb.q ], [ %i.ae, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.m ], [ %i.ae, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.ae, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.ax, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %i.at, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ah, %bb.r ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ], [ %i.am, %.split.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %i.ay, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !432, !noalias !91
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !432, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.078.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.078.0323 = ptrtoaddr ptr %.sroa.078.0 to i64
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !432
  %i.ce = load ptr, ptr %3, align 8, !tbaa !432   ; 23 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 4 uses
  %i.cg = icmp eq ptr %i.ce, %.sroa.071.0
  br i1 %i.cg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ai
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.t
  %i.ch = shl i64 %.018.lcssa.i, 3
  %.neg407 = add i64 %i.ch, 8
  %.neg408 = mul i64 %.neg407, %7
  %i.ci = add i64 %.sroa.078.0323, -8             ; 2 uses
  %i.cj = add i64 %.neg408, %i.ci
  %i.ck = sub i64 %i.cj, %i.h                     ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 88
  br i1 %min.iters.check, label %.lr.ph.i29.preheader413, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i29.preheader
  %i.cn = shl i64 %.018.lcssa.i, 3
  %.neg409 = add i64 %i.cn, 8
  %.neg410 = mul i64 %.neg409, %7
  %i.co = add i64 %.neg410, %i.ci
  %i.cp = xor i64 %i.co, -1
  %.not411 = add i64 %i.cp, %i.h
  %i.cq = and i64 %.not411, -8                    ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.078.0, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.cq
  %bound0 = icmp ult ptr %i.cr, %i.ce
  %bound1 = icmp ult ptr %i.cs, %.sroa.078.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i29.preheader413, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.ct = mul i64 %n.vec, -8                      ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ce, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.078.0, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cw ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.078.0, i64 %i.cw ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %next.gep324, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep324, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !114, !alias.scope !2163, !noalias !2164
  %wide.load325 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !114, !alias.scope !2163, !noalias !2164
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load326 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !114, !alias.scope !2165, !noalias !2166
  %wide.load327 = load <2 x i64>, ptr %i.da, align 8, !tbaa !114, !alias.scope !2165, !noalias !2166
  store <2 x i64> %wide.load326, ptr %i.cx, align 8, !tbaa !114, !alias.scope !2163, !noalias !2164
  store <2 x i64> %wide.load327, ptr %i.cy, align 8, !tbaa !114, !alias.scope !2163, !noalias !2164
  store <2 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !114, !alias.scope !2165, !noalias !2166
  store <2 x ptr> %wide.load325, ptr %i.da, align 8, !tbaa !114, !alias.scope !2165, !noalias !2166
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !2141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader413

.lr.ph.i29.preheader413:                          ; preds = %vector.memcheck, %.lr.ph.i29.preheader, %middle.block
  %.sroa.059.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i29.preheader ], [ %i.cu, %middle.block ]
  %.ph = phi ptr [ %.sroa.078.0, %vector.memcheck ], [ %.sroa.078.0, %.lr.ph.i29.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader413, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.de, %.lr.ph.i29 ], [ %.sroa.059.0.ph, %.lr.ph.i29.preheader413 ]
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.ph, %.lr.ph.i29.preheader413 ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dd, align 8, !tbaa !114, !noalias !2166
  %i.df = load i64, ptr %i.de, align 8, !tbaa !114, !noalias !2166
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !114, !noalias !2166
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.de, align 8, !tbaa !114, !noalias !2166
  %.not.i = icmp eq ptr %i.dd, %i.ai
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2142

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i32 = icmp eq ptr %i.ce, %i.ae           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.cf, %invariant.op
  %i.dg = sub i64 %.reass, %i.h                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.dg, 88
  br i1 %min.iters.check374, label %.lr.ph.i30.preheader417, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i30.preheader
  %i.dj = sub i64 %i.cf, %i.h
  %i.dk = add i64 %i.c, %i.dj
  %.not405 = and i64 %i.dk, -8
  %i.dl = xor i64 %.not405, -8                    ; 3 uses
  %i.dm = getelementptr i8, ptr %.sroa.071.0, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.078.0, i64 %i.dl ; 2 uses
  %i.do = getelementptr i8, ptr %i.ce, i64 %i.dl  ; 2 uses
  %bound0376 = icmp ult ptr %i.dm, %.sroa.078.0
  %bound1377 = icmp ult ptr %i.dn, %.sroa.071.0
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %i.dm, %i.ce
  %bound1380 = icmp ult ptr %i.do, %.sroa.071.0
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict378, %found.conflict381
  %bound0382 = icmp ult ptr %i.dn, %i.ce
  %bound1383 = icmp ult ptr %i.do, %.sroa.078.0
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  br i1 %conflict.rdx385, label %.lr.ph.i30.preheader417, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck375
  %n.vec387 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dp = mul i64 %n.vec387, -8                   ; 3 uses
  %i.dq = getelementptr i8, ptr %.sroa.078.0, i64 %i.dp
  %i.dr = getelementptr i8, ptr %.sroa.071.0, i64 %i.dp ; 2 uses
  %i.ds = getelementptr i8, ptr %i.ce, i64 %i.dp
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next399, %vector.body388 ] ; 2 uses
  %i.dt = mul i64 %index389, -8                   ; 3 uses
  %next.gep390 = getelementptr i8, ptr %.sroa.078.0, i64 %i.dt ; 2 uses
  %next.gep391 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dt ; 2 uses
  %next.gep392 = getelementptr i8, ptr %i.ce, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep391, i64 -16 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %next.gep391, i64 -32 ; 2 uses
  %wide.load393 = load <2 x i64>, ptr %i.du, align 8, !tbaa !114, !alias.scope !2167, !noalias !2168
  %wide.load394 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !114, !alias.scope !2167, !noalias !2168
  %i.dw = getelementptr inbounds i8, ptr %next.gep390, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep390, i64 -32 ; 2 uses
  %wide.load395 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !114, !alias.scope !2169, !noalias !2170
  %wide.load396 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !114, !alias.scope !2169, !noalias !2170
  store <2 x i64> %wide.load395, ptr %i.du, align 8, !tbaa !114, !alias.scope !2167, !noalias !2168
  store <2 x i64> %wide.load396, ptr %i.dv, align 8, !tbaa !114, !alias.scope !2167, !noalias !2168
  %i.dy = getelementptr inbounds i8, ptr %next.gep392, i64 -16 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep392, i64 -32 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !114, !alias.scope !2171, !noalias !2172
  %wide.load398 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !114, !alias.scope !2171, !noalias !2172
  store <2 x i64> %wide.load397, ptr %i.dw, align 8, !tbaa !114, !alias.scope !2169, !noalias !2170
  store <2 x i64> %wide.load398, ptr %i.dx, align 8, !tbaa !114, !alias.scope !2169, !noalias !2170
  store <2 x i64> %wide.load393, ptr %i.dy, align 8, !tbaa !114, !alias.scope !2171, !noalias !2172
  store <2 x i64> %wide.load394, ptr %i.dz, align 8, !tbaa !114, !alias.scope !2171, !noalias !2172
  %index.next399 = add nuw i64 %index389, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next399, %n.vec387
  br i1 %i.ea, label %middle.block400, label %vector.body388, !llvm.loop !2149

middle.block400:                                  ; preds = %vector.body388
  %cmp.n401 = icmp eq i64 %i.di, %n.vec387
  br i1 %cmp.n401, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30.preheader417

.lr.ph.i30.preheader417:                          ; preds = %vector.memcheck375, %.lr.ph.i30.preheader, %middle.block400
  %.sroa.053.0.ph = phi ptr [ %.sroa.078.0, %vector.memcheck375 ], [ %.sroa.078.0, %.lr.ph.i30.preheader ], [ %i.dq, %middle.block400 ]
  %.sroa.052.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck375 ], [ %.sroa.071.0, %.lr.ph.i30.preheader ], [ %i.dr, %middle.block400 ]
  %.ph418 = phi ptr [ %i.ce, %vector.memcheck375 ], [ %i.ce, %.lr.ph.i30.preheader ], [ %i.ds, %middle.block400 ]
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader417, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ed, %.lr.ph.i30 ], [ %.sroa.053.0.ph, %.lr.ph.i30.preheader417 ]
  %.sroa.052.0 = phi ptr [ %i.ee, %.lr.ph.i30 ], [ %.sroa.052.0.ph, %.lr.ph.i30.preheader417 ]
  %i.eb = phi ptr [ %i.ec, %.lr.ph.i30 ], [ %.ph418, %.lr.ph.i30.preheader417 ]
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !114, !noalias !2172
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !114, !noalias !2172
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !114, !noalias !2172
  %i.eh = load i64, ptr %i.ec, align 8, !tbaa !114, !noalias !2172
  store i64 %i.eh, ptr %i.ed, align 8, !tbaa !114, !noalias !2172
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !114, !noalias !2172
  %.not.i31 = icmp eq ptr %i.ec, %i.ae
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !2150

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass527 = add i64 %i.cf, %invariant.op526
  %i.ei = sub i64 %.reass527, %i.h                ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ei, 56
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader414, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i34.preheader
  %i.el = sub i64 %i.cf, %i.h
  %i.em = add i64 %i.c, %i.el
  %.not406 = and i64 %i.em, -8
  %i.en = xor i64 %.not406, -8                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ce, i64 %i.en
  %i.ep = getelementptr i8, ptr %.sroa.071.0, i64 %i.en
  %bound0339 = icmp ult ptr %i.eo, %.sroa.071.0
  %bound1340 = icmp ult ptr %i.ep, %i.ce
  %found.conflict341 = and i1 %bound0339, %bound1340
  br i1 %found.conflict341, label %.lr.ph.i34.preheader414, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.ek, 4611686018427387900  ; 3 uses
  %i.eq = mul i64 %n.vec343, -8                   ; 2 uses
  %i.er = getelementptr i8, ptr %.sroa.071.0, i64 %i.eq ; 2 uses
  %i.es = getelementptr i8, ptr %i.ce, i64 %i.eq
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next352, %vector.body344 ] ; 2 uses
  %i.et = mul i64 %index345, -8                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.071.0, i64 %i.et ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.ce, i64 %i.et ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %next.gep347, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %next.gep347, i64 -32 ; 2 uses
  %wide.load348 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !114, !alias.scope !2173, !noalias !2174
  %wide.load349 = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !114, !alias.scope !2173, !noalias !2174
  %i.ew = getelementptr inbounds i8, ptr %next.gep346, i64 -16 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %next.gep346, i64 -32 ; 2 uses
  %wide.load350 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !114, !alias.scope !2175, !noalias !2176
  %wide.load351 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !114, !alias.scope !2175, !noalias !2176
  store <2 x i64> %wide.load350, ptr %i.eu, align 8, !tbaa !114, !alias.scope !2173, !noalias !2174
  store <2 x i64> %wide.load351, ptr %i.ev, align 8, !tbaa !114, !alias.scope !2173, !noalias !2174
  store <2 x ptr> %wide.load348, ptr %i.ew, align 8, !tbaa !114, !alias.scope !2175, !noalias !2176
  store <2 x ptr> %wide.load349, ptr %i.ex, align 8, !tbaa !114, !alias.scope !2175, !noalias !2176
  %index.next352 = add nuw i64 %index345, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next352, %n.vec343
  br i1 %i.ey, label %middle.block353, label %vector.body344, !llvm.loop !2156

middle.block353:                                  ; preds = %vector.body344
  %cmp.n354 = icmp eq i64 %i.ek, %n.vec343
  br i1 %cmp.n354, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader414

.lr.ph.i34.preheader414:                          ; preds = %vector.memcheck338, %.lr.ph.i34.preheader, %middle.block353
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck338 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.er, %middle.block353 ]
  %.ph415 = phi ptr [ %i.ce, %vector.memcheck338 ], [ %i.ce, %.lr.ph.i34.preheader ], [ %i.es, %middle.block353 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader414, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fb, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader414 ]
  %i.ez = phi ptr [ %i.fa, %.lr.ph.i34 ], [ %.ph415, %.lr.ph.i34.preheader414 ]
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fa, align 8, !tbaa !114, !noalias !2176
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !114, !noalias !2176
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !114, !noalias !2176
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fb, align 8, !tbaa !114, !noalias !2176
  %.not.i36 = icmp eq ptr %i.fa, %i.ae
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !2157

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block400, %middle.block353, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ae, %bb.s ], [ %i.fb, %.lr.ph.i34 ], [ %i.ce, %bb.t ], [ %i.de, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.cu, %middle.block ], [ %i.er, %middle.block353 ], [ %i.dr, %middle.block400 ], [ %i.ee, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !432
  %i.fd = load ptr, ptr %1, align 8, !tbaa !432   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ae, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.ff, align 8, !tbaa !114
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !114
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fg, align 8, !tbaa !114
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fi = load ptr, ptr %2, align 8, !tbaa !432   ; 2 uses
  %i.fj = icmp eq ptr %i.fe, %i.fi
  br i1 %i.fj, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = icmp eq ptr %i.fi, %i.fd
  br i1 %i.fk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fd, %bb.y ], [ %i.fe, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !432
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !432
  %i.fl = load ptr, ptr %1, align 8, !tbaa !432
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  store ptr %i.fm, ptr %1, align 8, !tbaa !432
  %i.fn = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fn to i64
  %i.fo = add i64 %.0155, %.neg
  %i.fp = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fp to i64
  %i.fq = add i64 %.sroa.speculated, %.neg24
  %i.fr = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2158

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.fs = load ptr, ptr %6, align 8, !tbaa !432
  store ptr %i.fs, ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !382    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !382    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !382    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !250
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !250
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !52

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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader302, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %i.ab = and i64 %i.x, -8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab
  %i.af = getelementptr i8, ptr %.03965.i, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %bound0 = icmp ult ptr %.04169.i, %i.ag
  %bound1 = icmp ult ptr %.03965.i, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader302, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %.03965.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %.04169.i, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ak ; 3 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %next.gep238, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !114, !alias.scope !2191, !noalias !2192
  %wide.load239 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !114, !alias.scope !2191, !noalias !2192
  %i.am = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2192
  %wide.load241 = load <2 x i64>, ptr %i.am, align 8, !tbaa !114, !alias.scope !2192
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !114, !alias.scope !2191, !noalias !2192
  store <2 x i64> %wide.load241, ptr %i.al, align 8, !tbaa !114, !alias.scope !2191, !noalias !2192
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2192
  store <2 x ptr> %wide.load239, ptr %i.am, align 8, !tbaa !114, !alias.scope !2192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader302

.lr.ph.i.i.preheader302:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader302, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !114
  %i.ao = load i64, ptr %.010.i.i, align 8, !tbaa !114
  store i64 %i.ao, ptr %.079.i.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2181

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ar = load ptr, ptr %.067.i, align 8, !tbaa !250
  %i.as = load ptr, ptr %.03965.i, align 8, !tbaa !250
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.aw = load i64, ptr %.03768.i, align 8, !tbaa !114
  %i.ax = load i64, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.ax, ptr %.03768.i, align 8, !tbaa !114
  %i.ay = load i64, ptr %.067.i, align 8, !tbaa !114
  store i64 %i.ay, ptr %.04169.i, align 8, !tbaa !114
  %i.az = load i64, ptr %.03566.i, align 8, !tbaa !114
  store i64 %i.az, ptr %.067.i, align 8, !tbaa !114
  store i64 %i.aw, ptr %.03566.i, align 8, !tbaa !114
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.bb = load i64, ptr %.03768.i, align 8, !tbaa !114
  %i.bc = load i64, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.bc, ptr %.03768.i, align 8, !tbaa !114
  %i.bd = load i64, ptr %.03965.i, align 8, !tbaa !114
  store i64 %i.bd, ptr %.04169.i, align 8, !tbaa !114
  store i64 %i.bb, ptr %.03965.i, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.au, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.av, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2182

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !114
  %i.bg = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.bg, ptr %i.m, align 8, !tbaa !114
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.bh, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !114
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bi = icmp eq ptr %.03453.i, %1
  br i1 %i.bi, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar252 = phi i64 [ %indvar.next253, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.be, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.bj = icmp eq ptr %.055.i, %3
  br i1 %i.bj, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bk = add i64 %i.a, -16
  %i.bl = shl i64 %indvar252, 3
  %i.bm = add i64 %i.bl, %i.j
  %i.bn = sub i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check255 = icmp ult i64 %i.bn, 168
  br i1 %min.iters.check255, label %.lr.ph.i.i40.preheader295, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bq = shl i64 %indvar252, 3
  %i.br = and i64 %i.bn, -8                       ; 2 uses
  %i.bs = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br
  %i.bv = getelementptr i8, ptr %.03254.i, i64 %i.br
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %bound0257 = icmp ult ptr %.03457.i, %i.bw
  %bound1258 = icmp ult ptr %.03254.i, %i.bu
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph.i.i40.preheader295, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck256
  %n.vec261 = and i64 %i.bp, 4611686018427387900  ; 3 uses
  %i.bx = shl i64 %n.vec261, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %.03254.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %.03457.i, i64 %i.bx
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next270, %vector.body262 ] ; 2 uses
  %i.ca = shl i64 %index263, 3                    ; 2 uses
  %next.gep264 = getelementptr i8, ptr %.03254.i, i64 %i.ca ; 3 uses
  %next.gep265 = getelementptr i8, ptr %.03457.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep265, i64 16 ; 2 uses
  %wide.load266 = load <2 x ptr>, ptr %next.gep265, align 8, !tbaa !114, !alias.scope !2193, !noalias !2194
  %wide.load267 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !114, !alias.scope !2193, !noalias !2194
  %i.cc = getelementptr i8, ptr %next.gep264, i64 16 ; 2 uses
  %wide.load268 = load <2 x i64>, ptr %next.gep264, align 8, !tbaa !114, !alias.scope !2194
  %wide.load269 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !114, !alias.scope !2194
  store <2 x i64> %wide.load268, ptr %next.gep265, align 8, !tbaa !114, !alias.scope !2193, !noalias !2194
  store <2 x i64> %wide.load269, ptr %i.cb, align 8, !tbaa !114, !alias.scope !2193, !noalias !2194
  store <2 x ptr> %wide.load266, ptr %next.gep264, align 8, !tbaa !114, !alias.scope !2194
  store <2 x ptr> %wide.load267, ptr %i.cc, align 8, !tbaa !114, !alias.scope !2194
  %index.next270 = add nuw i64 %index263, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next270, %n.vec261
  br i1 %i.cd, label %middle.block271, label %vector.body262, !llvm.loop !2186

middle.block271:                                  ; preds = %vector.body262
  %cmp.n272 = icmp eq i64 %i.bp, %n.vec261
  br i1 %cmp.n272, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader295

.lr.ph.i.i40.preheader295:                        ; preds = %vector.memcheck256, %.lr.ph.i.i40.preheader, %middle.block271
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck256 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.by, %middle.block271 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck256 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bz, %middle.block271 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader295, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.cg, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader295 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.cf, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader295 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !114
  %i.ce = load i64, ptr %.010.i.i41, align 8, !tbaa !114
  store i64 %i.ce, ptr %.079.i.i42, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !114
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cf, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2187

bb.m:                                             ; preds = %.lr.ph.i34
  %i.ch = load ptr, ptr %.055.i, align 8, !tbaa !250
  %i.ci = load ptr, ptr %.03254.i, align 8, !tbaa !250
  %i.cj = icmp ult ptr %i.ch, %i.ci               ; 3 uses
  %i.ck = load i64, ptr %.03056.i, align 8, !tbaa !114
  %i.cl = load i64, ptr %.03457.i, align 8, !tbaa !114
  store i64 %i.cl, ptr %.03056.i, align 8, !tbaa !114
  %.03254.sink73.i = select i1 %i.cj, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.cj, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.cj, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.cm = load i64, ptr %.03254.sink73.i, align 8, !tbaa !114
  store i64 %i.cm, ptr %.03457.i, align 8, !tbaa !114
  store i64 %i.ck, ptr %.03254.sink73.i, align 8, !tbaa !114
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cn = icmp eq ptr %.034.i, %1
  %indvar.next253 = add i64 %indvar252, 1
  br i1 %i.cn, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2188

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block271, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block271 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block271 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block271 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block271 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ai, %middle.block ], [ %i.by, %middle.block271 ], [ %.030.i, %bb.m ], [ %i.cg, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cx, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cs, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.ct, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.co = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.cp = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  br i1 %i.cq, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cu = load i64, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cr, ptr %.030.i47, align 8, !tbaa !114
  %i.cv = load i64, ptr %.026.i, align 8, !tbaa !114
  store i64 %i.cv, ptr %.025.i, align 8, !tbaa !114
  store i64 %i.cu, ptr %.026.i, align 8, !tbaa !114
  %.not44.i = icmp eq ptr %i.cs, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2189

bb.o:                                             ; preds = %bb.n
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cw, ptr %.030.i47, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !114
  %.not43.i = icmp eq ptr %i.cx, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2189

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.be, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.db, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.dg, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.db, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.dd, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cy = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cz = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !114 ; 2 uses
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.dc, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !114
  %i.de = icmp eq ptr %i.dd, %3
  br i1 %i.de, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2190

bb.q:                                             ; preds = %.preheader.i
  %i.df = ptrtoint ptr %i.cz to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.df, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !114
  %i.dh = icmp eq ptr %i.dg, %.087
  br i1 %i.dh, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2190

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.dg, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cx, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.cs, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.dd, %bb.p ], [ %.026.i, %bb.o ]
  %i.di = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.db, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.db, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !382
  store ptr %.086, ptr %6, align 8, !tbaa !382
  store ptr %.1, ptr %2, align 8, !tbaa !382
  ret ptr %i.di
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !382    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !382    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !382    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !250
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !250
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !53

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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = shl i64 %indvar, 3
  %i.aa = and i64 %i.w, -8                        ; 2 uses
  %i.ab = getelementptr i8, ptr %.0.lcssa.i, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr i8, ptr %.03966.i, i64 %i.aa
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %bound0 = icmp ult ptr %.04170.i, %i.af
  %bound1 = icmp ult ptr %.03966.i, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader305, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %.03966.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %.04170.i, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.aj ; 3 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.aj ; 3 uses
  %i.ak = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !114, !alias.scope !2209, !noalias !2210
  %wide.load242 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !114, !alias.scope !2209, !noalias !2210
  %i.al = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2210
  %wide.load244 = load <2 x i64>, ptr %i.al, align 8, !tbaa !114, !alias.scope !2210
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !114, !alias.scope !2209, !noalias !2210
  store <2 x i64> %wide.load244, ptr %i.ak, align 8, !tbaa !114, !alias.scope !2209, !noalias !2210
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !2210
  store <2 x ptr> %wide.load242, ptr %i.al, align 8, !tbaa !114, !alias.scope !2210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader305

.lr.ph.i.i.preheader305:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.ah, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader305, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !114
  %i.an = load i64, ptr %.010.i.i, align 8, !tbaa !114
  store i64 %i.an, ptr %.079.i.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !114
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2199

bb.g:                                             ; preds = %.lr.ph.i31
  %i.aq = load ptr, ptr %.03966.i, align 8, !tbaa !250
  %i.ar = load ptr, ptr %.068.i, align 8, !tbaa !250
  %.not53.i = icmp ult ptr %i.aq, %i.ar
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.au = load i64, ptr %.03769.i, align 8, !tbaa !114
  %i.av = load i64, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.av, ptr %.03769.i, align 8, !tbaa !114
  %i.aw = load i64, ptr %.068.i, align 8, !tbaa !114
  store i64 %i.aw, ptr %.04170.i, align 8, !tbaa !114
  %i.ax = load i64, ptr %.03567.i, align 8, !tbaa !114
  store i64 %i.ax, ptr %.068.i, align 8, !tbaa !114
  store i64 %i.au, ptr %.03567.i, align 8, !tbaa !114
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.az = load i64, ptr %.03769.i, align 8, !tbaa !114
  %i.ba = load i64, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.ba, ptr %.03769.i, align 8, !tbaa !114
  %i.bb = load i64, ptr %.03966.i, align 8, !tbaa !114
  store i64 %i.bb, ptr %.04170.i, align 8, !tbaa !114
  store i64 %i.az, ptr %.03966.i, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.as, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.at, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2200

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !114
  %i.be = load i64, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.be, ptr %i.l, align 8, !tbaa !114
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !114
  store i64 %i.bf, ptr %.0.lcssa.i, align 8, !tbaa !114
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !114
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %.03454.i, %1
  br i1 %i.bg, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar255 = phi i64 [ %indvar.next256, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.bc, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bh = icmp eq ptr %.056.i, %3
  br i1 %i.bh, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bi = add i64 %i.a, -16
  %i.bj = shl i64 %indvar255, 3
  %i.bk = add i64 %i.bj, %i.i
  %i.bl = sub i64 %i.bi, %i.bk                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %i.bl, 168
  br i1 %min.iters.check258, label %.lr.ph.i.i40.preheader298, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bo = shl i64 %indvar255, 3
  %i.bp = and i64 %i.bl, -8                       ; 2 uses
  %i.bq = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %i.bt = getelementptr i8, ptr %.03255.i, i64 %i.bp
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %bound0260 = icmp ult ptr %.03458.i, %i.bu
  %bound1261 = icmp ult ptr %.03255.i, %i.bs
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i.i40.preheader298, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck259
  %n.vec264 = and i64 %i.bn, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec264, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %.03255.i, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %.03458.i, i64 %i.bv
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next273, %vector.body265 ] ; 2 uses
  %i.by = shl i64 %index266, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.03255.i, i64 %i.by ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.03458.i, i64 %i.by ; 3 uses
  %i.bz = getelementptr i8, ptr %next.gep268, i64 16 ; 2 uses
  %wide.load269 = load <2 x ptr>, ptr %next.gep268, align 8, !tbaa !114, !alias.scope !2211, !noalias !2212
  %wide.load270 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !114, !alias.scope !2211, !noalias !2212
  %i.ca = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load271 = load <2 x i64>, ptr %next.gep267, align 8, !tbaa !114, !alias.scope !2212
  %wide.load272 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !114, !alias.scope !2212
  store <2 x i64> %wide.load271, ptr %next.gep268, align 8, !tbaa !114, !alias.scope !2211, !noalias !2212
  store <2 x i64> %wide.load272, ptr %i.bz, align 8, !tbaa !114, !alias.scope !2211, !noalias !2212
  store <2 x ptr> %wide.load269, ptr %next.gep267, align 8, !tbaa !114, !alias.scope !2212
  store <2 x ptr> %wide.load270, ptr %i.ca, align 8, !tbaa !114, !alias.scope !2212
  %index.next273 = add nuw i64 %index266, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next273, %n.vec264
  br i1 %i.cb, label %middle.block274, label %vector.body265, !llvm.loop !2204

middle.block274:                                  ; preds = %vector.body265
  %cmp.n275 = icmp eq i64 %i.bn, %n.vec264
  br i1 %cmp.n275, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader298

.lr.ph.i.i40.preheader298:                        ; preds = %vector.memcheck259, %.lr.ph.i.i40.preheader, %middle.block274
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck259 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bw, %middle.block274 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck259 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bx, %middle.block274 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader298, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.ce, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader298 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.cd, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader298 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !114
  %i.cc = load i64, ptr %.010.i.i41, align 8, !tbaa !114
  store i64 %i.cc, ptr %.079.i.i42, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !114
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cd, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2205

bb.m:                                             ; preds = %.lr.ph.i34
  %i.cf = load ptr, ptr %.03255.i, align 8, !tbaa !250
  %i.cg = load ptr, ptr %.056.i, align 8, !tbaa !250
  %.not45.i = icmp ult ptr %i.cf, %i.cg           ; 3 uses
  %i.ch = load i64, ptr %.03057.i, align 8, !tbaa !114
  %i.ci = load i64, ptr %.03458.i, align 8, !tbaa !114
  store i64 %i.ci, ptr %.03057.i, align 8, !tbaa !114
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.cj = load i64, ptr %.03255.sink74.i, align 8, !tbaa !114
  store i64 %i.cj, ptr %.03458.i, align 8, !tbaa !114
  store i64 %i.ch, ptr %.03255.sink74.i, align 8, !tbaa !114
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.ck = icmp eq ptr %.034.i, %1
  %indvar.next256 = add i64 %indvar255, 1
  br i1 %i.ck, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2206

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block274, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block274 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block274 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block274 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block274 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ah, %middle.block ], [ %i.bw, %middle.block274 ], [ %.030.i, %bb.m ], [ %i.ce, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.ct, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.co, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cp, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cl = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cm = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cl, %i.cm
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cq = load i64, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cn, ptr %.030.i47, align 8, !tbaa !114
  %i.cr = load i64, ptr %.026.i, align 8, !tbaa !114
  store i64 %i.cr, ptr %.025.i, align 8, !tbaa !114
  store i64 %i.cq, ptr %.026.i, align 8, !tbaa !114
  %.not45.i48 = icmp eq ptr %i.co, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2207

bb.o:                                             ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !114
  store i64 %i.cs, ptr %.030.i47, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !114
  %.not44.i = icmp eq ptr %i.ct, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2207

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cw, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.db, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cw, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cy, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cu = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cv = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.cu, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !114 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cx, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !114
  %i.cz = icmp eq ptr %i.cy, %3
  br i1 %i.cz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2208

bb.q:                                             ; preds = %.preheader.i
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.da, ptr %.024.i, align 8, !tbaa !114
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !114
  %i.dc = icmp eq ptr %i.db, %.091
  br i1 %i.dc, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2208

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.co, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cy, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.db, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.ct, %bb.o ]
  %i.dd = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.cw, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cw, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !382
  store ptr %.090, ptr %6, align 8, !tbaa !382
  store ptr %.178, ptr %2, align 8, !tbaa !382
  ret ptr %i.dd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !118, !range !90, !noundef !91
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !250
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !250
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.h = ptrtoint ptr %2 to i64
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !250
  br label %.lr.ph.i.i

.lr.ph.i.i.loopexit:                              ; preds = %bb.f
  br label %.lr.ph.i.i, !llvm.loop !2213

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.loopexit, %.lr.ph.i.preheader.i
  %i.i = phi ptr [ %.pre43, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.i.loopexit ]
  %.033.i = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %.114.i.i, %.lr.ph.i.i.loopexit ] ; 3 uses
  %.030.i = phi ptr [ %0, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.loopexit ]
  %i.j = ptrtoint ptr %.033.i to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = ashr exact i64 %i.k, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %.1.i.i, %bb.e ] ; 2 uses
  %.01316.i.i = phi ptr [ %.033.i, %.lr.ph.i.i ], [ %.114.i.i, %bb.e ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_ISE_NSG_IvEEEEEEEEEEEEEENS9_7DefaultEST_ST_EELb0EEEEESX_SX_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessISV_ESV_NS_11move_detail8identityISV_EEEEEENS0_7move_opEEET3_T_S1A_T0_T1_RT2_S1D_S19_NS0_9iter_sizeIS1C_E4typeES1H_S1H_S1H_T4_bT5_:bb.a
  %i.ao = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2247 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !2247 ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !114, !noalias !2247
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !114, !noalias !2247
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !114, !noalias !2247
  %.not32.i.i = icmp eq ptr %i.au, %i.ag
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !47

bb.h:                                             ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !114, !noalias !2247
  %.not31.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !47

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bf, %.split.i14.i ], [ %i.am, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.i, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.an, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !2248 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !2248 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.bb, %i.bc
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !114, !noalias !2248
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !114, !noalias !2248
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !114, !noalias !2248
  %.not33.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !48

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !114, !noalias !2248
  %.not32.i19.i = icmp eq ptr %i.ba, %i.al
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !48

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpeckENS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_ISE_NSG_IvEEEEEEEEEEEEEENS9_7DefaultEST_ST_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISV_ESV_NS_11move_detail8identityISV_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_S19_S1B_S1B_S1B_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.am, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.i, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2249 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !2249 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !114, !noalias !2249
  %i.br = icmp eq ptr %i.bp, %i.ag
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !49

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !114, !noalias !2249
  %i.bt = icmp eq ptr %i.bk, %i.al
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !49

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.am, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.i, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.an, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2250 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !2250 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !114, !noalias !2250
  %i.cb = icmp eq ptr %i.bz, %i.ag
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !50

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !114, !noalias !2250
  %i.cd = icmp eq ptr %i.bv, %i.al
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !50

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.ap, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ag, %bb.q ], [ %i.ag, %bb.n ], [ %i.i, %bb.p ], [ %i.i, %bb.m ], [ %i.ag, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ag, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.av, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.073.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.aj, %bb.r ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !432, !noalias !91
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !432, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 12 uses
  %.sroa.073.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.073.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.073.0323 = ptrtoaddr ptr %.sroa.073.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !432
  %i.ce = load ptr, ptr %3, align 8, !tbaa !432   ; 18 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %.sroa.066.0
  br i1 %i.cg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.073.0, %i.ak
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.ch = mul i64 %indvar, %i.g
  %.reass = add i64 %i.ch, %invariant.op
  %i.ci = shl i64 %.018.lcssa.i, 3
  %.neg378 = add i64 %i.ci, 8
  %.neg379 = mul i64 %.neg378, %7
  %i.cj = add i64 %.reass, %.sroa.073.0323
  %i.ck = add i64 %.neg379, %i.cj                 ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 88
  br i1 %min.iters.check, label %.lr.ph.i28.preheader385, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cn = mul i64 %indvar, %i.b
  %i.co = shl i64 %.018.lcssa.i, 3
  %.neg381 = add i64 %i.co, 8
  %.neg382 = mul i64 %.neg381, %7
  %i.cp = add i64 %i.cn, %.sroa.073.0323
  %i.cq = add i64 %i.cp, %.neg382
  %.not383 = sub i64 %i.h, %i.cq
  %i.cr = and i64 %.not383, -8                    ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.073.0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.ce, i64 %i.cr
  %bound0 = icmp ult ptr %i.cs, %i.ce
  %bound1 = icmp ult ptr %i.ct, %.sroa.073.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader385, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cu = mul i64 %n.vec, -8                      ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ce, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %.sroa.073.0, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cx ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.073.0, i64 %i.cx ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep324, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep324, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !114, !alias.scope !2251, !noalias !2252
  %wide.load325 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !114, !alias.scope !2251, !noalias !2252
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load326 = load <2 x i64>, ptr %i.da, align 8, !tbaa !114, !alias.scope !2253, !noalias !2254
  %wide.load327 = load <2 x i64>, ptr %i.db, align 8, !tbaa !114, !alias.scope !2253, !noalias !2254
  store <2 x i64> %wide.load326, ptr %i.cy, align 8, !tbaa !114, !alias.scope !2251, !noalias !2252
  store <2 x i64> %wide.load327, ptr %i.cz, align 8, !tbaa !114, !alias.scope !2251, !noalias !2252
  store <2 x ptr> %wide.load, ptr %i.da, align 8, !tbaa !114, !alias.scope !2253, !noalias !2254
  store <2 x ptr> %wide.load325, ptr %i.db, align 8, !tbaa !114, !alias.scope !2253, !noalias !2254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !2234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader385

.lr.ph.i28.preheader385:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i28.preheader ], [ %i.cv, %middle.block ]
  %.ph = phi ptr [ %.sroa.073.0, %vector.memcheck ], [ %.sroa.073.0, %.lr.ph.i28.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader385, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.df, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader385 ]
  %i.dd = phi ptr [ %i.de, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader385 ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !114, !noalias !2254
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !114, !noalias !2254
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !114, !noalias !2254
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.df, align 8, !tbaa !114, !noalias !2254
  %.not.i = icmp eq ptr %i.de, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !2235

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpeckENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.ce, %i.ag           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dh = mul i64 %indvar, %i.c
  %i.di = add i64 %i.e, %i.dh
  %i.dj = add i64 %i.di, %i.cf                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dj, 104
  br i1 %min.iters.check346, label %.lr.ph.i29.preheader387, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i29.preheader
  %.neg376 = xor i64 %indvar, -1
  %.neg377 = mul i64 %i.b, %.neg376
  %i.dm = add i64 %.neg377, %i.f
  %.not375 = sub i64 %i.dm, %i.cf
  %i.dn = and i64 %.not375, -8                    ; 3 uses
  %i.do = getelementptr i8, ptr %.sroa.066.0, i64 %i.dn ; 2 uses
  %i.dp = getelementptr i8, ptr %.sroa.073.0, i64 %i.dn ; 2 uses
  %i.dq = getelementptr i8, ptr %i.ce, i64 %i.dn  ; 2 uses
  %bound0348 = icmp ult ptr %i.do, %.sroa.073.0
  %bound1349 = icmp ult ptr %i.dp, %.sroa.066.0
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %i.do, %i.ce
  %bound1352 = icmp ult ptr %i.dq, %.sroa.066.0
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx = or i1 %found.conflict350, %found.conflict353
  %bound0354 = icmp ult ptr %i.dp, %i.ce
  %bound1355 = icmp ult ptr %i.dq, %.sroa.073.0
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx, %found.conflict356
  br i1 %conflict.rdx357, label %.lr.ph.i29.preheader387, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck347
  %n.vec359 = and i64 %i.dl, 4611686018427387900  ; 3 uses
  %i.dr = mul i64 %n.vec359, -8                   ; 3 uses
  %i.ds = getelementptr i8, ptr %.sroa.073.0, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.sroa.066.0, i64 %i.dr ; 2 uses
  %i.du = getelementptr i8, ptr %i.ce, i64 %i.dr
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next369, %vector.body360 ] ; 2 uses
  %i.dv = mul i64 %index361, -8                   ; 3 uses
  %next.gep362 = getelementptr i8, ptr %.sroa.073.0, i64 %i.dv ; 2 uses
  %next.gep363 = getelementptr i8, ptr %.sroa.066.0, i64 %i.dv ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.ce, i64 %i.dv ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep362, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep362, i64 -32 ; 2 uses
  %wide.load365 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !114, !alias.scope !2255, !noalias !2256
  %wide.load366 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !114, !alias.scope !2255, !noalias !2256
  %i.dy = getelementptr inbounds i8, ptr %next.gep363, i64 -16
  %i.dz = getelementptr inbounds i8, ptr %next.gep363, i64 -32
  store <2 x i64> %wide.load365, ptr %i.dy, align 8, !tbaa !114, !alias.scope !2257, !noalias !2258
  store <2 x i64> %wide.load366, ptr %i.dz, align 8, !tbaa !114, !alias.scope !2257, !noalias !2258
  %i.ea = getelementptr inbounds i8, ptr %next.gep364, i64 -16
  %i.eb = getelementptr inbounds i8, ptr %next.gep364, i64 -32
  %wide.load367 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !114, !alias.scope !2259, !noalias !2260
  %wide.load368 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !114, !alias.scope !2259, !noalias !2260
  store <2 x i64> %wide.load367, ptr %i.dw, align 8, !tbaa !114, !alias.scope !2255, !noalias !2256
  store <2 x i64> %wide.load368, ptr %i.dx, align 8, !tbaa !114, !alias.scope !2255, !noalias !2256
  %index.next369 = add nuw i64 %index361, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next369, %n.vec359
  br i1 %i.ec, label %middle.block370, label %vector.body360, !llvm.loop !2242

middle.block370:                                  ; preds = %vector.body360
  %cmp.n371 = icmp eq i64 %i.dl, %n.vec359
  br i1 %cmp.n371, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader387

.lr.ph.i29.preheader387:                          ; preds = %vector.memcheck347, %.lr.ph.i29.preheader, %middle.block370
  %.sroa.048.0.ph = phi ptr [ %.sroa.073.0, %vector.memcheck347 ], [ %.sroa.073.0, %.lr.ph.i29.preheader ], [ %i.ds, %middle.block370 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck347 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.dt, %middle.block370 ]
  %.ph388 = phi ptr [ %i.ce, %vector.memcheck347 ], [ %i.ce, %.lr.ph.i29.preheader ], [ %i.du, %middle.block370 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader387, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.ef, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader387 ]
  %.sroa.047.0 = phi ptr [ %i.eg, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader387 ]
  %i.ed = phi ptr [ %i.ee, %.lr.ph.i29 ], [ %.ph388, %.lr.ph.i29.preheader387 ]
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !114, !noalias !2260
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !114, !noalias !2260
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !114, !noalias !2260
  store i64 %i.ei, ptr %i.ef, align 8, !tbaa !114, !noalias !2260
  %.not.i30 = icmp eq ptr %i.ee, %i.ag
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2243

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0100.0 = phi ptr [ %i.el, %.lr.ph.i33 ], [ %.sroa.066.0, %bb.w ]
  %i.ej = phi ptr [ %i.ek, %.lr.ph.i33 ], [ %i.ce, %bb.w ]
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8 ; 3 uses
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !114, !noalias !2261
  store i64 %i.em, ptr %i.el, align 8, !tbaa !114, !noalias !2261
  %.not.i34 = icmp eq ptr %i.ek, %i.ag
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !51

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block370, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ag, %bb.s ], [ %i.el, %.lr.ph.i33 ], [ %i.ce, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cv, %middle.block ], [ %i.dt, %middle.block370 ], [ %i.eg, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !432
  %.neg108 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.j, i64 %.neg108 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ag, %.sroa.073.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg108, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !188
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !188
  store i64 %i.er, ptr %i.eo, align 8, !tbaa !188
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !188
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.es = load ptr, ptr %2, align 8, !tbaa !435   ; 2 uses
  %i.et = icmp eq ptr %i.en, %i.es
  br i1 %i.et, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.es, %i.j
  br i1 %i.eu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.j, %bb.y ], [ %i.en, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !435
  %.pre201 = load ptr, ptr %1, align 8, !tbaa !435
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  %i.ev = phi ptr [ %i.j, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit ], [ %i.j, %bb.z ], [ %.pre201, %.sink.split.i ]
  store ptr %i.ag, ptr %3, align 8, !tbaa !432
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 2 uses
  store ptr %i.ew, ptr %1, align 8, !tbaa !435
  %i.ex = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.ex to i64
  %i.ey = add i64 %.0150, %.neg
  %i.ez = icmp ne i64 %i.af, 0
  %.neg24 = sext i1 %i.ez to i64
  %i.fa = add i64 %.sroa.speculated, %.neg24
  %i.fb = add i64 %.0105149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2246

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpeckENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit, %bb.a
  %i.fc = load ptr, ptr %6, align 8, !tbaa !432
  store ptr %i.fc, ptr %0, align 8, !tbaa !432
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpeckENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_13adaptive_xbufISP_SQ_mEEEEvT_S12_S12_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_:bb.a

bb.m:                                             ; preds = %bb.k
  %i.at = sub i64 %.06898, %.064
  %i.au = sub i64 %.06799, %.0
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_(ptr noundef %i.an, ptr noundef %.065, ptr noundef %.07096, i64 noundef %i.at, i64 noundef %i.au)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.175 = phi ptr [ %i.an, %bb.l ], [ %.07493, %bb.m ]
  %.173 = phi ptr [ %.065, %bb.l ], [ %.066, %bb.m ]
  %.171 = phi ptr [ %.07096, %bb.l ], [ %i.an, %bb.m ]
  %.169 = phi i64 [ %i.ar, %bb.l ], [ %.064, %bb.m ] ; 2 uses
  %.1 = phi i64 [ %i.as, %bb.l ], [ %.0, %bb.m ]  ; 2 uses
  %i.av = icmp ne i64 %.1, 0
  %i.aw = icmp ne i64 %.169, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !2622

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib20merge_bufferless_ON2IPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = sub i64 %i.d, %i.a
  %i.f = icmp slt i64 %i.c, %i.e
  br i1 %i.f, label %.preheader71, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %.not77 = icmp eq ptr %1, %2
  br i1 %.not77, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %.not15.i54114 = icmp eq ptr %1, %0
  br i1 %.not15.i54114, label %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread, label %.lr.ph.i55

.preheader71:                                     ; preds = %bb.a
  %.not5280 = icmp eq ptr %0, %1
  br i1 %.not5280, label %.critedge.thread, label %.lr.ph83

.lr.ph83.loopexit:                                ; preds = %bb.c
  br label %.lr.ph83, !llvm.loop !2623

.lr.ph83:                                         ; preds = %.preheader71, %.lr.ph83.loopexit
  %.04282 = phi ptr [ %.013.lcssa.i, %.lr.ph83.loopexit ], [ %1, %.preheader71 ] ; 5 uses
  %.04481 = phi ptr [ %i.s, %.lr.ph83.loopexit ], [ %0, %.preheader71 ] ; 2 uses
  %.not15.i = icmp eq ptr %2, %.04282
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph83
  %i.g = ptrtoint ptr %.04282 to i64
  %i.h = sub i64 %i.d, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = load ptr, ptr %.04481, align 8, !tbaa !443
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.017.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01316.i = phi ptr [ %.04282, %.lr.ph.i ], [ %.114.i, %bb.b ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !443
  %i.n = icmp ult ptr %i.m, %i.j                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %i.o, ptr %.01316.i ; 2 uses
  %.1.i = select i1 %i.n, i64 %i.p, i64 %i.k      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %bb.b, !llvm.loop !63

_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit: ; preds = %bb.b, %.lr.ph83
  %.013.lcssa.i = phi ptr [ %.04282, %.lr.ph83 ], [ %.114.i, %bb.b ] ; 5 uses
  %i.q = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef nonnull %.04481, ptr noundef %.04282, ptr noundef %.013.lcssa.i)
  %i.r = icmp eq ptr %.013.lcssa.i, %2
  br i1 %i.r, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %bb.c
  %.145 = phi ptr [ %i.s, %bb.c ], [ %i.q, %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.145, i64 8 ; 4 uses
  %.not53 = icmp eq ptr %i.s, %.013.lcssa.i
  br i1 %.not53, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.t = load ptr, ptr %.013.lcssa.i, align 8, !tbaa !443
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !443
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph83.loopexit, label %.preheader, !llvm.loop !2623

.lr.ph.loopexit:                                  ; preds = %bb.g
  br label %.lr.ph.i55, !llvm.loop !2624

_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread: ; preds = %.lr.ph.preheader
  %i.w = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.critedge.thread

.lr.ph.i55:                                       ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.14378116 = phi ptr [ %.114.i59, %.lr.ph.loopexit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.04079115 = phi ptr [ %i.al, %.lr.ph.loopexit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.04079115, i64 -8
  %i.y = ptrtoint ptr %.14378116 to i64
  %i.z = sub i64 %i.y, %i.b
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !443
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i55
  %.017.i56 = phi i64 [ %i.aa, %.lr.ph.i55 ], [ %.1.i60, %bb.d ] ; 2 uses
  %.01316.i57 = phi ptr [ %0, %.lr.ph.i55 ], [ %.114.i59, %bb.d ] ; 2 uses
  %i.ac = lshr i64 %.017.i56, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.01316.i57, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !443
  %i.af = icmp ult ptr %i.ab, %i.ae               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.neg.i58 = xor i64 %i.ac, -1
  %i.ah = add i64 %.017.i56, %.neg.i58
  %.114.i59 = select i1 %i.af, ptr %.01316.i57, ptr %i.ag ; 6 uses
  %.1.i60 = select i1 %i.af, i64 %i.ac, i64 %i.ah ; 2 uses
  %.not.i61 = icmp eq i64 %.1.i60, 0
  br i1 %.not.i61, label %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, label %bb.d, !llvm.loop !65

_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit: ; preds = %bb.d
  %i.ai = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %.114.i59, ptr noundef %.14378116, ptr noundef nonnull %.04079115)
  %i.aj = icmp eq ptr %.114.i59, %0
  br i1 %i.aj, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit
  %i.ak = getelementptr inbounds i8, ptr %.114.i59, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.141 = phi ptr [ %i.ai, %bb.e ], [ %i.al, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.141, i64 -8 ; 3 uses
  %.not51 = icmp eq ptr %.114.i59, %i.al
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %.141, i64 -16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !443
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !443
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.loopexit, label %bb.f, !llvm.loop !2624

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit, %.preheader, %.preheader72, %.preheader71, %_ZN5boost7movelib11upper_boundIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEESO_NS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEET_SZ_SZ_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib10rotate_gcdIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEEEET_SQ_SQ_SQ_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.n = and i64 %i.k, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %i.q
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !144, !alias.scope !2632, !noalias !2633
  %wide.load78 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !144, !alias.scope !2632, !noalias !2633
  %i.w = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2633
  %wide.load80 = load <2 x i64>, ptr %i.w, align 8, !tbaa !144, !alias.scope !2633
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !144, !alias.scope !2632, !noalias !2633
  store <2 x i64> %wide.load80, ptr %i.v, align 8, !tbaa !144, !alias.scope !2632, !noalias !2633
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2633
  store <2 x ptr> %wide.load78, ptr %i.w, align 8, !tbaa !144, !alias.scope !2633
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.079.i, align 8, !tbaa !144
  %i.y = load i64, ptr %.010.i, align 8, !tbaa !144
  store i64 %i.y, ptr %.079.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.010.i, align 8, !tbaa !144
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.z, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i, !llvm.loop !2629

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ac = sub i64 %i.ab, %i.d
  %i.ad = ashr exact i64 %i.ac, 3                 ; 6 uses
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = and i64 %i.ae, %i.ad
  %i.ag = add nsw i64 %i.f, -1
  %i.ah = and i64 %i.ag, %i.f
  %i.ai = or i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.ak = or i64 %i.ad, %i.f
  %i.al = and i64 %i.ak, 1
  %.not.not37.i = icmp eq i64 %i.al, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ad, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.as, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ]
  %i.an = icmp ne i64 %.030.lcssa.i, 0
  %i.ao = icmp ne i64 %.029.lcssa.i, 0
  %i.ap = and i1 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.as, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.ad, %.preheader36.i ]
  %i.aq = shl i64 %.040.i, 1                      ; 2 uses
  %i.ar = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.as = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.at = or i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 1
  %.not.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !43

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.av = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.av, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.aw = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.ax = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.ax, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = sub nuw i64 %.13143.i, %.144.i
  %i.ba = lshr exact i64 %i.az, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bb = sub nuw i64 %.144.i, %.13143.i
  %i.bc = lshr exact i64 %i.bb, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.ba, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.aw, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bc, %bb.k ], [ %i.ay, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bd = icmp ne i64 %.232.i, 0
  %i.be = icmp ne i64 %.2.i, 0
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bg = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bh = mul i64 %i.bg, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.am, %bb.e ], [ %i.bh, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bk = add i64 %.idx, -8                       ; 2 uses
  %i.bl = and i64 %i.bk, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bm = load i64, ptr %0, align 8, !tbaa !144
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bw, %bb.m ] ; 5 uses
  %i.bo = load i64, ptr %.0.prol, align 8, !tbaa !144
  store i64 %i.bo, ptr %.044.prol, align 8, !tbaa !144
  %i.bp = ptrtoint ptr %.0.prol to i64
  %i.bq = sub i64 %i.ab, %i.bp
  %i.br = ashr exact i64 %i.bq, 3                 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, %i.f
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bu = sub nsw i64 0, %i.br
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bu
  %i.bw = select i1 %i.bs, ptr %i.bt, ptr %i.bv   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bw, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !2630

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store i64 %i.bm, ptr %.0.prol, align 8, !tbaa !144
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bx, %.prol.loopexit.unr-lcssa ]
  %i.by = icmp eq i64 %i.bk, 0
  br i1 %i.by, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cw, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.bz = load i64, ptr %.04561, align 8, !tbaa !144
  %i.ca = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
  %.0 = phi ptr [ %i.ca, %.lr.ph.new ], [ %i.cj, %bb.n ] ; 5 uses
  %i.cb = load i64, ptr %.0, align 8, !tbaa !144
  store i64 %i.cb, ptr %.044, align 8, !tbaa !144
  %i.cc = ptrtoint ptr %.0 to i64
  %i.cd = sub i64 %i.ab, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3                 ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, %i.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.ch = sub nsw i64 0, %i.ce
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ch
  %i.cj = select i1 %i.cf, ptr %i.cg, ptr %i.ci   ; 2 uses
  %.not53 = icmp eq ptr %i.cj, %.04561
  br i1 %.not53, label %bb.o, label %bb.n, !llvm.loop !2630

bb.o:                                             ; preds = %bb.n
  store i64 %i.bz, ptr %.0, align 8, !tbaa !144
  %i.ck = getelementptr inbounds nuw i8, ptr %.04561, i64 8 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !144
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.e
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.044.1 = phi ptr [ %i.ck, %bb.o ], [ %.0.1, %bb.p ]
  %.0.1 = phi ptr [ %i.cm, %bb.o ], [ %i.cv, %bb.p ] ; 5 uses
  %i.cn = load i64, ptr %.0.1, align 8, !tbaa !144
  store i64 %i.cn, ptr %.044.1, align 8, !tbaa !144
  %i.co = ptrtoint ptr %.0.1 to i64
  %i.cp = sub i64 %i.ab, %i.co
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.f
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7move_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.727", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.755", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %7, ptr %i.b, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !509
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %i.g, ptr %i.d, align 8, !tbaa !509
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 10 uses
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx221 = shl i64 %2, 3                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx221 ; 2 uses
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = add i64 %i.n, 8
  %i.p = add i64 %i.n, %i.a
  %i.q = add i64 %i.p, %.idx221
  %i.r = add i64 %i.q, -8
  %scevgep385 = getelementptr i8, ptr %7, i64 8
  %i.s = shl i64 %3, 3
  %i.t = add i64 %i.s, %i.a
  %i.u = add i64 %i.t, %.idx221
  %i.v = add i64 %i.u, -8
  %i.w = add i64 %.idx221, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 72
  %bound0322 = icmp ult ptr %7, %i.i
  %bound1323 = icmp ult ptr %i.g, %scevgep
  %found.conflict324 = and i1 %bound0322, %bound1323
  %stride.check = icmp slt i64 %.idx221, 0
  %i.z = or i1 %found.conflict324, %stride.check
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 3 uses
  %i.ab = getelementptr i8, ptr %7, i64 %i.aa     ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gi, %bb.x ] ; 5 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gj, %bb.x ] ; 10 uses
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.bc, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gr, %bb.x ] ; 3 uses
  %.0240 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104239 = phi i64 [ %i.k, %.lr.ph ], [ %i.gp, %bb.x ] ; 4 uses
  %.0106236 = phi ptr [ %0, %.lr.ph ], [ %i.gn, %bb.x ] ; 16 uses
  %.0108235 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111233 = phi ptr [ %i.g, %.lr.ph ], [ %i.gm, %bb.x ] ; 5 uses
  %.0114232 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0204231 = phi ptr [ %i.f, %.lr.ph ], [ %.2206, %bb.x ] ; 16 uses
  %.0208230 = phi i64 [ %i.e, %.lr.ph ], [ %i.gs, %bb.x ] ; 4 uses
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = icmp ult i64 %.0104239, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.aw, %.thread26.i ], [ %.0104239, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.av, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02228.i, %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = mul i64 %.029.i, %2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0106236, i64 %.02228.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106236, i64 %.029.i
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !443 ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !443 ; 2 uses
  %i.aq = icmp ult ptr %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = icmp ult ptr %i.ap, %i.ao
  br i1 %i.ar, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !443
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !443
  %i.au = icmp ult ptr %i.as, %i.at
  %cond.fr.i = freeze i1 %i.au
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.av = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.aw = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit, label %.lr.ph.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.av, %.thread26.i ] ; 7 uses
  %i.ax = add i64 %.022.lcssa.i, 2
  %i.ay = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ax) ; 2 uses
  %.sroa.speculated192 = call i64 @llvm.umin.i64(i64 %i.ay, i64 %.0208230)
  %i.az = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.az, 3
  %i.ba = getelementptr i8, ptr %i.ae, i64 %.idx  ; 10 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %2 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %.idx221 ; 8 uses
  %i.bd = icmp eq ptr %i.ad, %i.ac
  %.not120 = icmp eq i64 %.0240, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !443
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !443
  %i.bg = icmp ult ptr %i.be, %i.bf
  br i1 %i.bg, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108235 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %.idx222 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106236, i64 %.idx222 ; 13 uses
  %i.bi = icmp eq ptr %.0204231, %i.m
  br i1 %i.bi, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bj = trunc nuw i8 %.0108235 to i1
  br i1 %i.bj, label %bb.j, label %.thread294

.thread294:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !443
  %i.bl = load ptr, ptr %.0204231, align 8, !tbaa !443
  %i.bm = icmp ult ptr %i.bk, %i.bl               ; 4 uses
  %i.bn = trunc nuw i8 %.0108235 to i1            ; 2 uses
  %i.bo = xor i1 %i.bm, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bp = phi i1 [ true, %._crit_edge ], [ %i.bm, %bb.i ]
  br i1 %i.bd, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %bb.j
  %i.bq = add i64 %i.af, -8
  %i.br = sub i64 %i.bq, %i.ag                    ; 3 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check347 = icmp ult i64 %i.br, 40
  br i1 %min.iters.check347, label %.lr.ph.i125.preheader515, label %vector.memcheck348

vector.memcheck348:                               ; preds = %.lr.ph.i125.preheader
  %i.bu = and i64 %i.br, -8
  %i.bv = add i64 %i.bu, 8                        ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ad, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.0114232, i64 %i.bv
  %bound0349 = icmp ult ptr %i.ad, %i.bx
  %bound1350 = icmp ult ptr %.0114232, %i.bw
  %found.conflict351 = and i1 %bound0349, %bound1350
  br i1 %found.conflict351, label %.lr.ph.i125.preheader515, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck348
  %n.vec353 = and i64 %i.bt, 4611686018427387900  ; 3 uses
  %i.by = shl i64 %n.vec353, 3                    ; 2 uses
  %i.bz = getelementptr i8, ptr %.0114232, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ad, i64 %i.by
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next362, %vector.body354 ] ; 2 uses
  %i.cb = shl i64 %index355, 3                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0114232, i64 %i.cb ; 3 uses
  %next.gep357 = getelementptr i8, ptr %i.ad, i64 %i.cb ; 3 uses
  %i.cc = getelementptr i8, ptr %next.gep357, i64 16 ; 2 uses
  %wide.load358 = load <2 x ptr>, ptr %next.gep357, align 8, !tbaa !144, !alias.scope !2722, !noalias !2723
  %wide.load359 = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !144, !alias.scope !2722, !noalias !2723
  %i.cd = getelementptr i8, ptr %next.gep356, i64 16 ; 2 uses
  %wide.load360 = load <2 x i64>, ptr %next.gep356, align 8, !tbaa !144, !alias.scope !2723
  %wide.load361 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !144, !alias.scope !2723
  store <2 x i64> %wide.load360, ptr %next.gep357, align 8, !tbaa !144, !alias.scope !2722, !noalias !2723
  store <2 x i64> %wide.load361, ptr %i.cc, align 8, !tbaa !144, !alias.scope !2722, !noalias !2723
  store <2 x ptr> %wide.load358, ptr %next.gep356, align 8, !tbaa !144, !alias.scope !2723
  store <2 x ptr> %wide.load359, ptr %i.cd, align 8, !tbaa !144, !alias.scope !2723
  %index.next362 = add nuw i64 %index355, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next362, %n.vec353
  br i1 %i.ce, label %middle.block363, label %vector.body354, !llvm.loop !2680

middle.block363:                                  ; preds = %vector.body354
  %cmp.n364 = icmp eq i64 %i.bt, %n.vec353
  br i1 %cmp.n364, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125.preheader515

.lr.ph.i125.preheader515:                         ; preds = %vector.memcheck348, %.lr.ph.i125.preheader, %middle.block363
  %.010.i.ph = phi ptr [ %.0114232, %vector.memcheck348 ], [ %.0114232, %.lr.ph.i125.preheader ], [ %i.bz, %middle.block363 ]
  %.079.i.ph = phi ptr [ %i.ad, %vector.memcheck348 ], [ %i.ad, %.lr.ph.i125.preheader ], [ %i.ca, %middle.block363 ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader515, %.lr.ph.i125
  %.010.i = phi ptr [ %i.ch, %.lr.ph.i125 ], [ %.010.i.ph, %.lr.ph.i125.preheader515 ] ; 3 uses
  %.079.i = phi ptr [ %i.cg, %.lr.ph.i125 ], [ %.079.i.ph, %.lr.ph.i125.preheader515 ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.079.i, align 8, !tbaa !144
  %i.cf = load i64, ptr %.010.i, align 8, !tbaa !144
  store i64 %i.cf, ptr %.079.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.010.i, align 8, !tbaa !144
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.cg, %i.ac
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit, label %.lr.ph.i125, !llvm.loop !2681

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit: ; preds = %.lr.ph.i125, %middle.block363, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !509
  %.not.i126 = icmp eq i64 %i.az, 0
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i127.preheader514, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i127.preheader
  %bound0 = icmp ult ptr %7, %i.bb
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.z
  %bound0325 = icmp ult ptr %i.ba, %i.i
  %bound1326 = icmp ult ptr %i.g, %i.bb
  %found.conflict327 = and i1 %bound0325, %bound1326
  %conflict.rdx328 = or i1 %conflict.rdx, %found.conflict327
  br i1 %conflict.rdx328, label %.lr.ph.i127.preheader514, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ci = getelementptr i8, ptr %i.ba, i64 %i.aa
  %i.cj = getelementptr i8, ptr %i.ae, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.ck ; 3 uses
  %next.gep329 = getelementptr i8, ptr %i.ba, i64 %i.ck ; 3 uses
  %next.gep330 = getelementptr i8, ptr %i.ae, i64 %i.ck ; 3 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2724, !noalias !2725
  %wide.load331 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !144, !alias.scope !2724, !noalias !2725
  %i.cm = getelementptr i8, ptr %next.gep329, i64 16 ; 2 uses
  %wide.load332 = load <2 x i64>, ptr %next.gep329, align 8, !tbaa !144, !alias.scope !2726, !noalias !2727
  %wide.load333 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !144, !alias.scope !2726, !noalias !2727
  store <2 x i64> %wide.load332, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2724, !noalias !2725
  store <2 x i64> %wide.load333, ptr %i.cl, align 8, !tbaa !144, !alias.scope !2724, !noalias !2725
  %i.cn = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load334 = load <2 x i64>, ptr %next.gep330, align 8, !tbaa !144, !alias.scope !2727
  %wide.load335 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !144, !alias.scope !2727
  store <2 x i64> %wide.load334, ptr %next.gep329, align 8, !tbaa !144, !alias.scope !2726, !noalias !2727
  store <2 x i64> %wide.load335, ptr %i.cm, align 8, !tbaa !144, !alias.scope !2726, !noalias !2727
  store <2 x i64> %wide.load, ptr %next.gep330, align 8, !tbaa !144, !alias.scope !2727
  store <2 x i64> %wide.load331, ptr %i.cn, align 8, !tbaa !144, !alias.scope !2727
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !2686

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i127.preheader514

.lr.ph.i127.preheader514:                         ; preds = %vector.memcheck, %.lr.ph.i127.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i127.preheader ], [ %i.ab, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i127.preheader ], [ %i.ci, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i127.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.preheader514, %.lr.ph.i127
  %.033.i = phi ptr [ %i.cr, %.lr.ph.i127 ], [ %.033.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %.02032.i = phi ptr [ %i.cq, %.lr.ph.i127 ], [ %.02032.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %.02131.i = phi ptr [ %i.cp, %.lr.ph.i127 ], [ %.02131.i.ph, %.lr.ph.i127.preheader514 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.cs = load i64, ptr %.033.i, align 8, !tbaa !144
  %i.ct = load i64, ptr %.02032.i, align 8, !tbaa !144
  store i64 %i.ct, ptr %.033.i, align 8, !tbaa !144
  %i.cu = load i64, ptr %.02131.i, align 8, !tbaa !144
  store i64 %i.cu, ptr %.02032.i, align 8, !tbaa !144
  store i64 %i.cs, ptr %.02131.i, align 8, !tbaa !144
  %.not28.i = icmp eq ptr %i.cp, %i.bc
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i127, !llvm.loop !2687

._crit_edge.i:                                    ; preds = %.lr.ph.i127, %middle.block, %.preheader.i
  %.0.lcssa.i128 = phi ptr [ %7, %.preheader.i ], [ %i.ab, %middle.block ], [ %i.cr, %.lr.ph.i127 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %.sroa.0.0.copyload.i.i129 = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.cv = load i64, ptr %.0106236, align 8, !tbaa !144
  store i64 %i.cv, ptr %i.bh, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i129, ptr %.0106236, align 8, !tbaa !144
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.cw = icmp eq ptr %i.bh, %.0204231
  br i1 %i.cw, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = icmp eq ptr %.0204231, %.0106236
  %spec.select = select i1 %i.cx, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit
  %.5 = phi ptr [ %.0204231, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit ], [ %spec.select, %bb.m ], [ %.0106236, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit ], [ %.0.lcssa.i128, %bb.m ], [ %.0.lcssa.i128, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !509
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %.0114232, ptr noundef %.0111233, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit

bb.p:                                             ; preds = %.thread294, %bb.n
  %i.cz = phi i1 [ true, %.thread294 ], [ %i.bm, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !540
  %i.da = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %.0114232, ptr noundef %.0111233, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.bc, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.db = phi i1 [ %i.bm, %bb.o ], [ %i.cz, %bb.p ]
  %i.dc = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.dd = phi ptr [ %i.cy, %bb.o ], [ %i.da, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !509 ; 4 uses
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !509 ; 4 uses
  %i.dg = icmp eq ptr %i.de, %i.df                ; 2 uses
  br i1 %i.dg, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  store ptr %7, ptr %i.b, align 8, !tbaa !509
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !509 ; 10 uses
  %i.di = ptrtoint ptr %i.bc to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.dm ; 7 uses
  %.not.i130 = icmp eq ptr %i.dh, %i.dn
  br i1 %.not.i130, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %.preheader.i131

.preheader.i131:                                  ; preds = %bb.q
  %.not2830.i132 = icmp eq ptr %i.dh, %i.bc
  br i1 %.not2830.i132, label %._crit_edge.i138, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %.preheader.i131
  %i.do = mul i64 %indvar, %.idx221               ; 3 uses
  %i.dp = add i64 %i.v, %i.do                     ; 2 uses
  %i.dq = sub i64 %i.dp, %i.dj                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.dq, 104
  br i1 %min.iters.check387, label %.lr.ph.i133.preheader516, label %vector.memcheck388

vector.memcheck388:                               ; preds = %.lr.ph.i133.preheader
  %i.dt = add i64 %i.r, %i.do
  %i.du = sub i64 %i.dt, %i.dj
  %i.dv = and i64 %i.du, -8                       ; 3 uses
  %i.dw = getelementptr i8, ptr %scevgep385, i64 %i.dv ; 2 uses
  %i.dx = add i64 %i.o, %i.do
  %i.dy = shl i64 %.022.lcssa.i, 3
  %i.dz = add i64 %i.dy, 8
  %i.ea = mul i64 %2, %i.dz
  %i.eb = add i64 %i.dx, %i.ea
  %i.ec = add i64 %i.eb, %i.dv
  %i.ed = sub i64 %i.ec, %i.dk
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dh, i64 %i.dv
  %i.eg = getelementptr i8, ptr %i.ef, i64 8      ; 2 uses
  %bound0389 = icmp ult ptr %7, %i.ee
  %bound1390 = icmp ult ptr %i.dn, %i.dw
  %found.conflict391 = and i1 %bound0389, %bound1390
  %bound0392 = icmp ult ptr %7, %i.eg
  %bound1393 = icmp ult ptr %i.dh, %i.dw
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_NS0_7swap_opESQ_EEvT_T0_T1_NS0_9iter_sizeIS13_E4typeES16_S16_S16_S16_T2_T3_T4_:bb.a
.lr.ph.i133.preheader516:                         ; preds = %vector.memcheck388, %.lr.ph.i133.preheader, %middle.block414
  %.033.i134.ph = phi ptr [ %7, %vector.memcheck388 ], [ %7, %.lr.ph.i133.preheader ], [ %i.ei, %middle.block414 ] ; 2 uses
  %.02032.i135.ph = phi ptr [ %i.dn, %vector.memcheck388 ], [ %i.dn, %.lr.ph.i133.preheader ], [ %i.ej, %middle.block414 ] ; 2 uses
  %.02131.i136.ph = phi ptr [ %i.dh, %vector.memcheck388 ], [ %i.dh, %.lr.ph.i133.preheader ], [ %i.ek, %middle.block414 ] ; 3 uses
  %.02131.i136.ph519 = ptrtoaddr ptr %.02131.i136.ph to i64
  %i.eq = sub i64 %i.dp, %.02131.i136.ph519       ; 2 uses
  %i.er = lshr i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1
  %xtraiter = and i64 %i.es, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader516, %.lr.ph.i133.prol
  %.033.i134.prol = phi ptr [ %i.ev, %.lr.ph.i133.prol ], [ %.033.i134.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %.02032.i135.prol = phi ptr [ %i.eu, %.lr.ph.i133.prol ], [ %.02032.i135.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %.02131.i136.prol = phi ptr [ %i.et, %.lr.ph.i133.prol ], [ %.02131.i136.ph, %.lr.ph.i133.preheader516 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader516 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.02131.i136.prol, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02032.i135.prol, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.033.i134.prol, i64 8 ; 3 uses
  %i.ew = load i64, ptr %.033.i134.prol, align 8, !tbaa !144
  %i.ex = load i64, ptr %.02032.i135.prol, align 8, !tbaa !144
  store i64 %i.ex, ptr %.033.i134.prol, align 8, !tbaa !144
  %i.ey = load i64, ptr %.02131.i136.prol, align 8, !tbaa !144
  store i64 %i.ey, ptr %.02032.i135.prol, align 8, !tbaa !144
  store i64 %i.ew, ptr %.02131.i136.prol, align 8, !tbaa !144
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !2693

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader516
  %.lcssa517.unr = phi ptr [ poison, %.lr.ph.i133.preheader516 ], [ %i.ev, %.lr.ph.i133.prol ]
  %.033.i134.unr = phi ptr [ %.033.i134.ph, %.lr.ph.i133.preheader516 ], [ %i.ev, %.lr.ph.i133.prol ]
  %.02032.i135.unr = phi ptr [ %.02032.i135.ph, %.lr.ph.i133.preheader516 ], [ %i.eu, %.lr.ph.i133.prol ]
  %.02131.i136.unr = phi ptr [ %.02131.i136.ph, %.lr.ph.i133.preheader516 ], [ %i.et, %.lr.ph.i133.prol ]
  %i.ez = icmp ult i64 %i.eq, 24
  br i1 %i.ez, label %._crit_edge.i138, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %.033.i134 = phi ptr [ %i.fu, %.lr.ph.i133 ], [ %.033.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02032.i135 = phi ptr [ %i.ft, %.lr.ph.i133 ], [ %.02032.i135.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %.02131.i136 = phi ptr [ %i.fs, %.lr.ph.i133 ], [ %.02131.i136.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.033.i134, i64 8 ; 2 uses
  %i.fd = load i64, ptr %.033.i134, align 8, !tbaa !144
  %i.fe = load i64, ptr %.02032.i135, align 8, !tbaa !144
  store i64 %i.fe, ptr %.033.i134, align 8, !tbaa !144
  %i.ff = load i64, ptr %.02131.i136, align 8, !tbaa !144
  store i64 %i.ff, ptr %.02032.i135, align 8, !tbaa !144
  store i64 %i.fd, ptr %.02131.i136, align 8, !tbaa !144
  %i.fg = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.033.i134, i64 16 ; 2 uses
  %i.fj = load i64, ptr %i.fc, align 8, !tbaa !144
  %i.fk = load i64, ptr %i.fb, align 8, !tbaa !144
  store i64 %i.fk, ptr %i.fc, align 8, !tbaa !144
  %i.fl = load i64, ptr %i.fa, align 8, !tbaa !144
  store i64 %i.fl, ptr %i.fb, align 8, !tbaa !144
  store i64 %i.fj, ptr %i.fa, align 8, !tbaa !144
  %i.fm = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 24 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 24 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.033.i134, i64 24 ; 2 uses
  %i.fp = load i64, ptr %i.fi, align 8, !tbaa !144
  %i.fq = load i64, ptr %i.fh, align 8, !tbaa !144
  store i64 %i.fq, ptr %i.fi, align 8, !tbaa !144
  %i.fr = load i64, ptr %i.fg, align 8, !tbaa !144
  store i64 %i.fr, ptr %i.fh, align 8, !tbaa !144
  store i64 %i.fp, ptr %i.fg, align 8, !tbaa !144
  %i.fs = getelementptr inbounds nuw i8, ptr %.02131.i136, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.02032.i135, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.033.i134, i64 32 ; 2 uses
  %i.fv = load i64, ptr %i.fo, align 8, !tbaa !144
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !144
  store i64 %i.fw, ptr %i.fo, align 8, !tbaa !144
  %i.fx = load i64, ptr %i.fm, align 8, !tbaa !144
  store i64 %i.fx, ptr %i.fn, align 8, !tbaa !144
  store i64 %i.fv, ptr %i.fm, align 8, !tbaa !144
  %.not28.i137.3 = icmp eq ptr %i.fs, %i.bc
  br i1 %.not28.i137.3, label %._crit_edge.i138, label %.lr.ph.i133, !llvm.loop !2694

._crit_edge.i138:                                 ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %middle.block414, %.preheader.i131
  %.0.lcssa.i139 = phi ptr [ %7, %.preheader.i131 ], [ %i.ei, %middle.block414 ], [ %.lcssa517.unr, %.lr.ph.i133.prol.loopexit ], [ %i.fu, %.lr.ph.i133 ] ; 2 uses
  %.not29.i140 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i138
  %.sroa.0.0.copyload.i.i141 = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.fy = load i64, ptr %.0106236, align 8, !tbaa !144
  store i64 %i.fy, ptr %i.bh, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i141, ptr %.0106236, align 8, !tbaa !144
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i138
  %i.fz = icmp eq ptr %i.bh, %.0204231
  br i1 %i.fz, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = icmp eq ptr %.0204231, %.0106236
  %spec.select218 = select i1 %i.ga, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0204231, %bb.q ], [ %spec.select218, %bb.t ], [ %.0106236, %bb.s ]
  %.1.i142 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i139, %bb.t ], [ %.0.lcssa.i139, %bb.s ] ; 2 uses
  store ptr %.1.i142, ptr %i.c, align 8, !tbaa !509
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_b.exit
  %.not.i146 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i147 = load ptr, ptr %i.bh, align 8, !tbaa !144
  %i.gb = load i64, ptr %.0106236, align 8, !tbaa !144
  store i64 %i.gb, ptr %i.bh, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i147, ptr %.0106236, align 8, !tbaa !144
  %i.gc = icmp eq ptr %i.bh, %.0204231
  br i1 %i.gc, label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = icmp eq ptr %.0204231, %.0106236
  %spec.select219 = select i1 %i.gd, ptr %i.bh, ptr %.0204231
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145
  %i.ge = phi ptr [ %.1.i142, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.df, %bb.u ], [ %i.df, %bb.w ], [ %i.df, %bb.v ]
  %i.gf = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %i.de, %bb.u ], [ %i.de, %bb.w ], [ %i.de, %bb.v ]
  %.1205 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit145 ], [ %.0204231, %bb.u ], [ %spec.select219, %bb.w ], [ %.0106236, %bb.v ]
  %i.gg = xor i1 %i.dc, %i.dg
  %i.gh = zext i1 %i.gg to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit
  %i.gi = phi ptr [ %i.ge, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gj = phi ptr [ %i.gf, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %i.gk = phi i1 [ %i.db, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.bp, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ]
  %.2206 = phi ptr [ %.1205, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.dd, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gh, %_ZN5boost7movelib15detail_adaptive10update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEEvT_SR_RSR_.exit ], [ %.0108235, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_7swap_opEEET1_T_ST_RST_T0_SV_SV_SS_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gk, true
  %i.gl = sext i1 %not. to i64
  %.1 = add i64 %.0240, %i.gl
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0111233, i64 %2 ; 2 uses
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !509
  %i.gn = getelementptr inbounds nuw i8, ptr %.0106236, i64 8
  %i.go = icmp ne i64 %.0104239, 0
  %.neg = sext i1 %i.go to i64
  %i.gp = add i64 %.0104239, %.neg
  %i.gq = icmp ne i64 %i.ay, 0
  %.neg122 = sext i1 %i.gq to i64
  %i.gr = add i64 %.sroa.speculated192, %.neg122
  %i.gs = add i64 %.0208230, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gs, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2695

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.gt = phi ptr [ %i.gi, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 3 uses
  %i.gu = phi ptr [ %i.gj, %bb.x ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 8 uses
  %.0208.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0208230, %bb.g ], [ %.0208230, %bb.f ] ; 3 uses
  %.0204.lcssa.ph = phi ptr [ %.2206, %bb.x ], [ %.0204231, %bb.g ], [ %.0204231, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114232, %bb.g ], [ %.0114232, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gm, %bb.x ], [ %.0111233, %bb.g ], [ %.0111233, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108235, %bb.f ]
  %i.gv = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.gw = select i1 %i.gv, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i150 = icmp eq ptr %i.gu, %i.gt
  br i1 %.not8.i150, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %.thread
  %i.gx = ptrtoaddr ptr %i.gu to i64
  %i.gy = ptrtoaddr ptr %i.gt to i64
  %i.gz = add i64 %i.gy, -8
  %i.ha = sub i64 %i.gz, %i.gx                    ; 3 uses
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.ha, 104
  br i1 %min.iters.check426, label %.lr.ph.i151.preheader513, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph.i151.preheader
  %i.hd = and i64 %i.ha, -8
  %i.he = add i64 %i.hd, 8                        ; 2 uses
  %i.hf = getelementptr i8, ptr %i.gu, i64 %i.he
  %i.hg = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.he
  %bound0428 = icmp ult ptr %i.gu, %i.hg
  %bound1429 = icmp ult ptr %.0114.lcssa.ph, %i.hf
  %found.conflict430 = and i1 %bound0428, %bound1429
  br i1 %found.conflict430, label %.lr.ph.i151.preheader513, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck427
  %n.vec432 = and i64 %i.hc, 4611686018427387900  ; 3 uses
  %i.hh = shl i64 %n.vec432, 3                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.gu, i64 %i.hh
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body433 ] ; 2 uses
  %i.hk = shl i64 %index434, 3                    ; 2 uses
  %next.gep435 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hk ; 3 uses
  %next.gep436 = getelementptr i8, ptr %i.gu, i64 %i.hk ; 3 uses
  %i.hl = getelementptr i8, ptr %next.gep436, i64 16 ; 2 uses
  %wide.load437 = load <2 x ptr>, ptr %next.gep436, align 8, !tbaa !144, !alias.scope !2732, !noalias !2733
  %wide.load438 = load <2 x ptr>, ptr %i.hl, align 8, !tbaa !144, !alias.scope !2732, !noalias !2733
  %i.hm = getelementptr i8, ptr %next.gep435, i64 16 ; 2 uses
  %wide.load439 = load <2 x i64>, ptr %next.gep435, align 8, !tbaa !144, !alias.scope !2733
  %wide.load440 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !144, !alias.scope !2733
  store <2 x i64> %wide.load439, ptr %next.gep436, align 8, !tbaa !144, !alias.scope !2732, !noalias !2733
  store <2 x i64> %wide.load440, ptr %i.hl, align 8, !tbaa !144, !alias.scope !2732, !noalias !2733
  store <2 x ptr> %wide.load437, ptr %next.gep435, align 8, !tbaa !144, !alias.scope !2733
  store <2 x ptr> %wide.load438, ptr %i.hm, align 8, !tbaa !144, !alias.scope !2733
  %index.next441 = add nuw i64 %index434, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.hn, label %middle.block442, label %vector.body433, !llvm.loop !2699

middle.block442:                                  ; preds = %vector.body433
  %cmp.n443 = icmp eq i64 %i.hc, %n.vec432
  br i1 %cmp.n443, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151.preheader513

.lr.ph.i151.preheader513:                         ; preds = %vector.memcheck427, %.lr.ph.i151.preheader, %middle.block442
  %.010.i152.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck427 ], [ %.0114.lcssa.ph, %.lr.ph.i151.preheader ], [ %i.hi, %middle.block442 ]
  %.079.i153.ph = phi ptr [ %i.gu, %vector.memcheck427 ], [ %i.gu, %.lr.ph.i151.preheader ], [ %i.hj, %middle.block442 ]
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.preheader513, %.lr.ph.i151
  %.010.i152 = phi ptr [ %i.hq, %.lr.ph.i151 ], [ %.010.i152.ph, %.lr.ph.i151.preheader513 ] ; 3 uses
  %.079.i153 = phi ptr [ %i.hp, %.lr.ph.i151 ], [ %.079.i153.ph, %.lr.ph.i151.preheader513 ] ; 3 uses
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %.079.i153, align 8, !tbaa !144
  %i.ho = load i64, ptr %.010.i152, align 8, !tbaa !144
  store i64 %i.ho, ptr %.079.i153, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i154, ptr %.010.i152, align 8, !tbaa !144
  %i.hp = getelementptr inbounds nuw i8, ptr %.079.i153, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.010.i152, i64 8
  %.not.i155 = icmp eq ptr %i.hp, %i.gt
  br i1 %.not.i155, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158, label %.lr.ph.i151, !llvm.loop !2700

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158: ; preds = %.lr.ph.i151, %middle.block442, %bb.a, %.thread
  %.0108.lcssa304 = phi ptr [ %1, %bb.a ], [ %i.gw, %.thread ], [ %i.gw, %middle.block442 ], [ %i.gw, %.lr.ph.i151 ]
  %.0111.lcssa303 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block442 ], [ %.0111.lcssa.ph, %.lr.ph.i151 ]
  %.0204.lcssa302 = phi ptr [ %i.f, %bb.a ], [ %.0204.lcssa.ph, %.thread ], [ %.0204.lcssa.ph, %middle.block442 ], [ %.0204.lcssa.ph, %.lr.ph.i151 ]
  %.0208.lcssa301 = phi i64 [ 0, %bb.a ], [ %.0208.lcssa.ph, %.thread ], [ %.0208.lcssa.ph, %middle.block442 ], [ %.0208.lcssa.ph, %.lr.ph.i151 ] ; 2 uses
  %.idx223 = shl i64 %6, 3                        ; 3 uses
  %i.hr = getelementptr i8, ptr %i.i, i64 %.idx223 ; 3 uses
  %.not8.i159 = icmp eq i64 %6, 0
  br i1 %.not8.i159, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader

.lr.ph.i160.preheader:                            ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  %i.hs = add i64 %.idx223, -8                    ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check452 = icmp ult i64 %i.hs, 40
  br i1 %min.iters.check452, label %.lr.ph.i160.preheader512, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph.i160.preheader
  %i.hv = getelementptr i8, ptr %7, i64 %.idx223
  %bound0454 = icmp ult ptr %i.i, %i.hv
  %bound1455 = icmp ult ptr %7, %i.hr
  %found.conflict456 = and i1 %bound0454, %bound1455
  br i1 %found.conflict456, label %.lr.ph.i160.preheader512, label %vector.ph457

vector.ph457:                                     ; preds = %vector.memcheck453
  %n.vec458 = and i64 %i.hu, 4611686018427387900  ; 3 uses
  %i.hw = shl i64 %n.vec458, 3                    ; 2 uses
  %i.hx = getelementptr i8, ptr %7, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.i, i64 %i.hw
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next467, %vector.body459 ] ; 2 uses
  %i.hz = shl i64 %index460, 3                    ; 2 uses
  %next.gep461 = getelementptr i8, ptr %7, i64 %i.hz ; 3 uses
  %next.gep462 = getelementptr i8, ptr %i.i, i64 %i.hz ; 3 uses
  %i.ia = getelementptr i8, ptr %next.gep462, i64 16 ; 2 uses
  %wide.load463 = load <2 x ptr>, ptr %next.gep462, align 8, !tbaa !144, !alias.scope !2734, !noalias !2735
  %wide.load464 = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !144, !alias.scope !2734, !noalias !2735
  %i.ib = getelementptr i8, ptr %next.gep461, i64 16 ; 2 uses
  %wide.load465 = load <2 x i64>, ptr %next.gep461, align 8, !tbaa !144, !alias.scope !2735
  %wide.load466 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !144, !alias.scope !2735
  store <2 x i64> %wide.load465, ptr %next.gep462, align 8, !tbaa !144, !alias.scope !2734, !noalias !2735
  store <2 x i64> %wide.load466, ptr %i.ia, align 8, !tbaa !144, !alias.scope !2734, !noalias !2735
  store <2 x ptr> %wide.load463, ptr %next.gep461, align 8, !tbaa !144, !alias.scope !2735
  store <2 x ptr> %wide.load464, ptr %i.ib, align 8, !tbaa !144, !alias.scope !2735
  %index.next467 = add nuw i64 %index460, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next467, %n.vec458
  br i1 %i.ic, label %middle.block468, label %vector.body459, !llvm.loop !2704

middle.block468:                                  ; preds = %vector.body459
  %cmp.n469 = icmp eq i64 %i.hu, %n.vec458
  br i1 %cmp.n469, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160.preheader512

.lr.ph.i160.preheader512:                         ; preds = %vector.memcheck453, %.lr.ph.i160.preheader, %middle.block468
  %.010.i161.ph = phi ptr [ %7, %vector.memcheck453 ], [ %7, %.lr.ph.i160.preheader ], [ %i.hx, %middle.block468 ]
  %.079.i162.ph = phi ptr [ %i.i, %vector.memcheck453 ], [ %i.i, %.lr.ph.i160.preheader ], [ %i.hy, %middle.block468 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader512, %.lr.ph.i160
  %.010.i161 = phi ptr [ %i.if, %.lr.ph.i160 ], [ %.010.i161.ph, %.lr.ph.i160.preheader512 ] ; 3 uses
  %.079.i162 = phi ptr [ %i.ie, %.lr.ph.i160 ], [ %.079.i162.ph, %.lr.ph.i160.preheader512 ] ; 3 uses
  %.sroa.0.0.copyload.i.i163 = load ptr, ptr %.079.i162, align 8, !tbaa !144
  %i.id = load i64, ptr %.010.i161, align 8, !tbaa !144
  store i64 %i.id, ptr %.079.i162, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i163, ptr %.010.i161, align 8, !tbaa !144
  %i.ie = getelementptr inbounds nuw i8, ptr %.079.i162, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.010.i161, i64 8
  %.not.i164 = icmp eq ptr %i.ie, %i.hr
  br i1 %.not.i164, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, label %.lr.ph.i160, !llvm.loop !2705

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167: ; preds = %.lr.ph.i160, %middle.block468, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit158
  store ptr %7, ptr %i.b, align 8, !tbaa !509
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ig, ptr %i.c, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.ig, ptr %10, align 8, !tbaa !542
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %4
  store ptr %i.ii, ptr %12, align 8, !tbaa !542, !alias.scope !2736
  store ptr %.0204.lcssa302, ptr %13, align 8, !tbaa !542, !alias.scope !2737
  store ptr %i.i, ptr %14, align 8, !tbaa !542, !alias.scope !2738
  store ptr %7, ptr %15, align 8, !tbaa !542, !alias.scope !2739
  store ptr %i.hr, ptr %16, align 8, !tbaa !542, !alias.scope !2740
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.753") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0208.lcssa301, i64 noundef 0, i64 noundef %.0208.lcssa301, i1 noundef zeroext true)
  %i.ij = load ptr, ptr %11, align 8, !tbaa !542  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ik = load ptr, ptr %10, align 8, !tbaa !542  ; 3 uses
  store ptr %i.ik, ptr %i.c, align 8, !tbaa !509
  %i.il = load ptr, ptr %i.b, align 8, !tbaa !509 ; 4 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %.not28.i168 = icmp eq ptr %i.il, %i.ik
  br i1 %.not28.i168, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167, %bb.ab
  %indvar484 = phi i64 [ %indvar.next485, %bb.ab ], [ 0, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 2 uses
  %.031.i = phi ptr [ %.1.i171, %bb.ab ], [ %i.ik, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 9 uses
  %.01930.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa303, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 3 uses
  %.02129.i = phi ptr [ %i.jq, %bb.ab ], [ %i.ij, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167 ] ; 6 uses
  %i.in = icmp eq ptr %.0108.lcssa304, %.01930.i
  br i1 %i.in, label %.lr.ph.i.i.preheader, label %bb.y

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i169
  %.031.i483 = ptrtoaddr ptr %.031.i to i64
  %i.io = add i64 %.031.i483, -8
  %i.ip = sub i64 %i.io, %i.im                    ; 3 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %min.iters.check487 = icmp ult i64 %i.ip, 168
  br i1 %min.iters.check487, label %.lr.ph.i.i.preheader507, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph.i.i.preheader
  %i.is = and i64 %i.ip, -8                       ; 2 uses
  %i.it = sub nuw nsw i64 -8, %i.is
  %i.iu = getelementptr i8, ptr %.031.i, i64 %i.it
  %i.iv = shl i64 %indvar484, 3
  %i.iw = add i64 %i.iv, %i.is
  %i.ix = sub nuw nsw i64 -8, %i.iw
  %i.iy = getelementptr i8, ptr %i.ij, i64 %i.ix
  %bound0489 = icmp ult ptr %i.iu, %.02129.i
  %bound1490 = icmp ult ptr %i.iy, %.031.i
  %found.conflict491 = and i1 %bound0489, %bound1490
  br i1 %found.conflict491, label %.lr.ph.i.i.preheader507, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %i.ir, 4611686018427387900  ; 3 uses
  %i.iz = mul i64 %n.vec493, -8                   ; 2 uses
  %i.ja = getelementptr i8, ptr %.02129.i, i64 %i.iz
  %i.jb = getelementptr i8, ptr %.031.i, i64 %i.iz
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next502, %vector.body494 ] ; 2 uses
  %i.jc = mul i64 %index495, -8                   ; 2 uses
  %next.gep496 = getelementptr i8, ptr %.02129.i, i64 %i.jc ; 2 uses
  %next.gep497 = getelementptr i8, ptr %.031.i, i64 %i.jc ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %next.gep497, i64 -16 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %next.gep497, i64 -32 ; 2 uses
  %wide.load498 = load <2 x ptr>, ptr %i.jd, align 8, !tbaa !144, !alias.scope !2741, !noalias !2742
  %wide.load499 = load <2 x ptr>, ptr %i.je, align 8, !tbaa !144, !alias.scope !2741, !noalias !2742
  %i.jf = getelementptr inbounds i8, ptr %next.gep496, i64 -16 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %next.gep496, i64 -32 ; 2 uses
  %wide.load500 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !144, !alias.scope !2742
  %wide.load501 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !144, !alias.scope !2742
  store <2 x i64> %wide.load500, ptr %i.jd, align 8, !tbaa !144, !alias.scope !2741, !noalias !2742
  store <2 x i64> %wide.load501, ptr %i.je, align 8, !tbaa !144, !alias.scope !2741, !noalias !2742
  store <2 x ptr> %wide.load498, ptr %i.jf, align 8, !tbaa !144, !alias.scope !2742
  store <2 x ptr> %wide.load499, ptr %i.jg, align 8, !tbaa !144, !alias.scope !2742
  %index.next502 = add nuw i64 %index495, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next502, %n.vec493
  br i1 %i.jh, label %middle.block503, label %vector.body494, !llvm.loop !2719

middle.block503:                                  ; preds = %vector.body494
  %cmp.n504 = icmp eq i64 %i.ir, %n.vec493
  br i1 %cmp.n504, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i.preheader507

.lr.ph.i.i.preheader507:                          ; preds = %vector.memcheck488, %.lr.ph.i.i.preheader, %middle.block503
  %.08.i.i.ph = phi ptr [ %.02129.i, %vector.memcheck488 ], [ %.02129.i, %.lr.ph.i.i.preheader ], [ %i.ja, %middle.block503 ]
  %.057.i.i.ph = phi ptr [ %.031.i, %vector.memcheck488 ], [ %.031.i, %.lr.ph.i.i.preheader ], [ %i.jb, %middle.block503 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader507, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.jj, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader507 ]
  %.057.i.i = phi ptr [ %i.ji, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader507 ]
  %i.ji = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !144
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !144
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.jj, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.il, %i.ji
  br i1 %.not.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i.i, !llvm.loop !2720

bb.y:                                             ; preds = %.lr.ph.i169
  %i.jl = getelementptr inbounds i8, ptr %.031.i, i64 -8 ; 3 uses
  %i.jm = getelementptr inbounds i8, ptr %.01930.i, i64 -8 ; 3 uses
  %i.jn = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jo = load ptr, ptr %i.jm, align 8            ; 2 uses
  %i.jp = icmp ult ptr %i.jn, %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.02129.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i170 = load ptr, ptr %i.jq, align 8, !tbaa !144 ; 2 uses
  br i1 %i.jp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jr = ptrtoint ptr %i.jo to i64
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jm, align 8, !tbaa !144
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.js = ptrtoint ptr %i.jn to i64
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i170, ptr %i.jl, align 8, !tbaa !144
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.jm, %bb.z ], [ %.01930.i, %bb.aa ]
  %.1.i171 = phi ptr [ %.031.i, %bb.z ], [ %i.jl, %bb.aa ] ; 2 uses
  %.not.i172 = icmp eq ptr %i.il, %.1.i171
  %indvar.next485 = add i64 %indvar484, 1
  br i1 %.not.i172, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit, label %.lr.ph.i169, !llvm.loop !2721

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEESS_NS_11move_detail8identityISS_EEEENS0_7swap_opEPSS_SZ_EEvT2_S10_S10_T1_S11_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i, %middle.block503, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit167
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EEvT_T0_T1_NS0_9iter_sizeIS12_E4typeES15_S15_S15_S15_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat {
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
  store i8 1, ptr %i.a, align 1, !tbaa !118
  br label %._crit_edge126

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx105 = shl i64 %2, 3                        ; 4 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = shl i64 %3, 3
  %i.l = mul i64 %2, %i.b
  %i.m = add i64 %i.l, %3
  %i.n = shl i64 %i.m, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.n
  %i.o = add i64 %.idx105, -8                     ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 56
  %i.r = getelementptr i8, ptr %1, i64 %i.k
  %stride.check = icmp slt i64 %.idx105, 0
  %n.vec = and i64 %i.q, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit
  %.idx130 = shl i64 %i.bl, 3                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx130 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !118
  %.not77120 = icmp eq i64 %i.bl, 0
  br i1 %.not77120, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.v = icmp eq ptr %.1102, %i.u
  br i1 %i.v, label %.lr.ph125.split.us.preheader.preheader, label %.lr.ph125.split

.lr.ph125.split.us.preheader.preheader:           ; preds = %.lr.ph125
  %i.w = add i64 %.idx130, -8                     ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol

.lr.ph125.split.us.preheader.prol:                ; preds = %.lr.ph125.split.us.preheader.preheader, %.lr.ph125.split.us.preheader.prol
  %.0123.us.prol = phi ptr [ %i.aa, %.lr.ph125.split.us.preheader.prol ], [ %0, %.lr.ph125.split.us.preheader.preheader ]
  %.069122.us.prol = phi ptr [ %i.z, %.lr.ph125.split.us.preheader.prol ], [ %i.d, %.lr.ph125.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph125.split.us.preheader.prol ], [ 0, %.lr.ph125.split.us.preheader.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.069122.us.prol, i64 %2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0123.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph125.split.us.preheader.prol.loopexit, label %.lr.ph125.split.us.preheader.prol, !llvm.loop !2743

.lr.ph125.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph125.split.us.preheader.prol, %.lr.ph125.split.us.preheader.preheader
  %.069122.us.lcssa.unr = phi ptr [ poison, %.lr.ph125.split.us.preheader.preheader ], [ %.069122.us.prol, %.lr.ph125.split.us.preheader.prol ]
  %.0123.us.unr = phi ptr [ %0, %.lr.ph125.split.us.preheader.preheader ], [ %i.aa, %.lr.ph125.split.us.preheader.prol ]
  %.069122.us.unr = phi ptr [ %i.d, %.lr.ph125.split.us.preheader.preheader ], [ %i.z, %.lr.ph125.split.us.preheader.prol ]
  %i.ab = icmp ult i64 %i.w, 56
  br i1 %i.ab, label %._crit_edge126, label %.lr.ph125.split.us.preheader

.lr.ph125.split.us.preheader:                     ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader
  %.0123.us = phi ptr [ %i.ak, %.lr.ph125.split.us.preheader ], [ %.0123.us.unr, %.lr.ph125.split.us.preheader.prol.loopexit ]
  %.069122.us = phi ptr [ %i.aj, %.lr.ph125.split.us.preheader ], [ %.069122.us.unr, %.lr.ph125.split.us.preheader.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.069122.us, i64 %2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = getelementptr inbounds nuw i8, ptr %.0123.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ak, %i.t
  br i1 %.not77.us.7, label %._crit_edge126, label %.lr.ph125.split.us.preheader, !llvm.loop !2744

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.071117 = phi ptr [ %i.d, %.lr.ph ], [ %i.bm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 8 uses
  %.072116 = phi i64 [ %i.h, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 4 uses
  %.073115 = phi ptr [ %0, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 8 uses
  %.074114 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.075113 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ]
  %.0100112 = phi i64 [ %i.b, %.lr.ph ], [ %i.cl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 2 uses
  %.0101111 = phi ptr [ %i.f, %.lr.ph ], [ %.1102, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 4 uses
  %.val108110 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit ] ; 3 uses
  %i.al = icmp ult i64 %.072116, %.val108110
  br i1 %i.al, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread26.i
  %.029.i = phi i64 [ %i.ba, %.thread26.i ], [ %.072116, %bb.b ] ; 4 uses
  %.02228.i = phi i64 [ %i.az, %.thread26.i ], [ 0, %bb.b ] ; 4 uses
  %i.am = mul i64 %.02228.i, %2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.am
  %i.ao = mul i64 %.029.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071117, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.02228.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.073115, i64 %.029.i
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !443 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !443 ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.at
  br i1 %i.au, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.av = icmp ult ptr %i.at, %i.as
  br i1 %i.av, label %.thread26.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !443
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !443
  %i.ay = icmp ult ptr %i.aw, %i.ax
  %cond.fr.i = freeze i1 %i.ay
  br i1 %cond.fr.i, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread26.i

.thread26.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.az = phi i64 [ %.029.i, %.thread.i ], [ %.02228.i, %bb.d ], [ %.02228.i, %bb.c ] ; 2 uses
  %i.ba = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %.val108110
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit, label %.lr.ph.i, !llvm.loop !68

_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit: ; preds = %.thread26.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.az, %.thread26.i ] ; 5 uses
  %.idx106 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.073115, i64 %.idx106 ; 4 uses
  %i.bc = add i64 %.022.lcssa.i, 2
  %i.bd = tail call i64 @llvm.umax.i64(i64 %.val108110, i64 %i.bc) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %.0100112)
  %i.be = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.be, 3
  %i.bf = getelementptr i8, ptr %.071117, i64 %.idx ; 6 uses
  %i.bg = trunc nuw i8 %.074114 to i1
  %or.cond = and i1 %i.j, %i.bg
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !443
  %i.bj = icmp uge ptr %i.bh, %i.bi
  %spec.select = zext i1 %i.bj to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit
  %.1 = phi i8 [ %.074114, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEESQ_SZ_EENS0_9iter_sizeIT1_E4typeET_T0_S11_S13_S13_S13_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bk = zext nneg i8 %.1 to i64
  %i.bl = add i64 %.075113, %i.bk                 ; 3 uses
  %i.bm = getelementptr i8, ptr %.071117, i64 %.idx105 ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bn = mul i64 %indvar, %.idx105
  %i.bo = shl i64 %.022.lcssa.i, 3
  %i.bp = add i64 %i.bo, 8
  %i.bq = mul i64 %2, %i.bp
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bn
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq
  %bound0 = icmp ult ptr %i.d, %i.bs
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bt = or i1 %found.conflict, %stride.check
  br i1 %i.bt, label %.lr.ph.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bu = getelementptr i8, ptr %i.bf, i64 %i.s
  %i.bv = getelementptr i8, ptr %.071117, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bw ; 3 uses
  %next.gep163 = getelementptr i8, ptr %.071117, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep163, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep163, align 8, !tbaa !144, !alias.scope !2751, !noalias !2752
  %wide.load164 = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !144, !alias.scope !2751, !noalias !2752
  %i.by = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2752
  %wide.load166 = load <2 x i64>, ptr %i.by, align 8, !tbaa !144, !alias.scope !2752
  store <2 x i64> %wide.load165, ptr %next.gep163, align 8, !tbaa !144, !alias.scope !2751, !noalias !2752
  store <2 x i64> %wide.load166, ptr %i.bx, align 8, !tbaa !144, !alias.scope !2751, !noalias !2752
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2752
  store <2 x ptr> %wide.load164, ptr %i.by, align 8, !tbaa !144, !alias.scope !2752
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2748

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071117, %vector.memcheck ], [ %.071117, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader170 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !144
  %i.ca = load i64, ptr %.010.i.i, align 8, !tbaa !144
  store i64 %i.ca, ptr %.079.i.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !144
  %i.cb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cb, %i.bm
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i, label %.lr.ph.i.i, !llvm.loop !2749

_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bb, align 8, !tbaa !144
  %i.cd = load i64, ptr %.073115, align 8, !tbaa !144
  store i64 %i.cd, ptr %i.bb, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.073115, align 8, !tbaa !144
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit.i
  %i.ce = icmp eq ptr %i.bb, %.0101111
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp eq ptr %.0101111, %.073115
  %spec.select103 = select i1 %i.cf, ptr %i.bb, ptr %.0101111
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_EEvT_SR_RSR_T0_ST_ST_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1102 = phi ptr [ %.0101111, %bb.f ], [ %spec.select103, %bb.j ], [ %.073115, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.073115, i64 8
  %i.ch = icmp ne i64 %.072116, 0
  %.neg = sext i1 %i.ch to i64
  %i.ci = add i64 %.072116, %.neg
  %i.cj = icmp ne i64 %i.bd, 0
  %.neg78 = sext i1 %i.cj to i64
  %i.ck = add i64 %.sroa.speculated89, %.neg78
  %i.cl = add i64 %.0100112, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2750

._crit_edge126.loopexit132:                       ; preds = %bb.l
  %i.cm = trunc nuw i8 %i.dd to i1
  %i.cn = select i1 %i.cm, ptr %i.df, ptr %i.dg
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125.split.us.preheader.prol.loopexit, %.lr.ph125.split.us.preheader, %._crit_edge.thread, %._crit_edge126.loopexit132, %._crit_edge
  %i.co = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cn, %._crit_edge126.loopexit132 ], [ %.069122.us.lcssa.unr, %.lr.ph125.split.us.preheader.prol.loopexit ], [ %i.ai, %.lr.ph125.split.us.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.cq = ptrtoint ptr %i.e to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPN4CGAL8internal11CC_iteratorINS2_17Compact_containerINS2_37Constrained_triangulation_face_base_2INS2_5EpickENS2_25Triangulation_face_base_2IS7_NS2_28Triangulation_ds_face_base_2INS2_30Triangulation_data_structure_2INS2_27Triangulation_vertex_base_2IS7_NS2_30Triangulation_ds_vertex_base_2IvEEEENS6_IS7_NS8_IS7_NS9_IvEEEEEEEEEEEEEENS2_7DefaultESM_SM_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISO_ESO_NS_11move_detail8identityISO_EEEEEEvT_SZ_SZ_NS0_9iter_sizeISZ_E4typeES12_T0_(ptr noundef %i.co, ptr noundef %i.e, ptr noundef %i.cp, i64 noundef %i.ct, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph125.split:                                  ; preds = %.lr.ph125, %bb.l
  %i.cu = phi i8 [ %i.dd, %bb.l ], [ 1, %.lr.ph125 ]
  %i.cv = phi i8 [ %i.de, %bb.l ], [ 1, %.lr.ph125 ] ; 2 uses
  %.0123 = phi ptr [ %i.dh, %bb.l ], [ %0, %.lr.ph125 ] ; 2 uses
  %.069122 = phi ptr [ %i.dg, %bb.l ], [ %i.d, %.lr.ph125 ] ; 4 uses
  %.070121 = phi ptr [ %i.df, %bb.l ], [ %1, %.lr.ph125 ]
  %i.cw = load ptr, ptr %.0123, align 8, !tbaa !443
  %i.cx = load ptr, ptr %.1102, align 8, !tbaa !443
  %i.cy = icmp ult ptr %i.cw, %i.cx
  %i.cz = zext i1 %i.cy to i8
  %i.da = icmp eq i8 %i.cv, %i.cz
  br i1 %i.da, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph125.split
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.069122, i64 %2
  %i.dc = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %.070121, ptr noundef %.069122, ptr noundef %i.db, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !118, !range !90 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph125.split, %bb.k
  %i.dd = phi i8 [ %.pre, %bb.k ], [ %i.cu, %.lr.ph125.split ] ; 2 uses
  %i.de = phi i8 [ %.pre, %bb.k ], [ %i.cv, %.lr.ph125.split ]
  %i.df = phi ptr [ %i.dc, %bb.k ], [ %.069122, %.lr.ph125.split ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.069122, i64 %2 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0123, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dh, %i.t
  br i1 %.not77, label %._crit_edge126.loopexit132, label %.lr.ph125.split, !llvm.loop !2744
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPN4CGAL8internal11CC_iteratorINS5_17Compact_containerINS5_37Constrained_triangulation_face_base_2INS5_5EpickENS5_25Triangulation_face_base_2ISA_NS5_28Triangulation_ds_face_base_2INS5_30Triangulation_data_structure_2INS5_27Triangulation_vertex_base_2ISA_NS5_30Triangulation_ds_vertex_base_2IvEEEENS9_ISA_NSB_ISA_NSC_IvEEEEEEEEEEEEEENS5_7DefaultESP_SP_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISR_ESR_NS_11move_detail8identityISR_EEEENS0_7move_opESS_EEvT_T0_T1_NS0_9iter_sizeIS15_E4typeES18_S18_S18_S18_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.727", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.755", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.545", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.545", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.753", align 8 ; 2 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %7, ptr %i.c, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %7, ptr %i.d, align 8, !tbaa !509
  %i.h = getelementptr [8 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr %i.h, ptr %i.e, align 8, !tbaa !509
  %i.i = mul i64 %i.f, %2
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %.not220 = icmp eq i64 %i.f, 0
  br i1 %.not220, label %_ZN5boost4moveIPN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_37Constrained_triangulation_face_base_2INS1_5EpickENS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2INS1_30Triangulation_data_structure_2INS1_27Triangulation_vertex_base_2IS6_NS1_30Triangulation_ds_vertex_base_2IvEEEENS5_IS6_NS7_IS6_NS8_IvEEEEEEEEEEEEEENS1_7DefaultESL_SL_EELb0EEESO_EET0_T_SQ_SP_.exit154, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = icmp eq i64 %5, 0
  %i.l = select i1 %i.k, i64 0, i64 %4            ; 2 uses
  %i.m = add i64 %i.l, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.f)
  %.idx212 = shl i64 %2, 3                        ; 7 uses
  %.not121 = icmp eq i64 %6, 0
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx212 ; 2 uses
  %i.o = shl i64 %3, 3                            ; 2 uses
  %i.p = add i64 %i.o, 8
  %i.q = add i64 %i.o, %i.b
  %i.r = add i64 %i.q, %.idx212
  %i.s = add i64 %i.r, -8
  %scevgep360 = getelementptr i8, ptr %7, i64 8
  %i.t = shl i64 %3, 3
  %i.u = add i64 %i.t, %i.b
  %i.v = add i64 %i.u, %.idx212
  %i.w = add i64 %i.v, -8
  %i.x = add i64 %.idx212, -8                     ; 2 uses
  %i.y = lshr exact i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 88
  %bound0309 = icmp ult ptr %7, %i.j
  %bound1310 = icmp ult ptr %i.h, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %stride.check = icmp slt i64 %.idx212, 0
  %i.aa = or i1 %found.conflict311, %stride.check
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 3 uses
  %i.ac = getelementptr i8, ptr %7, i64 %i.ab     ; 2 uses
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.ad = phi ptr [ %7, %.lr.ph ], [ %i.gd, %bb.x ] ; 5 uses
  %i.ae = phi ptr [ %7, %.lr.ph ], [ %i.ge, %bb.x ] ; 7 uses
  %i.af = phi ptr [ %i.h, %.lr.ph ], [ %i.bd, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gm, %bb.x ] ; 3 uses
  %.0231 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104230 = phi i64 [ %i.l, %.lr.ph ], [ %i.gk, %bb.x ] ; 4 uses
  %.0106227 = phi ptr [ %0, %.lr.ph ], [ %i.gi, %bb.x ] ; 16 uses
  %.0108226 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111224 = phi ptr [ %i.h, %.lr.ph ], [ %i.gh, %bb.x ] ; 5 uses
  %.0114223 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 8 uses
  %.0195222 = phi ptr [ %i.g, %.lr.ph ], [ %.2197, %bb.x ] ; 16 uses
  %.0199221 = phi i64 [ %i.f, %.lr.ph ], [ %i.gn, %bb.x ] ; 4 uses
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %.0114223325 = ptrtoaddr ptr %.0114223 to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = icmp ult i64 %.0104230, %.0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPN4CGAL8internal11CC_iteratorINS5_17Compact_containerINS5_37Constrained_triangulation_face_base_2INS5_5EpickENS5_25Triangulation_face_base_2ISA_NS5_28Triangulation_ds_face_base_2INS5_30Triangulation_data_structure_2INS5_27Triangulation_vertex_base_2ISA_NS5_30Triangulation_ds_vertex_base_2IvEEEENS9_ISA_NSB_ISA_NSC_IvEEEEEEEEEEEEEENS5_7DefaultESP_SP_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISR_ESR_NS_11move_detail8identityISR_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_S13_S15_S15_S15_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread25.i
  %.028.i = phi i64 [ %i.ax, %.thread25.i ], [ %.0104230, %bb.b ] ; 4 uses
  %.02227.i = phi i64 [ %i.aw, %.thread25.i ], [ 0, %bb.b ] ; 4 uses
  %i.aj = mul i64 %.02227.i, %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = mul i64 %.028.i, %2
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0106227, i64 %.02227.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0106227, i64 %.028.i
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !443 ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !443 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7move_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
  %.sroa.015.0.ph.i.i = phi ptr [ %i.aq, %.split.i.i ], [ %i.e, %bb.f ] ; 2 uses
  %.sroa.020.0.ph.i.i = phi ptr [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.aj, %bb.f ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.al, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !2825 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !2825 ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  br i1 %i.ao, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !144, !noalias !2825
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !144, !noalias !2825
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !144, !noalias !2825
  %.not32.i.i = icmp eq ptr %i.aq, %i.ac
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !70

bb.h:                                             ; preds = %bb.g
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !144, !noalias !2825
  %.not31.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !70

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bb, %.split.i14.i ], [ %i.ai, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.av, %.split.i14.i ], [ %i.af, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.ba, %.split.i14.i ], [ %i.e, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.aj, %bb.i ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.aw, %bb.k ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !2826 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !noalias !2826 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.ax, %i.ay
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !144, !noalias !2826
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !144, !noalias !2826
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !144, !noalias !2826
  %.not33.i.i = icmp eq ptr %i.ba, %i.ac
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !71

bb.k:                                             ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !144, !noalias !2826
  %.not32.i19.i = icmp eq ptr %i.aw, %i.ah
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bk, %bb.n ], [ %i.ai, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bl, %bb.n ], [ %i.e, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.aj, %bb.m ]
  %i.bf = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bg, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2827 ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8, !noalias !2827 ; 2 uses
  %i.bj = icmp ult ptr %i.bh, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bl = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bm = ptrtoint ptr %i.bi to i64
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !144, !noalias !2827
  %i.bn = icmp eq ptr %i.bl, %i.ac
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !72

bb.o:                                             ; preds = %.preheader.i.i
  %i.bo = ptrtoint ptr %i.bh to i64
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !144, !noalias !2827
  %i.bp = icmp eq ptr %i.bg, %i.ah
  br i1 %i.bp, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !72

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.bu, %bb.q ], [ %i.ai, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bv, %bb.q ], [ %i.e, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.aj, %bb.p ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.bu, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.br, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !noalias !2828 ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !2828 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bs, %i.bt
  %i.bu = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bv = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !144, !noalias !2828
  %i.bx = icmp eq ptr %i.bv, %i.ac
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !73

bb.r:                                             ; preds = %.preheader.i6.i
  %i.by = ptrtoint ptr %i.bt to i64
  store i64 %i.by, ptr %i.bu, align 8, !tbaa !144, !noalias !2828
  %i.bz = icmp eq ptr %i.br, %i.ah
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !73

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.al, %bb.h ], [ %i.aw, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bg, %bb.o ], [ %i.br, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ac, %bb.q ], [ %i.ac, %bb.n ], [ %i.e, %bb.p ], [ %i.e, %bb.m ], [ %i.ac, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ac, %.split.i14.i ]
  %.sroa.067.0.ph = phi ptr [ %i.au, %bb.h ], [ %i.be, %bb.k ], [ %i.bu, %bb.r ], [ %i.bk, %bb.o ], [ %i.ai, %bb.p ], [ %i.ai, %bb.m ], [ %i.ar, %.split.i.i ], [ %i.bk, %bb.n ], [ %i.bu, %bb.q ], [ %i.bb, %.split.i14.i ]
  %.sroa.074.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.af, %bb.r ], [ %i.af, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.ak, %.split.i.i ], [ %i.af, %bb.n ], [ %i.af, %bb.q ], [ %i.av, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !542, !noalias !91
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !542, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.067.0 = phi ptr [ %i.ai, %bb.f ], [ %i.ai, %bb.i ], [ %.sroa.067.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 12 uses
  %.sroa.074.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.074.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.074.0319 = ptrtoaddr ptr %.sroa.074.0 to i64
  store ptr %.sroa.067.0, ptr %6, align 8, !tbaa !542
  %i.ca = load ptr, ptr %3, align 8, !tbaa !542   ; 18 uses
  %i.cb = ptrtoaddr ptr %i.ca to i64              ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %.sroa.067.0
  br i1 %i.cc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.074.0, %i.ag
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.cd = shl i64 %.018.lcssa.i, 3
  %.neg373 = add i64 %i.cd, 8
  %.neg374 = mul i64 %.neg373, %7
  %i.ce = add i64 %.sroa.074.0319, -8             ; 2 uses
  %i.cf = add i64 %.neg374, %i.ce
  %i.cg = sub i64 %i.cf, %i.f                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 88
  br i1 %min.iters.check, label %.lr.ph.i28.preheader379, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cj = shl i64 %.018.lcssa.i, 3
  %.neg375 = add i64 %i.cj, 8
  %.neg376 = mul i64 %.neg375, %7
  %i.ck = add i64 %.neg376, %i.ce
  %i.cl = xor i64 %i.ck, -1
  %.not377 = add i64 %i.cl, %i.f
  %i.cm = and i64 %.not377, -8                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.074.0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ca, i64 %i.cm
  %bound0 = icmp ult ptr %i.cn, %i.ca
  %bound1 = icmp ult ptr %i.co, %.sroa.074.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader379, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cp = mul i64 %n.vec, -8                      ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ca, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.074.0, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.cs ; 2 uses
  %next.gep320 = getelementptr i8, ptr %.sroa.074.0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %next.gep320, i64 -16 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep320, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !144, !alias.scope !2829, !noalias !2830
  %wide.load321 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !144, !alias.scope !2829, !noalias !2830
  %i.cv = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load322 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !144, !alias.scope !2831, !noalias !2832
  %wide.load323 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !144, !alias.scope !2831, !noalias !2832
  store <2 x i64> %wide.load322, ptr %i.ct, align 8, !tbaa !144, !alias.scope !2829, !noalias !2830
  store <2 x i64> %wide.load323, ptr %i.cu, align 8, !tbaa !144, !alias.scope !2829, !noalias !2830
  store <2 x ptr> %wide.load, ptr %i.cv, align 8, !tbaa !144, !alias.scope !2831, !noalias !2832
  store <2 x ptr> %wide.load321, ptr %i.cw, align 8, !tbaa !144, !alias.scope !2831, !noalias !2832
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !2812

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader379

.lr.ph.i28.preheader379:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.055.0.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i28.preheader ], [ %i.cq, %middle.block ]
  %.ph = phi ptr [ %.sroa.074.0, %vector.memcheck ], [ %.sroa.074.0, %.lr.ph.i28.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader379, %.lr.ph.i28
  %.sroa.055.0 = phi ptr [ %i.da, %.lr.ph.i28 ], [ %.sroa.055.0.ph, %.lr.ph.i28.preheader379 ]
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader379 ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.055.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cz, align 8, !tbaa !144, !noalias !2832
  %i.db = load i64, ptr %i.da, align 8, !tbaa !144, !noalias !2832
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !144, !noalias !2832
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.da, align 8, !tbaa !144, !noalias !2832
  %.not.i = icmp eq ptr %i.cz, %i.ag
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !2813

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.ca, %i.ac           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.cb, %invariant.op
  %i.dc = sub i64 %.reass, %i.f                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check342 = icmp ult i64 %i.dc, 120
  br i1 %min.iters.check342, label %.lr.ph.i29.preheader381, label %vector.memcheck343

vector.memcheck343:                               ; preds = %.lr.ph.i29.preheader
  %i.df = add i64 %i.b, %i.cb
  %reass.sub = sub i64 %i.f, %i.df
  %.not371 = add i64 %reass.sub, 7
  %i.dg = and i64 %.not371, -8                    ; 3 uses
  %i.dh = getelementptr i8, ptr %.sroa.067.0, i64 %i.dg ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.074.0, i64 %i.dg ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ca, i64 %i.dg  ; 2 uses
  %bound0344 = icmp ult ptr %i.dh, %.sroa.074.0
  %bound1345 = icmp ult ptr %i.di, %.sroa.067.0
  %found.conflict346 = and i1 %bound0344, %bound1345
  %bound0347 = icmp ult ptr %i.dh, %i.ca
  %bound1348 = icmp ult ptr %i.dj, %.sroa.067.0
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx = or i1 %found.conflict346, %found.conflict349
  %bound0350 = icmp ult ptr %i.di, %i.ca
  %bound1351 = icmp ult ptr %i.dj, %.sroa.074.0
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx, %found.conflict352
  br i1 %conflict.rdx353, label %.lr.ph.i29.preheader381, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck343
  %n.vec355 = and i64 %i.de, 4611686018427387900  ; 3 uses
  %i.dk = mul i64 %n.vec355, -8                   ; 3 uses
  %i.dl = getelementptr i8, ptr %.sroa.074.0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.sroa.067.0, i64 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ca, i64 %i.dk
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next365, %vector.body356 ] ; 2 uses
  %i.do = mul i64 %index357, -8                   ; 3 uses
  %next.gep358 = getelementptr i8, ptr %.sroa.074.0, i64 %i.do ; 2 uses
  %next.gep359 = getelementptr i8, ptr %.sroa.067.0, i64 %i.do ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.ca, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep358, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep358, i64 -32 ; 2 uses
  %wide.load361 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !144, !alias.scope !2833, !noalias !2834
  %wide.load362 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !144, !alias.scope !2833, !noalias !2834
  %i.dr = getelementptr inbounds i8, ptr %next.gep359, i64 -16
  %i.ds = getelementptr inbounds i8, ptr %next.gep359, i64 -32
  store <2 x i64> %wide.load361, ptr %i.dr, align 8, !tbaa !144, !alias.scope !2835, !noalias !2836
  store <2 x i64> %wide.load362, ptr %i.ds, align 8, !tbaa !144, !alias.scope !2835, !noalias !2836
  %i.dt = getelementptr inbounds i8, ptr %next.gep360, i64 -16
  %i.du = getelementptr inbounds i8, ptr %next.gep360, i64 -32
  %wide.load363 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !144, !alias.scope !2837, !noalias !2838
  %wide.load364 = load <2 x i64>, ptr %i.du, align 8, !tbaa !144, !alias.scope !2837, !noalias !2838
  store <2 x i64> %wide.load363, ptr %i.dp, align 8, !tbaa !144, !alias.scope !2833, !noalias !2834
  store <2 x i64> %wide.load364, ptr %i.dq, align 8, !tbaa !144, !alias.scope !2833, !noalias !2834
  %index.next365 = add nuw i64 %index357, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next365, %n.vec355
  br i1 %i.dv, label %middle.block366, label %vector.body356, !llvm.loop !2820

middle.block366:                                  ; preds = %vector.body356
  %cmp.n367 = icmp eq i64 %i.de, %n.vec355
  br i1 %cmp.n367, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader381

.lr.ph.i29.preheader381:                          ; preds = %vector.memcheck343, %.lr.ph.i29.preheader, %middle.block366
  %.sroa.049.0.ph = phi ptr [ %.sroa.074.0, %vector.memcheck343 ], [ %.sroa.074.0, %.lr.ph.i29.preheader ], [ %i.dl, %middle.block366 ]
  %.sroa.048.0.ph = phi ptr [ %.sroa.067.0, %vector.memcheck343 ], [ %.sroa.067.0, %.lr.ph.i29.preheader ], [ %i.dm, %middle.block366 ]
  %.ph382 = phi ptr [ %i.ca, %vector.memcheck343 ], [ %i.ca, %.lr.ph.i29.preheader ], [ %i.dn, %middle.block366 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader381, %.lr.ph.i29
  %.sroa.049.0 = phi ptr [ %i.dy, %.lr.ph.i29 ], [ %.sroa.049.0.ph, %.lr.ph.i29.preheader381 ]
  %.sroa.048.0 = phi ptr [ %i.dz, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader381 ]
  %i.dw = phi ptr [ %i.dx, %.lr.ph.i29 ], [ %.ph382, %.lr.ph.i29.preheader381 ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !144, !noalias !2838
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !144, !noalias !2838
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !144, !noalias !2838
  store i64 %i.eb, ptr %i.dy, align 8, !tbaa !144, !noalias !2838
  %.not.i30 = icmp eq ptr %i.dx, %i.ac
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2821

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0101.0 = phi ptr [ %i.ee, %.lr.ph.i33 ], [ %.sroa.067.0, %bb.w ]
  %i.ec = phi ptr [ %i.ed, %.lr.ph.i33 ], [ %i.ca, %bb.w ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0101.0, i64 -8 ; 3 uses
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !144, !noalias !2839
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !144, !noalias !2839
  %.not.i34 = icmp eq ptr %i.ed, %i.ac
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !74

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block366, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ac, %bb.s ], [ %i.ee, %.lr.ph.i33 ], [ %i.ca, %bb.t ], [ %i.da, %.lr.ph.i28 ], [ %.sroa.067.0, %bb.v ], [ %.sroa.067.0, %bb.w ], [ %i.cq, %middle.block ], [ %i.dm, %middle.block366 ], [ %i.dz, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !542
  %i.eg = load ptr, ptr %1, align 8, !tbaa !542   ; 4 uses
  %.neg109 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %.neg109 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ac, %.sroa.074.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg109, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i37 = load ptr, ptr %i.ei, align 8, !tbaa !144
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !144
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i37, ptr %i.ej, align 8, !tbaa !144
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.el = load ptr, ptr %2, align 8, !tbaa !542   ; 2 uses
  %i.em = icmp eq ptr %i.eh, %i.el
  br i1 %i.em, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = icmp eq ptr %i.el, %i.eg
  br i1 %i.en, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eg, %bb.y ], [ %i.eh, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !542
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !542
  %i.eo = load ptr, ptr %1, align 8, !tbaa !542
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 2 uses
  store ptr %i.ep, ptr %1, align 8, !tbaa !542
  %i.eq = icmp ne i64 %.0151, 0
  %.neg = sext i1 %i.eq to i64
  %i.er = add i64 %.0151, %.neg
  %i.es = icmp ne i64 %i.ab, 0
  %.neg24 = sext i1 %i.es to i64
  %i.et = add i64 %.sroa.speculated, %.neg24
  %i.eu = add i64 %.0106150, -1                   ; 2 uses
  %.not = icmp eq i64 %i.eu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2824

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.ev = load ptr, ptr %6, align 8, !tbaa !542
  store ptr %i.ev, ptr %0, align 8, !tbaa !542
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !509    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !509    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !509    ; 9 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7move_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_SS_SS_S13_NS0_7swap_opEEET3_T_S16_T0_T1_RT2_S19_S15_NS0_9iter_sizeIS18_E4typeES1D_S1D_S1D_T4_bT5_:bb.a
.split.i.i:                                       ; preds = %bb.g
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i.i, i64 -8 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !144, !noalias !2895
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !144, !noalias !2895
  %i.av = load i64, ptr %i.as, align 8, !tbaa !144, !noalias !2895
  store i64 %i.av, ptr %i.am, align 8, !tbaa !144, !noalias !2895
  store i64 %i.au, ptr %i.as, align 8, !tbaa !144, !noalias !2895
  %.not35.i.i = icmp eq ptr %i.as, %i.ae
  br i1 %.not35.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !2860

bb.h:                                             ; preds = %bb.g
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = getelementptr inbounds i8, ptr %.sroa.028.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !144, !noalias !2895
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !144, !noalias !2895
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.an, align 8, !tbaa !144, !noalias !2895
  %.not34.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not34.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !2860

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.021.0.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.ak, %bb.i ]
  %.sroa.013.0.ph.i9.i = phi ptr [ %i.ay, %.split.i14.i ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.017.0.ph.i10.i = phi ptr [ %i.bd, %.split.i14.i ], [ %i.g, %bb.i ] ; 2 uses
  %.sroa.022.0.ph.i11.i = phi ptr [ %.sroa.022.0.i12.i, %.split.i14.i ], [ %i.al, %bb.i ]
  %i.ay = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.021.1.i = phi ptr [ %.sroa.021.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.022.0.i12.i = phi ptr [ %.sroa.022.0.ph.i11.i, %.outer.i8.i ], [ %i.az, %bb.k ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.022.0.i12.i, i64 -8 ; 5 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !2896 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !2896 ; 2 uses
  %.not34.i13.i = icmp ult ptr %i.ba, %i.bb
  br i1 %.not34.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %.sroa.017.0.ph.i10.i, i64 -8 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !144, !noalias !2896
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !144, !noalias !2896
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !144, !noalias !2896
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !144, !noalias !2896
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !144, !noalias !2896
  %.not36.i.i = icmp eq ptr %i.bd, %i.ae
  br i1 %.not36.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !2863

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.021.1.i, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i19.i = load ptr, ptr %i.bi, align 8, !tbaa !144, !noalias !2896
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !144, !noalias !2896
  store ptr %.sroa.0.0.copyload.i.i19.i, ptr %i.az, align 8, !tbaa !144, !noalias !2896
  %.not35.i20.i = icmp eq ptr %i.az, %i.aj
  br i1 %.not35.i20.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !2863

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEESS_S13_EENS0_9iter_sizeIT1_E4typeET_T0_S15_S17_S17_S17_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.ak, %bb.m ]
  %.sroa.08.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.g, %bb.m ] ; 3 uses
  %.sroa.014.0.i.i.ph = phi ptr [ %.sroa.014.0.i.i, %bb.n ], [ %i.al, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.014.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.014.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.014.0.i.i, i64 -8 ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2897 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !2897 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i.i.i28 = load ptr, ptr %i.bo, align 8, !tbaa !144, !noalias !2897 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.ph, i64 -8 ; 3 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !144, !noalias !2897
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bp, align 8, !tbaa !144, !noalias !2897
  %i.br = icmp eq ptr %i.bp, %i.ae
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !2868

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !144, !noalias !2897
  store ptr %.sroa.0.0.copyload.i.i.i28, ptr %i.bk, align 8, !tbaa !144, !noalias !2897
  %i.bt = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !2868

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.ak, %bb.p ]
  %.sroa.08.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.g, %bb.p ] ; 3 uses
  %.sroa.014.0.i8.i.ph = phi ptr [ %.sroa.014.0.i8.i, %bb.q ], [ %i.al, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.014.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.014.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.014.0.i8.i, i64 -8 ; 5 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2898 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !2898 ; 2 uses
  %.not22.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %.sroa.0.0.copyload.i4.i.i = load ptr, ptr %i.by, align 8, !tbaa !144, !noalias !2898 ; 2 uses
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.08.0.i7.i.ph, i64 -8 ; 3 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !144, !noalias !2898
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bz, align 8, !tbaa !144, !noalias !2898
  %i.cb = icmp eq ptr %i.bz, %i.ae
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !2871

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !144, !noalias !2898
  store ptr %.sroa.0.0.copyload.i4.i.i, ptr %i.bv, align 8, !tbaa !144, !noalias !2898
  %i.cd = icmp eq ptr %i.bv, %i.aj
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !2871

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.022.132.i16.sink.i.sink = phi ptr [ %i.an, %bb.h ], [ %i.az, %bb.k ], [ %.sroa.014.0.i8.i, %bb.q ], [ %.sroa.014.0.i.i, %bb.n ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %.sroa.022.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.022.0.i12.i, %.split.i14.i ]
  %.sroa.017.131.i17.sink.i.sink = phi ptr [ %.sroa.017.0.ph.i.i, %bb.h ], [ %.sroa.017.0.ph.i10.i, %bb.k ], [ %i.ae, %bb.q ], [ %i.ae, %bb.n ], [ %i.g, %bb.p ], [ %i.g, %bb.m ], [ %i.ae, %.split.i.i ], [ %.sroa.08.0.i.i.ph, %bb.o ], [ %.sroa.08.0.i7.i.ph, %bb.r ], [ %i.ae, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %i.ax, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %i.at, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.be, %.split.i14.i ]
  %.sroa.078.0.ph = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i9.i, %bb.k ], [ %i.ah, %bb.r ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.m ], [ %i.am, %.split.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %i.ay, %.split.i14.i ]
  store ptr %.sroa.022.132.i16.sink.i.sink, ptr %4, align 8, !tbaa !542, !noalias !91
  store ptr %.sroa.017.131.i17.sink.i.sink, ptr %3, align 8, !tbaa !542, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.071.0 = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 17 uses
  %.sroa.078.0 = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.i ], [ %.sroa.078.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.078.0323 = ptrtoaddr ptr %.sroa.078.0 to i64
  store ptr %.sroa.071.0, ptr %6, align 8, !tbaa !542
  %i.ce = load ptr, ptr %3, align 8, !tbaa !542   ; 23 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 4 uses
  %i.cg = icmp eq ptr %i.ce, %.sroa.071.0
  br i1 %i.cg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.078.0, %i.ai
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.t
  %i.ch = shl i64 %.018.lcssa.i, 3
  %.neg407 = add i64 %i.ch, 8
  %.neg408 = mul i64 %.neg407, %7
  %i.ci = add i64 %.sroa.078.0323, -8             ; 2 uses
  %i.cj = add i64 %.neg408, %i.ci
  %i.ck = sub i64 %i.cj, %i.h                     ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 88
  br i1 %min.iters.check, label %.lr.ph.i29.preheader413, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i29.preheader
  %i.cn = shl i64 %.018.lcssa.i, 3
  %.neg409 = add i64 %i.cn, 8
  %.neg410 = mul i64 %.neg409, %7
  %i.co = add i64 %.neg410, %i.ci
  %i.cp = xor i64 %i.co, -1
  %.not411 = add i64 %i.cp, %i.h
  %i.cq = and i64 %.not411, -8                    ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.078.0, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.cq
  %bound0 = icmp ult ptr %i.cr, %i.ce
  %bound1 = icmp ult ptr %i.cs, %.sroa.078.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i29.preheader413, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.ct = mul i64 %n.vec, -8                      ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ce, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.078.0, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cw ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.078.0, i64 %i.cw ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %next.gep324, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep324, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !144, !alias.scope !2899, !noalias !2900
  %wide.load325 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !144, !alias.scope !2899, !noalias !2900
  %i.cz = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load326 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !144, !alias.scope !2901, !noalias !2902
  %wide.load327 = load <2 x i64>, ptr %i.da, align 8, !tbaa !144, !alias.scope !2901, !noalias !2902
  store <2 x i64> %wide.load326, ptr %i.cx, align 8, !tbaa !144, !alias.scope !2899, !noalias !2900
  store <2 x i64> %wide.load327, ptr %i.cy, align 8, !tbaa !144, !alias.scope !2899, !noalias !2900
  store <2 x ptr> %wide.load, ptr %i.cz, align 8, !tbaa !144, !alias.scope !2901, !noalias !2902
  store <2 x ptr> %wide.load325, ptr %i.da, align 8, !tbaa !144, !alias.scope !2901, !noalias !2902
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !2877

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader413

.lr.ph.i29.preheader413:                          ; preds = %vector.memcheck, %.lr.ph.i29.preheader, %middle.block
  %.sroa.059.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i29.preheader ], [ %i.cu, %middle.block ]
  %.ph = phi ptr [ %.sroa.078.0, %vector.memcheck ], [ %.sroa.078.0, %.lr.ph.i29.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader413, %.lr.ph.i29
  %.sroa.059.0 = phi ptr [ %i.de, %.lr.ph.i29 ], [ %.sroa.059.0.ph, %.lr.ph.i29.preheader413 ]
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i29 ], [ %.ph, %.lr.ph.i29.preheader413 ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.059.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.dd, align 8, !tbaa !144, !noalias !2902
  %i.df = load i64, ptr %i.de, align 8, !tbaa !144, !noalias !2902
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !144, !noalias !2902
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.de, align 8, !tbaa !144, !noalias !2902
  %.not.i = icmp eq ptr %i.dd, %i.ai
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2878

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7swap_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i32 = icmp eq ptr %i.ce, %i.ae           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %bb.v
  %.reass = add i64 %i.cf, %invariant.op
  %i.dg = sub i64 %.reass, %i.h                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check374 = icmp ult i64 %i.dg, 88
  br i1 %min.iters.check374, label %.lr.ph.i30.preheader417, label %vector.memcheck375

vector.memcheck375:                               ; preds = %.lr.ph.i30.preheader
  %i.dj = sub i64 %i.cf, %i.h
  %i.dk = add i64 %i.c, %i.dj
  %.not405 = and i64 %i.dk, -8
  %i.dl = xor i64 %.not405, -8                    ; 3 uses
  %i.dm = getelementptr i8, ptr %.sroa.071.0, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.078.0, i64 %i.dl ; 2 uses
  %i.do = getelementptr i8, ptr %i.ce, i64 %i.dl  ; 2 uses
  %bound0376 = icmp ult ptr %i.dm, %.sroa.078.0
  %bound1377 = icmp ult ptr %i.dn, %.sroa.071.0
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %i.dm, %i.ce
  %bound1380 = icmp ult ptr %i.do, %.sroa.071.0
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx = or i1 %found.conflict378, %found.conflict381
  %bound0382 = icmp ult ptr %i.dn, %i.ce
  %bound1383 = icmp ult ptr %i.do, %.sroa.078.0
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx, %found.conflict384
  br i1 %conflict.rdx385, label %.lr.ph.i30.preheader417, label %vector.ph386

vector.ph386:                                     ; preds = %vector.memcheck375
  %n.vec387 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dp = mul i64 %n.vec387, -8                   ; 3 uses
  %i.dq = getelementptr i8, ptr %.sroa.078.0, i64 %i.dp
  %i.dr = getelementptr i8, ptr %.sroa.071.0, i64 %i.dp ; 2 uses
  %i.ds = getelementptr i8, ptr %i.ce, i64 %i.dp
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next399, %vector.body388 ] ; 2 uses
  %i.dt = mul i64 %index389, -8                   ; 3 uses
  %next.gep390 = getelementptr i8, ptr %.sroa.078.0, i64 %i.dt ; 2 uses
  %next.gep391 = getelementptr i8, ptr %.sroa.071.0, i64 %i.dt ; 2 uses
  %next.gep392 = getelementptr i8, ptr %i.ce, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep391, i64 -16 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %next.gep391, i64 -32 ; 2 uses
  %wide.load393 = load <2 x i64>, ptr %i.du, align 8, !tbaa !144, !alias.scope !2903, !noalias !2904
  %wide.load394 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !144, !alias.scope !2903, !noalias !2904
  %i.dw = getelementptr inbounds i8, ptr %next.gep390, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep390, i64 -32 ; 2 uses
  %wide.load395 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !144, !alias.scope !2905, !noalias !2906
  %wide.load396 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !144, !alias.scope !2905, !noalias !2906
  store <2 x i64> %wide.load395, ptr %i.du, align 8, !tbaa !144, !alias.scope !2903, !noalias !2904
  store <2 x i64> %wide.load396, ptr %i.dv, align 8, !tbaa !144, !alias.scope !2903, !noalias !2904
  %i.dy = getelementptr inbounds i8, ptr %next.gep392, i64 -16 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %next.gep392, i64 -32 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !144, !alias.scope !2907, !noalias !2908
  %wide.load398 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !144, !alias.scope !2907, !noalias !2908
  store <2 x i64> %wide.load397, ptr %i.dw, align 8, !tbaa !144, !alias.scope !2905, !noalias !2906
  store <2 x i64> %wide.load398, ptr %i.dx, align 8, !tbaa !144, !alias.scope !2905, !noalias !2906
  store <2 x i64> %wide.load393, ptr %i.dy, align 8, !tbaa !144, !alias.scope !2907, !noalias !2908
  store <2 x i64> %wide.load394, ptr %i.dz, align 8, !tbaa !144, !alias.scope !2907, !noalias !2908
  %index.next399 = add nuw i64 %index389, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next399, %n.vec387
  br i1 %i.ea, label %middle.block400, label %vector.body388, !llvm.loop !2885

middle.block400:                                  ; preds = %vector.body388
  %cmp.n401 = icmp eq i64 %i.di, %n.vec387
  br i1 %cmp.n401, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30.preheader417

.lr.ph.i30.preheader417:                          ; preds = %vector.memcheck375, %.lr.ph.i30.preheader, %middle.block400
  %.sroa.053.0.ph = phi ptr [ %.sroa.078.0, %vector.memcheck375 ], [ %.sroa.078.0, %.lr.ph.i30.preheader ], [ %i.dq, %middle.block400 ]
  %.sroa.052.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck375 ], [ %.sroa.071.0, %.lr.ph.i30.preheader ], [ %i.dr, %middle.block400 ]
  %.ph418 = phi ptr [ %i.ce, %vector.memcheck375 ], [ %i.ce, %.lr.ph.i30.preheader ], [ %i.ds, %middle.block400 ]
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader417, %.lr.ph.i30
  %.sroa.053.0 = phi ptr [ %i.ed, %.lr.ph.i30 ], [ %.sroa.053.0.ph, %.lr.ph.i30.preheader417 ]
  %.sroa.052.0 = phi ptr [ %i.ee, %.lr.ph.i30 ], [ %.sroa.052.0.ph, %.lr.ph.i30.preheader417 ]
  %i.eb = phi ptr [ %i.ec, %.lr.ph.i30 ], [ %.ph418, %.lr.ph.i30.preheader417 ]
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -8 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.052.0, i64 -8 ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !144, !noalias !2908
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !144, !noalias !2908
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !144, !noalias !2908
  %i.eh = load i64, ptr %i.ec, align 8, !tbaa !144, !noalias !2908
  store i64 %i.eh, ptr %i.ed, align 8, !tbaa !144, !noalias !2908
  store i64 %i.ef, ptr %i.ec, align 8, !tbaa !144, !noalias !2908
  %.not.i31 = icmp eq ptr %i.ec, %i.ae
  br i1 %.not.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i30, !llvm.loop !2886

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i32, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader

.lr.ph.i34.preheader:                             ; preds = %bb.w
  %.reass527 = add i64 %i.cf, %invariant.op526
  %i.ei = sub i64 %.reass527, %i.h                ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check337 = icmp ult i64 %i.ei, 56
  br i1 %min.iters.check337, label %.lr.ph.i34.preheader414, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i34.preheader
  %i.el = sub i64 %i.cf, %i.h
  %i.em = add i64 %i.c, %i.el
  %.not406 = and i64 %i.em, -8
  %i.en = xor i64 %.not406, -8                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ce, i64 %i.en
  %i.ep = getelementptr i8, ptr %.sroa.071.0, i64 %i.en
  %bound0339 = icmp ult ptr %i.eo, %.sroa.071.0
  %bound1340 = icmp ult ptr %i.ep, %i.ce
  %found.conflict341 = and i1 %bound0339, %bound1340
  br i1 %found.conflict341, label %.lr.ph.i34.preheader414, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.ek, 4611686018427387900  ; 3 uses
  %i.eq = mul i64 %n.vec343, -8                   ; 2 uses
  %i.er = getelementptr i8, ptr %.sroa.071.0, i64 %i.eq ; 2 uses
  %i.es = getelementptr i8, ptr %i.ce, i64 %i.eq
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next352, %vector.body344 ] ; 2 uses
  %i.et = mul i64 %index345, -8                   ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.sroa.071.0, i64 %i.et ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.ce, i64 %i.et ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %next.gep347, i64 -16 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %next.gep347, i64 -32 ; 2 uses
  %wide.load348 = load <2 x ptr>, ptr %i.eu, align 8, !tbaa !144, !alias.scope !2909, !noalias !2910
  %wide.load349 = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !144, !alias.scope !2909, !noalias !2910
  %i.ew = getelementptr inbounds i8, ptr %next.gep346, i64 -16 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %next.gep346, i64 -32 ; 2 uses
  %wide.load350 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !144, !alias.scope !2911, !noalias !2912
  %wide.load351 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !144, !alias.scope !2911, !noalias !2912
  store <2 x i64> %wide.load350, ptr %i.eu, align 8, !tbaa !144, !alias.scope !2909, !noalias !2910
  store <2 x i64> %wide.load351, ptr %i.ev, align 8, !tbaa !144, !alias.scope !2909, !noalias !2910
  store <2 x ptr> %wide.load348, ptr %i.ew, align 8, !tbaa !144, !alias.scope !2911, !noalias !2912
  store <2 x ptr> %wide.load349, ptr %i.ex, align 8, !tbaa !144, !alias.scope !2911, !noalias !2912
  %index.next352 = add nuw i64 %index345, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next352, %n.vec343
  br i1 %i.ey, label %middle.block353, label %vector.body344, !llvm.loop !2892

middle.block353:                                  ; preds = %vector.body344
  %cmp.n354 = icmp eq i64 %i.ek, %n.vec343
  br i1 %cmp.n354, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34.preheader414

.lr.ph.i34.preheader414:                          ; preds = %vector.memcheck338, %.lr.ph.i34.preheader, %middle.block353
  %.sroa.0105.0.ph = phi ptr [ %.sroa.071.0, %vector.memcheck338 ], [ %.sroa.071.0, %.lr.ph.i34.preheader ], [ %i.er, %middle.block353 ]
  %.ph415 = phi ptr [ %i.ce, %vector.memcheck338 ], [ %i.ce, %.lr.ph.i34.preheader ], [ %i.es, %middle.block353 ]
  br label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i34.preheader414, %.lr.ph.i34
  %.sroa.0105.0 = phi ptr [ %i.fb, %.lr.ph.i34 ], [ %.sroa.0105.0.ph, %.lr.ph.i34.preheader414 ]
  %i.ez = phi ptr [ %i.fa, %.lr.ph.i34 ], [ %.ph415, %.lr.ph.i34.preheader414 ]
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0105.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.fa, align 8, !tbaa !144, !noalias !2912
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !144, !noalias !2912
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !144, !noalias !2912
  store ptr %.sroa.0.0.copyload.i.i35, ptr %i.fb, align 8, !tbaa !144, !noalias !2912
  %.not.i36 = icmp eq ptr %i.fa, %i.ae
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i34, !llvm.loop !2893

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i30, %.lr.ph.i34, %.lr.ph.i29, %middle.block400, %middle.block353, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ae, %bb.s ], [ %i.fb, %.lr.ph.i34 ], [ %i.ce, %bb.t ], [ %i.de, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ], [ %.sroa.071.0, %bb.w ], [ %i.cu, %middle.block ], [ %i.er, %middle.block353 ], [ %i.dr, %middle.block400 ], [ %i.ee, %.lr.ph.i30 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !542
  %i.fd = load ptr, ptr %1, align 8, !tbaa !542   ; 4 uses
  %.neg113 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %.neg113 ; 3 uses
  %.not.i38 = icmp eq ptr %i.ae, %.sroa.078.0
  br i1 %.not.i38, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg113, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.ff, align 8, !tbaa !144
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !144
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.fg, align 8, !tbaa !144
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.fi = load ptr, ptr %2, align 8, !tbaa !542   ; 2 uses
  %i.fj = icmp eq ptr %i.fe, %i.fi
  br i1 %i.fj, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = icmp eq ptr %i.fi, %i.fd
  br i1 %i.fk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.fd, %bb.y ], [ %i.fe, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !542
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  store ptr %i.ae, ptr %3, align 8, !tbaa !542
  %i.fl = load ptr, ptr %1, align 8, !tbaa !542
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 2 uses
  store ptr %i.fm, ptr %1, align 8, !tbaa !542
  %i.fn = icmp ne i64 %.0155, 0
  %.neg = sext i1 %i.fn to i64
  %i.fo = add i64 %.0155, %.neg
  %i.fp = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fp to i64
  %i.fq = add i64 %.sroa.speculated, %.neg24
  %i.fr = add i64 %.0110154, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2894

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_EEvT_ST_RST_T0_SV_SV_.exit, %bb.a
  %i.fs = load ptr, ptr %6, align 8, !tbaa !542
  store ptr %i.fs, ptr %0, align 8, !tbaa !542
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET_S11_S11_RS11_S11_S11_RT0_S14_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !509    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !509    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !509    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !443
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.07.i, align 8, !tbaa !443
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit, label %bb.c, !llvm.loop !75

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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader302, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = shl i64 %indvar, 3
  %i.ab = and i64 %i.x, -8                        ; 2 uses
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ab
  %i.af = getelementptr i8, ptr %.03965.i, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %bound0 = icmp ult ptr %.04169.i, %i.ag
  %bound1 = icmp ult ptr %.03965.i, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader302, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %.03965.i, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %.04169.i, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03965.i, i64 %i.ak ; 3 uses
  %next.gep238 = getelementptr i8, ptr %.04169.i, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %next.gep238, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep238, align 8, !tbaa !144, !alias.scope !2927, !noalias !2928
  %wide.load239 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !144, !alias.scope !2927, !noalias !2928
  %i.am = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load240 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2928
  %wide.load241 = load <2 x i64>, ptr %i.am, align 8, !tbaa !144, !alias.scope !2928
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !144, !alias.scope !2927, !noalias !2928
  store <2 x i64> %wide.load241, ptr %i.al, align 8, !tbaa !144, !alias.scope !2927, !noalias !2928
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2928
  store <2 x ptr> %wide.load239, ptr %i.am, align 8, !tbaa !144, !alias.scope !2928
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i.preheader302

.lr.ph.i.i.preheader302:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03965.i, %vector.memcheck ], [ %.03965.i, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04169.i, %vector.memcheck ], [ %.04169.i, %.lr.ph.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader302, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !144
  %i.ao = load i64, ptr %.010.i.i, align 8, !tbaa !144
  store i64 %i.ao, ptr %.079.i.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2917

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ar = load ptr, ptr %.067.i, align 8, !tbaa !443
  %i.as = load ptr, ptr %.03965.i, align 8, !tbaa !443
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.03566.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.aw = load i64, ptr %.03768.i, align 8, !tbaa !144
  %i.ax = load i64, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.ax, ptr %.03768.i, align 8, !tbaa !144
  %i.ay = load i64, ptr %.067.i, align 8, !tbaa !144
  store i64 %i.ay, ptr %.04169.i, align 8, !tbaa !144
  %i.az = load i64, ptr %.03566.i, align 8, !tbaa !144
  store i64 %i.az, ptr %.067.i, align 8, !tbaa !144
  store i64 %i.aw, ptr %.03566.i, align 8, !tbaa !144
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.03965.i, i64 8
  %i.bb = load i64, ptr %.03768.i, align 8, !tbaa !144
  %i.bc = load i64, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.bc, ptr %.03768.i, align 8, !tbaa !144
  %i.bd = load i64, ptr %.03965.i, align 8, !tbaa !144
  store i64 %i.bd, ptr %.04169.i, align 8, !tbaa !144
  store i64 %i.bb, ptr %.03965.i, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03965.i, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.au, %bb.h ], [ %.03566.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.av, %bb.h ], [ %.067.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03768.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04169.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2918

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_RKNS0_15iterator_traitsIS10_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !144
  %i.bg = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.bg, ptr %i.m, align 8, !tbaa !144
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.bh, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !144
  %.03052.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.03453.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bi = icmp eq ptr %.03453.i, %1
  br i1 %i.bi, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar252 = phi i64 [ %indvar.next253, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03457.i = phi ptr [ %.034.i, %bb.m ], [ %.03453.i, %bb.l ] ; 8 uses
  %.03056.i = phi ptr [ %.030.i, %bb.m ], [ %.03052.i, %bb.l ] ; 3 uses
  %.055.i = phi ptr [ %.1.i35, %bb.m ], [ %i.be, %bb.l ] ; 6 uses
  %.03254.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.bj = icmp eq ptr %.055.i, %3
  br i1 %i.bj, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bk = add i64 %i.a, -16
  %i.bl = shl i64 %indvar252, 3
  %i.bm = add i64 %i.bl, %i.j
  %i.bn = sub i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check255 = icmp ult i64 %i.bn, 168
  br i1 %min.iters.check255, label %.lr.ph.i.i40.preheader295, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bq = shl i64 %indvar252, 3
  %i.br = and i64 %i.bn, -8                       ; 2 uses
  %i.bs = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.br
  %i.bv = getelementptr i8, ptr %.03254.i, i64 %i.br
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %bound0257 = icmp ult ptr %.03457.i, %i.bw
  %bound1258 = icmp ult ptr %.03254.i, %i.bu
  %found.conflict259 = and i1 %bound0257, %bound1258
  br i1 %found.conflict259, label %.lr.ph.i.i40.preheader295, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck256
  %n.vec261 = and i64 %i.bp, 4611686018427387900  ; 3 uses
  %i.bx = shl i64 %n.vec261, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %.03254.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %.03457.i, i64 %i.bx
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next270, %vector.body262 ] ; 2 uses
  %i.ca = shl i64 %index263, 3                    ; 2 uses
  %next.gep264 = getelementptr i8, ptr %.03254.i, i64 %i.ca ; 3 uses
  %next.gep265 = getelementptr i8, ptr %.03457.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep265, i64 16 ; 2 uses
  %wide.load266 = load <2 x ptr>, ptr %next.gep265, align 8, !tbaa !144, !alias.scope !2929, !noalias !2930
  %wide.load267 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !144, !alias.scope !2929, !noalias !2930
  %i.cc = getelementptr i8, ptr %next.gep264, i64 16 ; 2 uses
  %wide.load268 = load <2 x i64>, ptr %next.gep264, align 8, !tbaa !144, !alias.scope !2930
  %wide.load269 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !144, !alias.scope !2930
  store <2 x i64> %wide.load268, ptr %next.gep265, align 8, !tbaa !144, !alias.scope !2929, !noalias !2930
  store <2 x i64> %wide.load269, ptr %i.cb, align 8, !tbaa !144, !alias.scope !2929, !noalias !2930
  store <2 x ptr> %wide.load266, ptr %next.gep264, align 8, !tbaa !144, !alias.scope !2930
  store <2 x ptr> %wide.load267, ptr %i.cc, align 8, !tbaa !144, !alias.scope !2930
  %index.next270 = add nuw i64 %index263, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next270, %n.vec261
  br i1 %i.cd, label %middle.block271, label %vector.body262, !llvm.loop !2922

middle.block271:                                  ; preds = %vector.body262
  %cmp.n272 = icmp eq i64 %i.bp, %n.vec261
  br i1 %cmp.n272, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40.preheader295

.lr.ph.i.i40.preheader295:                        ; preds = %vector.memcheck256, %.lr.ph.i.i40.preheader, %middle.block271
  %.010.i.i41.ph = phi ptr [ %.03254.i, %vector.memcheck256 ], [ %.03254.i, %.lr.ph.i.i40.preheader ], [ %i.by, %middle.block271 ]
  %.079.i.i42.ph = phi ptr [ %.03457.i, %vector.memcheck256 ], [ %.03457.i, %.lr.ph.i.i40.preheader ], [ %i.bz, %middle.block271 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader295, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.cg, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader295 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.cf, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader295 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !144
  %i.ce = load i64, ptr %.010.i.i41, align 8, !tbaa !144
  store i64 %i.ce, ptr %.079.i.i42, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !144
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cf, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2923

bb.m:                                             ; preds = %.lr.ph.i34
  %i.ch = load ptr, ptr %.055.i, align 8, !tbaa !443
  %i.ci = load ptr, ptr %.03254.i, align 8, !tbaa !443
  %i.cj = icmp ult ptr %i.ch, %i.ci               ; 3 uses
  %i.ck = load i64, ptr %.03056.i, align 8, !tbaa !144
  %i.cl = load i64, ptr %.03457.i, align 8, !tbaa !144
  store i64 %i.cl, ptr %.03056.i, align 8, !tbaa !144
  %.03254.sink73.i = select i1 %i.cj, ptr %.055.i, ptr %.03254.i ; 2 uses
  %.133.idx.i = select i1 %i.cj, i64 0, i64 8
  %.133.i = getelementptr inbounds nuw i8, ptr %.03254.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.cj, i64 8, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.055.i, i64 %.1.idx.i ; 2 uses
  %i.cm = load i64, ptr %.03254.sink73.i, align 8, !tbaa !144
  store i64 %i.cm, ptr %.03457.i, align 8, !tbaa !144
  store i64 %i.ck, ptr %.03254.sink73.i, align 8, !tbaa !144
  %.030.i = getelementptr inbounds nuw i8, ptr %.03056.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03457.i, i64 8 ; 2 uses
  %i.cn = icmp eq ptr %.034.i, %1
  %indvar.next253 = add i64 %indvar252, 1
  br i1 %i.cn, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2924

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block271, %bb.a
  %.076 = phi ptr [ %.067.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.067.i, %middle.block ], [ %4, %middle.block271 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.071 = phi ptr [ %.03965.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03965.i, %middle.block ], [ %.03254.i, %middle.block271 ], [ %.133.i, %bb.m ], [ %.03254.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.070 = phi ptr [ %.03566.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03566.i, %middle.block ], [ %.055.i, %middle.block271 ], [ %.1.i35, %bb.m ], [ %.055.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block271 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.aq, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ai, %middle.block ], [ %i.by, %middle.block271 ], [ %.030.i, %bb.m ], [ %i.cg, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.cx, %bb.o ], [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07697, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.cs, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.ct, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.co = load ptr, ptr %.025.i, align 8          ; 2 uses
  %i.cp = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  br i1 %i.cq, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cu = load i64, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cr, ptr %.030.i47, align 8, !tbaa !144
  %i.cv = load i64, ptr %.026.i, align 8, !tbaa !144
  store i64 %i.cv, ptr %.025.i, align 8, !tbaa !144
  store i64 %i.cu, ptr %.026.i, align 8, !tbaa !144
  %.not44.i = icmp eq ptr %i.cs, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %bb.n, !llvm.loop !2925

bb.o:                                             ; preds = %bb.n
  %i.cw = ptrtoint ptr %i.cp to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cw, ptr %.030.i47, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !144
  %.not43.i = icmp eq ptr %i.cx, %.0101
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.outer.i, !llvm.loop !2925

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit
  %.087 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %.03052.i, %bb.l ] ; 5 uses
  %.02885 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07084 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.be, %bb.l ] ; 3 uses
  %.07183 = phi ptr [ %.071, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.07084, %3
  %.not36.i50 = icmp eq ptr %.087, %.07183
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.db, %bb.q ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.dg, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.db, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.dd, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cy = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.cz = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i.i52 = load ptr, ptr %.024.i, align 8, !tbaa !144 ; 2 uses
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.dc, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.0.i, align 8, !tbaa !144
  %i.de = icmp eq ptr %i.dd, %3
  br i1 %i.de, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i, !llvm.loop !2926

bb.q:                                             ; preds = %.preheader.i
  %i.df = ptrtoint ptr %i.cz to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.df, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i52, ptr %.021.i.ph, align 8, !tbaa !144
  %i.dh = icmp eq ptr %i.dg, %.087
  br i1 %i.dh, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2926

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_RT_S12_RT0_S14_S15_S11_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91
  %.086 = phi ptr [ %.0101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.0101, %.split.i ], [ %.087, %bb.p ], [ %.087, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.087, %bb.q ], [ %.0101, %bb.o ]
  %.172 = phi ptr [ %.07198, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.028.ph.i, %.split.i ], [ %i.dg, %bb.q ], [ %.07183, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cx, %bb.o ]
  %.1 = phi ptr [ %.07099, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %i.cs, %.split.i ], [ %.0.i, %bb.q ], [ %.07084, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.dd, %bb.p ], [ %.026.i, %bb.o ]
  %i.di = phi ptr [ %.028100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread91 ], [ %.13138.i, %.split.i ], [ %i.db, %bb.p ], [ %.02885, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_7swap_opEEET1_T_S12_RT0_S13_S14_RS11_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.db, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.172, ptr %5, align 8, !tbaa !509
  store ptr %.086, ptr %6, align 8, !tbaa !509
  store ptr %.1, ptr %2, align 8, !tbaa !509
  ret ptr %i.di
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET_S13_S13_RS13_S13_S13_RT0_S16_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !509    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !509    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !509    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !443
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %.08.i, align 8, !tbaa !443
  %.not6.i = icmp ult ptr %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit, label %bb.c, !llvm.loop !76

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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.z = shl i64 %indvar, 3
  %i.aa = and i64 %i.w, -8                        ; 2 uses
  %i.ab = getelementptr i8, ptr %.0.lcssa.i, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.aa
  %i.ae = getelementptr i8, ptr %.03966.i, i64 %i.aa
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %bound0 = icmp ult ptr %.04170.i, %i.af
  %bound1 = icmp ult ptr %.03966.i, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader305, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %.03966.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %.04170.i, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03966.i, i64 %i.aj ; 3 uses
  %next.gep241 = getelementptr i8, ptr %.04170.i, i64 %i.aj ; 3 uses
  %i.ak = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep241, align 8, !tbaa !144, !alias.scope !2945, !noalias !2946
  %wide.load242 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !144, !alias.scope !2945, !noalias !2946
  %i.al = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load243 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2946
  %wide.load244 = load <2 x i64>, ptr %i.al, align 8, !tbaa !144, !alias.scope !2946
  store <2 x i64> %wide.load243, ptr %next.gep241, align 8, !tbaa !144, !alias.scope !2945, !noalias !2946
  store <2 x i64> %wide.load244, ptr %i.ak, align 8, !tbaa !144, !alias.scope !2945, !noalias !2946
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !144, !alias.scope !2946
  store <2 x ptr> %wide.load242, ptr %i.al, align 8, !tbaa !144, !alias.scope !2946
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !2934

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i.preheader305

.lr.ph.i.i.preheader305:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.03966.i, %vector.memcheck ], [ %.03966.i, %.lr.ph.i.i.preheader ], [ %i.ah, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.04170.i, %vector.memcheck ], [ %.04170.i, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader305, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader305 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.079.i.i, align 8, !tbaa !144
  %i.an = load i64, ptr %.010.i.i, align 8, !tbaa !144
  store i64 %i.an, ptr %.079.i.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.010.i.i, align 8, !tbaa !144
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i, !llvm.loop !2935

bb.g:                                             ; preds = %.lr.ph.i31
  %i.aq = load ptr, ptr %.03966.i, align 8, !tbaa !443
  %i.ar = load ptr, ptr %.068.i, align 8, !tbaa !443
  %.not53.i = icmp ult ptr %i.aq, %i.ar
  br i1 %.not53.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.03567.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %i.au = load i64, ptr %.03769.i, align 8, !tbaa !144
  %i.av = load i64, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.av, ptr %.03769.i, align 8, !tbaa !144
  %i.aw = load i64, ptr %.068.i, align 8, !tbaa !144
  store i64 %i.aw, ptr %.04170.i, align 8, !tbaa !144
  %i.ax = load i64, ptr %.03567.i, align 8, !tbaa !144
  store i64 %i.ax, ptr %.068.i, align 8, !tbaa !144
  store i64 %i.au, ptr %.03567.i, align 8, !tbaa !144
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.03966.i, i64 8
  %i.az = load i64, ptr %.03769.i, align 8, !tbaa !144
  %i.ba = load i64, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.ba, ptr %.03769.i, align 8, !tbaa !144
  %i.bb = load i64, ptr %.03966.i, align 8, !tbaa !144
  store i64 %i.bb, ptr %.04170.i, align 8, !tbaa !144
  store i64 %i.az, ptr %.03966.i, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.140.i = phi ptr [ %.03966.i, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %.136.i = phi ptr [ %i.as, %bb.h ], [ %.03567.i, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %i.at, %bb.h ], [ %.068.i, %bb.i ] ; 2 uses
  %.037.i = getelementptr inbounds nuw i8, ptr %.03769.i, i64 8 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04170.i, i64 8 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !2936

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEEEET_S12_S12_RKNS0_15iterator_traitsIS12_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !144
  %i.be = load i64, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.be, ptr %i.l, align 8, !tbaa !144
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !144
  store i64 %i.bf, ptr %.0.lcssa.i, align 8, !tbaa !144
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !144
  %.03053.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.03454.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %.03454.i, %1
  br i1 %i.bg, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar255 = phi i64 [ %indvar.next256, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %.03458.i = phi ptr [ %.034.i, %bb.m ], [ %.03454.i, %bb.l ] ; 8 uses
  %.03057.i = phi ptr [ %.030.i, %bb.m ], [ %.03053.i, %bb.l ] ; 3 uses
  %.056.i = phi ptr [ %.1.i35, %bb.m ], [ %i.bc, %bb.l ] ; 6 uses
  %.03255.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.bh = icmp eq ptr %.056.i, %3
  br i1 %i.bh, label %.lr.ph.i.i40.preheader, label %bb.m

.lr.ph.i.i40.preheader:                           ; preds = %.lr.ph.i34
  %i.bi = add i64 %i.a, -16
  %i.bj = shl i64 %indvar255, 3
  %i.bk = add i64 %i.bj, %i.i
  %i.bl = sub i64 %i.bi, %i.bk                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %i.bl, 168
  br i1 %min.iters.check258, label %.lr.ph.i.i40.preheader298, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i.i40.preheader
  %i.bo = shl i64 %indvar255, 3
  %i.bp = and i64 %i.bl, -8                       ; 2 uses
  %i.bq = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %i.bt = getelementptr i8, ptr %.03255.i, i64 %i.bp
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %bound0260 = icmp ult ptr %.03458.i, %i.bu
  %bound1261 = icmp ult ptr %.03255.i, %i.bs
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i.i40.preheader298, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck259
  %n.vec264 = and i64 %i.bn, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec264, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %.03255.i, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %.03458.i, i64 %i.bv
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next273, %vector.body265 ] ; 2 uses
  %i.by = shl i64 %index266, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.03255.i, i64 %i.by ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.03458.i, i64 %i.by ; 3 uses
  %i.bz = getelementptr i8, ptr %next.gep268, i64 16 ; 2 uses
  %wide.load269 = load <2 x ptr>, ptr %next.gep268, align 8, !tbaa !144, !alias.scope !2947, !noalias !2948
  %wide.load270 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !144, !alias.scope !2947, !noalias !2948
  %i.ca = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load271 = load <2 x i64>, ptr %next.gep267, align 8, !tbaa !144, !alias.scope !2948
  %wide.load272 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !144, !alias.scope !2948
  store <2 x i64> %wide.load271, ptr %next.gep268, align 8, !tbaa !144, !alias.scope !2947, !noalias !2948
  store <2 x i64> %wide.load272, ptr %i.bz, align 8, !tbaa !144, !alias.scope !2947, !noalias !2948
  store <2 x ptr> %wide.load269, ptr %next.gep267, align 8, !tbaa !144, !alias.scope !2948
  store <2 x ptr> %wide.load270, ptr %i.ca, align 8, !tbaa !144, !alias.scope !2948
  %index.next273 = add nuw i64 %index266, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next273, %n.vec264
  br i1 %i.cb, label %middle.block274, label %vector.body265, !llvm.loop !2940

middle.block274:                                  ; preds = %vector.body265
  %cmp.n275 = icmp eq i64 %i.bn, %n.vec264
  br i1 %cmp.n275, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40.preheader298

.lr.ph.i.i40.preheader298:                        ; preds = %vector.memcheck259, %.lr.ph.i.i40.preheader, %middle.block274
  %.010.i.i41.ph = phi ptr [ %.03255.i, %vector.memcheck259 ], [ %.03255.i, %.lr.ph.i.i40.preheader ], [ %i.bw, %middle.block274 ]
  %.079.i.i42.ph = phi ptr [ %.03458.i, %vector.memcheck259 ], [ %.03458.i, %.lr.ph.i.i40.preheader ], [ %i.bx, %middle.block274 ]
  br label %.lr.ph.i.i40

.lr.ph.i.i40:                                     ; preds = %.lr.ph.i.i40.preheader298, %.lr.ph.i.i40
  %.010.i.i41 = phi ptr [ %i.ce, %.lr.ph.i.i40 ], [ %.010.i.i41.ph, %.lr.ph.i.i40.preheader298 ] ; 3 uses
  %.079.i.i42 = phi ptr [ %i.cd, %.lr.ph.i.i40 ], [ %.079.i.i42.ph, %.lr.ph.i.i40.preheader298 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i43 = load ptr, ptr %.079.i.i42, align 8, !tbaa !144
  %i.cc = load i64, ptr %.010.i.i41, align 8, !tbaa !144
  store i64 %i.cc, ptr %.079.i.i42, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i.i43, ptr %.010.i.i41, align 8, !tbaa !144
  %i.cd = getelementptr inbounds nuw i8, ptr %.079.i.i42, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i41, i64 8 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cd, %1
  br i1 %.not.i.i44, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i.i40, !llvm.loop !2941

bb.m:                                             ; preds = %.lr.ph.i34
  %i.cf = load ptr, ptr %.03255.i, align 8, !tbaa !443
  %i.cg = load ptr, ptr %.056.i, align 8, !tbaa !443
  %.not45.i = icmp ult ptr %i.cf, %i.cg           ; 3 uses
  %i.ch = load i64, ptr %.03057.i, align 8, !tbaa !144
  %i.ci = load i64, ptr %.03458.i, align 8, !tbaa !144
  store i64 %i.ci, ptr %.03057.i, align 8, !tbaa !144
  %.03255.sink74.i = select i1 %.not45.i, ptr %.03255.i, ptr %.056.i ; 2 uses
  %.133.idx.i = select i1 %.not45.i, i64 8, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03255.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not45.i, i64 0, i64 8
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.056.i, i64 %.1.idx.i ; 2 uses
  %i.cj = load i64, ptr %.03255.sink74.i, align 8, !tbaa !144
  store i64 %i.cj, ptr %.03458.i, align 8, !tbaa !144
  store i64 %i.ch, ptr %.03255.sink74.i, align 8, !tbaa !144
  %.030.i = getelementptr inbounds nuw i8, ptr %.03057.i, i64 8 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03458.i, i64 8 ; 2 uses
  %i.ck = icmp eq ptr %.034.i, %1
  %indvar.next256 = add i64 %indvar255, 1
  br i1 %i.ck, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !2942

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i, %bb.m, %.lr.ph.i.i40, %middle.block, %middle.block274, %bb.a
  %.077 = phi ptr [ %.03567.i, %.lr.ph.i.i ], [ %i.d, %bb.a ], [ %.03567.i, %middle.block ], [ %.056.i, %middle.block274 ], [ %.1.i35, %bb.m ], [ %.056.i, %.lr.ph.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03966.i, %.lr.ph.i.i ], [ %i.b, %bb.a ], [ %.03966.i, %middle.block ], [ %.03255.i, %middle.block274 ], [ %.133.i, %bb.m ], [ %.03255.i, %.lr.ph.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.068.i, %.lr.ph.i.i ], [ %4, %bb.a ], [ %.068.i, %middle.block ], [ %4, %middle.block274 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block274 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.c, %bb.a ], [ %i.ah, %middle.block ], [ %i.bw, %middle.block274 ], [ %.030.i, %bb.m ], [ %i.ce, %.lr.ph.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
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
  %.028.ph.i = phi ptr [ %i.ct, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i47 = phi ptr [ %.13138.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 6 uses
  %.026.i = phi ptr [ %i.co, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.cp, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 4 uses
  %i.cl = load ptr, ptr %.028.ph.i, align 8       ; 2 uses
  %i.cm = load ptr, ptr %.025.i, align 8          ; 2 uses
  %.not43.i = icmp ult ptr %i.cl, %i.cm
  br i1 %.not43.i, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  %i.cq = load i64, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cn, ptr %.030.i47, align 8, !tbaa !144
  %i.cr = load i64, ptr %.026.i, align 8, !tbaa !144
  store i64 %i.cr, ptr %.025.i, align 8, !tbaa !144
  store i64 %i.cq, ptr %.026.i, align 8, !tbaa !144
  %.not45.i48 = icmp eq ptr %i.co, %3
  %.13138.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not45.i48, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %bb.n, !llvm.loop !2943

bb.o:                                             ; preds = %bb.n
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.030.i47, align 8, !tbaa !144
  store i64 %i.cs, ptr %.030.i47, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i.i, ptr %.028.ph.i, align 8, !tbaa !144
  %.not44.i = icmp eq ptr %i.ct, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i47, i64 8 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.outer.i, !llvm.loop !2943

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %.03053.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit ], [ %i.bc, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cw, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.db, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cw, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.cy, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cu = load ptr, ptr %.021.i.ph, align 8       ; 2 uses
  %i.cv = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not38.i = icmp ult ptr %i.cu, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %.024.i, align 8, !tbaa !144 ; 2 uses
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  store i64 %i.cx, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.0.i, align 8, !tbaa !144
  %i.cz = icmp eq ptr %i.cy, %3
  br i1 %i.cz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i, !llvm.loop !2944

bb.q:                                             ; preds = %.preheader.i
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 8 ; 3 uses
  store i64 %i.da, ptr %.024.i, align 8, !tbaa !144
  store ptr %.sroa.0.0.copyload.i37.i, ptr %.021.i.ph, align 8, !tbaa !144
  %i.dc = icmp eq ptr %i.db, %.091
  br i1 %i.dc, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !2944

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_RT_S14_RT0_S16_S17_S13_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %i.co, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cy, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.db, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.ct, %bb.o ]
  %i.dd = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread95 ], [ %.13138.i, %.split.i ], [ %i.cw, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEESQ_SQ_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEENS0_7swap_opEEET1_T_S14_RT0_S15_S16_RS13_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cw, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !509
  store ptr %.090, ptr %6, align 8, !tbaa !509
  store ptr %.178, ptr %2, align 8, !tbaa !509
  ret ptr %i.dd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !118, !range !90, !noundef !91
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !443
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !443
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN5boost7movelib15detail_adaptive29partial_merge_bufferless_implIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEEEET_S10_S10_S10_PbT0_.exit.sink.split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %i.h = ptrtoint ptr %2 to i64
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !443
  br label %.lr.ph.i.i

.lr.ph.i.i.loopexit:                              ; preds = %bb.f
  br label %.lr.ph.i.i, !llvm.loop !2949

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.loopexit, %.lr.ph.i.preheader.i
  %i.i = phi ptr [ %.pre43, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.i.loopexit ]
  %.033.i = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %.114.i.i, %.lr.ph.i.i.loopexit ] ; 3 uses
  %.030.i = phi ptr [ %0, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.loopexit ]
  %i.j = ptrtoint ptr %.033.i to i64
  %i.k = sub i64 %i.h, %i.j
  %i.l = ashr exact i64 %i.k, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %.1.i.i, %bb.e ] ; 2 uses
  %.01316.i.i = phi ptr [ %.033.i, %.lr.ph.i.i ], [ %.114.i.i, %bb.e ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_ISE_NSG_IvEEEEEEEEEEEEEENS9_7DefaultEST_ST_EELb0EEEEESX_SX_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessISV_ESV_NS_11move_detail8identityISV_EEEEEENS0_7move_opEEET3_T_S1A_T0_T1_RT2_S1D_S19_NS0_9iter_sizeIS1C_E4typeES1H_S1H_S1H_T4_bT5_:bb.a
  %i.ao = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i.i, i64 -8 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.outer.i.i
  %.sroa.027.1.i = phi ptr [ %.sroa.027.0.i, %.outer.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.020.0.ph.i.i, %.outer.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.020.0.i.i, i64 -8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !2983 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !noalias !2983 ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i.i, i64 -8 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !144, !noalias !2983
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !144, !noalias !2983
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !144, !noalias !2983
  %.not32.i.i = icmp eq ptr %i.au, %i.ag
  br i1 %.not32.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !70

bb.h:                                             ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %.sroa.027.1.i, i64 -8 ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !144, !noalias !2983
  %.not31.i.i = icmp eq ptr %i.ap, %i.al
  br i1 %.not31.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !70

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit, label %.outer.i8.i

.outer.i8.i:                                      ; preds = %bb.i, %.split.i14.i
  %.sroa.020.0.i = phi ptr [ %i.bf, %.split.i14.i ], [ %i.am, %bb.i ]
  %.sroa.011.0.ph.i9.i = phi ptr [ %i.az, %.split.i14.i ], [ %i.aj, %bb.i ] ; 2 uses
  %.sroa.015.0.ph.i10.i = phi ptr [ %i.be, %.split.i14.i ], [ %i.i, %bb.i ] ; 2 uses
  %.sroa.020.0.ph.i11.i = phi ptr [ %.sroa.020.0.i12.i, %.split.i14.i ], [ %i.an, %bb.i ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.011.0.ph.i9.i, i64 -8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.outer.i8.i
  %.sroa.020.1.i = phi ptr [ %.sroa.020.0.i, %.outer.i8.i ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.020.0.i12.i = phi ptr [ %.sroa.020.0.ph.i11.i, %.outer.i8.i ], [ %i.ba, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.020.0.i12.i, i64 -8 ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !2984 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !2984 ; 2 uses
  %.not31.i13.i = icmp ult ptr %i.bb, %i.bc
  br i1 %.not31.i13.i, label %bb.k, label %.split.i14.i

.split.i14.i:                                     ; preds = %bb.j
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %.sroa.015.0.ph.i10.i, i64 -8 ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !144, !noalias !2984
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !144, !noalias !2984
  store i64 %i.bg, ptr %i.az, align 8, !tbaa !144, !noalias !2984
  %.not33.i.i = icmp eq ptr %i.be, %i.ag
  br i1 %.not33.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.outer.i8.i, !llvm.loop !71

bb.k:                                             ; preds = %bb.j
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = getelementptr inbounds i8, ptr %.sroa.020.1.i, i64 -8 ; 3 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !144, !noalias !2984
  %.not32.i19.i = icmp eq ptr %i.ba, %i.al
  br i1 %.not32.i19.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !71

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPN4CGAL8internal11CC_iteratorINS9_17Compact_containerINS9_37Constrained_triangulation_face_base_2INS9_5EpickENS9_25Triangulation_face_base_2ISE_NS9_28Triangulation_ds_face_base_2INS9_30Triangulation_data_structure_2INS9_27Triangulation_vertex_base_2ISE_NS9_30Triangulation_ds_vertex_base_2IvEEEENSD_ISE_NSF_ISE_NSG_IvEEEEEEEEEEEEEENS9_7DefaultEST_ST_EELb0EEEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISV_ESV_NS_11move_detail8identityISV_EEEEEEEENS0_9iter_sizeIT1_E4typeET_T0_S19_S1B_S1B_S1B_T2_.exit
  br i1 %11, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.n
  %.sroa.019.0.i.ph = phi ptr [ %i.bo, %bb.n ], [ %i.am, %bb.m ]
  %.sroa.07.0.i.i.ph = phi ptr [ %i.bp, %bb.n ], [ %i.i, %bb.m ] ; 3 uses
  %.sroa.013.0.i.i.ph = phi ptr [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.m ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.o
  %.sroa.019.0.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.019.0.i.ph, %.preheader.i.i.outer ]
  %.sroa.013.0.i.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.013.0.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.013.0.i.i, i64 -8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !2985 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !2985 ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8 ; 6 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.ph, i64 -8 ; 2 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !144, !noalias !2985
  %i.br = icmp eq ptr %i.bp, %i.ag
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !72

bb.o:                                             ; preds = %.preheader.i.i
  %i.bs = ptrtoint ptr %i.bl to i64
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !144, !noalias !2985
  %i.bt = icmp eq ptr %i.bk, %i.al
  br i1 %i.bt, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !72

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i26, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer

.preheader.i6.i.outer:                            ; preds = %bb.p, %bb.q
  %.sroa.013.0.i.ph = phi ptr [ %i.by, %bb.q ], [ %i.am, %bb.p ]
  %.sroa.07.0.i7.i.ph = phi ptr [ %i.bz, %bb.q ], [ %i.i, %bb.p ] ; 3 uses
  %.sroa.013.0.i8.i.ph = phi ptr [ %.sroa.013.0.i8.i, %bb.q ], [ %i.an, %bb.p ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8
  br label %.preheader.i6.i

.preheader.i6.i:                                  ; preds = %.preheader.i6.i.outer, %bb.r
  %.sroa.013.0.i = phi ptr [ %i.by, %bb.r ], [ %.sroa.013.0.i.ph, %.preheader.i6.i.outer ]
  %.sroa.013.0.i8.i = phi ptr [ %i.bv, %bb.r ], [ %.sroa.013.0.i8.i.ph, %.preheader.i6.i.outer ] ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.sroa.013.0.i8.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !2986 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !2986 ; 2 uses
  %.not21.i.i = icmp ult ptr %i.bw, %i.bx
  %i.by = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 6 uses
  br i1 %.not21.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 2 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !144, !noalias !2986
  %i.cb = icmp eq ptr %i.bz, %i.ag
  br i1 %i.cb, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !73

bb.r:                                             ; preds = %.preheader.i6.i
  %i.cc = ptrtoint ptr %i.bx to i64
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !144, !noalias !2986
  %i.cd = icmp eq ptr %i.bv, %i.al
  br i1 %i.cd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !73

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.020.129.i16.sink.i.sink = phi ptr [ %i.ap, %bb.h ], [ %i.ba, %bb.k ], [ %.sroa.013.0.i8.i, %bb.q ], [ %.sroa.013.0.i.i, %bb.n ], [ %i.an, %bb.p ], [ %i.an, %bb.m ], [ %.sroa.020.0.i.i, %.split.i.i ], [ %i.bk, %bb.o ], [ %i.bv, %bb.r ], [ %.sroa.020.0.i12.i, %.split.i14.i ]
  %.sroa.015.128.i17.sink.i.sink = phi ptr [ %.sroa.015.0.ph.i.i, %bb.h ], [ %.sroa.015.0.ph.i10.i, %bb.k ], [ %i.ag, %bb.q ], [ %i.ag, %bb.n ], [ %i.i, %bb.p ], [ %i.i, %bb.m ], [ %i.ag, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.ag, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.ay, %bb.h ], [ %i.bi, %bb.k ], [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.av, %.split.i.i ], [ %i.bo, %bb.n ], [ %i.by, %bb.q ], [ %i.bf, %.split.i14.i ]
  %.sroa.073.0.ph = phi ptr [ %.sroa.011.0.ph.i.i, %bb.h ], [ %.sroa.011.0.ph.i9.i, %bb.k ], [ %i.aj, %bb.r ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %i.ao, %.split.i.i ], [ %i.aj, %bb.n ], [ %i.aj, %bb.q ], [ %i.az, %.split.i14.i ]
  store ptr %.sroa.020.129.i16.sink.i.sink, ptr %4, align 8, !tbaa !542, !noalias !91
  store ptr %.sroa.015.128.i17.sink.i.sink, ptr %3, align 8, !tbaa !542, !noalias !91
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.am, %bb.f ], [ %i.am, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 12 uses
  %.sroa.073.0 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.i ], [ %.sroa.073.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit.sink.split ] ; 16 uses
  %.sroa.073.0323 = ptrtoaddr ptr %.sroa.073.0 to i64 ; 2 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !542
  %i.ce = load ptr, ptr %3, align 8, !tbaa !542   ; 18 uses
  %i.cf = ptrtoaddr ptr %i.ce to i64              ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %.sroa.066.0
  br i1 %i.cg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.073.0, %i.ak
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader

.lr.ph.i28.preheader:                             ; preds = %bb.t
  %i.ch = mul i64 %indvar, %i.g
  %.reass = add i64 %i.ch, %invariant.op
  %i.ci = shl i64 %.018.lcssa.i, 3
  %.neg378 = add i64 %i.ci, 8
  %.neg379 = mul i64 %.neg378, %7
  %i.cj = add i64 %.reass, %.sroa.073.0323
  %i.ck = add i64 %.neg379, %i.cj                 ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ck, 88
  br i1 %min.iters.check, label %.lr.ph.i28.preheader385, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader
  %i.cn = mul i64 %indvar, %i.b
  %i.co = shl i64 %.018.lcssa.i, 3
  %.neg381 = add i64 %i.co, 8
  %.neg382 = mul i64 %.neg381, %7
  %i.cp = add i64 %i.cn, %.sroa.073.0323
  %i.cq = add i64 %i.cp, %.neg382
  %.not383 = sub i64 %i.h, %i.cq
  %i.cr = and i64 %.not383, -8                    ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.073.0, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.ce, i64 %i.cr
  %bound0 = icmp ult ptr %i.cs, %i.ce
  %bound1 = icmp ult ptr %i.ct, %.sroa.073.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.preheader385, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cm, 4611686018427387900     ; 3 uses
  %i.cu = mul i64 %n.vec, -8                      ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ce, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %.sroa.073.0, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cx ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.sroa.073.0, i64 %i.cx ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep324, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep324, i64 -32 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !144, !alias.scope !2987, !noalias !2988
  %wide.load325 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !144, !alias.scope !2987, !noalias !2988
  %i.da = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load326 = load <2 x i64>, ptr %i.da, align 8, !tbaa !144, !alias.scope !2989, !noalias !2990
  %wide.load327 = load <2 x i64>, ptr %i.db, align 8, !tbaa !144, !alias.scope !2989, !noalias !2990
  store <2 x i64> %wide.load326, ptr %i.cy, align 8, !tbaa !144, !alias.scope !2987, !noalias !2988
  store <2 x i64> %wide.load327, ptr %i.cz, align 8, !tbaa !144, !alias.scope !2987, !noalias !2988
  store <2 x ptr> %wide.load, ptr %i.da, align 8, !tbaa !144, !alias.scope !2989, !noalias !2990
  store <2 x ptr> %wide.load325, ptr %i.db, align 8, !tbaa !144, !alias.scope !2989, !noalias !2990
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !2970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28.preheader385

.lr.ph.i28.preheader385:                          ; preds = %vector.memcheck, %.lr.ph.i28.preheader, %middle.block
  %.sroa.054.0.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i28.preheader ], [ %i.cv, %middle.block ]
  %.ph = phi ptr [ %.sroa.073.0, %vector.memcheck ], [ %.sroa.073.0, %.lr.ph.i28.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28.preheader385, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.df, %.lr.ph.i28 ], [ %.sroa.054.0.ph, %.lr.ph.i28.preheader385 ]
  %i.dd = phi ptr [ %i.de, %.lr.ph.i28 ], [ %.ph, %.lr.ph.i28.preheader385 ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !144, !noalias !2990
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !144, !noalias !2990
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !144, !noalias !2990
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.df, align 8, !tbaa !144, !noalias !2990
  %.not.i = icmp eq ptr %i.de, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i28, !llvm.loop !2971

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS4_17Compact_containerINS4_37Constrained_triangulation_face_base_2INS4_5EpickENS4_25Triangulation_face_base_2IS9_NS4_28Triangulation_ds_face_base_2INS4_30Triangulation_data_structure_2INS4_27Triangulation_vertex_base_2IS9_NS4_30Triangulation_ds_vertex_base_2IvEEEENS8_IS9_NSA_IS9_NSB_IvEEEEEEEEEEEEEENS4_7DefaultESO_SO_EELb0EEEEESS_SS_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessISQ_ESQ_NS_11move_detail8identityISQ_EEEEEENS0_7move_opEEET1_RT_S16_RT0_S18_S19_S15_T2_T3_b.exit
  %.not1.i31 = icmp eq ptr %i.ce, %i.ag           ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.v
  %i.dh = mul i64 %indvar, %i.c
  %i.di = add i64 %i.e, %i.dh
  %i.dj = add i64 %i.di, %i.cf                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dj, 104
  br i1 %min.iters.check346, label %.lr.ph.i29.preheader387, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i29.preheader
  %.neg376 = xor i64 %indvar, -1
  %.neg377 = mul i64 %i.b, %.neg376
  %i.dm = add i64 %.neg377, %i.f
  %.not375 = sub i64 %i.dm, %i.cf
  %i.dn = and i64 %.not375, -8                    ; 3 uses
  %i.do = getelementptr i8, ptr %.sroa.066.0, i64 %i.dn ; 2 uses
  %i.dp = getelementptr i8, ptr %.sroa.073.0, i64 %i.dn ; 2 uses
  %i.dq = getelementptr i8, ptr %i.ce, i64 %i.dn  ; 2 uses
  %bound0348 = icmp ult ptr %i.do, %.sroa.073.0
  %bound1349 = icmp ult ptr %i.dp, %.sroa.066.0
  %found.conflict350 = and i1 %bound0348, %bound1349
  %bound0351 = icmp ult ptr %i.do, %i.ce
  %bound1352 = icmp ult ptr %i.dq, %.sroa.066.0
  %found.conflict353 = and i1 %bound0351, %bound1352
  %conflict.rdx = or i1 %found.conflict350, %found.conflict353
  %bound0354 = icmp ult ptr %i.dp, %i.ce
  %bound1355 = icmp ult ptr %i.dq, %.sroa.073.0
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx, %found.conflict356
  br i1 %conflict.rdx357, label %.lr.ph.i29.preheader387, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck347
  %n.vec359 = and i64 %i.dl, 4611686018427387900  ; 3 uses
  %i.dr = mul i64 %n.vec359, -8                   ; 3 uses
  %i.ds = getelementptr i8, ptr %.sroa.073.0, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.sroa.066.0, i64 %i.dr ; 2 uses
  %i.du = getelementptr i8, ptr %i.ce, i64 %i.dr
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next369, %vector.body360 ] ; 2 uses
  %i.dv = mul i64 %index361, -8                   ; 3 uses
  %next.gep362 = getelementptr i8, ptr %.sroa.073.0, i64 %i.dv ; 2 uses
  %next.gep363 = getelementptr i8, ptr %.sroa.066.0, i64 %i.dv ; 2 uses
  %next.gep364 = getelementptr i8, ptr %i.ce, i64 %i.dv ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep362, i64 -16 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %next.gep362, i64 -32 ; 2 uses
  %wide.load365 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !144, !alias.scope !2991, !noalias !2992
  %wide.load366 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !144, !alias.scope !2991, !noalias !2992
  %i.dy = getelementptr inbounds i8, ptr %next.gep363, i64 -16
  %i.dz = getelementptr inbounds i8, ptr %next.gep363, i64 -32
  store <2 x i64> %wide.load365, ptr %i.dy, align 8, !tbaa !144, !alias.scope !2993, !noalias !2994
  store <2 x i64> %wide.load366, ptr %i.dz, align 8, !tbaa !144, !alias.scope !2993, !noalias !2994
  %i.ea = getelementptr inbounds i8, ptr %next.gep364, i64 -16
  %i.eb = getelementptr inbounds i8, ptr %next.gep364, i64 -32
  %wide.load367 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !144, !alias.scope !2995, !noalias !2996
  %wide.load368 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !144, !alias.scope !2995, !noalias !2996
  store <2 x i64> %wide.load367, ptr %i.dw, align 8, !tbaa !144, !alias.scope !2991, !noalias !2992
  store <2 x i64> %wide.load368, ptr %i.dx, align 8, !tbaa !144, !alias.scope !2991, !noalias !2992
  %index.next369 = add nuw i64 %index361, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next369, %n.vec359
  br i1 %i.ec, label %middle.block370, label %vector.body360, !llvm.loop !2978

middle.block370:                                  ; preds = %vector.body360
  %cmp.n371 = icmp eq i64 %i.dl, %n.vec359
  br i1 %cmp.n371, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29.preheader387

.lr.ph.i29.preheader387:                          ; preds = %vector.memcheck347, %.lr.ph.i29.preheader, %middle.block370
  %.sroa.048.0.ph = phi ptr [ %.sroa.073.0, %vector.memcheck347 ], [ %.sroa.073.0, %.lr.ph.i29.preheader ], [ %i.ds, %middle.block370 ]
  %.sroa.047.0.ph = phi ptr [ %.sroa.066.0, %vector.memcheck347 ], [ %.sroa.066.0, %.lr.ph.i29.preheader ], [ %i.dt, %middle.block370 ]
  %.ph388 = phi ptr [ %i.ce, %vector.memcheck347 ], [ %i.ce, %.lr.ph.i29.preheader ], [ %i.du, %middle.block370 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader387, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.ef, %.lr.ph.i29 ], [ %.sroa.048.0.ph, %.lr.ph.i29.preheader387 ]
  %.sroa.047.0 = phi ptr [ %i.eg, %.lr.ph.i29 ], [ %.sroa.047.0.ph, %.lr.ph.i29.preheader387 ]
  %i.ed = phi ptr [ %i.ee, %.lr.ph.i29 ], [ %.ph388, %.lr.ph.i29.preheader387 ]
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -8 ; 3 uses
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !144, !noalias !2996
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !144, !noalias !2996
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !144, !noalias !2996
  store i64 %i.ei, ptr %i.ef, align 8, !tbaa !144, !noalias !2996
  %.not.i30 = icmp eq ptr %i.ee, %i.ag
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i29, !llvm.loop !2979

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.w, %.lr.ph.i33
  %.sroa.0100.0 = phi ptr [ %i.el, %.lr.ph.i33 ], [ %.sroa.066.0, %bb.w ]
  %i.ej = phi ptr [ %i.ek, %.lr.ph.i33 ], [ %i.ce, %bb.w ]
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8 ; 3 uses
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !144, !noalias !2997
  store i64 %i.em, ptr %i.el, align 8, !tbaa !144, !noalias !2997
  %.not.i34 = icmp eq ptr %i.ek, %i.ag
  br i1 %.not.i34, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, label %.lr.ph.i33, !llvm.loop !74

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i33, %.lr.ph.i28, %middle.block370, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ag, %bb.s ], [ %i.el, %.lr.ph.i33 ], [ %i.ce, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.cv, %middle.block ], [ %i.dt, %middle.block370 ], [ %i.eg, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !542
  %.neg108 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.j, i64 %.neg108 ; 3 uses
  %.not.i35 = icmp eq ptr %i.ag, %.sroa.073.0
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit
  %.not9.i = icmp eq i64 %.neg108, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !188
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !188
  store i64 %i.er, ptr %i.eo, align 8, !tbaa !188
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !188
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit.i
  %i.es = load ptr, ptr %2, align 8, !tbaa !435   ; 2 uses
  %i.et = icmp eq ptr %i.en, %i.es
  br i1 %i.et, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eu = icmp eq ptr %i.es, %i.j
  br i1 %i.eu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.j, %bb.y ], [ %i.en, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !435
  %.pre201 = load ptr, ptr %1, align 8, !tbaa !435
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit, %bb.z, %.sink.split.i
  %i.ev = phi ptr [ %i.j, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEEEESR_EET0_T_ST_SS_.exit ], [ %i.j, %bb.z ], [ %.pre201, %.sink.split.i ]
  store ptr %i.ag, ptr %3, align 8, !tbaa !542
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 2 uses
  store ptr %i.ew, ptr %1, align 8, !tbaa !435
  %i.ex = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.ex to i64
  %i.ey = add i64 %.0150, %.neg
  %i.ez = icmp ne i64 %i.af, 0
  %.neg24 = sext i1 %i.ez to i64
  %i.fa = add i64 %.sroa.speculated, %.neg24
  %i.fb = add i64 %.0105149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2982

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPN4CGAL8internal11CC_iteratorINS6_17Compact_containerINS6_37Constrained_triangulation_face_base_2INS6_5EpickENS6_25Triangulation_face_base_2ISB_NS6_28Triangulation_ds_face_base_2INS6_30Triangulation_data_structure_2INS6_27Triangulation_vertex_base_2ISB_NS6_30Triangulation_ds_vertex_base_2IvEEEENSA_ISB_NSC_ISB_NSD_IvEEEEEEEEEEEEEENS6_7DefaultESQ_SQ_EELb0EEEEEEEvT_SV_RSV_T0_SX_SX_.exit, %bb.a
  %i.fc = load ptr, ptr %6, align 8, !tbaa !542
  store ptr %i.fc, ptr %0, align 8, !tbaa !542
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPN4CGAL8internal11CC_iteratorINS3_17Compact_containerINS3_37Constrained_triangulation_face_base_2INS3_5EpickENS3_25Triangulation_face_base_2IS8_NS3_28Triangulation_ds_face_base_2INS3_30Triangulation_data_structure_2INS3_27Triangulation_vertex_base_2IS8_NS3_30Triangulation_ds_vertex_base_2IvEEEENS7_IS8_NS9_IS8_NSA_IvEEEEEEEEEEEEEENS3_7DefaultESN_SN_EELb0EEENS_9container3dtl23flat_tree_value_compareISt4lessISP_ESP_NS_11move_detail8identityISP_EEEENS0_13adaptive_xbufISP_SQ_mEEEEvT_S12_S12_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
end_hunk_11
