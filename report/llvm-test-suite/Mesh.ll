inline.NumInlined: 767
inline.NumDeleted: 289
begin_hunk_0_@_ZN4Mesh9initEdgesEv:bb.a
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.pr.i, %._crit_edge ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !118

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, %._crit_edge
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.p to i64
  %i.am = ptrtoint ptr %.pr.i to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.an) #18
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i39 = icmp eq ptr %.pr.i46, %i.ao
  br i1 %.not4.i.i.i39, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43
  %.05.i.i.i41 = phi ptr [ %i.av, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43 ], [ %.pr.i46, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ap = load ptr, ptr %.05.i.i.i41, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i42, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i40
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43: ; preds = %bb.e, %.lr.ph.i.i.i40
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i41, i64 24 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.av, %i.ao
  br i1 %.not.i.i.i44, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, label %.lr.ph.i.i.i40, !llvm.loop !118

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %.not.i.i1.i48 = icmp eq ptr %.pr.i46, null
  br i1 %.not.i.i1.i48, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %.pr.i46 to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i46, i64 noundef %i.az) #18
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49:       ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %.lr.ph, %bb.aa
  %i.bb = phi ptr [ %i.x, %.lr.ph ], [ %i.eh, %bb.aa ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 4 uses
  %.092 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 4 uses
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4  ; 2 uses
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bi = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bh)
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bg) ; 9 uses
  %i.bk = sext i32 %i.bi to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.pr.i46, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %.pr.i, i64 %i.bk ; 5 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !55 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !55 ; 6 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 9 uses
  %i.bt = ashr i64 %i.bs, 4                       ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i51, label %._crit_edge.i.i.i

.lr.ph.i.i.i51:                                   ; preds = %bb.h
  %i.bv = and i64 %i.bs, -16
  %scevgep.i.i.i = getelementptr i8, ptr %i.bn, i64 %i.bv ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i.i51
  %.052.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i51 ], [ %i.ci, %bb.m ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i51 ], [ %i.ch, %bb.m ] ; 9 uses
  %i.bw = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !4
  %i.bx = icmp eq i32 %i.bw, %i.bj
  br i1 %i.bx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = icmp eq i32 %i.bz, %i.bj
  br i1 %i.ca, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit117, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = icmp eq i32 %i.cc, %i.bj
  br i1 %i.cd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit115, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = icmp eq i32 %i.cf, %i.bj
  br i1 %i.cg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.ci = add nsw i64 %.052.i.i.i, -1
  %i.cj = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cj, label %bb.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !119

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.m
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bq, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.h
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bs, %bb.h ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bn, %bb.h ] ; 5 uses
  %i.ck = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ck, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit [
    i64 3, label %bb.n
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.cl = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !4
  %i.cm = icmp eq i32 %i.cl, %i.bj
  br i1 %i.cm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.o
  %.sroa.032.1.i.i.i = phi ptr [ %i.cn, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.co = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !4
  %i.cp = icmp eq i32 %i.co, %i.bj
  br i1 %i.cp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.p
  %.sroa.032.2.i.i.i = phi ptr [ %i.cq, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cr = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !4
  %i.cs = icmp eq i32 %i.cr, %i.bj
  %spec.select.i.i.i = select i1 %i.cs, ptr %.sroa.032.2.i.i.i, ptr %i.bp
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit115: ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit117: ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit115, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit117, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.n, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.bp, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.n ], [ %i.cv, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit117 ], [ %i.ct, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %i.cu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit115 ], [ %.sroa.032.051.i.i.i, %bb.i ]
  %i.cw = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.cx = sub i64 %i.cw, %i.br
  %sext = shl i64 %i.cx, 30
  %i.cy = ashr exact i64 %sext, 32                ; 5 uses
  %i.cz = ashr exact i64 %i.bs, 2
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.bp, %i.dc
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bj, ptr %i.bp, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.dd, ptr %i.bo, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.s:                                             ; preds = %bb.q
  %i.de = icmp eq i64 %i.bs, 9223372036854775804
  br i1 %i.de, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.w, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.cy ; 2 uses
  %3 = icmp ult i64 %i.df, %i.cy
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.dg ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i52)
  %i.dh = shl nuw nsw i64 %4, 2
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #20
          to label %.noexc54 unwind label %.loopexit ; 4 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.bs ; 2 uses
  store i32 %i.bj, ptr %i.dj, align 4, !tbaa !4
  %i.dk = icmp sgt i64 %i.bs, 0
  br i1 %i.dk, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.t:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.di, ptr align 4 %i.bn, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.t, %.noexc54
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.di, ptr %i.bl, align 8, !tbaa !44
  store ptr %i.dl, ptr %i.bo, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %4
  store ptr %i.dm, ptr %i.db, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45
  %.not.i55 = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %.092, ptr %i.do, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit64

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !44 ; 4 uses
  %i.dt = ptrtoint ptr %i.do to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775804
  br i1 %i.dw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i56

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i56: ; preds = %bb.w
  %i.dx = ashr exact i64 %i.dv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i57, %i.dx ; 2 uses
  %5 = icmp ult i64 %i.dy, %i.dx
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 2305843009213693951)
  %6 = select i1 %5, i64 2305843009213693951, i64 %i.dz ; 3 uses
  %.not.i.i.i58 = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i.i.i58)
  %i.ea = shl nuw nsw i64 %6, 2
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #20
          to label %.noexc63 unwind label %.loopexit ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i56
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dv ; 2 uses
  store i32 %.092, ptr %i.ec, align 4, !tbaa !4
  %i.ed = icmp sgt i64 %i.dv, 0
  br i1 %i.ed, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i59

