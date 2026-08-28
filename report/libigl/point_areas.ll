Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZZN3igl8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EERNSL_IT3_EEENKUliE_clEi:bb.a
  %i.xc = icmp eq ptr %i.xb, %.sroa.0.0.copyload.i.i
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !noalias !234
  %i.xf = icmp eq ptr %i.xe, %.sroa.0.0.copyload.i.i
  %or.cond.i.i.i.i.i.i = select i1 %i.xc, i1 true, i1 %i.xf
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !215, !noalias !234
  %i.xi = icmp eq ptr %i.xh, %.sroa.0.0.copyload.i.i
  br i1 %i.xi, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.preheader, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_faces_beginEv.exit

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.preheader: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.backedge, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.preheader
  %i.xj = phi ptr [ %.sroa.4.0.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.preheader ], [ %.be1095, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.backedge ] ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 56 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 80
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !231, !noalias !234
  %i.xn = ptrtoint ptr %i.xm to i64               ; 2 uses
  %i.xo = trunc i64 %i.xn to i32
  %i.xp = and i32 %i.xo, 3
  switch i32 %i.xp, label %default.unreachable [
    i32 0, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i.i
    i32 3, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i.i
    i32 1, label %bb.bo
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.backedge
  ]

bb.bo:                                            ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i
  %i.xq = and i64 %i.xn, -4
  %i.xr = inttoptr i64 %i.xq to ptr
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i.backedge: ; preds = %bb.bo, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i
  %.be1095 = phi ptr [ %i.xk, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i ], [ %i.xr, %bb.bo ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i, !llvm.loop !233

_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.thread.i.i.i
  %.not.i.i.i265 = icmp eq ptr %i.xk, %i.wh
  br i1 %.not.i.i.i265, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_faces_beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !237

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_faces_beginEv.exit: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.i, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_faces_beginEv.exit.i
  %.sroa.4.1.sink.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15all_faces_beginEv.exit.i ], [ %i.xk, %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i.i ], [ %.sroa.4.0.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.i ] ; 2 uses
  %.not818863 = icmp eq ptr %.sroa.4.1.sink.i, %i.wh
  br i1 %.not818863, label %.preheader823, label %.lr.ph866

.lr.ph866:                                        ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_faces_beginEv.exit
  %.idx = shl nsw i64 %.1.i, 3
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i269

.preheader823:                                    ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2ImiEERKT_RKT0_.exit, %bb.bk, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE18finite_faces_beginEv.exit
  %i.xs = icmp sgt i64 %.1.i, 0
  br i1 %i.xs, label %.preheader.lr.ph, label %._crit_edge871

.preheader.lr.ph:                                 ; preds = %.preheader823
  %i.xt = load ptr, ptr %18, align 8              ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.xv = load i64, ptr %i.xu, align 8            ; 4 uses
  %i.xw = icmp eq i64 %i.xv, 0
  %i.xx = load i64, ptr %i.tl, align 8            ; 9 uses
  %i.xy = icmp sgt i64 %i.xv, 1                   ; 2 uses
  %.idx953 = shl i64 %.1.i, 3
  %i.xz = add i64 %i.xv, -1                       ; 9 uses
  %i.ya = add i64 %i.xv, -2                       ; 3 uses
  %xtraiter1142 = and i64 %i.xz, 1
  %i.yb = icmp eq i64 %i.ya, 0
  %unroll_iter1147 = and i64 %i.xz, -2
  %lcmp.mod1144.not = icmp eq i64 %xtraiter1142, 0
  %lcmp.mod1146 = trunc i64 %i.xz to i1
  %xtraiter1149 = and i64 %i.xz, 1
  %i.yc = icmp eq i64 %i.ya, 0
  %unroll_iter1154 = and i64 %i.xz, -2
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  %lcmp.mod1153 = trunc i64 %i.xz to i1
  %xtraiter1156 = and i64 %i.xz, 1
  %i.yd = icmp eq i64 %i.ya, 0
  %unroll_iter1161 = and i64 %i.xz, -2
  %lcmp.mod1158.not = icmp eq i64 %xtraiter1156, 0
  %lcmp.mod1160 = trunc i64 %i.xz to i1
  br label %.preheader

bb.bp:                                            ; preds = %bb.bf
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %.body262

