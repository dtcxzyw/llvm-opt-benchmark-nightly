Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTtopt?download=true
inline.NumInlined: 1562
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN5Ttopt10TruthTable4SwapEi:bb.a
  %i.w = add nsw i64 %.052.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.e, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !80
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.032.1.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !80
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.af = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !80
  %i.ag = icmp eq i32 %i.af, %1
  %spec.select.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i, ptr %i.d
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit135: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit137: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit135, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit137, %._crit_edge.i.i.i, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit137 ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit135 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ] ; 2 uses
  %i.ak = add nsw i32 %1, 1                       ; 7 uses
  br i1 %i.i, label %.lr.ph.i.i.i54, label %._crit_edge.i.i.i43

.lr.ph.i.i.i54:                                   ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.al = and i64 %i.g, -16
  %scevgep.i.i.i55 = getelementptr i8, ptr %i.b, i64 %i.al ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i54
  %.052.i.i.i56 = phi i64 [ %i.h, %.lr.ph.i.i.i54 ], [ %i.ay, %bb.n ] ; 2 uses
  %.sroa.032.051.i.i.i57 = phi ptr [ %i.b, %.lr.ph.i.i.i54 ], [ %i.ax, %bb.n ] ; 9 uses
  %i.am = load i32, ptr %.sroa.032.051.i.i.i57, align 4, !tbaa !80
  %i.an = icmp eq i32 %i.am, %i.ak
  br i1 %i.an, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !80
  %i.aq = icmp eq i32 %i.ap, %i.ak
  br i1 %i.aq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !80
  %i.at = icmp eq i32 %i.as, %i.ak
  br i1 %i.at, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit143, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !80
  %i.aw = icmp eq i32 %i.av, %i.ak
  br i1 %i.aw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit145, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 16
  %i.ay = add nsw i64 %.052.i.i.i56, -1
  %i.az = icmp sgt i64 %.052.i.i.i56, 1
  br i1 %i.az, label %bb.j, label %._crit_edge.loopexit.i.i.i58, !llvm.loop !0

._crit_edge.loopexit.i.i.i58:                     ; preds = %bb.n
  %.pre59.i.i.i59 = ptrtoint ptr %scevgep.i.i.i55 to i64
  %.pre60.i.i.i60 = sub i64 %i.e, %.pre59.i.i.i59
  br label %._crit_edge.i.i.i43