bb.x:                                             ; preds = %.noexc63
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.ds, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i59

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i59: ; preds = %bb.x, %.noexc63
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.not.i17.i.i60 = icmp eq ptr %i.ds, null
  br i1 %.not.i17.i.i60, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i61, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dv) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i61

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i61: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i59
  store ptr %i.eb, ptr %i.bm, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.dn, align 8, !tbaa !50
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %6
  store ptr %i.ef, ptr %i.dp, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit64

_ZNSt6vectorIiSaIiEE9push_backERKi.exit64:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i61, %bb.v
  %i.eg = add nsw i32 %.092, 1
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !117
  br label %bb.aa

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i56
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit64, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.eh = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit64 ], [ %i.bb, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ] ; 2 uses
  %.1 = phi i32 [ %i.eg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit64 ], [ %.092, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ] ; 2 uses
  %i.ei = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cy
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.em = load i32, ptr %i.t, align 8, !tbaa !52
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %bb.h, label %._crit_edge, !llvm.loop !120

bb.ab:                                            ; preds = %bb.z, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.z ], [ %i.ba, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh10initChunksEv(ptr noundef nonnull align 8 dereferenceable(616) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge103

._crit_edge103:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.d, align 4, !tbaa !4
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4    ; 2 uses
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.g)
  store i32 %i.h, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge103, %bb.b
  %i.i = phi i32 [ %.pre, %._crit_edge103 ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph94, label %._crit_edge

.lr.ph94:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph94, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.y = phi i32 [ %i.i, %.lr.ph94 ], [ %i.do, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.093 = phi i32 [ 0, %.lr.ph94 ], [ %.1.lcssa, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.aa = add nsw i32 %i.z, %.093                 ; 2 uses
  %.sroa.speculated75 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.aa)
  %i.ab = icmp slt i32 %i.aa, %i.y
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.ad = sext i32 %.093 to i64
  %i.ae = sext i32 %i.z to i64
  %i.af = add nsw i64 %i.ad, %i.ae
  %i.ag = sext i32 %i.y to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.af, i64 %i.ag)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %smin, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = icmp eq i32 %i.ai, %i.ak
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.al, label %bb.e, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.d
  %.1.lcssa = phi i32 [ %.sroa.speculated75, %bb.d ], [ %i.am, %.critedge.loopexit ] ; 5 uses
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !50  ; 4 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  store i32 %.093, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %.critedge
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !44  ; 4 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %1 = icmp ult i64 %i.aw, %i.av
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %2 = select i1 %1, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %2, 2
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #20 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.at ; 2 uses
  store i32 %.093, ptr %i.ba, align 4, !tbaa !4
  %i.bb = icmp sgt i64 %i.at, 0
  br i1 %i.bb, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.az, ptr %i.m, align 8, !tbaa !44
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %2
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !50  ; 4 uses
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !45
  %.not.i5 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %.1.lcssa, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bg, ptr %i.q, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit12

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !44  ; 4 uses
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i6

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i6: ; preds = %bb.l
  %i.bm = ashr exact i64 %i.bk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i7, %i.bm ; 2 uses
  %3 = icmp ult i64 %i.bn, %i.bm
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i8)
  %i.bp = shl nuw nsw i64 %4, 2
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #20 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store i32 %.1.lcssa, ptr %i.br, align 4, !tbaa !4
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i9

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i9

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i9: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.not.i17.i.i10 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i10, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i11, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i9
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i11

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i11: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i9
  store ptr %i.bq, ptr %i.p, align 8, !tbaa !44
  store ptr %i.bt, ptr %i.q, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %4
  store ptr %i.bu, ptr %i.r, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit12

_ZNSt6vectorIiSaIiEE9push_backERKi.exit12:        ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i11
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !91  ; 3 uses
  %i.bw = sext i32 %.093 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !50  ; 4 uses
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !45
  %.not.i13 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit12
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store ptr %i.cb, ptr %i.t, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit12
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !44  ; 4 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775804
  br i1 %i.cg, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i14

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i14: ; preds = %bb.q
  %i.ch = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i15 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i15, %i.ch ; 2 uses
  %5 = icmp ult i64 %i.ci, %i.ch
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 2305843009213693951)
  %6 = select i1 %5, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i.i.i16)
  %i.ck = shl nuw nsw i64 %6, 2
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #20 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cf ; 2 uses
  %i.cn = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !4
  %i.co = icmp sgt i64 %i.cf, 0
  br i1 %i.co, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.cc, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17: ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.not.i17.i.i18 = icmp eq ptr %i.cc, null
  br i1 %.not.i17.i.i18, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i19, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cf) #18
  %.pre104.pre = load ptr, ptr %i.l, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i19

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i19: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17
  %.pre104 = phi ptr [ %.pre104.pre, %bb.t ], [ %i.bv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i17 ]
  store ptr %i.cl, ptr %i.s, align 8, !tbaa !44
  store ptr %i.cp, ptr %i.t, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %6
  store ptr %i.cq, ptr %i.u, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20