.lr.ph.i.i.i.i.i.i.i.i.i.i269:                    ; preds = %.split.i.i, %.lr.ph866
  %indvars.iv = phi i64 [ 0, %.lr.ph866 ], [ %indvars.iv.next, %.split.i.i ] ; 2 uses
  %.sroa.5475.0864 = phi ptr [ %.sroa.4.1.sink.i, %.lr.ph866 ], [ %i.yr, %.split.i.i ] ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5475.0864, align 8, !tbaa !223
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !40
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.5475.0864, i64 8
  %.sroa.0.0.copyload.i267 = load ptr, ptr %i.yh, align 8, !tbaa !223
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i267, i64 24
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !40
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.5475.0864, i64 16
  %.sroa.0.0.copyload.i268 = load ptr, ptr %i.yk, align 8, !tbaa !223
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i268, i64 24
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !40
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0744.0, i64 %indvars.iv ; 3 uses
  store i32 %i.yg, ptr %i.yn, align 4, !tbaa !40
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %.1.i
  store i32 %i.yj, ptr %i.yo, align 4, !tbaa !40
  %i.yp = getelementptr inbounds i8, ptr %i.yn, i64 %.idx
  store i32 %i.ym, ptr %i.yp, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i269
  %i.yq = phi ptr [ %.sroa.5475.0864, %.lr.ph.i.i.i.i.i.i.i.i.i.i269 ], [ %.be, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge ] ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 56 ; 6 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 80
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !231
  %i.yu = ptrtoint ptr %i.yt to i64               ; 2 uses
  %i.yv = trunc i64 %i.yu to i32
  %i.yw = and i32 %i.yv, 3
  switch i32 %i.yw, label %default.unreachable [
    i32 0, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i
    i32 3, label %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i
    i32 1, label %bb.bq
    i32 2, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge
  ]

bb.bq:                                            ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i
  %i.yx = and i64 %i.yu, -4
  %i.yy = inttoptr i64 %i.yx to ptr
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge: ; preds = %bb.bq, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i, %.split.i.i, %bb.br
  %.be = phi ptr [ %i.yy, %bb.bq ], [ %i.yr, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i ], [ %i.yr, %.split.i.i ], [ %i.yr, %bb.br ]
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i, !llvm.loop !238

_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i
  %.not.i.i272 = icmp eq ptr %i.yr, %i.wh
  br i1 %.not.i.i272, label %.preheader823, label %bb.br

bb.br:                                            ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i
  %i.yz = load ptr, ptr %i.yr, align 8, !tbaa !215
  %i.za = icmp eq ptr %i.yz, %.sroa.0.0.copyload.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = icmp eq ptr %i.zc, %.sroa.0.0.copyload.i.i
  %or.cond.i.i.i.i.i = select i1 %i.za, i1 true, i1 %i.zd
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, label %.split.i.i

.split.i.i:                                       ; preds = %bb.br
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yq, i64 72
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !215
  %i.zg = icmp eq ptr %i.zf, %.sroa.0.0.copyload.i.i
  br i1 %i.zg, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i269, !llvm.loop !238

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.by
  %indvars.iv895 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next896, %bb.by ] ; 2 uses
  %.089869 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %.2, %bb.by ] ; 4 uses
  %i.zh = getelementptr [4 x i8], ptr %.sroa.0744.0, i64 %indvars.iv895 ; 6 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !40
  %i.zj = icmp ne i32 %i.zi, 0
  %spec.select = sext i1 %i.zj to i32
  %i.zk = getelementptr [4 x i8], ptr %i.zh, i64 %.1.i
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !40
  %i.zm = icmp eq i32 %i.zl, 0
  %spec.select.1 = select i1 %i.zm, i32 1, i32 %spec.select
  %i.zn = getelementptr i8, ptr %i.zh, i64 %.idx953
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !40
  %i.zp = icmp eq i32 %i.zo, 0
  %spec.select.2 = select i1 %i.zp, i32 2, i32 %spec.select.1
  %spec.select.2.fr = freeze i32 %spec.select.2   ; 6 uses
  %i.zq = icmp sgt i32 %spec.select.2.fr, -1
  br i1 %i.zq, label %bb.bs, label %bb.by

