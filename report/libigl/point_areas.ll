Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZZN3igl8copyleft4cgal11point_areasIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IdLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EERNSL_IT3_EEENKUliE_clEi:bb.a
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
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5475.0864, align 8, !tbaa !139
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !60
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.5475.0864, i64 8
  %.sroa.0.0.copyload.i267 = load ptr, ptr %i.yh, align 8, !tbaa !139
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i267, i64 24
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !60
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.5475.0864, i64 16
  %.sroa.0.0.copyload.i268 = load ptr, ptr %i.yk, align 8, !tbaa !139
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i268, i64 24
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !60
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0744.0, i64 %indvars.iv ; 3 uses
  store i32 %i.yg, ptr %i.yn, align 4, !tbaa !60
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %.1.i
  store i32 %i.yj, ptr %i.yo, align 4, !tbaa !60
  %i.yp = getelementptr inbounds i8, ptr %i.yn, i64 %.idx
  store i32 %i.ym, ptr %i.yp, align 4, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i

_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, %.lr.ph.i.i.i.i.i.i.i.i.i.i269
  %i.yq = phi ptr [ %.sroa.5475.0864, %.lr.ph.i.i.i.i.i.i.i.i.i.i269 ], [ %.be, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge ] ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 56 ; 6 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 80
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !144
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
  br label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i, !llvm.loop !419

_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i: ; preds = %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i, %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i
  %.not.i.i272 = icmp eq ptr %i.yr, %i.wh
  br i1 %.not.i.i272, label %.preheader823, label %bb.br

bb.br:                                            ; preds = %_ZN4CGAL8internal11CC_iteratorINS_17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS6_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS3_IvEEEEEENS_7DefaultESF_SF_EELb0EEppEv.exit.i.i
  %i.yz = load ptr, ptr %i.yr, align 8, !tbaa !138
  %i.za = icmp eq ptr %i.yz, %.sroa.0.0.copyload.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yq, i64 64
  %i.zc = load ptr, ptr %i.zb, align 8
  %i.zd = icmp eq ptr %i.zc, %.sroa.0.0.copyload.i.i
  %or.cond.i.i.i.i.i = select i1 %i.za, i1 true, i1 %i.zd
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, label %.split.i.i

.split.i.i:                                       ; preds = %bb.br
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yq, i64 72
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !138
  %i.zg = icmp eq ptr %i.zf, %.sroa.0.0.copyload.i.i
  br i1 %i.zg, label %_ZNK4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEE15Infinite_testerclERKNS_8internal11CC_iteratorINS_17Compact_containerINS9_ISB_EENS_7DefaultESI_SI_EELb0EEE.exit.i.i.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i269, !llvm.loop !419

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.by
  %indvars.iv895 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next896, %bb.by ] ; 2 uses
  %.089869 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %.2, %bb.by ] ; 4 uses
  %i.zh = getelementptr [4 x i8], ptr %.sroa.0744.0, i64 %indvars.iv895 ; 6 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !60
  %i.zj = icmp ne i32 %i.zi, 0
  %spec.select = sext i1 %i.zj to i32
  %i.zk = getelementptr [4 x i8], ptr %i.zh, i64 %.1.i
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !60
  %i.zm = icmp eq i32 %i.zl, 0
  %spec.select.1 = select i1 %i.zm, i32 1, i32 %spec.select
  %i.zn = getelementptr i8, ptr %i.zh, i64 %.idx953
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !60
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
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !442, !nonnull !64, !align !65
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !42
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %i.e
  %..089.lcssa = select i1 %i.zs, double 0.000000e+00, double %.089.lcssa
  store double %..089.lcssa, ptr %i.zw, align 8, !tbaa !44
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
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !60
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.aad ; 7 uses
  %i.aaf = zext nneg i32 %i.zy to i64
  %i.aag = mul nuw nsw i64 %.1.i, %i.aaf
  %i.aah = getelementptr [4 x i8], ptr %i.zh, i64 %i.aag
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !60
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.aaj ; 7 uses
  br i1 %i.xw, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aal = load double, ptr %i.aae, align 8, !tbaa !44 ; 3 uses
  %i.aam = load double, ptr %i.aak, align 8, !tbaa !44 ; 2 uses
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
  %i.aas = load double, ptr %i.aaq, align 8, !tbaa !44
  %i.aat = load double, ptr %i.aar, align 8, !tbaa !44
  %i.aau = fsub double %i.aas, %i.aat             ; 2 uses
  %i.aav = fmul double %i.aau, %i.aau
  %i.aaw = fadd double %.02223.i.i.i.i.i278, %i.aav
  %i.aax = add nuw nsw i64 %.01724.i.i.i.i.i277, 1
  %i.aay = mul nsw i64 %i.aax, %i.xx              ; 2 uses
  %i.aaz = getelementptr [8 x i8], ptr %i.aae, i64 %i.aay
  %i.aba = getelementptr [8 x i8], ptr %i.aak, i64 %i.aay
  %i.abb = load double, ptr %i.aaz, align 8, !tbaa !44
  %i.abc = load double, ptr %i.aba, align 8, !tbaa !44
  %i.abd = fsub double %i.abb, %i.abc             ; 2 uses
  %i.abe = fmul double %i.abd, %i.abd
  %i.abf = fadd double %i.aaw, %i.abe             ; 3 uses
  %i.abg = add nuw nsw i64 %.01724.i.i.i.i.i277, 2 ; 2 uses
  %niter1148.next.1 = add nuw i64 %niter1148, 2   ; 2 uses
  %niter1148.ncmp.1 = icmp eq i64 %niter1148.next.1, %unroll_iter1147
  br i1 %niter1148.ncmp.1, label %.loopexit822.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i276, !llvm.loop !420