_ZNSt6vectorIiSaIiEE9push_backERKi.exit20:        ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i19
  %i.cr = phi ptr [ %i.bv, %bb.p ], [ %.pre104, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i19 ]
  %i.cs = sext i32 %.1.lcssa to i64
  %i.ct = getelementptr [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !50  ; 4 uses
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cz, ptr %i.w, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit20
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !44  ; 4 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775804
  br i1 %i.de, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.df = ashr exact i64 %i.dd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %7 = icmp ult i64 %i.dg, %i.df
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 2305843009213693951)
  %8 = select i1 %7, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %8, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.di = shl nuw nsw i64 %8, 2
  %i.dj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #20 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.dd ; 2 uses
  store i32 %i.cw, ptr %i.dk, align 4, !tbaa !4
  %i.dl = icmp sgt i64 %i.dd, 0
  br i1 %i.dl, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr align 4 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.x, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dj, ptr %i.v, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.w, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %8
  store ptr %i.dn, ptr %i.x, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.do = load i32, ptr %i.j, align 8, !tbaa !52  ; 2 uses
  %i.dp = icmp slt i32 %.1.lcssa, %i.do
  br i1 %i.dp, label %bb.d, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !44
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = lshr exact i64 %i.dw, 2
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !49 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph97, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37
  %i.ej = phi i32 [ %i.eb, %.lr.ph97 ], [ %i.fu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37 ]
  %.08895 = phi i32 [ 0, %.lr.ph97 ], [ %.sroa.speculated63, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37 ] ; 3 uses
  %i.ek = load i32, ptr %i.a, align 8, !tbaa !16
  %i.el = add nsw i32 %i.ek, %.08895
  %.sroa.speculated63 = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.el) ; 4 uses
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !50 ; 4 uses
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !45
  %.not.i22 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i22, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.08895, ptr %i.em, align 4, !tbaa !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.eo, ptr %i.ee, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29