._crit_edge871:                                   ; preds = %bb.by, %.preheader823
  %.089.lcssa = phi double [ 0.000000e+00, %.preheader823 ], [ %.2, %bb.by ] ; 2 uses
  %i.zr = call double @llvm.fabs.f64(double %.089.lcssa)
  %i.zs = fcmp ueq double %i.zr, +inf
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !141, !nonnull !48, !align !49
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !16
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %i.e
  %..089.lcssa = select i1 %i.zs, double 0.000000e+00, double %.089.lcssa
  store double %..089.lcssa, ptr %i.zw, align 8, !tbaa !17
  call void @free(ptr noundef %.sroa.0744.0) #32
  invoke void @_ZN4CGAL30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(184) %i.to)
          to label %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit unwind label %bb.bz

bb.bs:                                            ; preds = %.preheader
  %.cmp.inv = icmp ugt i32 %spec.select.2.fr, 1
  %.v = select i1 %.cmp.inv, i32 -2, i32 1
  %i.zx = add i32 %spec.select.2.fr, %.v
  %.urem966 = add nsw i32 %spec.select.2.fr, -1
  %.cmp967 = icmp eq i32 %spec.select.2.fr, 0
  %i.zy = select i1 %.cmp967, i32 2, i32 %.urem966
  %i.zz = zext nneg i32 %i.zx to i64
  %i.aaa = mul nuw nsw i64 %.1.i, %i.zz
  %i.aab = getelementptr [4 x i8], ptr %i.zh, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !40
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.aad ; 7 uses
  %i.aaf = zext nneg i32 %i.zy to i64
  %i.aag = mul nuw nsw i64 %.1.i, %i.aaf
  %i.aah = getelementptr [4 x i8], ptr %i.zh, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !40
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.aaj ; 7 uses
  br i1 %i.xw, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aal = load double, ptr %i.aae, align 8, !tbaa !17 ; 3 uses
  %i.aam = load double, ptr %i.aak, align 8, !tbaa !17 ; 2 uses
  %i.aan = fsub double %i.aal, %i.aam             ; 2 uses
  %i.aao = fmul double %i.aan, %i.aan             ; 3 uses
  br i1 %i.xy, label %.lr.ph.i.i.i.i.i276.preheader, label %.loopexit822

.lr.ph.i.i.i.i.i276.preheader:                    ; preds = %bb.bt
  br i1 %i.yb, label %.lr.ph.i.i.i.i.i276.epil.preheader, label %.lr.ph.i.i.i.i.i276

.lr.ph.i.i.i.i.i276:                              ; preds = %.lr.ph.i.i.i.i.i276.preheader, %.lr.ph.i.i.i.i.i276
  %.01724.i.i.i.i.i277 = phi i64 [ %i.abg, %.lr.ph.i.i.i.i.i276 ], [ 1, %.lr.ph.i.i.i.i.i276.preheader ] ; 3 uses
  %.02223.i.i.i.i.i278 = phi double [ %i.abf, %.lr.ph.i.i.i.i.i276 ], [ %i.aao, %.lr.ph.i.i.i.i.i276.preheader ]
  %niter1148 = phi i64 [ %niter1148.next.1, %.lr.ph.i.i.i.i.i276 ], [ 0, %.lr.ph.i.i.i.i.i276.preheader ]
  %i.aap = mul nsw i64 %.01724.i.i.i.i.i277, %i.xx ; 2 uses
  %i.aaq = getelementptr [8 x i8], ptr %i.aae, i64 %i.aap
  %i.aar = getelementptr [8 x i8], ptr %i.aak, i64 %i.aap
  %i.aas = load double, ptr %i.aaq, align 8, !tbaa !17
  %i.aat = load double, ptr %i.aar, align 8, !tbaa !17
  %i.aau = fsub double %i.aas, %i.aat             ; 2 uses
  %i.aav = fmul double %i.aau, %i.aau
  %i.aaw = fadd double %.02223.i.i.i.i.i278, %i.aav
  %i.aax = add nuw nsw i64 %.01724.i.i.i.i.i277, 1
  %i.aay = mul nsw i64 %i.aax, %i.xx              ; 2 uses
  %i.aaz = getelementptr [8 x i8], ptr %i.aae, i64 %i.aay
  %i.aba = getelementptr [8 x i8], ptr %i.aak, i64 %i.aay
  %i.abb = load double, ptr %i.aaz, align 8, !tbaa !17
  %i.abc = load double, ptr %i.aba, align 8, !tbaa !17
  %i.abd = fsub double %i.abb, %i.abc             ; 2 uses
  %i.abe = fmul double %i.abd, %i.abd
  %i.abf = fadd double %i.aaw, %i.abe             ; 3 uses
  %i.abg = add nuw nsw i64 %.01724.i.i.i.i.i277, 2 ; 2 uses
  %niter1148.next.1 = add nuw i64 %niter1148, 2   ; 2 uses
  %niter1148.ncmp.1 = icmp eq i64 %niter1148.next.1, %unroll_iter1147
  br i1 %niter1148.ncmp.1, label %.loopexit822.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i276, !llvm.loop !239

