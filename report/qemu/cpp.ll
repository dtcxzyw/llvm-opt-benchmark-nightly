Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpp?download=true
inline.NumInlined: 552
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_:bb.a

.lr.ph.i.i.i.i.i.i32.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i.preheader.i31
  %.010.i.i.i.i.i.i33.unr = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.ck, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.069.i.i.i.i.i.i34.unr = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.cf, %.lr.ph.i.i.i.i.i.i32.prol ]
  %.078.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.08.019.i21, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i32.prol ]
  %i.cl = icmp ult i64 %i.cb, 4
  br i1 %i.cl, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32
  %.010.i.i.i.i.i.i33 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.i32 ], [ %.010.i.i.i.i.i.i33.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i34 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i32 ], [ %.069.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i35 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i32 ], [ %.078.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i32.prol.loopexit ] ; 8 uses
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -16
  %i.co = load i64, ptr %i.cm, align 8
  store i64 %i.co, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -8
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -8
  store i64 %i.cq, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -32
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -32
  %i.cu = load i64, ptr %i.cs, align 8
  store i64 %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -24
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -48
  %i.cz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -48
  %i.da = load i64, ptr %i.cy, align 8
  store i64 %i.da, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -40
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -40
  store i64 %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -64 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -64 ; 2 uses
  %i.dg = load i64, ptr %i.de, align 8
  store i64 %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35, i64 -56
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34, i64 -56
  store i64 %i.di, ptr %i.dj, align 8
  %i.dk = add nsw i64 %.010.i.i.i.i.i.i33, -4
  %i.dl = icmp sgt i64 %.010.i.i.i.i.i.i33, 4
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, !llvm.loop !30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30: ; preds = %.lr.ph.i.i.i.i.i.i32.prol.loopexit, %.lr.ph.i.i.i.i.i.i32, %bb.g
  store i64 %.sroa.0.0.copyload.i23, ptr %0, align 8
  store i64 %i.bw, ptr %i.bu, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 8
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = icmp ugt i64 %i.bw, %i.dn
  br i1 %i.do, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i24

.lr.ph.i.i27:                                     ; preds = %bb.h, %.lr.ph.i.i27
  %i.dp = phi i64 [ %i.dt, %.lr.ph.i.i27 ], [ %i.dn, %bb.h ]
  %.sroa.05.08.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.08.019.i21, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i28, i64 -16 ; 3 uses
  %i.dq = load i64, ptr %.sroa.0.0.i.i29, align 8
  store i64 %i.dq, ptr %.sroa.05.08.i.i28, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i28, i64 8
  store i64 %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds i8, ptr %.sroa.05.08.i.i28, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp ugt i64 %i.bw, %i.dt
  br i1 %i.du, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i24, !llvm.loop !31

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i24: ; preds = %.lr.ph.i.i27, %bb.h
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.08.019.i21, %bb.h ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i23, ptr %.sroa.05.0.lcssa.i.i25, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i25, i64 8
  store i64 %i.bw, ptr %i.dv, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30
  %.sroa.08.0.i26 = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i21, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %.sroa.08.0.i26, %1
  br i1 %i.dw, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %bb.f, !llvm.loop !32

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_.exit.i13, %.preheader.i18, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SF_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress sspstrong uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SF_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
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
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x i64>, ptr %0, align 8
  store i64 %i.q, ptr %0, align 8
  store i64 %i.l, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ugt i64 %i.j, %i.o
  %i.u = load i64, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8
  store i64 %i.w, ptr %0, align 8
  store i64 %i.u, ptr %i.h, align 8
  %i.x = load i64, ptr %i.v, align 8
  %i.y = load i64, ptr %i.n, align 8
  store i64 %i.y, ptr %i.v, align 8
  store i64 %i.x, ptr %i.n, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.g, align 8
  store i64 %i.z, ptr %0, align 8
  store i64 %i.u, ptr %i.g, align 8
  %i.aa = load i64, ptr %i.v, align 8
  store i64 %i.j, ptr %i.v, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp ugt i64 %i.j, %i.o
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %0, align 8
  store i64 %i.ac, ptr %0, align 8
  store i64 %i.j, ptr %i.ad, align 8
  store <2 x i64> %i.ae, ptr %i.g, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp ugt i64 %i.l, %i.o
  %i.ag = load i64, ptr %0, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.h, align 8
  store i64 %i.ai, ptr %0, align 8
  store i64 %i.ag, ptr %i.h, align 8
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = load i64, ptr %i.n, align 8
  store i64 %i.ak, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.n, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.f, align 8
  store i64 %i.al, ptr %0, align 8
  store i64 %i.ag, ptr %i.f, align 8
  %i.am = load i64, ptr %i.ah, align 8
  store i64 %i.l, ptr %i.ah, align 8
  store i64 %i.am, ptr %i.k, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit
  %.sroa.012.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit ], [ %i.as, %bb.o ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_.exit ], [ %.sroa.0.1.i, %bb.o ]
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %bb.l ], [ %i.as, %bb.m ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = icmp ugt i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.m, label %.preheader.i, !llvm.loop !36

.preheader.i:                                     ; preds = %bb.m, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ugt i64 %i.ao, %i.au
  br i1 %i.av, label %.preheader.i, label %bb.n, !llvm.loop !37

bb.n:                                             ; preds = %.preheader.i
  %.not.i = icmp ult ptr %.sroa.012.1.i, %.sroa.0.1.i
  br i1 %.not.i, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SC_SF_.exit

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8 ; 2 uses
  %i.ax = load i64, ptr %.sroa.012.1.i, align 8
  %i.ay = load i64, ptr %.sroa.0.1.i, align 8
  store i64 %i.ay, ptr %.sroa.012.1.i, align 8
  store i64 %i.ax, ptr %.sroa.0.1.i, align 8
  %i.az = load i64, ptr %2, align 8
  %i.ba = load i64, ptr %i.aw, align 8
  store i64 %i.ba, ptr %2, align 8
  store i64 %i.az, ptr %i.aw, align 8
  br label %bb.l, !llvm.loop !38

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEESC_SC_SC_SC_SF_.exit: ; preds = %bb.n
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %i.h = load i64, ptr %0, align 8
  store i64 %i.h, ptr %i.f, align 8
  %i.i = load i64, ptr %i.e, align 8
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
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
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ugt i64 %i.v, %i.x
  %spec.select.i.i = select i1 %i.y, i64 %i.s, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i
  %i.ab = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ab, ptr %i.aa, align 8
  %i.ac = icmp slt i64 %spec.select.i.i, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

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
  %i.am = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.am, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, %.sroa.5.0.copyload.i
  br i1 %i.aq, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  %i.as = load i64, ptr %i.an, align 8
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ap, ptr %i.at, align 8
  %.not10.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store <2 x i64> %i.g, ptr %i.au, align 8
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
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
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp ugt i64 %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  %i.ae = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.ae, ptr %i.ad, align 8
  %i.af = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.ah, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i, %.010
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6Plugin7at_exitEvEUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ugt i64 %i.al, %.sroa.5.0.copyload
end_hunk_0