.loopexit822.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i.i.i.i276
  br i1 %lcmp.mod1144.not, label %.loopexit822, label %.lr.ph.i.i.i.i.i276.epil.preheader

.lr.ph.i.i.i.i.i276.epil.preheader:               ; preds = %.loopexit822.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i276.preheader
  %.01724.i.i.i.i.i277.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i276.preheader ], [ %i.abg, %.loopexit822.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i278.epil.init = phi double [ %i.aao, %.lr.ph.i.i.i.i.i276.preheader ], [ %i.abf, %.loopexit822.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1146)
  %i.abh = mul nsw i64 %.01724.i.i.i.i.i277.epil.init, %i.xx ; 2 uses
  %i.abi = getelementptr [8 x i8], ptr %i.aae, i64 %i.abh
  %i.abj = getelementptr [8 x i8], ptr %i.aak, i64 %i.abh
  %i.abk = load double, ptr %i.abi, align 8, !tbaa !44
  %i.abl = load double, ptr %i.abj, align 8, !tbaa !44
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
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !60
  %i.abt = sext i32 %i.abs to i64
  %i.abu = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.abt ; 7 uses
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !44 ; 3 uses
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
  %i.acb = load double, ptr %i.abz, align 8, !tbaa !44
  %i.acc = load double, ptr %i.aca, align 8, !tbaa !44
  %i.acd = fsub double %i.acb, %i.acc             ; 2 uses
  %i.ace = fmul double %i.acd, %i.acd
  %i.acf = fadd double %.02223.i.i.i.i.i293, %i.ace
  %i.acg = add nuw nsw i64 %.01724.i.i.i.i.i292, 1
  %i.ach = mul nsw i64 %i.acg, %i.xx              ; 2 uses
  %i.aci = getelementptr [8 x i8], ptr %i.abu, i64 %i.ach
  %i.acj = getelementptr [8 x i8], ptr %i.aak, i64 %i.ach
  %i.ack = load double, ptr %i.aci, align 8, !tbaa !44
  %i.acl = load double, ptr %i.acj, align 8, !tbaa !44
  %i.acm = fsub double %i.ack, %i.acl             ; 2 uses
  %i.acn = fmul double %i.acm, %i.acm
  %i.aco = fadd double %i.acf, %i.acn             ; 3 uses
  %i.acp = add nuw nsw i64 %.01724.i.i.i.i.i292, 2 ; 2 uses
  %niter1155.next.1 = add nuw i64 %niter1155, 2   ; 2 uses
  %niter1155.ncmp.1 = icmp eq i64 %niter1155.next.1, %unroll_iter1154
  br i1 %niter1155.ncmp.1, label %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i291, !llvm.loop !420

.loopexit821:                                     ; preds = %.loopexit822
  %.scalar.i290809 = call noundef double @llvm.sqrt.f64(double %i.abx) ; 2 uses
  %i.acq = fsub double %i.aal, %i.abv             ; 2 uses
  %i.acr = fmul double %i.acq, %i.acq
  %21 = insertelement <2 x double> poison, double %.scalar.i290809, i64 0
  %22 = insertelement <2 x double> %21, double %.scalar.i802, i64 1
  br label %.loopexit

.lr.ph.i.i.i.i.i307.preheader.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i291
  br i1 %lcmp.mod1151.not, label %.lr.ph.i.i.i.i.i307.preheader, label %.lr.ph.i.i.i.i.i291.epil.preheader

.lr.ph.i.i.i.i.i291.epil.preheader:               ; preds = %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i291.preheader
  %.01724.i.i.i.i.i292.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i291.preheader ], [ %i.acp, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ]
  %.02223.i.i.i.i.i293.epil.init = phi double [ %i.abx, %.lr.ph.i.i.i.i.i291.preheader ], [ %i.aco, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1153)
  %i.acs = mul nsw i64 %.01724.i.i.i.i.i292.epil.init, %i.xx ; 2 uses
  %i.act = getelementptr [8 x i8], ptr %i.abu, i64 %i.acs
  %i.acu = getelementptr [8 x i8], ptr %i.aak, i64 %i.acs
  %i.acv = load double, ptr %i.act, align 8, !tbaa !44
  %i.acw = load double, ptr %i.acu, align 8, !tbaa !44
  %i.acx = fsub double %i.acv, %i.acw             ; 2 uses
  %i.acy = fmul double %i.acx, %i.acx
  %i.acz = fadd double %.02223.i.i.i.i.i293.epil.init, %i.acy
  br label %.lr.ph.i.i.i.i.i307.preheader

