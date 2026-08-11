inline.NumInlined: 908
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_:bb.a
  %i.bo = icmp eq i64 %i.bi, 4
  br i1 %i.bo, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn18.i23, i64 4
  store i32 %i.az, ptr %i.bp, align 4, !tbaa !168
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

bb.l:                                             ; preds = %.lr.ph.i21
  %i.bq = load i32, ptr %.pn18.i23, align 4, !tbaa !168 ; 3 uses
  %i.br = tail call i32 @llvm.abs.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bs = icmp samesign ult i32 %i.ba, %i.br
  %i.bt = icmp eq i32 %i.ba, %i.br
  %i.bu = icmp slt i32 %i.ay, %i.bq
  %i.bv = and i1 %i.bu, %i.bt
  %i.bw = or i1 %i.bs, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i28, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.l, %.lr.ph.i.i28
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i28 ], [ %i.bq, %bb.l ]
  %.sroa.0.09.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn18.i23, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i30 = phi ptr [ %.sroa.0.09.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.019.i22, %bb.l ]
  store i32 %i.bx, ptr %.sroa.04.08.i.i30, align 4, !tbaa !168
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !168 ; 3 uses
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.by, i1 true) ; 2 uses
  %i.ca = icmp samesign ult i32 %i.ba, %i.bz
  %i.cb = icmp eq i32 %i.ba, %i.bz
  %i.cc = icmp slt i32 %i.ay, %i.by
  %i.cd = and i1 %i.cc, %i.cb
  %i.ce = or i1 %i.ca, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i28, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, !llvm.loop !273

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i25 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.019.i22, %bb.l ], [ %.sroa.0.09.i.i29, %.lr.ph.i.i28 ]
  store i32 %i.ay, ptr %.sink.i25, align 4, !tbaa !168
  %.sroa.0.0.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i22, i64 4 ; 2 uses
  %.not.i27 = icmp eq ptr %.sroa.0.0.i26, %1
  br i1 %.not.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_.exit, label %.lr.ph.i21, !llvm.loop !274

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i24, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEET_SC_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !168  ; 6 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !168  ; 6 uses
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true) ; 6 uses
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true) ; 6 uses
  %i.m = icmp samesign ult i32 %i.k, %i.l
  %i.n = icmp eq i32 %i.k, %i.l
  %i.o = icmp slt i32 %i.i, %i.j
  %i.p = and i1 %i.o, %i.n
  %i.q = or i1 %i.m, %i.p
  %i.r = load i32, ptr %i.h, align 4, !tbaa !168  ; 7 uses
  %i.s = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true) ; 8 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.t = icmp samesign ult i32 %i.l, %i.s
  %i.u = icmp eq i32 %i.l, %i.s
  %i.v = icmp slt i32 %i.j, %i.r
  %i.w = and i1 %i.v, %i.u
  %i.x = or i1 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %0, align 4, !tbaa !168
  store i32 %i.j, ptr %0, align 4, !tbaa !168
  store i32 %i.y, ptr %i.f, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.d:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i32 %i.k, %i.s
  %i.aa = icmp eq i32 %i.k, %i.s
  %i.ab = icmp slt i32 %i.i, %i.r
  %i.ac = and i1 %i.ab, %i.aa
  %i.ad = or i1 %i.z, %i.ac
  %i.ae = load i32, ptr %0, align 4, !tbaa !168   ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.r, ptr %0, align 4, !tbaa !168
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.i, ptr %0, align 4, !tbaa !168
  store i32 %i.ae, ptr %i.g, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.g:                                             ; preds = %bb.a
  %i.af = icmp samesign ult i32 %i.k, %i.s
  %i.ag = icmp eq i32 %i.k, %i.s
  %i.ah = icmp slt i32 %i.i, %i.r
  %i.ai = and i1 %i.ah, %i.ag
  %i.aj = or i1 %i.af, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %0, align 4, !tbaa !168
  store i32 %i.i, ptr %0, align 4, !tbaa !168
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.i:                                             ; preds = %bb.g
  %i.al = icmp samesign ult i32 %i.l, %i.s
  %i.am = icmp eq i32 %i.l, %i.s
  %i.an = icmp slt i32 %i.j, %i.r
  %i.ao = and i1 %i.an, %i.am
  %i.ap = or i1 %i.al, %i.ao
  %i.aq = load i32, ptr %0, align 4, !tbaa !168   ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.r, ptr %0, align 4, !tbaa !168
  store i32 %i.aq, ptr %i.h, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.j, ptr %0, align 4, !tbaa !168
  store i32 %i.aq, ptr %i.f, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader, %bb.n
  %.sroa.010.0.i = phi ptr [ %i.ba, %bb.n ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.1.i, %bb.n ], [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %i.ar = load i32, ptr %0, align 4, !tbaa !168   ; 3 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true) ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit ], [ %i.ba, %bb.l ] ; 5 uses
  %i.at = load i32, ptr %.sroa.010.1.i, align 4, !tbaa !168 ; 3 uses
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %i.au, %i.as
  %i.aw = icmp eq i32 %i.au, %i.as
  %i.ax = icmp slt i32 %i.at, %i.ar
  %i.ay = and i1 %i.ax, %i.aw
  %i.az = or i1 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 4 ; 2 uses
  br i1 %i.az, label %bb.l, label %.preheader.i, !llvm.loop !276

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %bb.l ]
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4 ; 5 uses
  %i.bb = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !168 ; 3 uses
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true) ; 2 uses
  %i.bd = icmp samesign ult i32 %i.as, %i.bc
  %i.be = icmp eq i32 %i.as, %i.bc
  %i.bf = icmp slt i32 %i.ar, %i.bb
  %i.bg = and i1 %i.bf, %i.be
  %i.bh = or i1 %i.bd, %i.bg
  br i1 %i.bh, label %.preheader.i, label %bb.m, !llvm.loop !277