bb.ab:                                            ; preds = %bb.z
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !44 ; 4 uses
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775804
  br i1 %i.et, label %bb.ac, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.ab
  %i.eu = ashr exact i64 %i.es, 2                 ; 3 uses
  %.sroa.speculated.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i24, %i.eu ; 2 uses
  %9 = icmp ult i64 %i.ev, %i.eu
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 2305843009213693951)
  %10 = select i1 %9, i64 2305843009213693951, i64 %i.ew ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25)
  %i.ex = shl nuw nsw i64 %10, 2
  %i.ey = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #20 ; 4 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.es ; 2 uses
  store i32 %.08895, ptr %i.ez, align 4, !tbaa !4
  %i.fa = icmp sgt i64 %i.es, 0
  br i1 %i.fa, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26

bb.ad:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ey, ptr align 4 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26: ; preds = %bb.ad, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i23
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %.not.i17.i.i27 = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i27, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.es) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i26
  store ptr %i.ey, ptr %i.ed, align 8, !tbaa !44
  store ptr %i.fb, ptr %i.ee, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %10
  store ptr %i.fc, ptr %i.ef, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29

_ZNSt6vectorIiSaIiEE9push_backERKi.exit29:        ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i28
  %i.fd = load ptr, ptr %i.eh, align 8, !tbaa !50 ; 4 uses
  %i.fe = load ptr, ptr %i.ei, align 8, !tbaa !45
  %.not.i30 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i30, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29
  store i32 %.sroa.speculated63, ptr %i.fd, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store ptr %i.ff, ptr %i.eh, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit29
  %i.fg = load ptr, ptr %i.eg, align 8, !tbaa !44 ; 4 uses
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 6 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775804
  br i1 %i.fk, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i31

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i31: ; preds = %bb.ag
  %i.fl = ashr exact i64 %i.fj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i32 = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i32, %i.fl ; 2 uses
  %11 = icmp ult i64 %i.fm, %i.fl
  %i.fn = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 2305843009213693951)
  %12 = select i1 %11, i64 2305843009213693951, i64 %i.fn ; 3 uses
  %.not.i.i.i33 = icmp ne i64 %12, 0
  tail call void @llvm.assume(i1 %.not.i.i.i33)
  %i.fo = shl nuw nsw i64 %12, 2
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #20 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fj ; 2 uses
  store i32 %.sroa.speculated63, ptr %i.fq, align 4, !tbaa !4
  %i.fr = icmp sgt i64 %i.fj, 0
  br i1 %i.fr, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i34

bb.ai:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i34

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i34: ; preds = %bb.ai, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i31
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %.not.i17.i.i35 = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i35, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i36, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fj) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i36

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i36: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i34
  store ptr %i.fp, ptr %i.eg, align 8, !tbaa !44
  store ptr %i.fs, ptr %i.eh, align 8, !tbaa !50
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %12
  store ptr %i.ft, ptr %i.ei, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37

_ZNSt6vectorIiSaIiEE9push_backERKi.exit37:        ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i36
  %i.fu = load i32, ptr %i.ea, align 4, !tbaa !49 ; 2 uses
  %i.fv = icmp slt i32 %.sroa.speculated63, %i.fu
  br i1 %i.fv, label %bb.z, label %._crit_edge98, !llvm.loop !122

._crit_edge98:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit37, %._crit_edge
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !44
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr exact i64 %i.gc, 2
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.ge, ptr %i.gf, align 8, !tbaa !78
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !51 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge98
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph101, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54
  %i.gp = phi i32 [ %i.gh, %.lr.ph101 ], [ %i.ia, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54 ]
  %.08799 = phi i32 [ 0, %.lr.ph101 ], [ %.sroa.speculated, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54 ] ; 3 uses
  %i.gq = load i32, ptr %i.a, align 8, !tbaa !16
  %i.gr = add nsw i32 %i.gq, %.08799
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gr) ; 4 uses
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !50 ; 4 uses
  %i.gt = load ptr, ptr %i.gl, align 8, !tbaa !45
  %.not.i39 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i39, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %.08799, ptr %i.gs, align 4, !tbaa !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store ptr %i.gu, ptr %i.gk, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit46