.lr.ph.i.i.i.i.i307.preheader:                    ; preds = %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa, %.lr.ph.i.i.i.i.i291.epil.preheader
  %.lcssa1089 = phi double [ %i.aco, %.lr.ph.i.i.i.i.i307.preheader.unr-lcssa ], [ %i.acz, %.lr.ph.i.i.i.i.i291.epil.preheader ]
  %.scalar.i290809963 = call noundef double @llvm.sqrt.f64(double %.lcssa1089) ; 3 uses
  %i.ada = fsub double %i.aal, %i.abv             ; 2 uses
  %i.adb = fmul double %i.ada, %i.ada             ; 2 uses
  %23 = insertelement <2 x double> poison, double %.scalar.i290809963, i64 0
  %24 = insertelement <2 x double> %23, double %.scalar.i802, i64 1 ; 2 uses
  br i1 %i.yd, label %.lr.ph.i.i.i.i.i307.epil.preheader, label %.lr.ph.i.i.i.i.i307

.lr.ph.i.i.i.i.i307:                              ; preds = %.lr.ph.i.i.i.i.i307.preheader, %.lr.ph.i.i.i.i.i307
  %.01724.i.i.i.i.i308 = phi i64 [ %i.adt, %.lr.ph.i.i.i.i.i307 ], [ 1, %.lr.ph.i.i.i.i.i307.preheader ] ; 3 uses
  %.02223.i.i.i.i.i309 = phi double [ %i.ads, %.lr.ph.i.i.i.i.i307 ], [ %i.adb, %.lr.ph.i.i.i.i.i307.preheader ]
  %niter1162 = phi i64 [ %niter1162.next.1, %.lr.ph.i.i.i.i.i307 ], [ 0, %.lr.ph.i.i.i.i.i307.preheader ]
  %i.adc = mul nsw i64 %.01724.i.i.i.i.i308, %i.xx ; 2 uses
  %i.add = getelementptr [8 x i8], ptr %i.aae, i64 %i.adc
  %i.ade = getelementptr [8 x i8], ptr %i.abu, i64 %i.adc
  %i.adf = load double, ptr %i.add, align 8, !tbaa !44
  %i.adg = load double, ptr %i.ade, align 8, !tbaa !44
  %i.adh = fsub double %i.adf, %i.adg             ; 2 uses
  %i.adi = fmul double %i.adh, %i.adh
  %i.adj = fadd double %.02223.i.i.i.i.i309, %i.adi
  %i.adk = add nuw nsw i64 %.01724.i.i.i.i.i308, 1
  %i.adl = mul nsw i64 %i.adk, %i.xx              ; 2 uses
  %i.adm = getelementptr [8 x i8], ptr %i.aae, i64 %i.adl
  %i.adn = getelementptr [8 x i8], ptr %i.abu, i64 %i.adl
  %i.ado = load double, ptr %i.adm, align 8, !tbaa !44
  %i.adp = load double, ptr %i.adn, align 8, !tbaa !44
  %i.adq = fsub double %i.ado, %i.adp             ; 2 uses
  %i.adr = fmul double %i.adq, %i.adq
  %i.ads = fadd double %i.adj, %i.adr             ; 3 uses
  %i.adt = add nuw nsw i64 %.01724.i.i.i.i.i308, 2 ; 2 uses
  %niter1162.next.1 = add nuw i64 %niter1162, 2   ; 2 uses
  %niter1162.ncmp.1 = icmp eq i64 %niter1162.next.1, %unroll_iter1161
  br i1 %niter1162.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i307, !llvm.loop !420

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i307
  br i1 %lcmp.mod1158.not, label %.loopexit, label %.lr.ph.i.i.i.i.i307.epil.preheader