.loopexit822.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i276
  br i1 %lcmp.mod1144.not, label %.loopexit822, label %.lr.ph.i.i.i.i.i276.epil.preheader

.lr.ph.i.i.i.i.i276.epil.preheader:               ; preds = %.loopexit822.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i276.preheader
  %.01724.i.i.i.i.i277.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i276.preheader ], [ %i.abg, %.loopexit822.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i278.epil.init = phi double [ %i.aao, %.lr.ph.i.i.i.i.i276.preheader ], [ %i.abf, %.loopexit822.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1146)
  %i.abh = mul nsw i64 %.01724.i.i.i.i.i277.epil.init, %i.xx ; 2 uses
  %i.abi = getelementptr [8 x i8], ptr %i.aae, i64 %i.abh
  %i.abj = getelementptr [8 x i8], ptr %i.aak, i64 %i.abh
  %i.abk = load double, ptr %i.abi, align 8, !tbaa !17
  %i.abl = load double, ptr %i.abj, align 8, !tbaa !17
  %i.abm = fsub double %i.abk, %i.abl             ; 2 uses
  %i.abn = fmul double %i.abm, %i.abm
  %i.abo = fadd double %.02223.i.i.i.i.i278.epil.init, %i.abn
  br label %.loopexit822

.loopexit822:                                     ; preds = %.lr.ph.i.i.i.i.i276.epil.preheader, %.loopexit822.loopexit.unr-lcssa, %bb.bt
  %.0.i.i.i275.ph = phi double [ %i.aao, %bb.bt ], [ %i.abf, %.loopexit822.loopexit.unr-lcssa ], [ %i.abo, %.lr.ph.i.i.i.i.i276.epil.preheader ]
  %.scalar.i802 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i275.ph) ; 5 uses
  %i.abp = zext nneg i32 %spec.select.2.fr to i64
  %i.abq = mul nuw nsw i64 %.1.i, %i.abp
  %i.abr = getelementptr [4 x i8], ptr %i.zh, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !40
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.abt ; 7 uses
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !17 ; 3 uses
  %i.abw = fsub double %i.abv, %i.aam             ; 2 uses
  %i.abx = fmul double %i.abw, %i.abw             ; 3 uses
  br i1 %i.xy, label %.lr.ph.i.i.i.i.i291.preheader, label %.loopexit821

.lr.ph.i.i.i.i.i291.preheader:                    ; preds = %.loopexit822
  br i1 %i.yc, label %.lr.ph.i.i.i.i.i291.epil.preheader, label %.lr.ph.i.i.i.i.i291

.lr.ph.i.i.i.i.i291:                              ; preds = %.lr.ph.i.i.i.i.i291.preheader, %.lr.ph.i.i.i.i.i291
  %.01724.i.i.i.i.i292 = phi i64 [ %i.acp, %.lr.ph.i.i.i.i.i291 ], [ 1, %.lr.ph.i.i.i.i.i291.preheader ] ; 3 uses
  %.02223.i.i.i.i.i293 = phi double [ %i.aco, %.lr.ph.i.i.i.i.i291 ], [ %i.abx, %.lr.ph.i.i.i.i.i291.preheader ]
  %niter1155 = phi i64 [ %niter1155.next.1, %.lr.ph.i.i.i.i.i291 ], [ 0, %.lr.ph.i.i.i.i.i291.preheader ]
  %i.aby = mul nsw i64 %.01724.i.i.i.i.i292, %i.xx ; 2 uses
  %i.abz = getelementptr [8 x i8], ptr %i.abu, i64 %i.aby
  %i.aca = getelementptr [8 x i8], ptr %i.aak, i64 %i.aby
  %i.acb = load double, ptr %i.abz, align 8, !tbaa !17
  %i.acc = load double, ptr %i.aca, align 8, !tbaa !17
  %i.acd = fsub double %i.acb, %i.acc             ; 2 uses
  %i.ace = fmul double %i.acd, %i.acd
  %i.acf = fadd double %.02223.i.i.i.i.i293, %i.ace
  %i.acg = add nuw nsw i64 %.01724.i.i.i.i.i292, 1
  %i.ach = mul nsw i64 %i.acg, %i.xx              ; 2 uses
  %i.aci = getelementptr [8 x i8], ptr %i.abu, i64 %i.ach
  %i.acj = getelementptr [8 x i8], ptr %i.aak, i64 %i.ach
  %i.ack = load double, ptr %i.aci, align 8, !tbaa !17
  %i.acl = load double, ptr %i.acj, align 8, !tbaa !17
  %i.acm = fsub double %i.ack, %i.acl             ; 2 uses
  %i.acn = fmul double %i.acm, %i.acm
  %i.aco = fadd double %i.acf, %i.acn             ; 3 uses
  %i.acp = add nuw nsw i64 %.01724.i.i.i.i.i292, 2 ; 2 uses
  %niter1155.next.1 = add nuw i64 %niter1155, 2   ; 2 uses
  %niter1155.ncmp.1 = icmp eq i64 %niter1155.next.1, %unroll_iter1154
  br i1 %niter1155.ncmp.1, label %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i291, !llvm.loop !239