bb.am:                                            ; preds = %bb.ak
  %i.gv = load ptr, ptr %i.gj, align 8, !tbaa !44 ; 4 uses
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 6 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775804
  br i1 %i.gz, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i40

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i40: ; preds = %bb.am
  %i.ha = ashr exact i64 %i.gy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i41 = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i41, %i.ha ; 2 uses
  %13 = icmp ult i64 %i.hb, %i.ha
  %i.hc = tail call i64 @llvm.umin.i64(i64 %i.hb, i64 2305843009213693951)
  %14 = select i1 %13, i64 2305843009213693951, i64 %i.hc ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %14, 0
  tail call void @llvm.assume(i1 %.not.i.i.i42)
  %i.hd = shl nuw nsw i64 %14, 2
  %i.he = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #20 ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gy ; 2 uses
  store i32 %.08799, ptr %i.hf, align 4, !tbaa !4
  %i.hg = icmp sgt i64 %i.gy, 0
  br i1 %i.hg, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i43

bb.ao:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr align 4 %i.gv, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i43

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i43: ; preds = %bb.ao, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i40
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %.not.i17.i.i44 = icmp eq ptr %i.gv, null
  br i1 %.not.i17.i.i44, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i45, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gy) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i45

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i45: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i43
  store ptr %i.he, ptr %i.gj, align 8, !tbaa !44
  store ptr %i.hh, ptr %i.gk, align 8, !tbaa !50
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %14
  store ptr %i.hi, ptr %i.gl, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit46

_ZNSt6vectorIiSaIiEE9push_backERKi.exit46:        ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i45
  %i.hj = load ptr, ptr %i.gn, align 8, !tbaa !50 ; 4 uses
  %i.hk = load ptr, ptr %i.go, align 8, !tbaa !45
  %.not.i47 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i47, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit46
  store i32 %.sroa.speculated, ptr %i.hj, align 4, !tbaa !4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store ptr %i.hl, ptr %i.gn, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit46
  %i.hm = load ptr, ptr %i.gm, align 8, !tbaa !44 ; 4 uses
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 6 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775804
  br i1 %i.hq, label %bb.as, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48: ; preds = %bb.ar
  %i.hr = ashr exact i64 %i.hp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 1)
  %i.hs = add nsw i64 %.sroa.speculated.i.i.i49, %i.hr ; 2 uses
  %15 = icmp ult i64 %i.hs, %i.hr
  %i.ht = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 2305843009213693951)
  %16 = select i1 %15, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %16, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.hu = shl nuw nsw i64 %16, 2
  %i.hv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #20 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.hp ; 2 uses
  store i32 %.sroa.speculated, ptr %i.hw, align 4, !tbaa !4
  %i.hx = icmp sgt i64 %i.hp, 0
  br i1 %i.hx, label %bb.at, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

bb.at:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 4 %i.hm, i64 %i.hp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51: ; preds = %bb.at, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %.not.i17.i.i52 = icmp eq ptr %i.hm, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hp) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53: ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51
  store ptr %i.hv, ptr %i.gm, align 8, !tbaa !44
  store ptr %i.hy, ptr %i.gn, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %16
  store ptr %i.hz, ptr %i.go, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54

_ZNSt6vectorIiSaIiEE9push_backERKi.exit54:        ; preds = %bb.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53
  %i.ia = load i32, ptr %i.gg, align 4, !tbaa !51 ; 2 uses
  %i.ib = icmp slt i32 %.sroa.speculated, %i.ia
  br i1 %i.ib, label %bb.ak, label %._crit_edge102, !llvm.loop !123

