Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !91
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !537
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !529
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !538
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !91
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !537
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !529
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !538
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !91
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !537
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !529
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !538
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !91
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !537
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !529
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !538
  %i.dc = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.dd = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !1238

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bo, ptr %0, align 8, !tbaa !537
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bn, align 8, !tbaa !538
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i32, ptr %.pn20.i25, align 8, !tbaa !537 ; 2 uses
  %i.df = icmp slt i32 %i.bo, %i.de
  br i1 %i.df, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i.i32 ], [ %i.de, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dg, ptr %.sroa.06.010.i.i34, align 8, !tbaa !537
  %i.dh = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !529
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !538
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !537 ; 2 uses
  %i.dl = icmp slt i32 %i.bo, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !1239

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !537
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dm, align 8, !tbaa !538
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !1240

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
  %i.g = load i32, ptr %0, align 4, !tbaa !91
  store i32 %i.g, ptr %i.f, align 8, !tbaa !537
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !529
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !538
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !537
  %i.u = load i32, ptr %i.s, align 8, !tbaa !537
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91
  store i32 %i.y, ptr %i.x, align 8, !tbaa !537
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !529
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !538
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !91
  store i32 %i.am, ptr %i.al, align 8, !tbaa !537
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !529
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !538
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !537 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !537
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !529
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !538
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !537
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !538
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !1243

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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.q, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp slt i64 %.011, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !537
  %i.y = load i32, ptr %i.w, align 8, !tbaa !537
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !537
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !529
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !538
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !91
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !537
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !529
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !538
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.011
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !537 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.04.0.copyload
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !537
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !529
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !538
  %i.as = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !12

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.at, align 8, !tbaa !537
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.au, align 8, !tbaa !538
  %.not = icmp eq i64 %.011, 0
  %i.av = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1244

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
  %i.c = load i32, ptr %2, align 8, !tbaa !537
  store i32 %i.c, ptr %i.b, align 8, !tbaa !526
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !538
  store ptr %i.f, ptr %i.d, align 8, !tbaa !412
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
  %i.m = load i32, ptr %i.b, align 8, !tbaa !91
  %i.n = load i32, ptr %i.l, align 4, !tbaa !91
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !382
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !382
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7: ; preds = %.thread, %bb.e
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.e ]
  ret ptr %.sroa.011.015
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #38
  unreachable

_ZNKSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #39
  br label %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt3mapIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESt4lessIiESaISt4pairIKiS4_EEESaISB_EE11_M_allocateEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !379
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_:bb.a
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.n, label %bb.o, !prof !1833

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i43
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !598
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i42, %bb.m
  %.sroa.6.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn19.i28, i64 24
  %.sroa.6.0.copyload.i.i32 = load double, ptr %.sroa.6.0..sroa_idx.i.i31, align 8, !tbaa !128
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30
  %.sroa.09.0.i.i33 = phi ptr [ %.sroa.0.020.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread16.i30 ], [ %.sroa.0.0.i.i34, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41 ] ; 6 uses
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.09.0.i.i33, i64 -16 ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.09.0.i.i33, i64 -12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !625 ; 2 uses
  %i.aw = icmp slt i32 %i.af, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp eq i32 %i.af, %i.av
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40: ; preds = %bb.r
  %i.ay = load i32, ptr %.sroa.0.0.i.i34, align 8, !tbaa !624
  %i.az = icmp slt i32 %.sroa.03.0.copyload.i.pre.i29, %i.ay
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.thread.i.i41: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.0.i.i33, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i34, i64 16, i1 false), !tbaa.struct !598
  br label %bb.q, !llvm.loop !1830

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN3g2o14TripletColSortEEclINS2_12TripletEntryENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i.i40, %bb.r
  store i32 %.sroa.03.0.copyload.i.pre.i29, ptr %.sroa.09.0.i.i33, align 8, !tbaa !91
  %.sroa.5.0..sroa_idx5.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i33, i64 4
  store i32 %i.af, ptr %.sroa.5.0..sroa_idx5.i.i36, align 4, !tbaa !91
  %.sroa.6.0..sroa_idx7.i.i37 = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i33, i64 8
  store double %.sroa.6.0.copyload.i.i32, ptr %.sroa.6.0..sroa_idx7.i.i37, align 8, !tbaa !128
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i44
  %.sroa.0.0.i38 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i27, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %.sroa.0.0.i38, %1
  br i1 %.not.i39, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit, label %bb.l, !llvm.loop !1831

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_14TripletColSortEEEEvT_T0_.exit.i17, %.preheader.i23, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !91 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !598
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.a                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 3 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = sdiv i64 %i.i, 2
  %i.k = icmp sgt i64 %i.h, 2
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i
  %.040.i.i = phi i64 [ %i.z, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = shl i64 %.040.i.i, 1                     ; 2 uses
  %i.m = add i64 %i.l, 2                          ; 3 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !625  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !625  ; 2 uses
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.v = icmp eq i32 %i.r, %i.t
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i: ; preds = %bb.b
  %i.w = load i32, ptr %i.n, align 8, !tbaa !624
  %i.x = load i32, ptr %i.p, align 8, !tbaa !624
  %i.y = icmp slt i32 %i.w, %i.x
  %cond.fr.i.i = freeze i1 %i.y
  br i1 %cond.fr.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i, %bb.b
  %i.z = phi i64 [ %i.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i.i ], [ %i.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i.i ], [ %i.m, %bb.b ] ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.040.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !598
  %i.ac = icmp slt i64 %i.z, %i.j
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %i.z, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i.i ] ; 5 uses
  %i.ad = and i64 %i.g, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.h, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = shl nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !598
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.aj, %bb.d ], [ %.0.lcssa.i.i, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.03.0.copyload.i to i32
  %.sroa.012.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.03.0.copyload.i, 32
  %.sroa.012.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.012.sroa.3.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.am = icmp sgt i64 %.1.i.i, 0
  br i1 %i.am, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.e ] ; 4 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !625 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.sroa.012.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq i32 %i.ap, %.sroa.012.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i: ; preds = %bb.f
  %i.as = load i32, ptr %i.an, align 8, !tbaa !624
  %i.at = icmp slt i32 %i.as, %.sroa.012.sroa.0.0.extract.trunc.i.i.i
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !598
  %.not.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.020.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i.i ], [ %.020.i.i.i, %bb.f ]
  %i.av = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i, ptr %i.av, align 8, !tbaa !91
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store double %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !128
  %i.aw = icmp sgt i64 %i.g, 16
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !1834

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.au, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.o, align 8, !tbaa !91 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !128
  %i.p = icmp slt i64 %.010, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i
  %.040.i = phi i64 [ %i.ae, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i ], [ %.010, %bb.c ] ; 2 uses
  %i.q = shl i64 %.040.i, 1                       ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 3 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !625  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !625  ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i32 %i.w, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !624
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !624
  %i.ad = icmp slt i32 %i.ab, %i.ac
  %cond.fr.i = freeze i1 %i.ad
  br i1 %cond.fr.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i, %bb.d
  %i.ae = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.040.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !598
  %i.ah = icmp slt i64 %i.ae, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %i.ae, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread38.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !598
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.03.0.copyload to i32
  %.sroa.012.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.03.0.copyload, 32
  %.sroa.012.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.012.sroa.3.0.extract.shift.i.i to i32 ; 2 uses
  %i.aj = icmp sgt i64 %.1.i, %.010
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i
  %.020.i.i = phi i64 [ %.0921.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %0, i64 %.0921.i.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !625 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.012.sroa.3.0.extract.trunc.i.i
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp eq i32 %i.am, %.sroa.012.sroa.3.0.extract.trunc.i.i
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.ap = load i32, ptr %i.ak, align 8, !tbaa !624
  %i.aq = icmp slt i32 %i.ap, %.sroa.012.sroa.0.0.extract.trunc.i.i
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %.lr.ph.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !598
  %i.as = icmp sgt i64 %.0921.i.i, %.010
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, !llvm.loop !20

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.020.i.i, %bb.g ], [ %.0921.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i.i ], [ %.020.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i.i ]
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload, ptr %i.at, align 8, !tbaa !91
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !128
  %.not = icmp eq i64 %.010, 0
  %i.au = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1835

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %5 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %6 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %7 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %8 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %9 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !625  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !625  ; 6 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, %i.d
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !624
  %i.h = load i32, ptr %2, align 8, !tbaa !624
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !625  ; 4 uses
  %i.l = icmp slt i32 %i.d, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread
  %i.m = icmp eq i32 %i.d, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26: ; preds = %bb.c
  %i.n = load i32, ptr %2, align 8, !tbaa !624
  %i.o = load i32, ptr %3, align 8, !tbaa !624
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !598
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26
  %i.q = icmp slt i32 %i.b, %i.k
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31
  %i.r = icmp eq i32 %i.b, %i.k
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27: ; preds = %bb.d
  %i.s = load i32, ptr %1, align 8, !tbaa !624
  %i.t = load i32, ptr %3, align 8, !tbaa !624
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit26.thread31, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !598
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27.thread32: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !598
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !625  ; 4 uses
  %i.x = icmp slt i32 %i.b, %i.w
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread30
  %i.y = icmp eq i32 %i.b, %i.w
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28.thread33

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN3g2o14TripletColSortEEclINS_17__normal_iteratorIPNS2_12TripletEntryESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit28: ; preds = %bb.e
  %i.z = load i32, ptr %1, align 8, !tbaa !624
  %i.aa = load i32, ptr %3, align 8, !tbaa !624
  %i.ab = icmp slt i32 %i.z, %i.aa
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !91
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !732
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !704
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !733
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !91
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !732
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !704
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !733
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !91
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !732
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !704
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !733
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !91
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !732
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !704
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !733
  %i.dc = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.dd = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bo, ptr %0, align 8, !tbaa !732
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bn, align 8, !tbaa !733
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i32, ptr %.pn20.i25, align 8, !tbaa !732 ; 2 uses
  %i.df = icmp slt i32 %i.bo, %i.de
  br i1 %i.df, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i.i32 ], [ %i.de, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dg, ptr %.sroa.06.010.i.i34, align 8, !tbaa !732
  %i.dh = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !704
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !733
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !732 ; 2 uses
  %i.dl = icmp slt i32 %i.bo, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2205

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !732
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dm, align 8, !tbaa !733
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2206

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
  %i.g = load i32, ptr %0, align 4, !tbaa !91
  store i32 %i.g, ptr %i.f, align 8, !tbaa !732
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !704
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !733
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !732
  %i.u = load i32, ptr %i.s, align 8, !tbaa !732
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91
  store i32 %i.y, ptr %i.x, align 8, !tbaa !732
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !704
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !733
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !91
  store i32 %i.am, ptr %i.al, align 8, !tbaa !732
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !704
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !733
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !732 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !732
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !704
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !733
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !42

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !732
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !733
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !2209

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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.q, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp slt i64 %.011, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !732
  %i.y = load i32, ptr %i.w, align 8, !tbaa !732
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !732
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !704
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !733
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !91
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !732
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !704
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !733
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.011
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !732 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.04.0.copyload
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !732
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !704
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !733
  %i.as = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !42

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.at, align 8, !tbaa !732
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.au, align 8, !tbaa !733
  %.not = icmp eq i64 %.011, 0
  %i.av = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2210

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !732
  store i32 %i.c, ptr %i.b, align 8, !tbaa !694
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !733
  store ptr %i.f, ptr %i.d, align 8, !tbaa !676
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
  %i.m = load i32, ptr %i.b, align 8, !tbaa !91
  %i.n = load i32, ptr %i.l, align 4, !tbaa !91
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !382
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !382
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7: ; preds = %.thread, %bb.e
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.e ]
  ret ptr %.sroa.011.015
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !647  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !646    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !652
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !647
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !91
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !814
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !795
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !815
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !91
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !814
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !795
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !815
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !91
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !814
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !795
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !815
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !91
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !814
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !795
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !815
  %i.dc = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.dd = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2483

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bo, ptr %0, align 8, !tbaa !814
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bn, align 8, !tbaa !815
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i32, ptr %.pn20.i25, align 8, !tbaa !814 ; 2 uses
  %i.df = icmp slt i32 %i.bo, %i.de
  br i1 %i.df, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i.i32 ], [ %i.de, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dg, ptr %.sroa.06.010.i.i34, align 8, !tbaa !814
  %i.dh = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !795
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !815
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !814 ; 2 uses
  %i.dl = icmp slt i32 %i.bo, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2484

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !814
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dm, align 8, !tbaa !815
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2485

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
  %i.g = load i32, ptr %0, align 4, !tbaa !91
  store i32 %i.g, ptr %i.f, align 8, !tbaa !814
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !795
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !815
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !814
  %i.u = load i32, ptr %i.s, align 8, !tbaa !814
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91
  store i32 %i.y, ptr %i.x, align 8, !tbaa !814
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !815
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !52

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !91
  store i32 %i.am, ptr %i.al, align 8, !tbaa !814
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !795
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !815
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !814 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !814
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !795
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !815
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !53

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !814
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !815
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !2488

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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.q, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp slt i64 %.011, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !814
  %i.y = load i32, ptr %i.w, align 8, !tbaa !814
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !814
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !795
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !815
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !91
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !814
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !795
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !815
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.011
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !814 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.04.0.copyload
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !814
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !795
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !815
  %i.as = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !53

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.at, align 8, !tbaa !814
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.au, align 8, !tbaa !815
  %.not = icmp eq i64 %.011, 0
  %i.av = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2489

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !814
  store i32 %i.c, ptr %i.b, align 8, !tbaa !785
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !815
  store ptr %i.f, ptr %i.d, align 8, !tbaa !773
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
  %i.m = load i32, ptr %i.b, align 8, !tbaa !91
  %i.n = load i32, ptr %i.l, align 4, !tbaa !91
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !382
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !382
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7: ; preds = %.thread, %bb.e
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.e ]
  ret ptr %.sroa.011.015
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !749  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !748    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !754
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !749
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_:bb.a
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !91
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !937
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !910
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !938
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.cm = load i32, ptr %i.ck, align 8, !tbaa !91
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !937
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !910
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !938
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !91
  store i32 %i.cs, ptr %i.cr, align 8, !tbaa !937
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !910
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !938
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !91
  store i32 %i.cy, ptr %i.cx, align 8, !tbaa !937
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !910
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !938
  %i.dc = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.dd = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !2841

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bo, ptr %0, align 8, !tbaa !937
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bn, align 8, !tbaa !938
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = load i32, ptr %.pn20.i25, align 8, !tbaa !937 ; 2 uses
  %i.df = icmp slt i32 %i.bo, %i.de
  br i1 %i.df, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.dg = phi i32 [ %i.dk, %.lr.ph.i.i32 ], [ %i.de, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.sroa.09.021.i24, %bb.h ] ; 3 uses
  store i32 %i.dg, ptr %.sroa.06.010.i.i34, align 8, !tbaa !937
  %i.dh = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !910
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !938
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.dk = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !937 ; 2 uses
  %i.dl = icmp slt i32 %i.bo, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !2842

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.09.021.i24, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bo, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !937
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dm, align 8, !tbaa !938
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i24, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !2843

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
  %i.g = load i32, ptr %0, align 4, !tbaa !91
  store i32 %i.g, ptr %i.f, align 8, !tbaa !937
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !910
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !938
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !937
  %i.u = load i32, ptr %i.s, align 8, !tbaa !937
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !91
  store i32 %i.y, ptr %i.x, align 8, !tbaa !937
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !910
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !938
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !91
  store i32 %i.am, ptr %i.al, align 8, !tbaa !937
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !910
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !938
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !937 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !937
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !910
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !938
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !63

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !937
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !938
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !2846

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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.q, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = icmp slt i64 %.011, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.s = shl i64 %.038.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 8, !tbaa !937
  %i.y = load i32, ptr %i.w, align 8, !tbaa !937
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i = select i1 %i.z, i64 %i.v, i64 %i.t ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !91
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !937
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !910
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !938
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !91
  store i32 %i.ai, ptr %i.n, align 8, !tbaa !937
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !910
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !938
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ak = icmp sgt i64 %.1.i, %.011
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !937 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.sroa.04.0.copyload
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !937
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !910
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !938
  %i.as = icmp sgt i64 %.0921.i.i, %.011
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, !llvm.loop !63

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload, ptr %i.at, align 8, !tbaa !937
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.au, align 8, !tbaa !938
  %.not = icmp eq i64 %.011, 0
  %i.av = add nsw i64 %.011, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2847

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE22_M_emplace_hint_uniqueIJRS0_IiS5_EEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8, !tbaa !937
  store i32 %i.c, ptr %i.b, align 8, !tbaa !900
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !938
  store ptr %i.f, ptr %i.d, align 8, !tbaa !888
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
  %i.m = load i32, ptr %i.b, align 8, !tbaa !91
  %i.n = load i32, ptr %i.l, align 4, !tbaa !91
  %i.o = icmp slt i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !382
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !382
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #36
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE10_Auto_nodeD2Ev.exit7: ; preds = %.thread, %bb.e
  %.sroa.011.015 = phi ptr [ %i.a, %.thread ], [ %i.h, %bb.e ]
  ret ptr %.sroa.011.015
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !865  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !864    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !870
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !865
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #38
  unreachable

_ZNKSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS6_EESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #39 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

end_hunk_4