.loopexit821:                                     ; preds = %.loopexit822
  %.scalar.i290809 = call noundef double @llvm.sqrt.f64(double %i.abx) ; 2 uses
  %i.acq = fsub double %i.aal, %i.abv             ; 2 uses
  %i.acr = fmul double %i.acq, %i.acq
  %i.acs = insertelement <2 x double> poison, double %.scalar.i290809, i64 0
  %i.act = insertelement <2 x double> %i.acs, double %.scalar.i802, i64 1
  br label %.loopexit

.lr.ph.i.i.i.i.i307.preheader.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i291
  br i1 %lcmp.mod1151.not, label %.lr.ph.i.i.i.i.i307.preheader, label %.lr.ph.i.i.i.i.i291.epil.preheader

.lr.ph.i.i.i.i.i291.epil.preheader:               ; preds = %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i291.preheader
  %.01724.i.i.i.i.i292.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i291.preheader ], [ %i.acp, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ]
  %.02223.i.i.i.i.i293.epil.init = phi double [ %i.abx, %.lr.ph.i.i.i.i.i291.preheader ], [ %i.aco, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1153)
  %i.acu = mul nsw i64 %.01724.i.i.i.i.i292.epil.init, %i.xx ; 2 uses
  %i.acv = getelementptr [8 x i8], ptr %i.abu, i64 %i.acu
  %i.acw = getelementptr [8 x i8], ptr %i.aak, i64 %i.acu
  %i.acx = load double, ptr %i.acv, align 8, !tbaa !17
  %i.acy = load double, ptr %i.acw, align 8, !tbaa !17
  %i.acz = fsub double %i.acx, %i.acy             ; 2 uses
  %i.ada = fmul double %i.acz, %i.acz
  %i.adb = fadd double %.02223.i.i.i.i.i293.epil.init, %i.ada
  br label %.lr.ph.i.i.i.i.i307.preheader

.lr.ph.i.i.i.i.i307.preheader:                    ; preds = %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i291.epil.preheader
  %.lcssa1089 = phi double [ %i.aco, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ], [ %i.adb, %.lr.ph.i.i.i.i.i291.epil.preheader ]
  %.scalar.i290809963 = call noundef double @llvm.sqrt.f64(double %.lcssa1089) ; 3 uses
  %i.adc = fsub double %i.aal, %i.abv             ; 2 uses
  %i.add = fmul double %i.adc, %i.adc             ; 2 uses
  %i.ade = insertelement <2 x double> poison, double %.scalar.i290809963, i64 0
  %i.adf = insertelement <2 x double> %i.ade, double %.scalar.i802, i64 1 ; 2 uses
  br i1 %i.yd, label %.lr.ph.i.i.i.i.i307.epil.preheader, label %.lr.ph.i.i.i.i.i307