._crit_edge102:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54, %._crit_edge98
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !50
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !44
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = lshr exact i64 %i.ii, 2
  %i.ik = trunc i64 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh10initInvMapEv(ptr noundef nonnull align 8 captures(none) dereferenceable(616) initializes((136, 152)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !126
  %i.m = load i32, ptr %i.g, align 8, !tbaa !52   ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
  unreachable

_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 3                  ; 3 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20 ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.p, i1 false), !tbaa !4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = ptrtoint ptr %i.r to i64
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit:   ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.040.0 = phi ptr [ %i.q, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 24 uses
  %.sink.i = phi i64 [ %i.s, %.lr.ph.preheader.i.i.i.i.i ], [ 0, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53   ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 7 uses
  %min.iters.check = icmp ult i32 %i.u, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %.sroa.040.0, i64 %i.y
  %i.z = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep66 = getelementptr i8, ptr %i.x, i64 %i.z
  %bound0 = icmp ult ptr %.sroa.040.0, %scevgep66
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %wide.load = load <2 x i32>, ptr %i.aa, align 4, !tbaa !4, !alias.scope !127
  %wide.load67 = load <2 x i32>, ptr %i.ab, align 4, !tbaa !4, !alias.scope !127
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.0, i64 %index
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.0, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %vec.ind, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ac, align 4, !tbaa !4, !alias.scope !130, !noalias !127
  %interleaved.vec68 = shufflevector <2 x i32> %wide.load67, <2 x i32> %step.add, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec68, ptr %i.ae, align 4, !tbaa !4, !alias.scope !130, !noalias !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.prol
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.040.0, i64 %indvars.iv.prol ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = trunc nuw nsw i64 %indvars.iv.prol to i32
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !135
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !136

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorISt4pairIiiESaIS1_EEC2EmRKS2_.exit
  %.not.i.i = icmp eq ptr %.sroa.040.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %.sroa.040.0 to i64        ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = xor i64 %i.as, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.sroa.040.0, ptr %.0.lcssa.i.i.i.i.i, i64 noundef %i.at)
          to label %.noexc32 unwind label %bb.g

.noexc32:                                         ; preds = %bb.b
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %.sroa.040.0, ptr %.0.lcssa.i.i.i.i.i)
          to label %.noexc32._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge unwind label %bb.g

.noexc32._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge: ; preds = %.noexc32
  %.pre = load i32, ptr %i.t, align 4, !tbaa !53
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %.noexc32._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge, %._crit_edge
  %i.au = phi i32 [ %.pre, %.noexc32._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge ], [ %i.u, %._crit_edge ]
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %._crit_edge53

bb.c:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
  %i.aw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %i.ay = load i32, ptr %.sroa.040.0, align 4, !tbaa !133 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !135 ; 2 uses
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bb
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !4
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bd ; 2 uses
  store i32 -1, ptr %i.be, align 4, !tbaa !4
  %i.bf = load i32, ptr %i.t, align 4, !tbaa !53  ; 2 uses
  %.not28.peel = icmp eq i32 %i.bf, 1
  br i1 %.not28.peel, label %._crit_edge53.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !133
  %i.bi = icmp eq i32 %i.ay, %i.bh
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !135
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !4
  %.pre60 = load i32, ptr %i.t, align 4, !tbaa !53
  br label %bb.f

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN8Parallel9globalSumERl(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN8Parallel9globalSumERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !39, !range !192, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 19) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cout, align 8, !tbaa !157
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !174
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !157
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !179
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.p, %bb.e ], [ %i.t, %bb.f ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  tail call void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40, !range !192, !noundef !193
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 20) ; 0 uses
  %i.ae = load ptr, ptr @_ZSt4cout, align 8, !tbaa !157
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !159 ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !174
  %.not.i1.i.i12 = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !157
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10), !inline_history !179
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14: ; preds = %bb.l, %bb.m
  %.0.i.i.i13 = phi i8 [ %i.an, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i13)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  tail call void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  ret void
}

