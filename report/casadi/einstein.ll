Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/einstein?download=true
inline.NumInlined: 1464
inline.NumDeleted: 489
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_:bb.a

.lr.ph.i.i.i.i.i.i35.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i35.prol, %.lr.ph.i.i.i.i.i.preheader.i34
  %.010.i.i.i.i.i.i36.unr = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i35.prol ]
  %.069.i.i.i.i.i.i37.unr = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i35.prol ]
  %.078.i.i.i.i.i.i38.unr = phi ptr [ %.sroa.08.020.i23, %.lr.ph.i.i.i.i.i.preheader.i34 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i35.prol ]
  %i.ch = icmp ult i64 %i.bx, 4
  br i1 %i.ch, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33, label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i.i35
  %.010.i.i.i.i.i.i36 = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i35 ], [ %.010.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i35.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i37 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i35 ], [ %.069.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i35.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i38 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i35 ], [ %.078.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i35.prol.loopexit ] ; 8 uses
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -16
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -16
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !23
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !65
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !64
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -32
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -32
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !23
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !65
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !23
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -24
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !64
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -48
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -48
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !23
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !65
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.cz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -40
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !64
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -64 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -64 ; 2 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !23
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !65
  %i.dd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i38, i64 -56
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !23
  %i.df = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i37, i64 -56
  store i64 %i.de, ptr %i.df, align 8, !tbaa !64
  %i.dg = add nsw i64 %.010.i.i.i.i.i.i36, -4
  %i.dh = icmp sgt i64 %.010.i.i.i.i.i.i36, 4
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i35, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33, !llvm.loop !219

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33: ; preds = %.lr.ph.i.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i.i35, %bb.g
  store i64 %.sroa.0.0.copyload.i25, ptr %0, align 8, !tbaa !65
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !64 ; 2 uses
  %i.dk = icmp slt i64 %i.bs, %i.dj
  br i1 %i.dk, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_.exit.i26

