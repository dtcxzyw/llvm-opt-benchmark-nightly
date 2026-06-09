inline.NumInlined: 1643
inline.NumDeleted: 798
begin_hunk_0_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
  %.sroa.06.0.i.i.i26 = phi i1 [ %i.s, %bb.d ], [ %i.y, %bb.e ]
  br i1 %.sroa.06.0.i.i.i26, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.d, ptr %i.ac, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !59
  br label %bb.v

bb.h:                                             ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27
  %i.ae = icmp eq i64 %i.c, %i.q
  %i.af = icmp ult i64 %i.c, %i.q
  br i1 %i.ae, label %bb.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %1, align 8, !tbaa !59
  %i.an = load i64, ptr %3, align 8, !tbaa !59
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %bb.l

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29: ; preds = %bb.h, %bb.i
  %.sroa.06.0.i.i.i28 = phi i1 [ %i.af, %bb.h ], [ %i.al, %bb.i ]
  br i1 %.sroa.06.0.i.i.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  store i64 %i.q, ptr %i.ap, align 8, !tbaa !59
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !59
  br label %bb.v

bb.l:                                             ; preds = %bb.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.c, ptr %i.ar, align 8, !tbaa !59
  store i64 %i.as, ptr %i.a, align 8, !tbaa !59
  br label %bb.v

bb.m:                                             ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59 ; 5 uses
  %i.av = icmp eq i64 %i.c, %i.au
  %i.aw = icmp ult i64 %i.c, %i.au
  br i1 %i.av, label %bb.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !59 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31

bb.o:                                             ; preds = %bb.n
  %i.bd = load i64, ptr %1, align 8, !tbaa !59
  %i.be = load i64, ptr %3, align 8, !tbaa !59
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.p, label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31: ; preds = %bb.m, %bb.n
  %.sroa.06.0.i.i.i30 = phi i1 [ %i.aw, %bb.m ], [ %i.bc, %bb.n ]
  br i1 %.sroa.06.0.i.i.i30, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.c, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !59
  br label %bb.v

bb.q:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bi = icmp eq i64 %i.d, %i.au
  %i.bj = icmp ult i64 %i.d, %i.au
  br i1 %i.bi, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !59 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bo = icmp eq i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.s:                                             ; preds = %bb.r
  %i.bq = load i64, ptr %2, align 8, !tbaa !59
  %i.br = load i64, ptr %3, align 8, !tbaa !59
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.t, label %bb.u

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33: ; preds = %bb.q, %bb.r
  %.sroa.06.0.i.i.i32 = phi i1 [ %i.bj, %bb.q ], [ %i.bp, %bb.r ]
  br i1 %.sroa.06.0.i.i.i32, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !59
  store i64 %i.au, ptr %i.bt, align 8, !tbaa !59
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !59
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.d, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u, %bb.t, %bb.g, %bb.l, %bb.k
  %.sink = phi ptr [ %1, %bb.p ], [ %2, %bb.u ], [ %3, %bb.t ], [ %2, %bb.g ], [ %1, %bb.l ], [ %3, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sink, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !59
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !59
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !59
  %i.cb = load i64, ptr %0, align 8, !tbaa !59
  %i.cc = load i64, ptr %.sink, align 8, !tbaa !59
  store i64 %i.cc, ptr %0, align 8, !tbaa !59
  store i64 %i.cb, ptr %.sink, align 8, !tbaa !59
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

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.i ] ; 3 uses
  %.sroa.07.018 = phi ptr [ %.sroa.07.016, %.lr.ph ], [ %.sroa.07.0, %bb.i ] ; 9 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.018, %bb.i ] ; 4 uses
  %i.f = mul nuw i64 %indvar, 24
  %i.g = add i64 %i.f, 24
  %i.h = udiv i64 %i.g, 24
  %i.i = add nuw nsw i64 %i.h, 1
  %i.j = icmp ult i64 %indvar, 768614336404564650
  %umin.neg = sext i1 %i.j to i64
  %i.k = add nsw i64 %i.i, %umin.neg              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59   ; 4 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %.sroa.07.018, align 8, !tbaa !59 ; 3 uses
  %i.w = load i64, ptr %0, align 8, !tbaa !59
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i.i = phi i1 [ %i.p, %bb.b ], [ %i.u, %bb.c ]
  %.pre20 = load i64, ptr %.sroa.07.018, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.pre = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !59 ; 2 uses
  br i1 %.sroa.06.0.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.d
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.aa = ptrtoint ptr %.sroa.07.018 to i64
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 3 uses
  %i.ae = udiv i64 %i.ab, 24                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec = and i64 %i.k, -4                       ; 4 uses
  %i.af = sub nsw i64 %i.ae, %n.vec
  %i.ag = mul i64 %n.vec, -24                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr i8, ptr %.sroa.07.018, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = mul i64 %index, -24                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.aj
  %next.gep29 = getelementptr i8, ptr %.sroa.07.018, i64 %i.aj
  %i.ak = getelementptr inbounds i8, ptr %next.gep29, i64 -96
  %interleaved.vec = load <12 x i64>, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds i8, ptr %next.gep, i64 -96
  store <12 x i64> %interleaved.vec, ptr %i.al, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ], [ %i.af, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ah, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %.sroa.07.018, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !59
  %i.av = load i64, ptr %i.an, align 8, !tbaa !59
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !59
  %i.aw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ax = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !217

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  store i64 %i.m, ptr %i.c, align 8, !tbaa !59
  store i64 %i.y, ptr %i.d, align 8, !tbaa !59
  store i64 %i.z, ptr %0, align 8, !tbaa !59
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.d
  %i.ay = phi i64 [ %i.r, %bb.d ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 4 uses
  %i.az = phi i64 [ %i.v, %bb.d ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge
  %.sroa.07.0.i = phi ptr [ %.sroa.07.018, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge ], [ %.sroa.0.0.i, %bb.h ] ; 8 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -24 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !59 ; 3 uses
  %i.bc = icmp eq i64 %i.m, %i.bb
  %i.bd = icmp ult i64 %i.m, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59 ; 2 uses
  %i.bg = icmp eq i64 %i.ay, %i.bf
  %i.bh = icmp ult i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !59 ; 2 uses
  %i.bj = icmp ult i64 %i.az, %i.bi
  %i.bk = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bl = insertelement <2 x i64> %i.bk, i64 %i.ay, i64 1
  br i1 %i.bj, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.06.0.i.i.i.i = phi i1 [ %i.bd, %bb.e ], [ %i.bh, %bb.f ]
  br i1 %.sroa.06.0.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.bm = load <2 x i64>, ptr %.sroa.0.0.i, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, %bb.g
  %i.bn = phi <2 x i64> [ %i.bm, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.bl, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.bb, ptr %i.bo, align 8, !tbaa !59
  store <2 x i64> %i.bn, ptr %.sroa.07.0.i, align 8, !tbaa !59
  br label %bb.e, !llvm.loop !205

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.m, ptr %i.bp, align 8, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.ay, ptr %i.bq, align 8, !tbaa !59
  store i64 %i.az, ptr %.sroa.07.0.i, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 24 ; 2 uses
  %i.br = icmp eq ptr %.sroa.07.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.br, label %.loopexit, label %bb.b, !llvm.loop !206

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #38
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #36
end_hunk_0