.lr.ph.i.i.i.i.i307.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i307.preheader
  %.01724.i.i.i.i.i308.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.adt, %.loopexit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i309.epil.init = phi double [ %i.adb, %.lr.ph.i.i.i.i.i307.preheader ], [ %i.ads, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1160)
  %i.adu = mul nsw i64 %.01724.i.i.i.i.i308.epil.init, %i.xx ; 2 uses
  %i.adv = getelementptr [8 x i8], ptr %i.aae, i64 %i.adu
  %i.adw = getelementptr [8 x i8], ptr %i.abu, i64 %i.adu
  %i.adx = load double, ptr %i.adv, align 8, !tbaa !44
  %i.ady = load double, ptr %i.adw, align 8, !tbaa !44
  %i.adz = fsub double %i.adx, %i.ady             ; 2 uses
  %i.aea = fmul double %i.adz, %i.adz
  %i.aeb = fadd double %.02223.i.i.i.i.i309.epil.init, %i.aea
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i307.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.loopexit821, %bb.bs
  %.scalar.i290813 = phi double [ 0.000000e+00, %bb.bs ], [ %.scalar.i290809, %.loopexit821 ], [ %.scalar.i290809963, %.loopexit.loopexit.unr-lcssa ], [ %.scalar.i290809963, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 4 uses
  %.scalar.i804811 = phi double [ 0.000000e+00, %bb.bs ], [ %.scalar.i802, %.loopexit821 ], [ %.scalar.i802, %.loopexit.loopexit.unr-lcssa ], [ %.scalar.i802, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 6 uses
  %.0.i.i.i305 = phi double [ 0.000000e+00, %bb.bs ], [ %i.acr, %.loopexit821 ], [ %i.ads, %.loopexit.loopexit.unr-lcssa ], [ %i.aeb, %.lr.ph.i.i.i.i.i307.epil.preheader ]
  %25 = phi <2 x double> [ zeroinitializer, %bb.bs ], [ %22, %.loopexit821 ], [ %24, %.loopexit.loopexit.unr-lcssa ], [ %24, %.lr.ph.i.i.i.i.i307.epil.preheader ] ; 5 uses
  %.scalar.i306 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i305) ; 9 uses
  %i.aec = fmul <2 x double> %25, %25             ; 2 uses
  %i.aed = extractelement <2 x double> %i.aec, i64 0
  %i.aee = call double @llvm.fmuladd.f64(double %.scalar.i306, double %.scalar.i306, double %i.aed)
  %i.aef = fneg double %.scalar.i804811
  %i.aeg = call double @llvm.fmuladd.f64(double %i.aef, double %.scalar.i804811, double %i.aee)
  %i.aeh = fmul <2 x double> %25, splat (double 2.000000e+00) ; 2 uses
  %i.aei = extractelement <2 x double> %i.aeh, i64 0
  %i.aej = fmul double %i.aei, %.scalar.i306
  %i.aek = fdiv double %i.aeg, %i.aej             ; 2 uses
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ael = insertelement <2 x double> %26, double %.scalar.i306, i64 1 ; 4 uses
  %i.aem = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ael, <2 x double> %i.ael, <2 x double> %i.aec)
  %i.aen = shufflevector <2 x double> %i.ael, <2 x double> %25, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aeo = fneg <2 x double> %i.aen
  %i.aep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeo, <2 x double> %i.aen, <2 x double> %i.aem)
  %i.aeq = fmul <2 x double> %i.aeh, %i.ael
  %i.aer = fdiv <2 x double> %i.aep, %i.aeq       ; 3 uses
  %i.aes = fmul double %.scalar.i804811, %i.aek
  %i.aet = extractelement <2 x double> %i.aer, i64 1
  %i.aeu = fmul double %.scalar.i290813, %i.aet   ; 2 uses
  %i.aev = extractelement <2 x double> %i.aer, i64 0
  %i.aew = fmul double %.scalar.i306, %i.aev      ; 2 uses
  %i.aex = fadd double %i.aes, %i.aeu
  %i.aey = fadd double %i.aew, %i.aex             ; 2 uses
  %i.aez = fdiv double %i.aew, %i.aey
  %i.afa = fadd double %.scalar.i290813, %.scalar.i306
  %i.afb = fadd double %.scalar.i804811, %i.afa
  %i.afc = fsub double %.scalar.i804811, %.scalar.i290813 ; 2 uses
  %i.afd = fsub double %.scalar.i306, %i.afc
  %i.afe = fmul double %i.afd, %i.afb
  %i.aff = fadd double %i.afc, %.scalar.i306
  %i.afg = fmul double %i.aff, %i.afe
  %i.afh = fsub double %.scalar.i290813, %.scalar.i306
  %i.afi = fadd double %.scalar.i804811, %i.afh
  %i.afj = fmul double %i.afi, %i.afg
  %i.afk = call double @sqrt(double noundef %i.afj) #32
  %i.afl = fmul double %i.afk, 2.500000e-01       ; 4 uses
  %i.afm = fmul double %i.aez, %i.afl
  %i.afn = fcmp olt double %i.aek, 0.000000e+00
  br i1 %i.afn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit
  %i.afo = call double @llvm.fmuladd.f64(double %i.afl, double 5.000000e-01, double %.089869)
  br label %bb.by