declare void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.af, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !94
  %i.m = fsub double %i.l, %2
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp olt double %i.n, f0x3D719799812DEA11
  br i1 %i.o, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.h, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %3 = icmp ult i64 %i.w, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %4, 2
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.t ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !4
  %i.ac = icmp sgt i64 %i.t, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %i.i, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %4 ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.af = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.ag = phi ptr [ %i.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.h, %bb.b ]
  %i.ah = phi ptr [ %i.z, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !49
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !194
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !99
  %i.n = fsub double %i.m, %2
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.o, f0x3D719799812DEA11
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.q, ptr %i.h, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 7 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %3 = icmp ult i64 %i.x, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %4, 2
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.u ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !4
  %i.ad = icmp sgt i64 %i.u, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %i.i, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %4 ; 2 uses
  store ptr %i.af, ptr %i.f, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ag = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.ah = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.r, %bb.d ], [ %i.h, %bb.b ]
  %i.ai = phi ptr [ %i.aa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !49
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !195
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i11, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13

_ZNSt6vectorIiSaIiEE6resizeEm.exit13:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = sext i32 %1 to i64
  %i.l = ptrtoint ptr %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21, %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 2 uses
  %.02730 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sext i32 %.02730 to i64                  ; 2 uses
  %.idx29 = shl nsw i64 %i.r, 2
  %i.s = getelementptr inbounds i8, ptr %2, i64 %.idx29 ; 2 uses
  %i.t = sub nsw i64 %i.k, %i.r                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.v = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.017.i.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = icmp slt i32 %i.x, %i.q                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = xor i64 %i.v, -1
  %i.ab = add nsw i64 %.01116.i.i, %i.aa
  %.112.i.i = select i1 %i.y, i64 %i.ab, i64 %i.v ; 2 uses
  %.1.i.i = select i1 %i.y, ptr %i.z, ptr %.017.i.i ; 2 uses
  %i.ac = icmp sgt i64 %.112.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, !llvm.loop !196

_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit:        ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.0.lcssa.i.i = phi ptr [ %i.s, %bb.b ], [ %.1.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.ad = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ae = sub i64 %i.ad, %i.l
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  store i32 %.02730, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !44    ; 4 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %5 = icmp ult i64 %i.aq, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %6 = select i1 %5, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %6, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %6, 2
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #20 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 2 uses
  store i32 %.02730, ptr %i.au, align 4, !tbaa !4
  %i.av = icmp sgt i64 %i.an, 0
  br i1 %i.av, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %3, align 8, !tbaa !44
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %6
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !50  ; 4 uses
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !45
  %.not.i14 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ag, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bb = load ptr, ptr %4, align 8, !tbaa !44    ; 4 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.i
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i16, %i.bg ; 2 uses
  %7 = icmp ult i64 %i.bh, %i.bg
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %8 = select i1 %7, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %8, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bj = shl nuw nsw i64 %8, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #20 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.be ; 2 uses
  store i32 %i.ag, ptr %i.bl, align 4, !tbaa !4
  %i.bm = icmp sgt i64 %i.be, 0
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.not.i17.i.i19 = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i19, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18
  store ptr %i.bk, ptr %4, align 8, !tbaa !44
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %8
  store ptr %i.bo, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21

_ZNSt6vectorIiSaIiEE9push_backERKi.exit21:        ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr %i.g, align 8, !tbaa !78
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %bb.b, label %._crit_edge, !llvm.loop !197
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = sext i32 %4 to i64
  %wide.trip.count = sext i32 %5 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load double, ptr %i.l, align 8, !tbaa !94, !noalias !198
  %i.p = load double, ptr %i.n, align 8, !tbaa !94, !noalias !198
  %i.q = fsub double %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !99, !noalias !198
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !99, !noalias !198
  %i.v = fsub double %i.s, %i.u
  %i.w = fneg double %i.v
  %i.x = getelementptr inbounds [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store double %i.w, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.q, ptr %i.y, align 8, !tbaa !99
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !201
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11calcEdgeLenEPK7double2Pdii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.p, align 8, !tbaa !94, !noalias !202
  %i.t = load double, ptr %i.r, align 8, !tbaa !94, !noalias !202
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !99, !noalias !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !99, !noalias !202
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.aa)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ab)
  %i.ac = sext i32 %i.n to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %sqrt.i, ptr %i.ad, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !205
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11calcCharLenEPKdPdii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(address) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp slt i32 %4, %i.g
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.in = select i1 %i.h, ptr %i.j, ptr %i.k
  %i.l = load i32, ptr %.in, align 4, !tbaa !4    ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m
  %.not6.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o ; 3 uses
  %i.q = shl nsw i64 %i.m, 3
  %i.r = add nsw i64 %i.q, -8
  %i.s = shl nsw i64 %i.o, 3
  %i.t = sub nsw i64 %i.r, %i.s                   ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double f0x547D42AEA2879F2E), ptr %next.gep, align 8, !tbaa !85
  store <2 x double> splat (double f0x547D42AEA2879F2E), ptr %i.z, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader27

.lr.ph.i.i.i.preheader27:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader27, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %.07.i.i.i, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.n
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.a
  %i.ac = icmp slt i32 %3, %4
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZSt4fillIPddEvT_S1_RKT0_.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !85
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !85
end_hunk_1