.lr.ph.i.i30:                                     ; preds = %bb.h, %.lr.ph.i.i30
  %i.dl = phi i64 [ %i.dp, %.lr.ph.i.i30 ], [ %i.dj, %bb.h ]
  %.sroa.05.08.i.i31 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ], [ %.sroa.08.020.i23, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i31, i64 -16 ; 3 uses
  %i.dm = load i64, ptr %.sroa.0.0.i.i32, align 8, !tbaa !23
  store i64 %i.dm, ptr %.sroa.05.08.i.i31, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i31, i64 8
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !64
  %i.do = getelementptr inbounds i8, ptr %.sroa.05.08.i.i31, i64 -24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !64 ; 2 uses
  %i.dq = icmp slt i64 %i.bs, %i.dp
  br i1 %i.dq, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_.exit.i26, !llvm.loop !220

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_.exit.i26: ; preds = %.lr.ph.i.i30, %bb.h
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.08.020.i23, %bb.h ], [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i25, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !65
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i27, i64 8
  store i64 %i.bs, ptr %i.dr, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33
  %.sroa.08.0.i28 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i23, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %.sroa.08.0.i28, %1
  br i1 %.not.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_.exit, label %bb.f, !llvm.loop !221

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_.exit.i13, %.preheader.i19, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEESE_SE_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64   ; 5 uses
  %i.m = icmp slt i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64   ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = icmp slt i64 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x i64>, ptr %0, align 8, !tbaa !23
  store i64 %i.q, ptr %0, align 8, !tbaa !23
  store i64 %i.l, ptr %i.r, align 8, !tbaa !23
  store <2 x i64> %i.s, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.j, %i.o
  %i.u = load i64, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !23
  store i64 %i.w, ptr %0, align 8, !tbaa !23
  store i64 %i.u, ptr %i.h, align 8, !tbaa !23
  %i.x = load i64, ptr %i.v, align 8, !tbaa !23
  %i.y = load i64, ptr %i.n, align 8, !tbaa !23
  store i64 %i.y, ptr %i.v, align 8, !tbaa !23
  store i64 %i.x, ptr %i.n, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.g, align 8, !tbaa !23
  store i64 %i.z, ptr %0, align 8, !tbaa !23
  store i64 %i.u, ptr %i.g, align 8, !tbaa !23
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !23
  store i64 %i.j, ptr %i.v, align 8, !tbaa !23
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i64 %i.j, %i.o
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %0, align 8, !tbaa !23
  store i64 %i.ac, ptr %0, align 8, !tbaa !23
  store i64 %i.j, ptr %i.ad, align 8, !tbaa !23
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp slt i64 %i.l, %i.o
  %i.ag = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !23
  store i64 %i.ai, ptr %0, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !23
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !23
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !23
  store i64 %i.aj, ptr %i.n, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.f, align 8, !tbaa !23
  store i64 %i.al, ptr %0, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !23
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !23
  store i64 %i.l, ptr %i.ah, align 8, !tbaa !23
  store i64 %i.am, ptr %i.k, align 8, !tbaa !23
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit
  %.sroa.010.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit ], [ %i.as, %bb.o ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_SE_T0_.exit ], [ %.sroa.0.1.i, %bb.o ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %bb.l ], [ %i.as, %bb.m ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !64
  %i.ar = icmp slt i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.m, label %.preheader.i.preheader, !llvm.loop !224

.preheader.i.preheader:                           ; preds = %bb.m
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !64
  %i.av = icmp slt i64 %i.ao, %i.au
  br i1 %i.av, label %.preheader.i, label %bb.n, !llvm.loop !225

bb.n:                                             ; preds = %.preheader.i
  %i.aw = icmp ult ptr %.sroa.010.1.i, %.sroa.0.1.i
  br i1 %i.aw, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEESE_SE_SE_SE_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %.sroa.010.1.i, align 8, !tbaa !23
  %i.az = load i64, ptr %.sroa.0.1.i, align 8, !tbaa !23
  store i64 %i.az, ptr %.sroa.010.1.i, align 8, !tbaa !23
  store i64 %i.ay, ptr %.sroa.0.1.i, align 8, !tbaa !23
  %i.ba = load i64, ptr %2, align 8, !tbaa !23
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !23
  store i64 %i.bb, ptr %2, align 8, !tbaa !23
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !23
  br label %bb.l, !llvm.loop !226

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEESE_SE_SE_SE_T0_.exit: ; preds = %bb.n
  ret ptr %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %i.h = load i64, ptr %0, align 8, !tbaa !23
  store i64 %i.h, ptr %i.f, align 8, !tbaa !65
  %i.i = load i64, ptr %i.e, align 8, !tbaa !23
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !64
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
  %i.v = load i64, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp slt i64 %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !23
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !23
  %i.ac = icmp slt i64 %spec.select.i.i, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

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
  %i.am = load <2 x i64>, ptr %i.ak, align 8, !tbaa !23
  store <2 x i64> %i.am, ptr %i.al, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.aq = icmp slt i64 %i.ap, %.sroa.4.0.copyload.i
  br i1 %i.aq, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !tbaa !23
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ap, ptr %i.at, align 8, !tbaa !64
  %.not10.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store <2 x i64> %i.g, ptr %i.au, align 8, !tbaa !23
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_SE_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.q = load <2 x i64>, ptr %i.p, align 8
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64
  %i.ab = icmp slt i64 %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !23
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !23
  %i.af = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = load <2 x i64>, ptr %i.n, align 8, !tbaa !23
  store <2 x i64> %i.ah, ptr %i.o, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i, %.010
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %i.am = icmp slt i64 %i.al, %.sroa.4.0.copyload
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !23
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !64
  %i.aq = icmp sgt i64 %.0921.i.i, %.010
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit, !llvm.loop !3

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x i64> %i.q, ptr %i.ar, align 8, !tbaa !23
  %.not = icmp eq i64 %.010, 0
  %i.as = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !228

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_2MXEEExRKT_SG_SG_RKS5_IxSaIxEESK_SK_SK_SK_SK_RSI_SL_SL_SL_EUlRKS3_SN_E_EEEvSE_T0_SQ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIxSaIxEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !23
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !17
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #21
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #22 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store i64 0, ptr %i.x, align 8, !tbaa !23
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !23
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #23
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36: ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  tail call void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi13einstein_evalIdEEvxRKSt6vectorIxSaIxEES5_S5_S5_PKT_S8_PS6_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = icmp sgt i64 %i.g, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !20    ; 5 uses
  %.pre218 = load ptr, ptr %3, align 8, !tbaa !20 ; 5 uses
  %.pre219 = load ptr, ptr %4, align 8, !tbaa !20 ; 5 uses
  br i1 %i.h, label %bb.c, label %.thread151

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 %i.f     ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre218, i64 %i.f
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre219, i64 %i.f
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  %.not168 = icmp eq i64 %i.f, 8
  br i1 %.not168, label %.thread151, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.t
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.g, 2
  br i1 %i.aa, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ad = add nsw i64 %i.g, -2                    ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre218, i64 %i.ad
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre219, i64 %i.ad
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !23
  br label %.thread151

.thread151:                                       ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.0129167 = phi i64 [ %i.z, %bb.e ], [ %i.z, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0130166 = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0131165 = phi i64 [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0136164 = phi i64 [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0135147163 = phi i64 [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ 1, %bb.b ] ; 10 uses
  %.0128148162 = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0127149161 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0126150160 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %.0137 = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %.0134 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0133 = phi i64 [ %i.ah, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.0132 = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre218, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre219, i64 8 ; 3 uses
  %i.an = load i64, ptr %.pre, align 8, !tbaa !23
  %i.ao = getelementptr inbounds [8 x i8], ptr %5, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %.pre218, align 8, !tbaa !23
  %i.aq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ap ; 3 uses
  %i.ar = load i64, ptr %.pre219, align 8, !tbaa !23
  %i.as = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ar ; 3 uses
  %i.at = mul i64 %.0135147163, %.0136164
  %i.au = mul i64 %i.at, %.0137
  %i.av = sdiv i64 %0, %i.au                      ; 3 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.preheader171.lr.ph, label %.loopexit

.preheader171.lr.ph:                              ; preds = %.thread151
  %i.ax = icmp sgt i64 %i.g, 3
  %i.ay = icmp slt i64 %.0137, 1
  %i.az = icmp slt i64 %.0136164, 1
  %i.ba = icmp slt i64 %.0135147163, 1            ; 2 uses
  %brmerge231 = or i1 %i.ay, %i.az                ; 2 uses
  br i1 %i.ax, label %.preheader171.lr.ph.split.us, label %.preheader171.lr.ph.split

.preheader171.lr.ph.split.us:                     ; preds = %.preheader171.lr.ph
  br i1 %brmerge231, label %.loopexit, label %.preheader171.us.us.us.preheader

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us
  %i.bb = add nsw i64 %i.g, -3                    ; 3 uses
  %xtraiter240 = and i64 %i.bb, 1
  %i.bc = icmp eq i64 %i.f, 32
  %unroll_iter246 = and i64 %i.bb, -2
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod245 = trunc i64 %i.bb to i1
  %xtraiter249 = and i64 %.0135147163, 1
  %i.bd = icmp eq i64 %.0135147163, 1
  %unroll_iter252 = and i64 %.0135147163, 9223372036854775806
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod251 = trunc i64 %.0135147163 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge196.split197.us.us.us
  %.0125198.us.us.us = phi i64 [ %i.eb, %._crit_edge196.split197.us.us.us ], [ 0, %.preheader171.us.us.us.preheader ] ; 3 uses
  br i1 %i.bc, label %.epil.preheader239, label %.preheader171.us.us.us.new

end_hunk_0
