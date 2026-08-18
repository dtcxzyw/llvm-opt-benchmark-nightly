inline.NumInlined: 1619
inline.NumDeleted: 787
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !60   ; 8 uses
  %i.e = icmp eq i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.k = icmp eq i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.split, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.split:                                           ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !tbaa !60
  %i.n = load i64, ptr %2, align 8, !tbaa !60
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.j

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.a, %bb.b
  %.sroa.06.0.i.i.i = phi i1 [ %i.f, %bb.a ], [ %i.l, %bb.b ]
  br i1 %.sroa.06.0.i.i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !60   ; 5 uses
  %i.r = icmp eq i64 %i.d, %i.q
  %i.s = icmp ult i64 %i.d, %i.q
  br i1 %i.r, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.split34, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27

.split34:                                         ; preds = %bb.d
  %i.z = load i64, ptr %2, align 8, !tbaa !60
  %i.aa = load i64, ptr %3, align 8, !tbaa !60
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27: ; preds = %bb.c, %bb.d
  %.sroa.06.0.i.i.i26 = phi i1 [ %i.s, %bb.c ], [ %i.y, %bb.d ]
  br i1 %.sroa.06.0.i.i.i26, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split34, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !60
  store i64 %i.d, ptr %i.ac, align 8, !tbaa !60
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !60
  br label %bb.q

bb.f:                                             ; preds = %.split34, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ae = icmp eq i64 %i.c, %i.q
  %i.af = icmp ult i64 %i.c, %i.q
  br i1 %i.ae, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.split35, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

.split35:                                         ; preds = %bb.g
  %i.am = load i64, ptr %1, align 8, !tbaa !60
  %i.an = load i64, ptr %3, align 8, !tbaa !60
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29: ; preds = %bb.f, %bb.g
  %.sroa.06.0.i.i.i28 = phi i1 [ %i.af, %bb.f ], [ %i.al, %bb.g ]
  br i1 %.sroa.06.0.i.i.i28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !60
  store i64 %i.q, ptr %i.ap, align 8, !tbaa !60
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !60
  br label %bb.q

bb.i:                                             ; preds = %.split35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !60
  store i64 %i.c, ptr %i.ar, align 8, !tbaa !60
  store i64 %i.as, ptr %i.a, align 8, !tbaa !60
  br label %bb.q

bb.j:                                             ; preds = %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !60 ; 5 uses
  %i.av = icmp eq i64 %i.c, %i.au
  %i.aw = icmp ult i64 %i.c, %i.au
  br i1 %i.av, label %bb.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %.split36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

.split36:                                         ; preds = %bb.k
  %i.bd = load i64, ptr %1, align 8, !tbaa !60
  %i.be = load i64, ptr %3, align 8, !tbaa !60
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %bb.m

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31: ; preds = %bb.j, %bb.k
  %.sroa.06.0.i.i.i30 = phi i1 [ %i.aw, %bb.j ], [ %i.bc, %bb.k ]
  br i1 %.sroa.06.0.i.i.i30, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !60
  store i64 %i.c, ptr %i.bg, align 8, !tbaa !60
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !60
  br label %bb.q

bb.m:                                             ; preds = %.split36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bi = icmp eq i64 %i.d, %i.au
  %i.bj = icmp ult i64 %i.d, %i.au
  br i1 %i.bi, label %bb.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !60 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !60 ; 2 uses
  %i.bo = icmp eq i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.split37, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

.split37:                                         ; preds = %bb.n
  %i.bq = load i64, ptr %2, align 8, !tbaa !60
  %i.br = load i64, ptr %3, align 8, !tbaa !60
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %bb.p

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33: ; preds = %bb.m, %bb.n
  %.sroa.06.0.i.i.i32 = phi i1 [ %i.bj, %bb.m ], [ %i.bp, %bb.n ]
  br i1 %.sroa.06.0.i.i.i32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split37, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !60
  store i64 %i.au, ptr %i.bt, align 8, !tbaa !60
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !60
  br label %bb.q

