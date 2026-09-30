Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2538
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEESG_SG_SG_T0_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %0, align 8, !tbaa !84
  store i64 %i.ac, ptr %0, align 8, !tbaa !84
  store i64 %i.j, ptr %i.ad, align 8, !tbaa !84
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !84
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp slt i64 %i.l, %i.o
  %i.ag = load i64, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !84
  store i64 %i.ai, ptr %0, align 8, !tbaa !84
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !84
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !84
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !84
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !84
  store i64 %i.aj, ptr %i.n, align 8, !tbaa !84
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.f, align 8, !tbaa !84
  store i64 %i.al, ptr %0, align 8, !tbaa !84
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !84
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !84
  store i64 %i.l, ptr %i.ah, align 8, !tbaa !84
  store i64 %i.am, ptr %i.k, align 8, !tbaa !84
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit
  %.sroa.010.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit ], [ %i.as, %bb.o ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_SG_T0_.exit ], [ %.sroa.0.1.i, %bb.o ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %bb.l ], [ %i.as, %bb.m ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !107
  %i.ar = icmp slt i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.m, label %.preheader.i.preheader, !llvm.loop !1877

.preheader.i.preheader:                           ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !107
  %i.aw = icmp slt i64 %i.ao, %i.av
  br i1 %i.aw, label %.preheader.i, label %bb.n, !llvm.loop !1878

bb.n:                                             ; preds = %.preheader.i
  %i.ax = icmp ult ptr %.sroa.010.1.i, %.sroa.0.1.i
  br i1 %i.ax, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEESG_SG_SG_SG_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %i.az = load i64, ptr %.sroa.010.1.i, align 8, !tbaa !84
  %i.ba = load i64, ptr %.sroa.0.1.i, align 8, !tbaa !84
  store i64 %i.ba, ptr %.sroa.010.1.i, align 8, !tbaa !84
  store i64 %i.az, ptr %.sroa.0.1.i, align 8, !tbaa !84
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !84
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !84
  store i64 %i.bc, ptr %i.at, align 8, !tbaa !84
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !84
  br label %bb.l, !llvm.loop !1879

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEESG_SG_SG_SG_T0_.exit: ; preds = %bb.n
  ret ptr %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %i.h = load i64, ptr %0, align 8, !tbaa !84
  store i64 %i.h, ptr %i.f, align 8, !tbaa !106
  %i.i = load i64, ptr %i.e, align 8, !tbaa !84
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !107
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107
  %i.y = icmp slt i64 %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !84
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !84
  %i.ac = icmp slt i64 %spec.select.i.i, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !40

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.k, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.l, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !84
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !84
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %.sroa.4.0.copyload.i
  br i1 %i.aq, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !tbaa !84
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !107
  %.not10.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store <2 x i64> %i.g, ptr %i.au, align 8, !tbaa !84
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !1880

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = load <2 x i64>, ptr %i.o, align 8
  %i.q = icmp slt i64 %.010, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !107
  %i.aa = icmp slt i64 %i.x, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.u, i64 %i.s ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !tbaa !84
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !84
  %i.ae = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !40

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ag = load <2 x i64>, ptr %i.m, align 8, !tbaa !84
  store <2 x i64> %i.ag, ptr %i.n, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ah = icmp sgt i64 %.1.i, %.010
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %i.al = icmp slt i64 %i.ak, %.sroa.4.0.copyload
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !84
  store i64 %i.an, ptr %i.am, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !107
  %i.ap = icmp sgt i64 %.0921.i.i, %.010
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit, !llvm.loop !41

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x i64> %i.p, ptr %i.aq, align 8, !tbaa !84
  %.not = icmp eq i64 %.010, 0
  %i.ar = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1881

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixINSB_6SXElemEEEEExRKT_SI_SI_RKS5_IxSaIxEESM_SM_SM_SM_SM_RSK_SN_SN_SN_EUlRKS3_SP_E_EEEvSG_T0_SS_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367
  tail call void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !366  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1882

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi9SubMatrixINS_6MatrixINS_6SXElemEEENS_5SliceExEC2ERS3_RKS4_RKx(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::Matrix.23", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6casadi8SparsityC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %3, align 8, !tbaa !84     ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = sitofp i64 %i.f to double
  invoke void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %4, double noundef %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6casadi6MatrixINS_6SXElemEE3getERS2_bRKNS_5SliceERKNS0_IxEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN6casadi8SparsityEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i)
          to label %_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #27
  unreachable

_ZSt8_DestroyIN6casadi8SparsityEEvPT_.exit.i:     ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN6casadi8SparsityEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !11

end_hunk_0