._crit_edge.i.i.i43:                              ; preds = %._crit_edge.loopexit.i.i.i58, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %.pre-phi61.i.i.i44 = phi i64 [ %.pre60.i.i.i60, %._crit_edge.loopexit.i.i.i58 ], [ %i.g, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ]
  %.sroa.032.0.lcssa.i.i.i45 = phi ptr [ %scevgep.i.i.i55, %._crit_edge.loopexit.i.i.i58 ], [ %i.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ] ; 5 uses
  %i.ba = ashr exact i64 %.pre-phi61.i.i.i44, 2
  switch i64 %i.ba, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64 [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i51
    i64 1, label %._crit_edge._crit_edge57.i.i.i46
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i43
  %i.bb = load i32, ptr %.sroa.032.0.lcssa.i.i.i45, align 4, !tbaa !80
  %i.bc = icmp eq i32 %i.bb, %i.ak
  br i1 %i.bc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i45, i64 4
  br label %._crit_edge._crit_edge.i.i.i51

._crit_edge._crit_edge.i.i.i51:                   ; preds = %._crit_edge.i.i.i43, %bb.p
  %.sroa.032.1.i.i.i53 = phi ptr [ %i.bd, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i45, %._crit_edge.i.i.i43 ] ; 3 uses
  %i.be = load i32, ptr %.sroa.032.1.i.i.i53, align 4, !tbaa !80
  %i.bf = icmp eq i32 %i.be, %i.ak
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i51
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i53, i64 4
  br label %._crit_edge._crit_edge57.i.i.i46

._crit_edge._crit_edge57.i.i.i46:                 ; preds = %._crit_edge.i.i.i43, %bb.q
  %.sroa.032.2.i.i.i48 = phi ptr [ %i.bg, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i45, %._crit_edge.i.i.i43 ] ; 2 uses
  %i.bh = load i32, ptr %.sroa.032.2.i.i.i48, align 4, !tbaa !80
  %i.bi = icmp eq i32 %i.bh, %i.ak
  %spec.select.i.i.i49 = select i1 %i.bi, ptr %.sroa.032.2.i.i.i48, ptr %i.d
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit143: ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit145: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i57, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64: ; preds = %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit143, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit145, %._crit_edge.i.i.i43, %bb.o, %._crit_edge._crit_edge.i.i.i51, %._crit_edge._crit_edge57.i.i.i46
  %.sroa.08.0.in.sroa.speculated.i.i.i50 = phi ptr [ %.sroa.032.1.i.i.i53, %._crit_edge._crit_edge.i.i.i51 ], [ %spec.select.i.i.i49, %._crit_edge._crit_edge57.i.i.i46 ], [ %i.d, %._crit_edge.i.i.i43 ], [ %.sroa.032.0.lcssa.i.i.i45, %bb.o ], [ %i.bl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit145 ], [ %i.bk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit143 ], [ %i.bj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i57, %bb.j ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 4, !tbaa !80
  %i.bn = load i32, ptr %.sroa.08.0.in.sroa.speculated.i.i.i50, align 4, !tbaa !80
  store i32 %i.bn, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 4, !tbaa !80
  store i32 %i.bm, ptr %.sroa.08.0.in.sroa.speculated.i.i.i50, align 4, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !94
  %i.bq = sub nsw i32 %i.bp, %1                   ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 7
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64
  %i.bs = add nsw i32 %i.bq, -8                   ; 3 uses
  %i.bt = shl nuw i32 1, %i.bs                    ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !96 ; 2 uses
  %i.bw = icmp sge i32 %i.bt, %i.bv
  %.not = icmp eq i32 %i.bs, 31
  %or.cond = or i1 %i.bw, %.not
  br i1 %or.cond, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %bb.r
  %i.bx = shl i32 4, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 1) ; 2 uses
  %i.ca = sext i32 %i.bt to i64                   ; 4 uses
  %i.cb = sext i32 %i.bx to i64                   ; 2 uses
  %i.cc = sext i32 %i.bv to i64
  %wide.trip.count120 = zext nneg i32 %smax to i64 ; 5 uses
  %invariant.gep151 = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cd = shl nuw nsw i64 %wide.trip.count120, 3
  %i.ce = add nsw i64 %i.ca, %wide.trip.count120
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = shl nsw i64 %i.cb, 3
  %i.ch = shl nsw i64 %i.ca, 4
  %min.iters.check168 = icmp slt i32 %i.bt, 4
  %i.ci = getelementptr i8, ptr %i.bz, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cd
  %i.ck = getelementptr i8, ptr %i.bz, i64 %i.cf
  %n.vec170 = and i64 %wide.trip.count120, 2147483644
  %xtraiter193 = and i64 %wide.trip.count120, 1
  %i.cl = icmp slt i32 %i.bt, 2
  %unroll_iter196 = and i64 %wide.trip.count120, 2147483646
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i32 %smax to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %._crit_edge.us ], [ %i.ca, %.preheader.lr.ph.split.us ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bz, i64 %indvars.iv122 ; 5 uses
  %gep152 = getelementptr [8 x i8], ptr %invariant.gep151, i64 %indvars.iv122 ; 5 uses
  br i1 %min.iters.check168, label %scalar.ph167.preheader, label %vector.memcheck

scalar.ph167.preheader:                           ; preds = %vector.memcheck, %.preheader.us
  br i1 %i.cl, label %scalar.ph167.epil.preheader, label %scalar.ph167

vector.memcheck:                                  ; preds = %.preheader.us
  %i.cm = mul i64 %i.cg, %indvar                  ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.cj, i64 %i.cm
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cm
  %bound0 = icmp ult ptr %invariant.gep, %scevgep166
  %bound1 = icmp ult ptr %gep152, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph167.preheader, label %vector.body171

vector.body171:                                   ; preds = %vector.memcheck, %vector.body171
  %index172 = phi i64 [ %index.next177, %vector.body171 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep, i64 %index172 ; 3 uses
  %i.co = getelementptr [8 x i8], ptr %gep152, i64 %index172 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %wide.load173.a = load <2 x i64>, ptr %i.cn, align 8, !tbaa !82, !alias.scope !218, !noalias !219
  %wide.load174.a = load <2 x i64>, ptr %i.cp, align 8, !tbaa !82, !alias.scope !218, !noalias !219
  %i.cq = getelementptr i8, ptr %i.co, i64 16     ; 2 uses
  %wide.load175.a = load <2 x i64>, ptr %i.co, align 8, !tbaa !82, !alias.scope !219
  %wide.load176 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !82, !alias.scope !219
  store <2 x i64> %wide.load175.a, ptr %i.cn, align 8, !tbaa !82, !alias.scope !218, !noalias !219
  store <2 x i64> %wide.load176, ptr %i.cp, align 8, !tbaa !82, !alias.scope !218, !noalias !219
  store <2 x i64> %wide.load173.a, ptr %i.co, align 8, !tbaa !82, !alias.scope !219
  store <2 x i64> %wide.load174.a, ptr %i.cq, align 8, !tbaa !82, !alias.scope !219
  %index.next177 = add nuw i64 %index172, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.cr, label %._crit_edge.us, label %vector.body171, !llvm.loop !212

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %scalar.ph167 ], [ 0, %scalar.ph167.preheader ] ; 4 uses
  %niter197 = phi i64 [ %niter197.next.1, %scalar.ph167 ], [ 0, %scalar.ph167.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv117 ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %gep152, i64 %indvars.iv117 ; 2 uses
  %i.ct = load i64, ptr %gep, align 8, !tbaa !82
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !82
  store i64 %i.cu, ptr %gep, align 8, !tbaa !82
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !82
  %indvars.iv.next118 = or disjoint i64 %indvars.iv117, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next118 ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %gep152, i64 %indvars.iv.next118 ; 2 uses
  %i.cw = load i64, ptr %gep.1, align 8, !tbaa !82
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !82
  store i64 %i.cx, ptr %gep.1, align 8, !tbaa !82
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !82
  %indvars.iv.next118.1 = add nuw nsw i64 %indvars.iv117, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %scalar.ph167, !llvm.loop !213

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %scalar.ph167
  br i1 %lcmp.mod194.not, label %._crit_edge.us, label %scalar.ph167.epil.preheader

scalar.ph167.epil.preheader:                      ; preds = %._crit_edge.us.loopexit.unr-lcssa, %scalar.ph167.preheader
  %indvars.iv117.epil.init = phi i64 [ 0, %scalar.ph167.preheader ], [ %indvars.iv.next118.1, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv117.epil.init ; 2 uses
  %2 = getelementptr [8 x i8], ptr %gep152, i64 %indvars.iv117.epil.init ; 2 uses
  %3 = load i64, ptr %gep.epil, align 8, !tbaa !82
  %4 = load i64, ptr %2, align 8, !tbaa !82
  store i64 %4, ptr %gep.epil, align 8, !tbaa !82
  store i64 %3, ptr %2, align 8, !tbaa !82
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %vector.body171, %scalar.ph167.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, %i.cb ; 2 uses
  %5 = icmp slt i64 %indvars.iv.next123, %i.cc
  %indvar.next = add i64 %indvar, 1
  br i1 %5, label %.preheader.us, label %.loopexit, !llvm.loop !214

bb.s:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit64
  %i.cy = icmp eq i32 %i.bq, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !96 ; 4 uses
  %i.db = icmp sgt i32 %i.da, 0                   ; 2 uses
  br i1 %i.cy, label %.preheader76, label %.preheader78

.preheader78:                                     ; preds = %bb.s
  br i1 %i.db, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader78
  %i.dc = add nsw i32 %i.bq, -2                   ; 2 uses
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !84 ; 2 uses
  %i.dg = zext nneg i32 %i.dd to i64              ; 4 uses
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable8swapmaskE, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !82 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert163 = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat164 = shufflevector <2 x i64> %broadcast.splatinsert163, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !82 ; 2 uses
  %wide.load165 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !82 ; 2 uses
  %i.dm = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.dn = lshr <2 x i64> %wide.load165, %broadcast.splat
  %i.do = and <2 x i64> %i.dm, %broadcast.splat164
  %i.dp = and <2 x i64> %i.dn, %broadcast.splat164
  %i.dq = xor <2 x i64> %i.do, %wide.load         ; 2 uses
  %i.dr = xor <2 x i64> %i.dp, %wide.load165      ; 2 uses
  %i.ds = and <2 x i64> %i.dq, %broadcast.splat164
  %i.dt = and <2 x i64> %i.dr, %broadcast.splat164
  %i.du = shl <2 x i64> %i.ds, %broadcast.splat
  %i.dv = shl <2 x i64> %i.dt, %broadcast.splat
  %i.dw = xor <2 x i64> %i.du, %i.dq              ; 2 uses
  %i.dx = xor <2 x i64> %i.dv, %i.dr              ; 2 uses
  %i.dy = lshr <2 x i64> %i.dw, %broadcast.splat
  %i.dz = lshr <2 x i64> %i.dx, %broadcast.splat
  %i.ea = and <2 x i64> %i.dy, %broadcast.splat164
  %i.eb = and <2 x i64> %i.dz, %broadcast.splat164
  %i.ec = xor <2 x i64> %i.ea, %i.dw
  %i.ed = xor <2 x i64> %i.eb, %i.dx
  store <2 x i64> %i.ec, ptr %i.dk, align 8, !tbaa !82
  store <2 x i64> %i.ed, ptr %i.dl, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader76:                                     ; preds = %bb.s
  br i1 %i.db, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %.preheader76
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !84 ; 3 uses
  %i.eh = zext nneg i32 %i.da to i64
  %i.ei = add nsw i64 %i.eh, -1                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 1                       ; 2 uses
  %i.ek = add nuw i64 %i.ej, 1                    ; 2 uses
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.epil.preheader, label %.lr.ph98.new

.lr.ph98.new:                                     ; preds = %.lr.ph98
  %unroll_iter = and i64 %i.ek, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph98.new
  %indvars.iv114 = phi i64 [ 0, %.lr.ph98.new ], [ %indvars.iv.next115.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph98.new ], [ %niter.next.1, %bb.t ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv114 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !82 ; 2 uses
  %i.eo = lshr i64 %i.en, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !82
  %i.er = xor i64 %i.eq, %i.eo                    ; 2 uses
  %i.es = shl i64 %i.er, 32
  %i.et = xor i64 %i.es, %i.en                    ; 2 uses
  store i64 %i.et, ptr %i.em, align 8, !tbaa !82
  %i.eu = lshr i64 %i.et, 32
  %i.ev = xor i64 %i.eu, %i.er
  store i64 %i.ev, ptr %i.ep, align 8, !tbaa !82
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv114 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !82 ; 2 uses
  %i.ez = lshr i64 %i.ey, 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !82
  %i.fc = xor i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = shl i64 %i.fc, 32
  %i.fe = xor i64 %i.fd, %i.ey                    ; 2 uses
  store i64 %i.fe, ptr %i.ex, align 8, !tbaa !82
  %i.ff = lshr i64 %i.fe, 32
  %i.fg = xor i64 %i.ff, %i.fc
  store i64 %i.fg, ptr %i.fa, align 8, !tbaa !82
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit182.unr-lcssa, label %bb.t, !llvm.loop !216

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !82 ; 2 uses
  %i.fj = lshr i64 %i.fi, %i.dg
  %i.fk = and i64 %i.fj, %i.dj
  %i.fl = xor i64 %i.fk, %i.fi                    ; 2 uses
  %i.fm = and i64 %i.fl, %i.dj
  %i.fn = shl i64 %i.fm, %i.dg
  %i.fo = xor i64 %i.fn, %i.fl                    ; 2 uses
  %i.fp = lshr i64 %i.fo, %i.dg
  %i.fq = and i64 %i.fp, %i.dj
  %i.fr = xor i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %i.fh, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !217

.loopexit.loopexit182.unr-lcssa:                  ; preds = %bb.t
  %i.fs = and i64 %i.ei, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fs, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit182.unr-lcssa, %.lr.ph98
  %indvars.iv114.epil.init = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next115.1, %.loopexit.loopexit182.unr-lcssa ]
  %lcmp.mod192 = trunc i64 %i.ek to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv114.epil.init ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !82 ; 2 uses
  %i.fv = lshr i64 %i.fu, 32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !82
  %i.fy = xor i64 %i.fx, %i.fv                    ; 2 uses
  %i.fz = shl i64 %i.fy, 32
  %i.ga = xor i64 %i.fz, %i.fu                    ; 2 uses
  store i64 %i.ga, ptr %i.ft, align 8, !tbaa !82
  %i.gb = lshr i64 %i.ga, 32
  %i.gc = xor i64 %i.gb, %i.fy
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %.epil.preheader, %.loopexit.loopexit182.unr-lcssa, %._crit_edge.us, %middle.block, %.preheader78, %.preheader76, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt10TruthTable7BDDSwapEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #22
  %i.d = add nsw i32 %1, 2                        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.j = sext i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.k = phi i32 [ %i.f, %.preheader.lr.ph ], [ %i.bl, %._crit_edge ]
  %indvars.iv18 = phi i64 [ %i.j, %.preheader.lr.ph ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !87   ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 5 uses
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = trunc i64 %indvars.iv18 to i32
  %i.u = sub i32 %i.t, %i.d                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 4294967295
  %i.y = icmp ugt i64 %i.v, 4294967295
  %i.z = or i1 %i.x, %i.y
  br i1 %i.z, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.s, 8589934588               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue29, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue29 ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !80 ; 5 uses
  %i.ab = ashr <4 x i32> %wide.load, %broadcast.splat
  %i.ac = srem <4 x i32> %i.ab, splat (i32 4)     ; 2 uses
  %i.ad = icmp eq <4 x i32> %i.ac, splat (i32 1)
  %i.ae = add nsw <4 x i32> %i.ac, splat (i32 -1)
  %i.af = icmp ult <4 x i32> %i.ae, splat (i32 2) ; 4 uses
  %predphi = select <4 x i1> %i.ad, <4 x i32> splat (i32 1), <4 x i32> splat (i32 -1) ; 4 uses
  %i.ag = extractelement <4 x i1> %i.af, i64 0
  br i1 %i.ag, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ah = extractelement <4 x i32> %predphi, i64 0
  %i.ai = shl i32 %i.ah, %i.u
  %i.aj = extractelement <4 x i32> %wide.load, i64 0
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.aa, align 4, !tbaa !80
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.al = extractelement <4 x i1> %i.af, i64 1
  br i1 %i.al, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue
  %i.am = extractelement <4 x i32> %predphi, i64 1
  %i.an = shl i32 %i.am, %i.u
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = extractelement <4 x i32> %wide.load, i64 1
  %i.ar = add i32 %i.an, %i.aq
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !80
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.af, i64 2
  br i1 %i.as, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  %i.at = extractelement <4 x i32> %predphi, i64 2
  %i.au = shl i32 %i.at, %i.u
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = extractelement <4 x i32> %wide.load, i64 2
  %i.ay = add i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !80
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.az = extractelement <4 x i1> %i.af, i64 3
  br i1 %i.az, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  %i.ba = extractelement <4 x i32> %predphi, i64 3
  %i.bb = shl i32 %i.ba, %i.u
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = extractelement <4 x i32> %wide.load, i64 3
  %i.bf = add i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !80
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %pred.store.continue29
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge16:                                    ; preds = %._crit_edge, %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) #22
  ret i32 %i.bk

._crit_edge.loopexit:                             ; preds = %_ZN5Ttopt10TruthTable9SwapIndexERii.exit, %middle.block
  %.pre = load i32, ptr %i.e, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %.preheader ] ; 2 uses
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next19, %i.bm
  br i1 %i.bn, label %.preheader, label %._crit_edge16, !llvm.loop !221

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN5Ttopt10TruthTable9SwapIndexERii.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5Ttopt10TruthTable9SwapIndexERii.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !80 ; 2 uses
  %i.bq = ashr i32 %i.bp, %i.u
  %i.br = srem i32 %i.bq, 4                       ; 2 uses
  switch i32 %i.br, label %_ZN5Ttopt10TruthTable9SwapIndexERii.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %scalar.ph
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.b, %scalar.ph
  %.sink.i = phi i32 [ -1, %bb.b ], [ %i.br, %scalar.ph ]
  %.neg.i = shl i32 %.sink.i, %i.u
  %i.bs = add i32 %.neg.i, %i.bp
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !80
  br label %_ZN5Ttopt10TruthTable9SwapIndexERii.exit

_ZN5Ttopt10TruthTable9SwapIndexERii.exit:         ; preds = %scalar.ph, %.sink.split.i
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.bt = and i64 %indvars.iv.next, 4294967295
  %i.bu = icmp ugt i64 %i.s, %i.bt
  br i1 %i.bu, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !222
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ttopt18TruthTableLevelTSM8BDDBuildEv:bb.a
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !86
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.ab = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ac = insertelement <2 x ptr> %i.ab, ptr %i.aa, i64 1
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !86
  %i.af = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %i.ag = insertelement <2 x ptr> %i.af, ptr %i.ae, i64 1
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !87
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.aj = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %i.ak = insertelement <2 x ptr> %i.aj, ptr %i.ai, i64 1
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.an = insertelement <2 x ptr> poison, ptr %i.al, i64 0
  %i.ao = insertelement <2 x ptr> %i.an, ptr %i.am, i64 1
  %i.ap = ptrtoint <2 x ptr> %i.ac to <2 x i64>
  %i.aq = ptrtoint <2 x ptr> %i.ag to <2 x i64>
  %i.ar = ptrtoint <2 x ptr> %i.ak to <2 x i64>
  %i.as = ptrtoint <2 x ptr> %i.ao to <2 x i64>
  %i.at = sub <2 x i64> %i.ap, %i.ar
  %i.au = sub <2 x i64> %i.aq, %i.as
  %i.av = lshr exact <2 x i64> %i.at, splat (i64 2)
  %i.aw = lshr exact <2 x i64> %i.au, splat (i64 2)
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.p ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !86
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.bh = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.bg, i64 1
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !86
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.bl = insertelement <2 x ptr> poison, ptr %i.bj, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %i.bk, i64 1
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.bp = insertelement <2 x ptr> poison, ptr %i.bn, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.bo, i64 1
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !87
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !87
  %i.bt = insertelement <2 x ptr> poison, ptr %i.br, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %i.bs, i64 1
  %i.bv = ptrtoint <2 x ptr> %i.bi to <2 x i64>
  %i.bw = ptrtoint <2 x ptr> %i.bm to <2 x i64>
  %i.bx = ptrtoint <2 x ptr> %i.bq to <2 x i64>
  %i.by = ptrtoint <2 x ptr> %i.bu to <2 x i64>
  %i.bz = sub <2 x i64> %i.bv, %i.bx
  %i.ca = sub <2 x i64> %i.bw, %i.by
  %i.cb = lshr exact <2 x i64> %i.bz, splat (i64 2)
  %i.cc = lshr exact <2 x i64> %i.ca, splat (i64 2)
  %i.cd = sub nsw <2 x i64> %i.av, %i.cb
  %i.ce = sub nsw <2 x i64> %i.aw, %i.cc
  %i.cf = trunc <2 x i64> %i.cd to <2 x i32>
  %i.cg = trunc <2 x i64> %i.ce to <2 x i32>
  %i.ch = add <2 x i32> %vec.phi, %i.cf           ; 2 uses
  %i.ci = add <2 x i32> %vec.phi6, %i.cg          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ci, %i.ch
  %i.ck = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.056.i.i.ph = phi i32 [ 1, %.lr.ph.i.i ], [ %i.ck, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.056.i.i = phi i32 [ %i.dd, %scalar.ph ], [ %.056.i.i.ph, %scalar.ph.preheader ]
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !86
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !87
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !86
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !87
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = lshr exact i64 %i.cz, 2
  %i.db = sub nsw i64 %i.cs, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add nsw i32 %.056.i.i, %i.dc            ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5Ttopt10TruthTable8BDDBuildEv.exit, label %scalar.ph, !llvm.loop !273

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.04.i = phi i32 [ %i.dh, %.lr.ph.i ], [ 1, %bb.a ] ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %.04.i) #22, !inline_history !274
  %i.dh = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %i.di = load i32, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.dj = icmp slt i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

_ZN5Ttopt10TruthTable8BDDBuildEv.exit:            ; preds = %scalar.ph, %._crit_edge.i
  %.05.lcssa.i.i = phi i32 [ 1, %._crit_edge.i ], [ %i.dd, %scalar.ph ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !121
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dm) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !99
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dr) ; 0 uses
  ret i32 %.05.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt18TruthTableLevelTSM10BDDRebuildEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5Ttopt10TruthTable4SaveEj(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 3)
  %i.a = tail call noundef i32 @_ZN5Ttopt14TruthTableCare10BDDRebuildEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt14TruthTableCare4SwapEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5Ttopt10TruthTable4SwapEi(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = sub nsw i32 %i.b, %1                     ; 4 uses
  %i.d = icmp sgt i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -8                     ; 3 uses
  %i.f = shl nuw i32 1, %i.e                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81   ; 2 uses
  %i.i = icmp sge i32 %i.f, %i.h
  %.not = icmp eq i32 %i.e, 31
  %or.cond = or i1 %i.i, %.not
  br i1 %or.cond, label %.critedge2, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %bb.b
  %i.j = shl i32 4, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84   ; 4 uses
  %smax71 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 2 uses
  %i.m = sext i32 %i.f to i64                     ; 4 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = sext i32 %i.h to i64
  %wide.trip.count72 = zext nneg i32 %smax71 to i64 ; 5 uses
  %invariant.gep83 = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.p = shl nuw nsw i64 %wide.trip.count72, 3
  %i.q = add nsw i64 %i.m, %wide.trip.count72
  %i.r = shl nsw i64 %i.q, 3
  %i.s = shl nsw i64 %i.n, 3
  %i.t = shl nsw i64 %i.m, 4
  %min.iters.check92 = icmp slt i32 %i.f, 4
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 %i.p
  %i.w = getelementptr i8, ptr %i.l, i64 %i.r
  %n.vec94 = and i64 %wide.trip.count72, 2147483644
  %xtraiter109 = and i64 %wide.trip.count72, 1
  %i.x = icmp slt i32 %i.f, 2
  %unroll_iter112 = and i64 %wide.trip.count72, 2147483646
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  %lcmp.mod111 = trunc i32 %smax71 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us ], [ %i.m, %.preheader.lr.ph.split.us ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv74 ; 5 uses
  %gep84 = getelementptr [8 x i8], ptr %invariant.gep83, i64 %indvars.iv74 ; 5 uses
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck

scalar.ph91.preheader:                            ; preds = %vector.memcheck, %.preheader.us
  br i1 %i.x, label %scalar.ph91.epil.preheader, label %scalar.ph91

vector.memcheck:                                  ; preds = %.preheader.us
  %i.y = mul i64 %i.s, %indvar                    ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.v, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.y
  %bound0 = icmp ult ptr %invariant.gep, %scevgep90
  %bound1 = icmp ult ptr %gep84, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph91.preheader, label %vector.body95

vector.body95:                                    ; preds = %vector.memcheck, %vector.body95
  %index96 = phi i64 [ %index.next101, %vector.body95 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %invariant.gep, i64 %index96 ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %gep84, i64 %index96 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load97.a = load <2 x i64>, ptr %i.z, align 8, !tbaa !82, !alias.scope !284, !noalias !285
  %wide.load98.a = load <2 x i64>, ptr %i.ab, align 8, !tbaa !82, !alias.scope !284, !noalias !285
  %i.ac = getelementptr i8, ptr %i.aa, i64 16     ; 2 uses
  %wide.load99.a = load <2 x i64>, ptr %i.aa, align 8, !tbaa !82, !alias.scope !285
  %wide.load100 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !82, !alias.scope !285
  store <2 x i64> %wide.load99.a, ptr %i.z, align 8, !tbaa !82, !alias.scope !284, !noalias !285
  store <2 x i64> %wide.load100, ptr %i.ab, align 8, !tbaa !82, !alias.scope !284, !noalias !285
  store <2 x i64> %wide.load97.a, ptr %i.aa, align 8, !tbaa !82, !alias.scope !285
  store <2 x i64> %wide.load98.a, ptr %i.ac, align 8, !tbaa !82, !alias.scope !285
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %i.ad = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.ad, label %._crit_edge.us, label %vector.body95, !llvm.loop !278

scalar.ph91:                                      ; preds = %scalar.ph91.preheader, %scalar.ph91
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.1, %scalar.ph91 ], [ 0, %scalar.ph91.preheader ] ; 4 uses
  %niter113 = phi i64 [ %niter113.next.1, %scalar.ph91 ], [ 0, %scalar.ph91.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv68 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %gep84, i64 %indvars.iv68 ; 2 uses
  %i.af = load i64, ptr %gep, align 8, !tbaa !82
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !82
  store i64 %i.ag, ptr %gep, align 8, !tbaa !82
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !82
  %indvars.iv.next69 = or disjoint i64 %indvars.iv68, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next69 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %gep84, i64 %indvars.iv.next69 ; 2 uses
  %i.ai = load i64, ptr %gep.1, align 8, !tbaa !82
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !82
  store i64 %i.aj, ptr %gep.1, align 8, !tbaa !82
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !82
  %indvars.iv.next69.1 = add nuw nsw i64 %indvars.iv68, 2 ; 2 uses
  %niter113.next.1 = add i64 %niter113, 2         ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %scalar.ph91, !llvm.loop !279

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %scalar.ph91
  br i1 %lcmp.mod110.not, label %._crit_edge.us, label %scalar.ph91.epil.preheader

scalar.ph91.epil.preheader:                       ; preds = %._crit_edge.us.loopexit.unr-lcssa, %scalar.ph91.preheader
  %indvars.iv68.epil.init = phi i64 [ 0, %scalar.ph91.preheader ], [ %indvars.iv.next69.1, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv68.epil.init ; 2 uses
  %2 = getelementptr [8 x i8], ptr %gep84, i64 %indvars.iv68.epil.init ; 2 uses
  %3 = load i64, ptr %gep.epil, align 8, !tbaa !82
  %4 = load i64, ptr %2, align 8, !tbaa !82
  store i64 %4, ptr %gep.epil, align 8, !tbaa !82
  store i64 %3, ptr %2, align 8, !tbaa !82
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %vector.body95, %scalar.ph91.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, %i.n ; 2 uses
  %5 = icmp slt i64 %indvars.iv.next75, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %5, label %.preheader.us, label %.critedge2, !llvm.loop !280

bb.c:                                             ; preds = %bb.a
  %i.ak = icmp eq i32 %i.c, 7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !81 ; 5 uses
  br i1 %i.ak, label %.preheader50, label %.preheader52

.preheader52:                                     ; preds = %bb.c
  %or.cond4955 = icmp sgt i32 %i.am, -1
  br i1 %or.cond4955, label %.critedge.lr.ph, label %.critedge2

.critedge.lr.ph:                                  ; preds = %.preheader52
  %i.an = add nsw i32 %i.c, -2                    ; 2 uses
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %i.ar = zext nneg i32 %i.ao to i64              ; 4 uses
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable8swapmaskE, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !82 ; 4 uses
  %i.av = tail call i32 @llvm.umax.i32(i32 %i.am, i32 1)
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.am, 4
  br i1 %min.iters.check, label %.critedge.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.aw, align 8, !tbaa !82 ; 2 uses
  %wide.load89 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !82 ; 2 uses
  %i.ay = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.az = lshr <2 x i64> %wide.load89, %broadcast.splat
  %i.ba = and <2 x i64> %i.ay, %broadcast.splat88
  %i.bb = and <2 x i64> %i.az, %broadcast.splat88
  %i.bc = xor <2 x i64> %i.ba, %wide.load         ; 2 uses
  %i.bd = xor <2 x i64> %i.bb, %wide.load89       ; 2 uses
  %i.be = and <2 x i64> %i.bc, %broadcast.splat88
  %i.bf = and <2 x i64> %i.bd, %broadcast.splat88
  %i.bg = shl <2 x i64> %i.be, %broadcast.splat
  %i.bh = shl <2 x i64> %i.bf, %broadcast.splat
  %i.bi = xor <2 x i64> %i.bg, %i.bc              ; 2 uses
  %i.bj = xor <2 x i64> %i.bh, %i.bd              ; 2 uses
  %i.bk = lshr <2 x i64> %i.bi, %broadcast.splat
  %i.bl = lshr <2 x i64> %i.bj, %broadcast.splat
  %i.bm = and <2 x i64> %i.bk, %broadcast.splat88
  %i.bn = and <2 x i64> %i.bl, %broadcast.splat88
  %i.bo = xor <2 x i64> %i.bm, %i.bi
  %i.bp = xor <2 x i64> %i.bn, %i.bj
  store <2 x i64> %i.bo, ptr %i.aw, align 8, !tbaa !82
  store <2 x i64> %i.bp, ptr %i.ax, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge2, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.critedge.lr.ph ], [ %n.vec, %middle.block ]
  br label %.critedge

.preheader50:                                     ; preds = %bb.c
  %i.br = icmp sgt i32 %i.am, 0
  br i1 %i.br, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader50
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !84 ; 3 uses
  %i.bu = zext nneg i32 %i.am to i64
  %i.bv = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 2 uses
  %i.bx = add nuw i64 %i.bw, 1                    ; 2 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bx, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next66.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv65 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !82 ; 2 uses
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !82
  %i.ce = xor i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = shl i64 %i.ce, 32
  %i.cg = xor i64 %i.cf, %i.ca                    ; 2 uses
  store i64 %i.cg, ptr %i.bz, align 8, !tbaa !82
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = xor i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv65 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !82 ; 2 uses
  %i.cm = lshr i64 %i.cl, 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !82
  %i.cp = xor i64 %i.co, %i.cm                    ; 2 uses
  %i.cq = shl i64 %i.cp, 32
  %i.cr = xor i64 %i.cq, %i.cl                    ; 2 uses
  store i64 %i.cr, ptr %i.ck, align 8, !tbaa !82
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = xor i64 %i.cs, %i.cp
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !82
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge2.loopexit106.unr-lcssa, label %bb.d, !llvm.loop !282

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ %indvars.iv.ph, %.critedge.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !82 ; 2 uses
  %i.cw = lshr i64 %i.cv, %i.ar
  %i.cx = and i64 %i.cw, %i.au
  %i.cy = xor i64 %i.cx, %i.cv                    ; 2 uses
  %i.cz = and i64 %i.cy, %i.au
  %i.da = shl i64 %i.cz, %i.ar
  %i.db = xor i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = lshr i64 %i.db, %i.ar
  %i.dd = and i64 %i.dc, %i.au
  %i.de = xor i64 %i.dd, %i.db
  store i64 %i.de, ptr %i.cu, align 8, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.critedge, !llvm.loop !283

.critedge2.loopexit106.unr-lcssa:                 ; preds = %bb.d
  %i.df = and i64 %i.bv, 2
  %lcmp.mod.not.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.critedge2

.epil.preheader:                                  ; preds = %.critedge2.loopexit106.unr-lcssa, %.lr.ph
  %indvars.iv65.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next66.1, %.critedge2.loopexit106.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv65.epil.init ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !82 ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !82
  %i.dl = xor i64 %i.dk, %i.di                    ; 2 uses
  %i.dm = shl i64 %i.dl, 32
  %i.dn = xor i64 %i.dm, %i.dh                    ; 2 uses
  store i64 %i.dn, ptr %i.dg, align 8, !tbaa !82
  %i.do = lshr i64 %i.dn, 32
  %i.dp = xor i64 %i.do, %i.dl
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !82
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge, %.epil.preheader, %.critedge2.loopexit106.unr-lcssa, %._crit_edge.us, %middle.block, %.preheader52, %.preheader50, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5Ttopt14TruthTableCare7BDDSwapEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) #22
  %i.d = load ptr, ptr %0, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) #22
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ttopt18TruthTableLevelTSM17BDDRebuildByMergeEi(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit
  %i.j = phi ptr [ %i.g, %.lr.ph ], [ %i.ck, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit ]
  %i.k = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit ]
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.ce, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131  ; 3 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !132
  %i.r = trunc i32 %i.m to i1
  tail call void @_ZN5Ttopt14TruthTableCare14CopyFuncMaskedEiiib(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %1, i1 noundef zeroext %i.r)
  %i.s = load i32, ptr %i.l, align 4, !tbaa !131
  %i.t = ashr i32 %i.s, 1                         ; 3 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !132  ; 3 uses
  %i.v = load i32, ptr %i.h, align 8, !tbaa !94
  %i.w = sub nsw i32 %i.v, %1                     ; 6 uses
  %i.x = icmp sgt i32 %i.w, 6
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i32 %i.w, -6                     ; 4 uses
  %.not.i = icmp eq i32 %i.y, 31
  br i1 %.not.i, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = shl nuw i32 1, %i.y                      ; 3 uses
  %i.aa = shl i32 %i.u, %i.y
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !84  ; 4 uses
  %i.ac = shl i32 %i.t, %i.y
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ad ; 7 uses
  %invariant.gep27.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ae ; 7 uses
  %min.iters.check = icmp slt i32 %i.z, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.af = icmp slt i32 %i.z, 4
  br i1 %i.af, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ag = add nsw i64 %i.ae, %wide.trip.count.i
  %i.ah = shl nsw i64 %i.ag, 3
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ah
  %i.ai = add nsw i64 %i.ad, %wide.trip.count.i
  %i.aj = shl nsw i64 %i.ai, 3
  %scevgep20 = getelementptr i8, ptr %i.ab, i64 %i.aj
  %bound0 = icmp ult ptr %invariant.gep27.i, %scevgep20
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !82, !alias.scope !293
  %wide.load21 = load <2 x i64>, ptr %i.al, align 8, !tbaa !82, !alias.scope !293
  %i.am = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %index ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16     ; 2 uses
  %wide.load22 = load <2 x i64>, ptr %i.am, align 8, !tbaa !82, !alias.scope !294, !noalias !293
  %wide.load23 = load <2 x i64>, ptr %i.an, align 8, !tbaa !82, !alias.scope !294, !noalias !293
  %i.ao = or <2 x i64> %wide.load22, %wide.load
  %i.ap = or <2 x i64> %wide.load23, %wide.load21
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !82, !alias.scope !294, !noalias !293
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !82, !alias.scope !294, !noalias !293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %vector.body, !llvm.loop !289

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i = phi i64 [ 0, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter.next.3, %scalar.ph ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ar = load i64, ptr %gep.i, align 8, !tbaa !82
  %gep28.i = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i ; 2 uses
  %i.as = load i64, ptr %gep28.i, align 8, !tbaa !82
  %i.at = or i64 %i.as, %i.ar
  store i64 %i.at, ptr %gep28.i, align 8, !tbaa !82
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.au = load i64, ptr %gep.i.1, align 8, !tbaa !82
  %gep28.i.1 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i ; 2 uses
  %i.av = load i64, ptr %gep28.i.1, align 8, !tbaa !82
  %i.aw = or i64 %i.av, %i.au
  store i64 %i.aw, ptr %gep28.i.1, align 8, !tbaa !82
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.ax = load i64, ptr %gep.i.2, align 8, !tbaa !82
  %gep28.i.2 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ay = load i64, ptr %gep28.i.2, align 8, !tbaa !82
  %i.az = or i64 %i.ay, %i.ax
  store i64 %i.az, ptr %gep28.i.2, align 8, !tbaa !82
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.ba = load i64, ptr %gep.i.3, align 8, !tbaa !82
  %gep28.i.3 = getelementptr [8 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.bb = load i64, ptr %gep28.i.3, align 8, !tbaa !82
  %i.bc = or i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %gep28.i.3, align 8, !tbaa !82
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !290

bb.e:                                             ; preds = %bb.c
  %i.bd = sub nsw i32 6, %i.w                     ; 3 uses
  %i.be = ashr i32 %i.u, %i.bd
  %i.bf = shl nuw i32 1, %i.bd                    ; 2 uses
  %i.bg = srem i32 %i.u, %i.bf
  %i.bh = shl i32 %i.bg, %i.w
  %i.bi = sext i32 %i.be to i64
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !84  ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !82
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = sext i32 %i.w to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr @_ZN5Ttopt10TruthTable4onesE, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !82
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = ashr i32 %i.t, %i.bd
  %i.bt = srem i32 %i.t, %i.bf
  %i.bu = shl i32 %i.bt, %i.w
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl i64 %i.br, %i.bv
  %i.bx = sext i32 %i.bs to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bx ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !82
  %i.ca = or i64 %i.bw, %i.bz
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !82
  br label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit

_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa: ; preds = %scalar.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.3, %_ZN5Ttopt14TruthTableCare9MergeCareEiii.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph.epil ], [ %indvars.iv.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
end_hunk_1
begin_hunk_2_@llvm.ctpop.v2i64
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"p1 _ZTS10Gia_Obj_t_", !20, i64 0}
!23 = !{!"p1 int", !20, i64 0}
!24 = !{!"p1 _ZTS10Vec_Int_t_", !20, i64 0}
!25 = !{!"_ZTS10Vec_Int_t_", !17, i64 0, !17, i64 4, !23, i64 8}
!26 = !{!"p1 _ZTS10Gia_Rpr_t_", !20, i64 0}
!27 = !{!"p1 _ZTS10Vec_Wec_t_", !20, i64 0}
!28 = !{!"p1 _ZTS10Vec_Str_t_", !20, i64 0}
!29 = !{!"p1 _ZTS10Abc_Cex_t_", !20, i64 0}
!30 = !{!"p1 _ZTS10Vec_Ptr_t_", !20, i64 0}
!31 = !{!"p1 _ZTS10Gia_Plc_t_", !20, i64 0}
!32 = !{!"p1 _ZTS10Gia_Man_t_", !20, i64 0}
!33 = !{!"p1 _ZTS10Vec_Flt_t_", !20, i64 0}
!34 = !{!"float", !16, i64 0}
!35 = !{!"p1 _ZTS10Vec_Vec_t_", !20, i64 0}
!36 = !{!"long", !16, i64 0}
!37 = !{!"p1 _ZTS10Vec_Wrd_t_", !20, i64 0}
!38 = !{!"p1 _ZTS10Vec_Bit_t_", !20, i64 0}
!39 = !{!"p1 _ZTS10Gia_Dat_t_", !20, i64 0}
!40 = !{!"_ZTS10Gia_Man_t_", !21, i64 0, !21, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !22, i64 32, !23, i64 40, !17, i64 48, !17, i64 52, !17, i64 56, !24, i64 64, !24, i64 72, !25, i64 80, !25, i64 96, !17, i64 112, !17, i64 116, !17, i64 120, !25, i64 128, !23, i64 144, !23, i64 152, !24, i64 160, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180, !23, i64 184, !26, i64 192, !23, i64 200, !23, i64 208, !23, i64 216, !17, i64 224, !17, i64 228, !23, i64 232, !17, i64 240, !24, i64 248, !24, i64 256, !24, i64 264, !27, i64 272, !27, i64 280, !24, i64 288, !20, i64 296, !24, i64 304, !24, i64 312, !28, i64 320, !21, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !29, i64 376, !29, i64 384, !30, i64 392, !25, i64 400, !25, i64 416, !24, i64 432, !24, i64 440, !24, i64 448, !24, i64 456, !24, i64 464, !24, i64 472, !24, i64 480, !24, i64 488, !24, i64 496, !24, i64 504, !24, i64 512, !21, i64 520, !31, i64 528, !32, i64 536, !33, i64 544, !33, i64 552, !24, i64 560, !24, i64 568, !24, i64 576, !24, i64 584, !24, i64 592, !17, i64 600, !34, i64 604, !34, i64 608, !24, i64 616, !23, i64 624, !17, i64 632, !30, i64 640, !30, i64 648, !30, i64 656, !24, i64 664, !24, i64 672, !24, i64 680, !24, i64 688, !24, i64 696, !24, i64 704, !24, i64 712, !24, i64 720, !24, i64 728, !35, i64 736, !33, i64 744, !20, i64 752, !20, i64 760, !20, i64 768, !36, i64 776, !36, i64 784, !20, i64 792, !23, i64 800, !17, i64 808, !17, i64 812, !17, i64 816, !17, i64 820, !17, i64 824, !17, i64 828, !17, i64 832, !17, i64 836, !17, i64 840, !17, i64 844, !17, i64 848, !17, i64 852, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !24, i64 888, !24, i64 896, !24, i64 904, !38, i64 912, !17, i64 920, !17, i64 924, !17, i64 928, !24, i64 936, !17, i64 944, !17, i64 948, !24, i64 952, !24, i64 960, !30, i64 968, !37, i64 976, !24, i64 984, !24, i64 992, !17, i64 1000, !17, i64 1004, !37, i64 1008, !25, i64 1016, !25, i64 1032, !25, i64 1048, !39, i64 1064, !28, i64 1072, !28, i64 1080, !17, i64 1088, !17, i64 1092, !17, i64 1096, !17, i64 1100, !28, i64 1104, !24, i64 1112, !24, i64 1120, !24, i64 1128, !30, i64 1136}
!41 = !{!40, !17, i64 24}
!42 = !{!40, !21, i64 0}
!43 = !{!40, !21, i64 8}
!44 = !{!40, !24, i64 64}
!45 = !{!25, !17, i64 4}
!46 = !{!40, !22, i64 32}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!40, !24, i64 72}
!49 = !{!"vtable pointer", !15, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 long", !20, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseImSaImEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorImSaImEE", !54, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !20, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIiSaIiEE", !63, i64 0}
!65 = !{!"p1 _ZTSSt6vectorImSaImEE", !20, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseISt6vectorImSaImEESaIS2_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseISt6vectorImSaImEESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIS_ImSaImEESaIS1_EE", !68, i64 0}
!70 = !{!"p1 _ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !20, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE", !73, i64 0}
!75 = !{!"_ZTSN5Ttopt10TruthTableE", !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !55, i64 24, !60, i64 48, !60, i64 72, !64, i64 96, !69, i64 120, !74, i64 144, !74, i64 168, !60, i64 192}
!76 = !{!"bool", !16, i64 0}
!77 = !{!"_ZTSN5Ttopt13TruthTableReoE", !75, i64 0, !76, i64 216, !60, i64 224, !74, i64 248}
!78 = !{!77, !76, i64 216}
!79 = !{!25, !23, i64 8}
!80 = !{!17, !17, i64 0}
!81 = !{!75, !17, i64 12}
!82 = !{!36, !36, i64 0}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!52, !51, i64 0}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = !{!61, !23, i64 8}
!87 = !{!61, !23, i64 0}
!88 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!89 = !{!23, !23, i64 0}
!90 = !{!61, !23, i64 16}
!91 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!92 = !{!40, !17, i64 16}
!93 = !{!25, !17, i64 0}
!94 = !{!75, !17, i64 8}
!95 = !{!75, !17, i64 20}
!96 = !{!75, !17, i64 16}
!97 = !{!52, !51, i64 8}
!98 = !{!52, !51, i64 16}
!99 = !{!57, !56, i64 0}
!100 = !{!57, !56, i64 8}
!101 = !{!57, !56, i64 16}
!102 = !{!71, !70, i64 0}
!103 = !{!71, !70, i64 8}
!104 = !{!71, !70, i64 16}
!105 = !{!40, !23, i64 232}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!"p1 _ZTSSt6vectorIS_ISt4pairIiiESaIS1_EESaIS3_EE", !20, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ISt4pairIiiESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!108, !107, i64 0}
!110 = !{!108, !107, i64 8}
!111 = !{!"p1 _ZTSSt6vectorISt4pairIiiESaIS1_EE", !20, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt4pairIiiESaIS2_EESaIS4_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!112, !111, i64 0}
!114 = !{!112, !111, i64 8}
!115 = !{!"p1 _ZTSSt4pairIiiE", !20, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 0}
!118 = !{!116, !115, i64 16}
!119 = !{!112, !111, i64 16}
!120 = !{!108, !107, i64 16}
!121 = !{!66, !65, i64 0}
!122 = !{!66, !65, i64 8}
!123 = !{!66, !65, i64 16}
!124 = !{!"_ZTS14Hash_IntMan_t_", !24, i64 0, !24, i64 8, !17, i64 16}
!125 = !{!124, !24, i64 0}
!126 = !{!124, !24, i64 8}
!127 = !{!51, !51, i64 0}
!128 = !{!56, !56, i64 0}
!129 = !{!116, !115, i64 8}
!130 = !{!"_ZTSSt4pairIiiE", !17, i64 0, !17, i64 4}
!131 = !{!130, !17, i64 0}
!132 = !{!130, !17, i64 4}
!133 = !{!111, !111, i64 0}
!134 = !{!115, !115, i64 0}
!135 = distinct !{!135, !47}
!136 = distinct !{!136, !47, !83}
!137 = distinct !{!137, !47}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !138}
!142 = distinct !{!142, !47, !83, !85}
!143 = distinct !{!143, !47}
!144 = !{!139}
!145 = !{!140}
!146 = !{!141}
!147 = !{!139, !140}
!148 = distinct !{!148, !47, !83, !85}
!149 = distinct !{!149, !47, !85, !83}
!150 = distinct !{!150, !47}
!151 = distinct !{!151, !47}
!152 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!153 = distinct !{!153, !47, !83, !85}
!154 = distinct !{!154, !47, !85, !83}
!155 = distinct !{!155, !47}
!156 = distinct !{!156, !47}
!157 = distinct !{!157, !47}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !47}
!160 = distinct !{!160, !47}
!161 = distinct !{!161, !47}
!162 = distinct !{!162, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !162}
!166 = distinct !{!166, !47, !83, !85}
!167 = distinct !{!167, !47, !83}
!168 = distinct !{!168, !47}
!169 = distinct !{!169, !47, !83, !85}
!170 = distinct !{!170, !106}
!171 = distinct !{!171, !47, !83}
!172 = distinct !{!172, !47}
!173 = !{!"_ZTS10Vec_Wrd_t_", !17, i64 0, !17, i64 4, !51, i64 8}
!174 = !{!173, !17, i64 0}
!175 = !{!173, !51, i64 8}
!176 = !{!173, !17, i64 4}
!177 = !{!163}
!178 = !{!164}
!179 = !{!165}
!180 = !{!163, !164}
!181 = !{ptr @_ZN5Ttopt14TruthTableCare8OptimizeEv}
!182 = distinct !{!182, !47}
!183 = !{!40, !17, i64 28}
!184 = !{!40, !17, i64 820}
!185 = !{!40, !23, i64 40}
!186 = distinct !{!186, !47}
!187 = distinct !{!187, !47, !83, !85}
!188 = distinct !{!188, !47, !85, !83}
!189 = distinct !{!189, !47, !83, !85}
!190 = distinct !{!190, !47, !85, !83}
!191 = distinct !{!191, !47}
!192 = !{i8 0, i8 2}
!193 = !{}
!194 = distinct !{!194, !47, !83, !85}
!195 = distinct !{!195, !47, !85, !83}
!196 = distinct !{!196, !47}
!197 = !{!124, !17, i64 16}
!198 = distinct !{!198, !47, !83, !85}
!199 = distinct !{!199, !47, !85, !83}
!200 = distinct !{!200, !47}
!201 = distinct !{!201, !47}
!202 = distinct !{!202, !47, !83, !85}
!203 = distinct !{!203, !47, !85, !83}
!204 = distinct !{!204, !47}
!205 = distinct !{!205, !47}
!206 = distinct !{!206, !47}
!207 = distinct !{!207, !47, !83, !85}
!208 = distinct !{!208, !47, !85, !83}
!209 = distinct !{!209, !"LVerDomain"}
!210 = distinct !{!210, !209}
!211 = distinct !{!211, !209}
!212 = distinct !{!212, !47, !83, !85}
!213 = distinct !{!213, !47, !83}
!214 = distinct !{!214, !47}
!215 = distinct !{!215, !47, !83, !85}
!216 = distinct !{!216, !47}
!217 = distinct !{!217, !47, !85, !83}
!218 = !{!210}
!219 = !{!211}
!220 = distinct !{!220, !47, !83, !85}
!221 = distinct !{!221, !47}
!222 = distinct !{!222, !47, !83}
!223 = distinct !{!223, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_"}
!224 = distinct !{!224, !223, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!225 = distinct !{!225, !223, !"_ZSt19__relocate_object_aISt6vectorImSaImEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!226 = distinct !{!226, !47}
!227 = !{!224}
!228 = !{!225}
!229 = distinct !{!229, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!230 = distinct !{!230, !229, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !229, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!232 = distinct !{!232, !47}
!233 = !{!230}
!234 = !{!231}
!235 = distinct !{!235, !47}
!236 = distinct !{!236, !47}
!237 = distinct !{!237, !47}
!238 = distinct !{!238, !47}
!239 = distinct !{!239, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!240 = distinct !{!240, !239, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!241 = distinct !{!241, !239, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!242 = distinct !{!242, !47}
!243 = !{!240}
!244 = !{!241}
!245 = distinct !{!245, !47}
!246 = distinct !{!246, !47}
!247 = distinct !{!247, !47}
!248 = distinct !{!248, !47}
!249 = distinct !{!249, !47}
!250 = distinct !{!250, !47}
!251 = distinct !{!251, !47}
!252 = !{!"_ZTS14Hash_IntObj_t_", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!253 = !{!252, !17, i64 0}
!254 = !{!252, !17, i64 4}
!255 = !{!252, !17, i64 8}
!256 = !{!252, !17, i64 12}
!257 = distinct !{!257, !47, !83, !85}
!258 = distinct !{!258, !47, !85, !83}
!259 = distinct !{!259, !47}
!260 = distinct !{!260, !47}
!261 = distinct !{!261, !47}
!262 = distinct !{!262, !47}
!263 = distinct !{!263, !47}
!264 = distinct !{!264, !47}
!265 = distinct !{!265, !47}
!266 = distinct !{!266, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!267 = distinct !{!267, !266, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!268 = distinct !{!268, !266, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!269 = !{!267}
!270 = !{!268}
!271 = distinct !{!271, !47}
!272 = distinct !{!272, !47, !83, !85}
!273 = distinct !{!273, !47, !85, !83}
!274 = !{ptr @_ZN5Ttopt10TruthTable8BDDBuildEv}
!275 = distinct !{!275, !"LVerDomain"}
!276 = distinct !{!276, !275}
!277 = distinct !{!277, !275}
!278 = distinct !{!278, !47, !83, !85}
!279 = distinct !{!279, !47, !83}
!280 = distinct !{!280, !47}
!281 = distinct !{!281, !47, !83, !85}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47, !85, !83}
!284 = !{!276}
!285 = !{!277}
!286 = distinct !{!286, !"LVerDomain"}
!287 = distinct !{!287, !286}
!288 = distinct !{!288, !286}
!289 = distinct !{!289, !47, !83, !85}
!290 = distinct !{!290, !47, !83}
!291 = distinct !{!291, !106}
!292 = distinct !{!292, !47}
!293 = !{!287}
!294 = !{!288}
!295 = distinct !{!295, !47}
!296 = distinct !{!296, !47}
!297 = distinct !{!297, !47}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47, !83, !85}
!300 = distinct !{!300, !47, !85, !83}
!301 = distinct !{!301, !"LVerDomain"}
!302 = distinct !{!302, !301}
!303 = distinct !{!303, !301}
!304 = distinct !{!304, !47, !83, !85}
!305 = distinct !{!305, !47, !83}
!306 = distinct !{!306, !106}
!307 = distinct !{!307, !47}
!308 = !{!302}
!309 = !{!303}
!310 = distinct !{!310, !"LVerDomain"}
!311 = distinct !{!311, !310}
!312 = distinct !{!312, !310}
!313 = distinct !{!313, !47, !83, !85}
!314 = distinct !{!314, !47, !83}
!315 = distinct !{!315, !106}
!316 = distinct !{!316, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!317 = distinct !{!317, !316, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!318 = distinct !{!318, !316, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!319 = !{!311}
!320 = !{!312}
!321 = !{!317}
!322 = !{!318}
!323 = distinct !{!323, !47}
!324 = distinct !{!324, !47}
!325 = distinct !{!325, !47}
!326 = distinct !{!326, !47}
!327 = distinct !{!327, !47}
!328 = distinct !{!328, !47}
!329 = distinct !{!329, !"_ZSt19__relocate_object_aISt6vectorIS0_ISt4pairIiiESaIS2_EESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_"}
!330 = distinct !{!330, !329, !"_ZSt19__relocate_object_aISt6vectorIS0_ISt4pairIiiESaIS2_EESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!331 = distinct !{!331, !329, !"_ZSt19__relocate_object_aISt6vectorIS0_ISt4pairIiiESaIS2_EESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!332 = distinct !{!332, !47}
!333 = !{!330}
!334 = !{!331}
!335 = distinct !{!335, !47}
!336 = distinct !{!336, !47, !83, !85}
!337 = distinct !{!337, !47, !83}
!338 = distinct !{!338, !47, !83, !85}
!339 = distinct !{!339, !47, !83}
!340 = distinct !{!340, !47}
!341 = distinct !{!341, !47}
!342 = distinct !{!342, !47}
!343 = distinct !{!343, !47}
!344 = distinct !{!344, !47}
!345 = distinct !{!345, !"LVerDomain"}
!346 = distinct !{!346, !345}
!347 = distinct !{!347, !345}
!348 = distinct !{!348, !345}
!349 = distinct !{!349, !47, !83, !85}
!350 = distinct !{!350, !47, !83}
!351 = !{!346}
!352 = !{!347}
!353 = !{!348}
!354 = !{!346, !347}
!355 = distinct !{!355, !"_ZSt19__relocate_object_aISt6vectorISt4pairIiiESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!356 = distinct !{!356, !355, !"_ZSt19__relocate_object_aISt6vectorISt4pairIiiESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!357 = distinct !{!357, !355, !"_ZSt19__relocate_object_aISt6vectorISt4pairIiiESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!358 = distinct !{!358, !47}
!359 = !{!356}
!360 = !{!357}
!361 = distinct !{!361, !47, !83, !85}
!362 = distinct !{!362, !47}
!363 = distinct !{!363, !47}
!364 = distinct !{!364, !"_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv"}
!365 = distinct !{!365, !364, !"_ZNSt6vectorISt4pairIiiESaIS1_EE6rbeginEv: argument 0"}
!366 = distinct !{!366, !"_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv"}
!367 = distinct !{!367, !366, !"_ZNSt6vectorISt4pairIiiESaIS1_EE4rendEv: argument 0"}
!368 = distinct !{!368, !47, !83, !85}
!369 = distinct !{!369, !47, !83}
!370 = distinct !{!370, !47, !83, !85}
!371 = distinct !{!371, !47, !83}
!372 = distinct !{!372, !106}
!373 = distinct !{!373, !106}
!374 = distinct !{!374, !47}
!375 = !{!365}
!376 = !{!367}
end_hunk_2
