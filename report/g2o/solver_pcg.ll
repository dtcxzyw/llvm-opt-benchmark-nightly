inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !699 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !699
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !675
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !701
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !699 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !743

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !699
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !701
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !745

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !699 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !699
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !699
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !675
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !701
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !746

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !699
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !675
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !701
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !699
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !675
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !701
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !699
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !675
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !701
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !699
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !675
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !701
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !742

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !699
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !701
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !699 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !699
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !675
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !701
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !699 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !743

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !699
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !701
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !744

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !699
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !675
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !701
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !699
  %i.t = load i32, ptr %i.r, align 8, !tbaa !699
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !699
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !675
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !701
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !747

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !699
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !675
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !701
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !699 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !699
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !675
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !701
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !748

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !699
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !701
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !749

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !699
  %i.z = load i32, ptr %i.x, align 8, !tbaa !699
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !699
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !675
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !701
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !747

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !699
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !675
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !701
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !699 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !699
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !675
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !701
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !748

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !699
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !701
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !750

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !699
  store i32 %i.c, ptr %i.b, align 8, !tbaa !664
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !701
  store ptr %i.f, ptr %i.d, align 8, !tbaa !409
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !373
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !373
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1889 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !1889
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1750
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1891
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !1889 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !1932

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !1889
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !1891
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !1934

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !1889 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !1889
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !1889
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1750
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1891
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !1935

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !1889
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1750
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !1891
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !1889
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1750
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1891
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !1889
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1750
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !1891
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !1889
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1750
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1891
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !1931

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !1889
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !1891
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !1889 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !1889
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1750
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !1891
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !1889 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !1932

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !1889
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !1891
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !1933

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !1889
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1750
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !1891
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !1889
  %i.t = load i32, ptr %i.r, align 8, !tbaa !1889
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !1889
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1750
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1891
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1936

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !1889
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1750
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !1891
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1889 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !1889
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1750
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1891
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !1937

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !1889
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !1891
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !1938

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !1889
  %i.z = load i32, ptr %i.x, align 8, !tbaa !1889
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !1889
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1750
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1891
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1936

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !1889
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !1750
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !1891
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1889 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !1889
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1750
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1891
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !1937

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !1889
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !1891
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1939

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !1889
  store i32 %i.c, ptr %i.b, align 8, !tbaa !1737
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1891
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1708
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !373
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !373
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2266 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2266
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2147
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2268
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2266 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2306

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2266
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2268
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2308

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2266 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2266
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2266
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2147
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2268
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2309

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2266
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2147
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2268
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !2266
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2147
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2268
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !2266
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2147
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2268
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !2266
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2147
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2268
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2305

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !2266
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !2268
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !2266 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !2266
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2147
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2268
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !2266 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2306

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !2266
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !2268
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2307

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !2266
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2147
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !2268
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !2266
  %i.t = load i32, ptr %i.r, align 8, !tbaa !2266
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !2266
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2147
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2268
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2310

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !2266
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2147
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2268
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2266 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !2266
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2147
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !2268
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !2311

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !2266
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !2268
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !2312

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !2266
  %i.z = load i32, ptr %i.x, align 8, !tbaa !2266
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !2266
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2268
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2310

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !2266
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !2147
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !2268
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2266 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !2266
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2147
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2268
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !2311

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !2266
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !2268
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2313

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !2266
  store i32 %i.c, ptr %i.b, align 8, !tbaa !2134
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2268
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2113
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !373
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !373
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2759 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2759
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2646
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2761
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2759 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2759
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2761
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2801

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2759 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2759
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2759
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2646
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2761
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2802

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.ce = icmp ult i64 %i.bu, 4
  br i1 %i.ce, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !2759
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2646
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2761
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !32
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !2759
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2646
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2761
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.ct = load i32, ptr %i.cr, align 8, !tbaa !32
  store i32 %i.ct, ptr %i.cs, align 8, !tbaa !2759
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2646
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2761
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !32
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !2759
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2646
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2761
  %i.dd = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.de = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2798

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bp, ptr %0, align 8, !tbaa !2759
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bo, align 8, !tbaa !2761
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.df = load i32, ptr %.pn20.i25, align 8, !tbaa !2759 ; 2 uses
  %i.dg = icmp slt i32 %i.bp, %i.df
  br i1 %i.dg, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dh = phi i32 [ %i.dl, %.lr.ph.i.i32 ], [ %i.df, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dh, ptr %.sroa.06.010.i.i34, align 8, !tbaa !2759
  %i.di = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !2646
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !2761
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dl = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !2759 ; 2 uses
  %i.dm = icmp slt i32 %i.bp, %i.dl
  br i1 %i.dm, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2799

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bp, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !2759
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dn, align 8, !tbaa !2761
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2800

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !2759
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2646
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !2761
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %3 = lshr i64 %i.l, 1
  %i.m = icmp sgt i64 %i.k, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 8, !tbaa !2759
  %i.t = load i32, ptr %i.r, align 8, !tbaa !2759
  %i.u = icmp slt i32 %i.s, %i.t
  %spec.select.i.i = select i1 %i.u, i64 %i.q, i64 %i.o ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !32
  store i32 %i.x, ptr %i.w, align 8, !tbaa !2759
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2646
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !2761
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2803

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.j, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.k, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !32
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !2759
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2646
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2761
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2759 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %.sroa.04.0.copyload.i
  br i1 %i.ar, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.aq, ptr %i.as, align 8, !tbaa !2759
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2646
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !2761
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !2804

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.aw, align 8, !tbaa !2759
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ax, align 8, !tbaa !2761
  %i.ay = icmp sgt i64 %i.j, 16
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !2805

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !2759
  %i.z = load i32, ptr %i.x, align 8, !tbaa !2759
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !32
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !2759
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2646
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2761
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2803

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !2759
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !2646
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !2761
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2759 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.sroa.04.0.copyload
  br i1 %i.ao, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.an, ptr %i.ap, align 8, !tbaa !2759
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2646
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !2761
  %i.at = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !2804

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.au, align 8, !tbaa !2759
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.av, align 8, !tbaa !2761
  %.not = icmp eq i64 %.011, 0
  %i.aw = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2806

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !2759
  store i32 %i.c, ptr %i.b, align 8, !tbaa !2633
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2761
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2612
  %i.g = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !32
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !373
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !373
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
end_hunk_3