bb.m:                                             ; preds = %.preheader.i
  %i.bi = icmp ult ptr %.sroa.010.1.i, %.sroa.0.1.i
  br i1 %i.bi, label %bb.n, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEET_SC_SC_SC_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %.sroa.010.1.i, align 4, !tbaa !168
  store i32 %i.at, ptr %.sroa.0.1.i, align 4, !tbaa !168
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_SC_T0_.exit, !llvm.loop !278

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEET_SC_SC_SC_T0_.exit: ; preds = %bb.m
  ret ptr %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !168  ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !168
  store i32 %i.g, ptr %i.e, align 4, !tbaa !168
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = add nsw i64 %i.j, -1
  %3 = lshr i64 %i.k, 1
  %i.l = icmp sgt i64 %i.j, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.035.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.035.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !168  ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !168  ; 2 uses
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true) ; 2 uses
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.v = icmp samesign ult i32 %i.t, %i.u
  %i.w = icmp eq i32 %i.t, %i.u
  %i.x = icmp slt i32 %i.r, %i.s
  %i.y = and i1 %i.x, %i.w
  %i.z = or i1 %i.v, %i.y
  %spec.select.i.i = select i1 %i.z, i64 %i.p, i64 %i.n ; 4 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !168
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !168
  %i.ad = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ad, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !270

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ae = and i64 %i.i, 4
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ag = add nsw i64 %i.j, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa.i.i, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !168
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !168
  br label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.thread.i
  %.1.i7.i = phi i64 [ %i.ak, %.thread.i ], [ %.0.lcssa.i.i, %bb.c ]
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i7.i, %.lr.ph.i.i.i ], [ %.0920.i.i89.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i89.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !168 ; 3 uses
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, %i.ao
  %i.at = icmp eq i32 %i.ar, %i.ao
  %i.au = icmp slt i32 %i.aq, %i.f
  %i.av = and i1 %i.au, %i.at
  %i.aw = or i1 %i.as, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !168
  %.not10.i = icmp eq i64 %.0920.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit, label %bb.d, !llvm.loop !271

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.019.i.i.i, %bb.d ], [ 0, %bb.e ]
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.ay, align 4, !tbaa !168
  %i.az = icmp sgt i64 %i.i, 4
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !279

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20clause_lit_less_thanEEEEvT_SC_SC_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !248    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #17
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !174
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !174
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173
  store ptr %i.u, ptr %i.s, align 8, !tbaa !173
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !174, !alias.scope !283, !noalias !280
  store <2 x ptr> %i.v, ptr %.012.i.i.i.i, align 8, !tbaa !174, !alias.scope !280, !noalias !283
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !173, !alias.scope !283, !noalias !280
  store ptr %i.y, ptr %i.w, align 8, !tbaa !173, !alias.scope !280, !noalias !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !283, !noalias !280
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !285

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i.i19, align 8, !tbaa !174, !alias.scope !289, !noalias !286
  store <2 x ptr> %i.ac, ptr %.012.i.i.i.i18, align 8, !tbaa !174, !alias.scope !286, !noalias !289
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173, !alias.scope !289, !noalias !286
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !173, !alias.scope !286, !noalias !289
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !289, !noalias !286
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !285

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !248
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !250
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKSt6vectorIiSaIiEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 7 uses
  %.01218 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01218, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = load ptr, ptr %.01218, align 8, !tbaa !171 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.019, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !184

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.019, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !173
  %i.m = load ptr, ptr %.01218, align 8, !tbaa !174 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.c, label %bb.d, !prof !247

bb.c:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc13
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