bb.bv:                                            ; preds = %.loopexit
  %i.afp = fcmp olt <2 x double> %i.aer, zeroinitializer
  %i.afq = bitcast <2 x i1> %i.afp to i2
  %.not1088 = icmp eq i2 %i.afq, 0
  br i1 %.not1088, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afr = call double @llvm.fmuladd.f64(double %i.afl, double 2.500000e-01, double %.089869)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.afs = fdiv double %i.aeu, %i.aey
  %.sroa.0367.8.vec.extract = fmul double %i.afl, %i.afs
  %i.aft = fadd double %i.afm, %.sroa.0367.8.vec.extract
  %i.afu = fmul double %i.aft, 5.000000e-01
  %i.afv = fadd double %.089869, %i.afu
  br label %bb.by

bb.by:                                            ; preds = %bb.bu, %bb.bx, %bb.bw, %.preheader
  %.2 = phi double [ %.089869, %.preheader ], [ %i.afo, %bb.bu ], [ %i.afr, %bb.bw ], [ %i.afv, %bb.bx ] ; 2 uses
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next896, %.1.i
  br i1 %exitcond.not, label %._crit_edge871, label %.preheader, !llvm.loop !421

bb.bz:                                            ; preds = %._crit_edge871
  %i.afw = landingpad { ptr, i32 }
          catch ptr null
  %i.afx = extractvalue { ptr, i32 } %i.afw, 0
  call void @__clang_call_terminate(ptr %i.afx) #38
  unreachable