.lr.ph.i.i.i.i.i307:                              ; preds = %.lr.ph.i.i.i.i.i307.preheader, %.lr.ph.i.i.i.i.i307
  %.01724.i.i.i.i.i308 = phi i64 [ %i.adx, %.lr.ph.i.i.i.i.i307 ], [ 1, %.lr.ph.i.i.i.i.i307.preheader ] ; 3 uses
  %.02223.i.i.i.i.i309 = phi double [ %i.adw, %.lr.ph.i.i.i.i.i307 ], [ %i.add, %.lr.ph.i.i.i.i.i307.preheader ]
  %niter1162 = phi i64 [ %niter1162.next.1, %.lr.ph.i.i.i.i.i307 ], [ 0, %.lr.ph.i.i.i.i.i307.preheader ]
  %i.adg = mul nsw i64 %.01724.i.i.i.i.i308, %i.xx ; 2 uses
  %i.adh = getelementptr [8 x i8], ptr %i.aae, i64 %i.adg
  %i.adi = getelementptr [8 x i8], ptr %i.abu, i64 %i.adg
  %i.adj = load double, ptr %i.adh, align 8, !tbaa !17
  %i.adk = load double, ptr %i.adi, align 8, !tbaa !17
  %i.adl = fsub double %i.adj, %i.adk             ; 2 uses
  %i.adm = fmul double %i.adl, %i.adl
  %i.adn = fadd double %.02223.i.i.i.i.i309, %i.adm
  %i.ado = add nuw nsw i64 %.01724.i.i.i.i.i308, 1
  %i.adp = mul nsw i64 %i.ado, %i.xx              ; 2 uses
  %i.adq = getelementptr [8 x i8], ptr %i.aae, i64 %i.adp
  %i.adr = getelementptr [8 x i8], ptr %i.abu, i64 %i.adp
  %i.ads = load double, ptr %i.adq, align 8, !tbaa !17
  %i.adt = load double, ptr %i.adr, align 8, !tbaa !17
  %i.adu = fsub double %i.ads, %i.adt             ; 2 uses
  %i.adv = fmul double %i.adu, %i.adu
  %i.adw = fadd double %i.adn, %i.adv             ; 3 uses
  %i.adx = add nuw nsw i64 %.01724.i.i.i.i.i308, 2 ; 2 uses
  %niter1162.next.1 = add nuw i64 %niter1162, 2   ; 2 uses
  %niter1162.ncmp.1 = icmp eq i64 %niter1162.next.1, %unroll_iter1161
  br i1 %niter1162.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i307, !llvm.loop !239

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i307
  br i1 %lcmp.mod1158.not, label %.loopexit, label %.lr.ph.i.i.i.i.i307.epil.preheader