bb.p:                                             ; preds = %.split37, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !60
  store i64 %i.d, ptr %i.bv, align 8, !tbaa !60
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.e, %bb.i, %bb.h
  %.sink = phi ptr [ %1, %bb.l ], [ %2, %bb.p ], [ %3, %bb.o ], [ %2, %bb.e ], [ %1, %bb.i ], [ %3, %bb.h ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sink, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !60
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !60
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !60
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !60
  %i.cb = load i64, ptr %0, align 8, !tbaa !60
  %i.cc = load i64, ptr %.sink, align 8, !tbaa !60
  store i64 %i.cc, ptr %0, align 8, !tbaa !60
  store i64 %i.cb, ptr %.sink, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.016 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %.sroa.07.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.07.018 = phi ptr [ %.sroa.07.016, %.lr.ph ], [ %.sroa.07.0, %bb.g ] ; 7 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.018, %bb.g ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.i = icmp eq i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 4 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.n = icmp eq i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.split, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

.split:                                           ; preds = %bb.c
  %i.p = load i64, ptr %.sroa.07.018, align 8, !tbaa !60 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !60
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i.i = phi i1 [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.pre20 = load i64, ptr %.sroa.07.018, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.pre = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !60 ; 2 uses
  br i1 %.sroa.06.0.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %.split
  %i.s = phi i64 [ %i.l, %.split ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.t = phi i64 [ %i.p, %.split ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.u = ptrtoint ptr %.sroa.07.018 to i64
  %i.v = sub i64 %i.u, %i.e                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.a, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i.a:                     ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  %i.x = getelementptr inbounds nuw i8, ptr %.pn17, i64 48
  %2 = udiv exact i64 %i.v, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.a
  %.010.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %2, %.lr.ph.preheader.i.i.i.i.i.a ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.a ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.018, %.lr.ph.preheader.i.i.i.i.i.a ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !60
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !60
  store i64 %i.ag, ptr %i.z, align 8, !tbaa !60
  %i.ah = add nsw i64 %.010.i.i.i.i.i, -1
  %3 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !199

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  store i64 %i.g, ptr %i.c, align 8, !tbaa !60
  store i64 %i.s, ptr %i.d, align 8, !tbaa !60
  store i64 %i.t, ptr %0, align 8, !tbaa !60
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %.split
  %i.ai = phi i64 [ %i.l, %.split ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 4 uses
  %i.aj = phi i64 [ %i.p, %.split ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge
  %.sroa.07.0.i = phi ptr [ %.sroa.07.018, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge ], [ %.sroa.0.0.i, %bb.f ] ; 10 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -24 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60 ; 3 uses
  %i.am = icmp eq i64 %i.g, %i.al
  %i.an = icmp ult i64 %i.g, %i.al
  br i1 %i.am, label %bb.e, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %i.aq = icmp eq i64 %i.ai, %i.ap
  %i.ar = icmp ult i64 %i.ai, %i.ap
  br i1 %i.aq, label %.split.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

.split.i:                                         ; preds = %bb.e
  %i.as = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !60 ; 2 uses
  %i.at = icmp ult i64 %i.aj, %i.as
  br i1 %i.at, label %bb.f, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.06.0.i.i.i.i = phi i1 [ %i.an, %bb.d ], [ %i.ar, %bb.e ]
  br i1 %.sroa.06.0.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  %.pre10.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, %.split.i
  %i.au = phi i64 [ %.pre10.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.as, %.split.i ]
  %i.av = phi i64 [ %.pre.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.ai, %.split.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.al, ptr %i.aw, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !60
  store i64 %i.au, ptr %.sroa.07.0.i, align 8, !tbaa !60
  br label %bb.d, !llvm.loop !200

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %.split.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.g, ptr %i.ay, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.ai, ptr %i.az, align 8, !tbaa !60
  store i64 %i.aj, ptr %.sroa.07.0.i, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 24 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.07.0, %1
  br i1 %i.ba, label %.loopexit, label %bb.b, !llvm.loop !201

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !49 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !55

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #37
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #35
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !45
  %i.s = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !49
  %i.z = load i64, ptr %i.t, align 8, !tbaa !43
  store i64 %i.z, ptr %i.r, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !51
  store ptr %i.t, ptr %2, align 8, !tbaa !49
  store i64 0, ptr %i.ab, align 8, !tbaa !51
  store i8 0, ptr %i.t, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !211, !noalias !214
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !214, !noalias !211 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51, !alias.scope !214, !noalias !211 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !216
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !49, !alias.scope !211, !noalias !214
  %i.al = load i64, ptr %i.af, align 8, !tbaa !43, !alias.scope !214, !noalias !211
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !43, !alias.scope !211, !noalias !214
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !214, !noalias !211
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !51, !alias.scope !211, !noalias !214
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !214, !noalias !211
  store i64 0, ptr %i.an, align 8, !tbaa !51, !alias.scope !214, !noalias !211
  store i8 0, ptr %i.af, align 8, !tbaa !43, !alias.scope !214, !noalias !211
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !217

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !45, !alias.scope !218, !noalias !221
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !221, !noalias !218 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51, !alias.scope !221, !noalias !218 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !223
end_hunk_0