_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit: ; preds = %._crit_edge871
  %i.afy = getelementptr inbounds nuw i8, ptr %20, i64 104
  call void @_ZN4CGAL17Compact_containerINS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS2_NS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS1_IjS2_NS3_IS2_NS4_IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEEEEEEENS_7DefaultESF_SF_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.afy) #32
  %i.afz = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN4CGAL17Compact_containerINS_28Triangulation_ds_face_base_2INS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjNS_5EpickENS_27Triangulation_vertex_base_2IS4_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS1_IvEEEEEENS_7DefaultESD_SD_ED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.afz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %.not.i.i.i317 = icmp eq ptr %.sroa.0497.0.lcssa, null
  br i1 %.not.i.i.i317, label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit
  %i.aga = ptrtoint ptr %.sroa.14504.0.lcssa to i64
  %i.agb = ptrtoint ptr %.sroa.0497.0.lcssa to i64
  %i.agc = sub i64 %i.aga, %i.agb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0497.0.lcssa, i64 noundef %i.agc) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit: ; preds = %_ZN4CGAL15Triangulation_2INS_5EpickENS_30Triangulation_data_structure_2INS_37Triangulation_vertex_base_with_info_2IjS1_NS_27Triangulation_vertex_base_2IS1_NS_30Triangulation_ds_vertex_base_2IvEEEEEENS_28Triangulation_ds_face_base_2IvEEEEED2Ev.exit, %bb.ca
  %i.agd = load ptr, ptr %18, align 8, !tbaa !46
  call void @free(ptr noundef %i.agd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.age = load ptr, ptr %16, align 8, !tbaa !46
  call void @free(ptr noundef %i.age) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.agf = load ptr, ptr %13, align 8, !tbaa !46
  call void @free(ptr noundef %i.agf) #32
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
  %i.agg = ptrtoint ptr %.sroa.14504.0844 to i64
  %i.agh = ptrtoint ptr %.sroa.0497.0852 to i64
  %i.agi = sub i64 %i.agg, %i.agh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0497.0852, i64 noundef %i.agi) #40
  br label %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319

_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319: ; preds = %bb.cb, %bb.cc
  %i.agj = load ptr, ptr %18, align 8, !tbaa !46
  call void @free(ptr noundef %i.agj) #32
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319, %bb.ba
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %_ZNSt6vectorISt4pairIN4CGAL7Point_2INS1_5EpickEEEjESaIS5_EED2Ev.exit319 ], [ %i.ua, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.agk = load ptr, ptr %16, align 8, !tbaa !46
  call void @free(ptr noundef %i.agk) #32
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.body250
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn, %bb.cd ], [ %i.oi, %.body250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %15) #32
  br label %.body247

.body247:                                         ; preds = %bb.aq, %bb.ce
  %.pn190.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn, %bb.ce ], [ %i.nj, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.agl = load ptr, ptr %13, align 8, !tbaa !46
  call void @free(ptr noundef %i.agl) #32
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
  %i.agm = load ptr, ptr %7, align 8, !tbaa !46
  call void @free(ptr noundef %i.agm) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

bb.ci:                                            ; preds = %bb.am, %bb.cg, %bb.af
  %.pn198 = phi { ptr, i32 } [ %.pn147.pn.pn.pn.pn.pn.pn, %bb.am ], [ %.pn190.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.lw, %bb.af ]
  %i.agn = load ptr, ptr %7, align 8, !tbaa !46
  call void @free(ptr noundef %i.agn) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn198
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::IndexedView.206") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94, !noalias !461 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !95, !noalias !461 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !145

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37, !noalias !461
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39, !noalias !461
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !114, !noalias !461 ; 2 uses
  %.pre2.i = load ptr, ptr %i.a, align 8, !tbaa !114, !noalias !461
  %.pre3.i = ptrtoint ptr %.pre2.i to i64
  %.pre4.i = ptrtoint ptr %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi5.i = phi i64 [ %.pre4.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre3.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
end_hunk_0