.lr.ph.i.i.i.i.i307.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i307.preheader
  %.01724.i.i.i.i.i308.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.adx, %.loopexit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i309.epil.init = phi double [ %i.add, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.adw, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1160)
  %i.ady = mul nsw i64 %.01724.i.i.i.i.i308.epil.init, %i.xx ; 2 uses
  %i.adz = getelementptr [8 x i8], ptr %i.aae, i64 %i.ady
  %i.aea = getelementptr [8 x i8], ptr %i.abu, i64 %i.ady
  %i.aeb = load double, ptr %i.adz, align 8, !tbaa !17
  %i.aec = load double, ptr %i.aea, align 8, !tbaa !17
  %i.aed = fsub double %i.aeb, %i.aec             ; 2 uses
  %i.aee = fmul double %i.aed, %i.aed
  %i.aef = fadd double %.02223.i.i.i.i.i309.epil.init, %i.aee
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i307.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit821, %bb.bs
  %.scalar.i290813 = phi double [ 0.000000e+00, %bb.bs ], [ %.scalar.i290809, %.loopexit821 ], [ %.scalar.i290809963, %.loopexit.loopexit.unr-lcssa ], [ %.scalar.i290809963, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 4 uses
  %.scalar.i804811 = phi double [ 0.000000e+00, %bb.bs ], [ %.scalar.i802, %.loopexit821 ], [ %.scalar.i802, %.loopexit.loopexit.unr-lcssa ], [ %.scalar.i802, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 6 uses
  %.0.i.i.i305 = phi double [ 0.000000e+00, %bb.bs ], [ %i.acr, %.loopexit821 ], [ %i.adw, %.loopexit.loopexit.unr-lcssa ], [ %i.aef, %.lr.ph.i.i.i.i.i307.epil.preheader ]
  %i.aeg = phi <2 x double> [ zeroinitializer, %bb.bs ], [ %i.act, %.loopexit821 ], [ %i.adf, %.loopexit.loopexit.unr-lcssa ], [ %i.adf, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 5 uses
  %.scalar.i306 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i305) ; 9 uses
  %i.aeh = fmul <2 x double> %i.aeg, %i.aeg       ; 2 uses
  %i.aei = extractelement <2 x double> %i.aeh, i64 0
  %i.aej = call double @llvm.fmuladd.f64(double %.scalar.i306, double %.scalar.i306, double %i.aei)
  %i.aek = fneg double %.scalar.i804811
  %i.ael = call double @llvm.fmuladd.f64(double %i.aek, double %.scalar.i804811, double %i.aej)
  %i.aem = fmul <2 x double> %i.aeg, splat (double 2.000000e+00) ; 2 uses
  %i.aen = extractelement <2 x double> %i.aem, i64 0
  %i.aeo = fmul double %i.aen, %.scalar.i306
  %i.aep = fdiv double %i.ael, %i.aeo             ; 2 uses
  %i.aeq = shufflevector <2 x double> %i.aeg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aer = insertelement <2 x double> %i.aeq, double %.scalar.i306, i64 1 ; 4 uses
  %i.aes = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aer, <2 x double> %i.aer, <2 x double> %i.aeh)
  %i.aet = shufflevector <2 x double> %i.aer, <2 x double> %i.aeg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aeu = fneg <2 x double> %i.aet
  %i.aev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeu, <2 x double> %i.aet, <2 x double> %i.aes)
  %i.aew = fmul <2 x double> %i.aem, %i.aer
  %i.aex = fdiv <2 x double> %i.aev, %i.aew       ; 3 uses
  %i.aey = fmul double %.scalar.i804811, %i.aep
  %i.aez = extractelement <2 x double> %i.aex, i64 1
  %i.afa = fmul double %.scalar.i290813, %i.aez   ; 2 uses
  %i.afb = extractelement <2 x double> %i.aex, i64 0
  %i.afc = fmul double %.scalar.i306, %i.afb      ; 2 uses
  %i.afd = fadd double %i.aey, %i.afa
  %i.afe = fadd double %i.afc, %i.afd             ; 2 uses
  %i.aff = fdiv double %i.afc, %i.afe
  %i.afg = fadd double %.scalar.i290813, %.scalar.i306
  %i.afh = fadd double %.scalar.i804811, %i.afg
  %i.afi = fsub double %.scalar.i804811, %.scalar.i290813 ; 2 uses
  %i.afj = fsub double %.scalar.i306, %i.afi
  %i.afk = fmul double %i.afj, %i.afh
  %i.afl = fadd double %i.afi, %.scalar.i306
  %i.afm = fmul double %i.afl, %i.afk
  %i.afn = fsub double %.scalar.i290813, %.scalar.i306
  %i.afo = fadd double %.scalar.i804811, %i.afn
  %i.afp = fmul double %i.afo, %i.afm
  %i.afq = call double @sqrt(double noundef %i.afp) #32
  %i.afr = fmul double %i.afq, 2.500000e-01       ; 4 uses
  %i.afs = fmul double %i.aff, %i.afr
  %i.aft = fcmp olt double %i.aep, 0.000000e+00
  br i1 %i.aft, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit
  %i.afu = call double @llvm.fmuladd.f64(double %i.afr, double 5.000000e-01, double %.089869)
  br label %bb.by

bb.bv:                                            ; preds = %.loopexit
  %i.afv = fcmp olt <2 x double> %i.aex, zeroinitializer
  %i.afw = bitcast <2 x i1> %i.afv to i2
  %or.cond.not = icmp eq i2 %i.afw, 0
  br i1 %or.cond.not, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afx = call double @llvm.fmuladd.f64(double %i.afr, double 2.500000e-01, double %.089869)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.afy = fdiv double %i.afa, %i.afe
  %.sroa.0367.8.vec.extract = fmul double %i.afr, %i.afy
  %i.afz = fadd double %i.afs, %.sroa.0367.8.vec.extract
  %i.aga = fmul double %i.afz, 5.000000e-01
  %i.agb = fadd double %.089869, %i.aga
  br label %bb.by

bb.by:                                            ; preds = %bb.bu, %bb.bx, %bb.bw, %.preheader
  %.2 = phi double [ %.089869, %.preheader ], [ %i.afu, %bb.bu ], [ %i.afx, %bb.bw ], [ %i.agb, %bb.bx ] ; 2 uses
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next896, %.1.i
  br i1 %exitcond.not, label %._crit_edge871, label %.preheader, !llvm.loop !240

bb.bz:                                            ; preds = %._crit_edge871
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #38
  unreachable

_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit: ; preds = %._crit_edge871
  %i.age = getelementptr inbounds nuw i8, ptr %20, i64 104
  call void @_ZN4CGAL17Compact_containerINS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS1_IjS2_NS3_IS2_NS4_IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESF_SF_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.age) #32
  %i.agf = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.agf) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.not.i.i.i317 = icmp eq ptr %.sroa.0497.0.lcssa, null
  br i1 %.not.i.i.i317, label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit
  %i.agg = ptrtoint ptr %.sroa.14504.0.lcssa to i64
  %i.agh = ptrtoint ptr %.sroa.0497.0.lcssa to i64
  %i.agi = sub i64 %i.agg, %i.agh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0497.0.lcssa, i64 noundef %i.agi) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit: ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit, %bb.ca
  %i.agj = load ptr, ptr %18, align 8, !tbaa !20
  call void @free(ptr noundef %i.agj) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.agk = load ptr, ptr %16, align 8, !tbaa !20
  call void @free(ptr noundef %i.agk) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.agl = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.agl) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ch

.body262:                                         ; preds = %bb.bj, %bb.bp
  %.pn184.pn.pn.pn = phi { ptr, i32 } [ %i.ye, %bb.bp ], [ %i.wf, %bb.bj ]
  call void @_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %20) #32
  br label %.body253

.body253:                                         ; preds = %bb.az, %.body262
  %.pn184.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn184.pn.pn.pn, %.body262 ], [ %i.tz, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit824, %.loopexit.split-lp, %.body253
  %.sroa.0497.0852 = phi ptr [ %.sroa.0497.0.lcssa, %.body253 ], [ %.sroa.0497.0857, %.loopexit824 ], [ %.sroa.0497.0857, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14504.0844 = phi ptr [ %.sroa.14504.0.lcssa, %.body253 ], [ %.sroa.14504.0859, %.loopexit824 ], [ %.sroa.14504.0859, %.loopexit.split-lp ]
  %.pn190 = phi { ptr, i32 } [ %.pn184.pn.pn.pn.pn, %.body253 ], [ %lpad.loopexit, %.loopexit824 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i318 = icmp eq ptr %.sroa.0497.0852, null
  br i1 %.not.i.i.i318, label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.agm = ptrtoint ptr %.sroa.14504.0844 to i64
  %i.agn = ptrtoint ptr %.sroa.0497.0852 to i64
  %i.ago = sub i64 %i.agm, %i.agn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0497.0852, i64 noundef %i.ago) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319: ; preds = %bb.cb, %bb.cc
  %i.agp = load ptr, ptr %18, align 8, !tbaa !20
  call void @free(ptr noundef %i.agp) #32
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319, %bb.ba
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319 ], [ %i.ua, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.agq = load ptr, ptr %16, align 8, !tbaa !20
  call void @free(ptr noundef %i.agq) #32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.body250
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn, %bb.cd ], [ %i.oi, %.body250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  br label %.body247

.body247:                                         ; preds = %bb.aq, %bb.ce
  %.pn190.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn, %bb.ce ], [ %i.nj, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.agr = load ptr, ptr %13, align 8, !tbaa !20
  call void @free(ptr noundef %i.agr) #32
  br label %bb.cf

bb.cf:                                            ; preds = %.body247, %bb.ay
  %.pn190.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn, %.body247 ], [ %i.tg, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ax
  %.pn190.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn.pn, %bb.cf ], [ %i.tf, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.ci

bb.ch:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit, %.thread
  %i.ags = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.ags) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.ci:                                            ; preds = %bb.am, %bb.cg, %bb.af
  %.pn198 = phi { ptr, i32 } [ %.pn147.pn.pn.pn.pn.pn.pn, %bb.am ], [ %.pn190.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.lw, %bb.af ]
  %i.agt = load ptr, ptr %7, align 8, !tbaa !20
  call void @free(ptr noundef %i.agt) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn198
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.206") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130, !noalias !241 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !131, !noalias !241 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !244

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37, !noalias !241
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39, !noalias !241
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !192, !noalias !241 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !192, !noalias !241
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.k = sub i64 %.pre-phi.i, %.pre-phi5.i        ; 10 uses
  %i.l = icmp sgt i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e, !prof !245
end_hunk_0
