Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/default_filter_factory?download=true
inline.NumInlined: 4247
inline.NumDeleted: 2030
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN5boost6spirit2qi14ureal_policiesIdE12parse_frac_nIPKcmEEbRT_RKS7_RT0_Ri:bb.a
  %i.y = add i64 %i.x, %i.v                       ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.046113.i.i.i, i64 2 ; 5 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %.split.loop.exit101.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !51   ; 2 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.i57.i.i.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i57.i.i.i, label %bb.l, label %.split.loop.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp ugt i64 %i.y, 1844674407370955161
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = mul nuw i64 %i.y, 10                    ; 2 uses
  %i.af = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ag = sub nsw i64 47, %i.af
  %.not.i.i.i58.i.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i.i58.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.z, ptr %0, align 8, !tbaa !25
  store i64 %i.y, ptr %2, align 8, !tbaa !52
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ah = add i64 %i.ae, -48
  %i.ai = add i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.046113.i.i.i, i64 3 ; 2 uses
  %i.ak = add i64 %.0114.i.i.i, 3
  %i.al = icmp eq ptr %i.aj, %i.b
  br i1 %i.al, label %.split.loop.exit101.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !274

.split.loop.exit.i.i.i:                           ; preds = %bb.k
  %i.am = add i64 %.0114.i.i.i, 2
  br label %.split.loop.exit101.i.i.i

.split.loop.exit93.i.i.i:                         ; preds = %bb.f
  %i.an = add i64 %.0114.i.i.i, 1
  br label %.split.loop.exit101.i.i.i

.split.loop.exit101.i.i.i:                        ; preds = %bb.o, %bb.j, %bb.e, %.lr.ph.i.i.i, %.split.loop.exit93.i.i.i, %.split.loop.exit.i.i.i
  %.168.i.i.i = phi i64 [ %i.y, %.split.loop.exit.i.i.i ], [ %i.o, %.split.loop.exit93.i.i.i ], [ %i.o, %bb.e ], [ %i.ai, %bb.o ], [ %.067112.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.j ]
  %.147.i.i.i = phi ptr [ %i.z, %.split.loop.exit.i.i.i ], [ %i.p, %.split.loop.exit93.i.i.i ], [ %scevgep.i.i.i, %bb.e ], [ %scevgep.i.i.i, %bb.o ], [ %.046113.i.i.i, %.lr.ph.i.i.i ], [ %scevgep.i.i.i, %bb.j ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.am, %.split.loop.exit.i.i.i ], [ %i.an, %.split.loop.exit93.i.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.o ], [ %.0114.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.j ]
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKcEEbRT_RKS7_Rm.exit, label %bb.p

bb.p:                                             ; preds = %.split.loop.exit101.i.i.i
  store i64 %.168.i.i.i, ptr %2, align 8, !tbaa !52
  store ptr %.147.i.i.i, ptr %0, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.p, %bb.d, %bb.n
  %i.ao = phi ptr [ %i.p, %bb.i ], [ %.147.i.i.i, %bb.p ], [ %.046113.i.i.i, %bb.d ], [ %i.z, %bb.n ] ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.a to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = trunc i64 %i.ar to i32
  store i32 %i.as, ptr %3, align 4, !tbaa !42
  %i.at = load ptr, ptr %1, align 8, !tbaa !25    ; 7 uses
  %i.au = icmp eq ptr %i.ao, %i.at
  br i1 %i.au, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKcEEbRT_RKS7_Rm.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = sub i64 %i.av, %i.ap
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ao, i64 %i.aw ; 4 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i
  %.060.i.i.i.i = phi i64 [ %i.ba, %bb.r ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.04459.i.i.i.i = phi ptr [ %i.az, %bb.r ], [ %i.ao, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %i.ax = load i8, ptr %.04459.i.i.i.i, align 1, !tbaa !51 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 48
  br i1 %i.ay, label %bb.r, label %.critedge.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.04459.i.i.i.i, i64 1 ; 2 uses
  %i.ba = add nuw i64 %.060.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.bb = add i8 %i.ax, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.bb, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i
  %i.bc = icmp eq i64 %.060.i.i.i.i, 0
  br i1 %i.bc, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKcEEbRT_RKS7_Rm.exit, label %.loopexit.i

bb.t:                                             ; preds = %.critedge.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.04459.i.i.i.i, i64 1 ; 3 uses
  %i.be = icmp eq ptr %i.bd, %i.at
  br i1 %i.be, label %.loopexit.i, label %.lr.ph64.i.i.i.i

.lr.ph64.i.i.i.i:                                 ; preds = %bb.t, %bb.y
  %.14562.i.i.i.i = phi ptr [ %i.bp, %bb.y ], [ %i.bd, %bb.t ] ; 5 uses
  %i.bf = load i8, ptr %.14562.i.i.i.i, align 1, !tbaa !51
  %i.bg = add i8 %i.bf, -48
  %or.cond.i52.i.i.i.i = icmp ult i8 %i.bg, 10
  br i1 %or.cond.i52.i.i.i.i, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %.lr.ph64.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 1 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %i.at
  br i1 %i.bi, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.bk = add i8 %i.bj, -48
  %or.cond.i53.i.i.i.i = icmp ult i8 %i.bk, 10
  br i1 %or.cond.i53.i.i.i.i, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 2 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.at
  br i1 %i.bm, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bo = add i8 %i.bn, -48
  %or.cond.i54.i.i.i.i = icmp ult i8 %i.bo, 10
  br i1 %or.cond.i54.i.i.i.i, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 3 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.at
  br i1 %i.bq, label %.loopexit.i, label %.lr.ph64.i.i.i.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.r, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %.lr.ph64.i.i.i.i, %bb.t, %bb.s
  %.04459.lcssa.sink.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %bb.y ], [ %.04459.i.i.i.i, %bb.s ], [ %i.bd, %bb.t ], [ %.14562.i.i.i.i, %.lr.ph64.i.i.i.i ], [ %i.bh, %bb.v ], [ %i.bl, %bb.x ], [ %scevgep.i.i.i.i, %bb.w ], [ %scevgep.i.i.i.i, %bb.u ], [ %scevgep.i.i.i.i, %bb.r ]
  store ptr %.04459.lcssa.sink.i.i.i.i, ptr %0, align 8, !tbaa !25
  br label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKcEEbRT_RKS7_Rm.exit

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKcEEbRT_RKS7_Rm.exit: ; preds = %.loopexit.i, %bb.s, %bb.q, %.split.loop.exit101.i.i.i, %bb.a
  %.1.i11 = phi i1 [ false, %.split.loop.exit101.i.i.i ], [ false, %bb.a ], [ true, %bb.q ], [ true, %bb.s ], [ true, %.loopexit.i ]
  ret i1 %.1.i11
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6spirit2qi6detail11extract_intIiLj10ELj1ELin1ENS2_20negative_accumulatorILj10EEELb0ELb0EE10parse_mainIPKciEEbRT_RKSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 7 uses
  %.not109 = icmp eq ptr %i.a, %i.b
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = ptrtoaddr ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.e ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0111 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.050110 = phi ptr [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i8, ptr %.050110, align 1, !tbaa !51 ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.050110, i64 1 ; 2 uses
  %i.i = add nuw i64 %.0111, 1
  %.not = icmp eq ptr %i.h, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !275

._crit_edge:                                      ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %scevgep, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

.critedge:                                        ; preds = %.lr.ph
  %i.j = add i8 %i.f, -48
  %or.cond.i = icmp ult i8 %i.j, 10
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = icmp eq i64 %.0111, 0
  br i1 %i.k, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %.050110, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

bb.e:                                             ; preds = %.critedge
  %i.l = zext nneg i8 %i.f to i32
  %i.m = sub nsw i32 48, %i.l                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.050110, i64 1 ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.e, %bb.v
  %.1115 = phi i64 [ %i.bd, %bb.v ], [ %.0111, %bb.e ] ; 4 uses
  %.151114 = phi ptr [ %i.bc, %bb.v ], [ %i.n, %bb.e ] ; 5 uses
  %.189113 = phi i32 [ %5, %bb.v ], [ %i.m, %bb.e ] ; 5 uses
  %i.p = load i8, ptr %.151114, align 1, !tbaa !51 ; 3 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i58 = icmp ult i8 %i.q, 10
  br i1 %or.cond.i58, label %bb.f, label %._crit_edge118

bb.f:                                             ; preds = %.lr.ph117
  %i.r = icmp ult i64 %.1115, 8
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %i.p to i32
  %i.t = mul nsw i32 %.189113, 10
  %i.u = sub i32 %i.t, %i.s
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = icmp slt i32 %.189113, -214748364
  br i1 %i.v, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = mul i32 %.189113, 10                     ; 2 uses
  %i.x = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.y = add nuw i32 %i.x, 2147483600
  %.not.i.i.i = icmp slt i32 %i.w, %i.y
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i: ; preds = %bb.i
  %i.z = sub i32 %i.w, %i.x
  br label %bb.j

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit: ; preds = %bb.h, %bb.i
  store i32 %.189113, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.j:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i, %bb.g
  %.3.ph = phi i32 [ %i.u, %bb.g ], [ %i.z, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i ]
  %3 = add i32 %.3.ph, 48                         ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.151114, i64 1 ; 3 uses
  %i.ab = add i64 %.1115, 1
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %._crit_edge118, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !51  ; 3 uses
  %i.ae = add i8 %i.ad, -48
  %or.cond.i60 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i60, label %bb.l, label %._crit_edge118

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ult i64 %i.ab, 8
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i8 %i.ad to i32
  %i.ah = mul nsw i32 %3, 10
  %i.ai = sub i32 %i.ah, %i.ag
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aj = icmp slt i32 %3, -214748364
  br i1 %i.aj, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit67, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = mul i32 %3, 10                          ; 2 uses
  %i.al = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.am = add nuw i32 %i.al, 2147483600
  %.not.i.i.i61 = icmp slt i32 %i.ak, %i.am
  br i1 %.not.i.i.i61, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit67, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62: ; preds = %bb.o
  %i.an = sub i32 %i.ak, %i.al
  br label %bb.p

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit67: ; preds = %bb.n, %bb.o
  store i32 %3, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.p:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62, %bb.m
  %.4.ph = phi i32 [ %i.ai, %bb.m ], [ %i.an, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62 ]
  %4 = add i32 %.4.ph, 48                         ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.151114, i64 2 ; 3 uses
  %i.ap = add i64 %.1115, 2
  %i.aq = icmp eq ptr %i.ao, %i.b
  br i1 %i.aq, label %._crit_edge118, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !51  ; 3 uses
  %i.as = add i8 %i.ar, -48
  %or.cond.i68 = icmp ult i8 %i.as, 10
  br i1 %or.cond.i68, label %bb.r, label %._crit_edge118

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = zext nneg i8 %i.ar to i32
  %i.av = mul nsw i32 %4, 10
  %i.aw = sub i32 %i.av, %i.au
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp slt i32 %4, -214748364
  br i1 %i.ax, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit75, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = mul i32 %4, 10                          ; 2 uses
  %i.az = zext nneg i8 %i.ar to i32               ; 2 uses
  %i.ba = add nuw i32 %i.az, 2147483600
  %.not.i.i.i69 = icmp slt i32 %i.ay, %i.ba
  br i1 %.not.i.i.i69, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit75, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70: ; preds = %bb.u
  %i.bb = sub i32 %i.ay, %i.az
  br label %bb.v

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit75: ; preds = %bb.t, %bb.u
  store i32 %4, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.v:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70, %bb.s
  %.5.ph = phi i32 [ %i.aw, %bb.s ], [ %i.bb, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70 ]
  %5 = add i32 %.5.ph, 48                         ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151114, i64 3 ; 2 uses
  %i.bd = add i64 %.1115, 3
  %i.be = icmp eq ptr %i.bc, %i.b
  br i1 %i.be, label %._crit_edge118, label %.lr.ph117, !llvm.loop !276

._crit_edge118:                                   ; preds = %bb.v, %.lr.ph117, %bb.j, %bb.k, %bb.p, %bb.q, %bb.e
  %.290 = phi i32 [ %i.m, %bb.e ], [ %.189113, %.lr.ph117 ], [ %3, %bb.k ], [ %4, %bb.q ], [ %4, %bb.p ], [ %3, %bb.j ], [ %5, %bb.v ]
  %.2 = phi ptr [ %i.n, %bb.e ], [ %.151114, %.lr.ph117 ], [ %i.aa, %bb.k ], [ %i.ao, %bb.q ], [ %scevgep, %bb.p ], [ %scevgep, %bb.j ], [ %scevgep, %bb.v ]
  store i32 %.290, ptr %2, align 4, !tbaa !42
  store ptr %.2, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit67, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit75, %._crit_edge118, %bb.c, %._crit_edge
  %.153 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %._crit_edge118 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit75 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit67 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.153
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6spirit2qi6detail11extract_intIiLj10ELj1ELin1ENS2_20positive_accumulatorILj10EEELb0ELb0EE10parse_mainIPKciEEbRT_RKSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 7 uses
  %.not104 = icmp eq ptr %i.a, %i.b
  br i1 %.not104, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = ptrtoaddr ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.e ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0106 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.050105 = phi ptr [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i8, ptr %.050105, align 1, !tbaa !51 ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.050105, i64 1 ; 2 uses
  %i.i = add nuw i64 %.0106, 1
  %.not = icmp eq ptr %i.h, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !277

._crit_edge:                                      ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %scevgep, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

.critedge:                                        ; preds = %.lr.ph
  %i.j = add i8 %i.f, -48
  %or.cond.i = icmp ult i8 %i.j, 10
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = icmp eq i64 %.0106, 0
  br i1 %i.k, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %.050105, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

bb.e:                                             ; preds = %.critedge
  %i.l = zext nneg i8 %i.f to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.050105, i64 1 ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.e, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68
  %.1110 = phi i64 [ %i.bd, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68 ], [ %.0106, %bb.e ] ; 4 uses
  %.151109 = phi ptr [ %i.bc, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68 ], [ %i.n, %bb.e ] ; 5 uses
  %.186108 = phi i32 [ %i.bb, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68 ], [ %i.m, %bb.e ] ; 5 uses
  %i.p = load i8, ptr %.151109, align 1, !tbaa !51 ; 3 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i58 = icmp ult i8 %i.q, 10
  br i1 %or.cond.i58, label %bb.f, label %._crit_edge113

bb.f:                                             ; preds = %.lr.ph112
  %i.r = icmp ult i64 %.1110, 8
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %i.p to i32
  %i.t = mul nsw i32 %.186108, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = icmp sgt i32 %.186108, 214748364
  br i1 %i.u, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = mul i32 %.186108, 10                     ; 2 uses
  %i.w = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.x = sub nuw i32 -2147483601, %i.w
  %.not.i.i.i = icmp sgt i32 %i.v, %i.x
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit: ; preds = %bb.i, %bb.h
  store i32 %.186108, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i: ; preds = %bb.i, %bb.g
  %.sink159 = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.i ]
  %.sink158 = phi i32 [ %i.s, %bb.g ], [ %i.w, %bb.i ]
  %i.y = add i32 %.sink159, -48
  %i.z = add i32 %i.y, %.sink158                  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.151109, i64 1 ; 3 uses
  %i.ab = add i64 %.1110, 1
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %._crit_edge113, label %bb.j

bb.j:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !51  ; 3 uses
  %i.ae = add i8 %i.ad, -48
  %or.cond.i59 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i59, label %bb.k, label %._crit_edge113

bb.k:                                             ; preds = %bb.j
  %i.af = icmp ult i64 %i.ab, 8
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i8 %i.ad to i32
  %i.ah = mul nsw i32 %i.z, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp sgt i32 %i.z, 214748364
  br i1 %i.ai, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit65, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = mul i32 %i.z, 10                        ; 2 uses
  %i.ak = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.al = sub nuw i32 -2147483601, %i.ak
  %.not.i.i.i60 = icmp sgt i32 %i.aj, %i.al
  br i1 %.not.i.i.i60, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit65, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit65: ; preds = %bb.n, %bb.m
  store i32 %i.z, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61: ; preds = %bb.n, %bb.l
  %.sink161 = phi i32 [ %i.ah, %bb.l ], [ %i.aj, %bb.n ]
  %.sink160 = phi i32 [ %i.ag, %bb.l ], [ %i.ak, %bb.n ]
  %i.am = add i32 %.sink161, -48
  %i.an = add i32 %i.am, %.sink160                ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.151109, i64 2 ; 3 uses
  %i.ap = add i64 %.1110, 2
  %i.aq = icmp eq ptr %i.ao, %i.b
  br i1 %i.aq, label %._crit_edge113, label %bb.o

bb.o:                                             ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !51  ; 3 uses
  %i.as = add i8 %i.ar, -48
  %or.cond.i66 = icmp ult i8 %i.as, 10
  br i1 %or.cond.i66, label %bb.p, label %._crit_edge113

bb.p:                                             ; preds = %bb.o
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = zext nneg i8 %i.ar to i32
  %i.av = mul nsw i32 %i.an, 10
  br label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68

bb.r:                                             ; preds = %bb.p
  %i.aw = icmp sgt i32 %i.an, 214748364
  br i1 %i.aw, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit72, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = mul i32 %i.an, 10                       ; 2 uses
  %i.ay = zext nneg i8 %i.ar to i32               ; 2 uses
  %i.az = sub nuw i32 -2147483601, %i.ay
  %.not.i.i.i67 = icmp sgt i32 %i.ax, %i.az
  br i1 %.not.i.i.i67, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit72, label %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit72: ; preds = %bb.s, %bb.r
  store i32 %i.an, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68: ; preds = %bb.s, %bb.q
  %.sink163 = phi i32 [ %i.av, %bb.q ], [ %i.ax, %bb.s ]
  %.sink162 = phi i32 [ %i.au, %bb.q ], [ %i.ay, %bb.s ]
  %i.ba = add i32 %.sink163, -48
  %i.bb = add i32 %i.ba, %.sink162                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151109, i64 3 ; 2 uses
  %i.bd = add i64 %.1110, 3
  %i.be = icmp eq ptr %i.bc, %i.b
  br i1 %i.be, label %._crit_edge113, label %.lr.ph112, !llvm.loop !278

._crit_edge113:                                   ; preds = %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68, %.lr.ph112, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i, %bb.j, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61, %bb.o, %bb.e
  %.287 = phi i32 [ %i.m, %bb.e ], [ %.186108, %.lr.ph112 ], [ %i.z, %bb.j ], [ %i.an, %bb.o ], [ %i.an, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61 ], [ %i.z, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i ], [ %i.bb, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68 ]
  %.2 = phi ptr [ %i.n, %bb.e ], [ %.151109, %.lr.ph112 ], [ %i.aa, %bb.j ], [ %i.ao, %bb.o ], [ %scevgep, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i61 ], [ %scevgep, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i ], [ %scevgep, %_ZN5boost6spirit2qi6detail20positive_accumulatorILj10EE3addIicEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i68 ]
  store i32 %.287, ptr %2, align 4, !tbaa !42
  store ptr %.2, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit65, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit72, %._crit_edge113, %bb.c, %._crit_edge
  %.153 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %._crit_edge113 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit72 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit65 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20positive_accumulatorILj10EEELin1ELb0EE4callIciEEbT_mRT0_.exit ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.153
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_SF_T0_:bb.a
  %i.bm = phi ptr [ %i.bw, %bb.d ], [ %i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_T0_.exit.thread ]
  %.016.i = phi ptr [ %.0.i, %bb.d ], [ %.pn18, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_T0_.exit.thread ] ; 3 uses
  %.0915.i = phi ptr [ %.016.i, %bb.d ], [ %.019, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_T0_.exit.thread ] ; 4 uses
  %i.bn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(1) %i.bl) #26
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.d, label %_ZSt25__unguarded_linear_insertIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops14_Val_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_T0_.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclISt4pairINS2_9typeindex14stl_type_indexEPvEPSD_EEbRT_T0_.exit.i
  %i.bp = ptrtoint ptr %.in.i to i64
  store i64 %i.bp, ptr %.0915.i, align 8
  %i.bq = getelementptr inbounds i8, ptr %.0915.i, i64 -8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %.0915.i, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !137
  %.0.i = getelementptr inbounds i8, ptr %.016.i, i64 -16 ; 2 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !155 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !51
  %i.bv = icmp eq i8 %i.bu, 42
  %.idx.i.i.i.i.i.i.i = zext i1 %i.bv to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.bx = load ptr, ptr %.0.i, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !155 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  %i.cb = icmp eq i8 %i.ca, 42
  %.idx.i.i3.i.i.i.i.i = zext i1 %i.cb to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i3.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.cc
  br i1 %.not.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops14_Val_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_T0_.exit, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclISt4pairINS2_9typeindex14stl_type_indexEPvEPSD_EEbRT_T0_.exit.i, !llvm.loop !8

_ZSt25__unguarded_linear_insertIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops14_Val_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclISt4pairINS2_9typeindex14stl_type_indexEPvEPSD_EEbRT_T0_.exit.i, %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_T0_.exit.thread
  %.09.lcssa.i = phi ptr [ %.019, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_T0_.exit.thread ], [ %.0915.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclISt4pairINS2_9typeindex14stl_type_indexEPvEPSD_EEbRT_T0_.exit.i ], [ %.016.i, %bb.d ] ; 2 uses
  store i64 %i.p, ptr %.09.lcssa.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.lcssa.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.cd, align 8, !tbaa !137
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIPSt4pairIN5boost9typeindex14stl_type_indexEPvES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIPSt4pairIN5boost9typeindex14stl_type_indexEPvEN9__gnu_cxx5__ops14_Val_comp_iterINS1_3log11v2_mt_posix3aux21dispatching_map_orderEEEEvT_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !295

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost3log11v2_mt_posix3aux17once_block_sentry8rollbackEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN5boost3log11v2_mt_posix3aux29type_sequence_dispatcher_base12get_callbackEPNS1_15type_dispatcherENS_9typeindex14stl_type_indexE(ptr noundef %0, ptr %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.d
  %i.f = icmp sgt i64 %i.d, 0
  br i1 %i.f, label %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155  ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !51
  %i.j = icmp eq i8 %i.i, 42
  %.idx.i.i3.i.i.i.i.i.i = zext i1 %i.j to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i3.i.i.i.i.i.i ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %.thread.i.i, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.d, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %i.z, %.thread.i.i ] ; 2 uses
  %.01123.i.i = phi ptr [ %i.b, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %i.y, %.thread.i.i ] ; 3 uses
  %i.l = lshr i64 %.024.i.i, 1                    ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.01123.i.i, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !155  ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = icmp eq i8 %i.q, 42
  %.idx.i.i.i.i.i.i.i.i = zext i1 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.k
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPKSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPKSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_RT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %i.k) #26
  %.fr.i.i = freeze i32 %i.t
  %i.u = icmp slt i32 %.fr.i.i, 0                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.w = xor i64 %i.l, -1
  %i.x = add nsw i64 %.024.i.i, %i.w
  %spec.select.i.i = select i1 %i.u, ptr %i.v, ptr %.01123.i.i
  %spec.select22.i.i = select i1 %i.u, i64 %i.x, i64 %i.l
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPKSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.y = phi ptr [ %.01123.i.i, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPKSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_RT0_.exit.i.i ] ; 2 uses
  %i.z = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %spec.select22.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5boost3log11v2_mt_posix3aux21dispatching_map_orderEEclIPKSt4pairINS2_9typeindex14stl_type_indexEPvESE_EEbT_RT0_.exit.i.i ] ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIPKSt4pairIN5boost9typeindex14stl_type_indexEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit, !llvm.loop !297

_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit: ; preds = %.thread.i.i, %bb.a
  %.011.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %i.y, %.thread.i.i ] ; 3 uses
  %.not = icmp eq ptr %.011.lcssa.i.i, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit
  %i.ab = load ptr, ptr %.011.lcssa.i.i, align 8, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !155 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51
  %i.af = icmp eq i8 %i.ae, 42
  %.idx.i.i.i.i = zext i1 %i.af to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !155 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51
  %i.ak = icmp eq i8 %i.aj, 42
  %.idx.i.i3.i.i = zext i1 %i.ak to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i3.i.i ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.al
  br i1 %i.am, label %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread, label %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit

_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit: ; preds = %bb.b
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.al) #26
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread, label %bb.c

_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread: ; preds = %bb.b, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread
  %.sroa.012.0 = phi ptr [ %i.ap, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread ], [ null, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit ], [ null, %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit ]
  %.sroa.3.0 = phi ptr [ %i.ar, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit.thread ], [ null, %_ZN5boost9typeindexeqINS0_14stl_type_indexESt9type_infoEEbRKNS0_17type_index_facadeIT_T0_EES9_.exit ], [ null, %_ZSt11lower_boundIPKSt4pairIN5boost9typeindex14stl_type_indexEPvES5_NS1_3log11v2_mt_posix3aux21dispatching_map_orderEET_SC_SC_RKT0_T1_.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6spirit2qi6detail11extract_intIlLj10ELj1ELin1ENS2_20negative_accumulatorILj10EEELb0ELb0EE10parse_mainIPKclEEbRT_RKSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 7 uses
  %.not109 = icmp eq ptr %i.a, %i.b
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = ptrtoaddr ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.e ; 4 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0111 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.050110 = phi ptr [ %i.h, %bb.b ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %i.f = load i8, ptr %.050110, align 1, !tbaa !51 ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.050110, i64 1 ; 2 uses
  %i.i = add nuw i64 %.0111, 1
  %.not = icmp eq ptr %i.h, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !298

._crit_edge:                                      ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !52
  store ptr %scevgep, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

.critedge:                                        ; preds = %.lr.ph
  %i.j = add i8 %i.f, -48
  %or.cond.i = icmp ult i8 %i.j, 10
  br i1 %or.cond.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = icmp eq i64 %.0111, 0
  br i1 %i.k, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !52
  store ptr %.050110, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

bb.e:                                             ; preds = %.critedge
  %i.l = zext nneg i8 %i.f to i64
  %i.m = sub nsw i64 48, %i.l                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.050110, i64 1 ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.e, %bb.v
  %.1115 = phi i64 [ %i.bd, %bb.v ], [ %.0111, %bb.e ] ; 4 uses
  %.151114 = phi ptr [ %i.bc, %bb.v ], [ %i.n, %bb.e ] ; 5 uses
  %.189113 = phi i64 [ %5, %bb.v ], [ %i.m, %bb.e ] ; 5 uses
  %i.p = load i8, ptr %.151114, align 1, !tbaa !51 ; 3 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i58 = icmp ult i8 %i.q, 10
  br i1 %or.cond.i58, label %bb.f, label %._crit_edge118

bb.f:                                             ; preds = %.lr.ph117
  %i.r = icmp ult i64 %.1115, 17
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i8 %i.p to i64
  %i.t = mul nsw i64 %.189113, 10
  %i.u = sub i64 %i.t, %i.s
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = icmp slt i64 %.189113, -922337203685477580
  br i1 %i.v, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = mul nsw i64 %.189113, 10                 ; 2 uses
  %i.x = zext nneg i8 %i.p to i64                 ; 2 uses
  %i.y = add nuw i64 %i.x, 9223372036854775760
  %.not.i.i.i = icmp slt i64 %i.w, %i.y
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i: ; preds = %bb.i
  %i.z = sub i64 %i.w, %i.x
  br label %bb.j

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit: ; preds = %bb.h, %bb.i
  store i64 %.189113, ptr %2, align 8, !tbaa !52
  br label %._crit_edge.thread

bb.j:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i, %bb.g
  %.3.ph = phi i64 [ %i.u, %bb.g ], [ %i.z, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i ]
  %3 = add i64 %.3.ph, 48                         ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.151114, i64 1 ; 3 uses
  %i.ab = add i64 %.1115, 1
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %._crit_edge118, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !51  ; 3 uses
  %i.ae = add i8 %i.ad, -48
  %or.cond.i60 = icmp ult i8 %i.ae, 10
  br i1 %or.cond.i60, label %bb.l, label %._crit_edge118

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ult i64 %i.ab, 17
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i8 %i.ad to i64
  %i.ah = mul nsw i64 %3, 10
  %i.ai = sub i64 %i.ah, %i.ag
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.aj = icmp slt i64 %3, -922337203685477580
  br i1 %i.aj, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit67, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = mul nsw i64 %3, 10                      ; 2 uses
  %i.al = zext nneg i8 %i.ad to i64               ; 2 uses
  %i.am = add nuw i64 %i.al, 9223372036854775760
  %.not.i.i.i61 = icmp slt i64 %i.ak, %i.am
  br i1 %.not.i.i.i61, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit67, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62: ; preds = %bb.o
  %i.an = sub i64 %i.ak, %i.al
  br label %bb.p

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit67: ; preds = %bb.n, %bb.o
  store i64 %3, ptr %2, align 8, !tbaa !52
  br label %._crit_edge.thread

bb.p:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62, %bb.m
  %.4.ph = phi i64 [ %i.ai, %bb.m ], [ %i.an, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i62 ]
  %4 = add i64 %.4.ph, 48                         ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.151114, i64 2 ; 3 uses
  %i.ap = add i64 %.1115, 2
  %i.aq = icmp eq ptr %i.ao, %i.b
  br i1 %i.aq, label %._crit_edge118, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !51  ; 3 uses
  %i.as = add i8 %i.ar, -48
  %or.cond.i68 = icmp ult i8 %i.as, 10
  br i1 %or.cond.i68, label %bb.r, label %._crit_edge118

bb.r:                                             ; preds = %bb.q
  %i.at = icmp ult i64 %i.ap, 17
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = zext nneg i8 %i.ar to i64
  %i.av = mul nsw i64 %4, 10
  %i.aw = sub i64 %i.av, %i.au
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ax = icmp slt i64 %4, -922337203685477580
  br i1 %i.ax, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit75, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = mul nsw i64 %4, 10                      ; 2 uses
  %i.az = zext nneg i8 %i.ar to i64               ; 2 uses
  %i.ba = add nuw i64 %i.az, 9223372036854775760
  %.not.i.i.i69 = icmp slt i64 %i.ay, %i.ba
  br i1 %.not.i.i.i69, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit75, label %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70

_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70: ; preds = %bb.u
  %i.bb = sub i64 %i.ay, %i.az
  br label %bb.v

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit75: ; preds = %bb.t, %bb.u
  store i64 %4, ptr %2, align 8, !tbaa !52
  br label %._crit_edge.thread

bb.v:                                             ; preds = %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70, %bb.s
  %.5.ph = phi i64 [ %i.aw, %bb.s ], [ %i.bb, %_ZN5boost6spirit2qi6detail20negative_accumulatorILj10EE3addIlcEEbRT_T0_N4mpl_5bool_ILb1EEE.exit.i.i70 ]
  %5 = add i64 %.5.ph, 48                         ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.151114, i64 3 ; 2 uses
  %i.bd = add i64 %.1115, 3
  %i.be = icmp eq ptr %i.bc, %i.b
  br i1 %i.be, label %._crit_edge118, label %.lr.ph117, !llvm.loop !299

._crit_edge118:                                   ; preds = %bb.v, %.lr.ph117, %bb.j, %bb.k, %bb.p, %bb.q, %bb.e
  %.290 = phi i64 [ %i.m, %bb.e ], [ %.189113, %.lr.ph117 ], [ %3, %bb.k ], [ %4, %bb.q ], [ %4, %bb.p ], [ %3, %bb.j ], [ %5, %bb.v ]
  %.2 = phi ptr [ %i.n, %bb.e ], [ %.151114, %.lr.ph117 ], [ %i.aa, %bb.k ], [ %i.ao, %bb.q ], [ %scevgep, %bb.p ], [ %scevgep, %bb.j ], [ %scevgep, %bb.v ]
  store i64 %.290, ptr %2, align 8, !tbaa !52
  store ptr %.2, ptr %0, align 8, !tbaa !25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit67, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit75, %._crit_edge118, %bb.c, %._crit_edge
  %.153 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %._crit_edge118 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit75 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit67 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIclEEbT_mRT0_.exit ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.153
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE11invoke_implEPvS6_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::log::v2_mt_posix::value_visitor_invoker.279", align 1 ; 3 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = call i32 @_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_14attribute_nameERKNS1_19attribute_value_setET_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.c, ptr nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.e = load i8, ptr %i.a, align 1, !tbaa !108, !range !109, !noundef !105
  %i.f = trunc nuw i8 %i.e to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE10clone_implEPKv(ptr noundef %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE11invoke_implEPvS6_, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE10clone_implEPKv, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE12destroy_implEPv, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.b, align 8, !tbaa !42
  store i32 %i.f, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN5boost6fusion13vector_detail11vector_dataISt16integer_sequenceImJLm0ELm1EEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS6_IwS7_IwESaIwEEEEEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.b unwind label %bb.c, !inline_history !300

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i64, ptr %i.j, align 8, !tbaa !55
  store i64 %i.k, ptr %i.i, align 8, !tbaa !55
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #24
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEE12destroy_implEPv(ptr noundef %0) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5boost6fusion13vector_detail5storeILm1ENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !51
  %i.h = shl i64 %i.g, 2
  %i.i = add i64 %i.h, 4
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #24
  br label %_ZN5boost6fusion13vector_detail5storeILm1ENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev.exit.i.i.i.i.i

_ZN5boost6fusion13vector_detail5storeILm1ENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5boost6fusion13vector_detail5storeILm1ENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !51
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEED2Ev.exit

_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEED2Ev.exit: ; preds = %_ZN5boost6fusion13vector_detail5storeILm1ENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_14attribute_nameERKNS1_19attribute_value_setET_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::log::v2_mt_posix::save_result_wrapper.278", align 8 ; 5 uses
  %6 = alloca %"class.boost::log::v2_mt_posix::static_type_dispatcher.280", align 8 ; 7 uses
  %.sroa.06.0.copyload = load i32, ptr %1, align 4, !tbaa !42
  %i.a = invoke { ptr, ptr } @_ZNK5boost3log11v2_mt_posix19attribute_value_set4findENS1_14attribute_nameE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %.sroa.06.0.copyload)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = invoke { ptr, ptr } @_ZNK5boost3log11v2_mt_posix19attribute_value_set3endEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %_ZN5boost3log11v2_mt_posix15attribute_valueD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.f, align 8
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_15attribute_valueET_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.h = invoke noundef ptr @_ZN5boost3log11v2_mt_posix3aux24type_sequence_dispatcherINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS9_EENS7_IwS8_IwESaIwEEENSC_IwSE_EEEEE19get_dispatching_mapINS1_19save_result_wrapperIRKNS2_9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEEPKSt4pairINS_9typeindex14stl_type_indexEPvEv()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  store ptr @_ZN5boost3log11v2_mt_posix3aux29type_sequence_dispatcher_base12get_callbackEPNS1_15type_dispatcherENS_9typeindex14stl_type_indexE, ptr %6, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 22, ptr %i.j, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.k, align 8, !tbaa !119
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !112  ; 3 uses
  %.not.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i3.i, label %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i, label %_ZNK5boost3log11v2_mt_posix15attribute_value8dispatchERNS1_15type_dispatcherE.exit.i

_ZNK5boost3log11v2_mt_posix15attribute_value8dispatchERNS1_15type_dispatcherE.exit.i: ; preds = %.noexc
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc17 unwind label %bb.h, !inline_history !301

.noexc17:                                         ; preds = %_ZNK5boost3log11v2_mt_posix15attribute_value8dispatchERNS1_15type_dispatcherE.exit.i
  br i1 %i.p, label %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %.noexc17
  %.pr.i = load ptr, ptr %i.e, align 8, !tbaa !112 ; 3 uses
  %.not.i4.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i4.i, label %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr.i, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke ptr %i.s(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i)
          to label %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i unwind label %bb.h, !inline_history !301 ; 0 uses

_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i: ; preds = %bb.g, %bb.f, %.noexc17, %.noexc
  %.sroa.05.0.i = phi i32 [ 0, %.noexc17 ], [ 2, %.noexc ], [ 2, %bb.f ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_15attribute_valueET_.exit

_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_15attribute_valueET_.exit: ; preds = %bb.d, %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i
  %.sroa.05.1.i = phi i32 [ %.sroa.05.0.i, %_ZNK5boost3log11v2_mt_posix15attribute_value8get_typeEv.exit.i ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost3log11v2_mt_posix15attribute_valueD2Ev.exit

bb.h:                                             ; preds = %bb.g, %_ZNK5boost3log11v2_mt_posix15attribute_value8dispatchERNS1_15type_dispatcherE.exit.i, %bb.e, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost9exceptionE
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5boost9exceptionE
  br label %bb.j

_ZN5boost3log11v2_mt_posix15attribute_valueD2Ev.exit: ; preds = %bb.c, %_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_15attribute_valueET_.exit
  %.sroa.013.0 = phi i32 [ %.sroa.05.1.i, %_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl8vector22IbahstijlmxycwDsDifdeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17numeric_predicateIlNS1_8equal_toEEEbEEEENS1_17visitation_resultERKNS1_15attribute_valueET_.exit ], [ 1, %bb.c ]
  ret i32 %.sroa.013.0

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 3 uses
  %.014 = extractvalue { ptr, i32 } %.pn, 1
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9exceptionE) #21
  %i.x = icmp eq i32 %.014, %i.w
end_hunk_1
begin_hunk_2_@_ZN5boost6spirit2qi14ureal_policiesIdE12parse_frac_nIPKwmEEbRT_RKS7_RT0_Ri:bb.a
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %.split.loop.exit89.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.u, align 4, !tbaa !100
  %i.x = add i32 %i.w, -48                        ; 2 uses
  %or.cond.i57.i.i.i = icmp ult i32 %i.x, 10
  br i1 %or.cond.i57.i.i.i, label %bb.l, label %.split.loop.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.y = icmp ugt i64 %i.t, 1844674407370955161
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = mul nuw i64 %i.t, 10                     ; 2 uses
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = xor i64 %i.aa, -1
  %.not.i.i.i58.i.i.i = icmp ugt i64 %i.z, %i.ab
  br i1 %.not.i.i.i58.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.u, ptr %0, align 8, !tbaa !97
  store i64 %i.t, ptr %2, align 8, !tbaa !52
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.046113.i.i.i, i64 12 ; 3 uses
  %i.ae = add i64 %.0114.i.i.i, 3                 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %.split.loop.exit101.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !438

.split.loop.exit.i.i.i:                           ; preds = %bb.k
  %i.ag = add i64 %.0114.i.i.i, 2
  br label %.split.loop.exit101.i.i.i

.split.loop.exit89.i.i.i:                         ; preds = %bb.j
  %i.ah = add i64 %.0114.i.i.i, 2
  br label %.split.loop.exit101.i.i.i

.split.loop.exit93.i.i.i:                         ; preds = %bb.f
  %i.ai = add i64 %.0114.i.i.i, 1
  br label %.split.loop.exit101.i.i.i

.split.loop.exit97.i.i.i:                         ; preds = %bb.e
  %i.aj = add i64 %.0114.i.i.i, 1
  br label %.split.loop.exit101.i.i.i

.split.loop.exit101.i.i.i:                        ; preds = %bb.o, %.lr.ph.i.i.i, %.split.loop.exit97.i.i.i, %.split.loop.exit93.i.i.i, %.split.loop.exit89.i.i.i, %.split.loop.exit.i.i.i
  %.168.i.i.i = phi i64 [ %i.k, %.split.loop.exit97.i.i.i ], [ %i.k, %.split.loop.exit93.i.i.i ], [ %i.t, %.split.loop.exit.i.i.i ], [ %i.t, %.split.loop.exit89.i.i.i ], [ %.067112.i.i.i, %.lr.ph.i.i.i ], [ %i.ac, %bb.o ]
  %.147.i.i.i = phi ptr [ %i.l, %.split.loop.exit97.i.i.i ], [ %i.l, %.split.loop.exit93.i.i.i ], [ %i.u, %.split.loop.exit.i.i.i ], [ %i.u, %.split.loop.exit89.i.i.i ], [ %.046113.i.i.i, %.lr.ph.i.i.i ], [ %i.ad, %bb.o ] ; 2 uses
  %.1.i.i.i = phi i64 [ %i.aj, %.split.loop.exit97.i.i.i ], [ %i.ai, %.split.loop.exit93.i.i.i ], [ %i.ag, %.split.loop.exit.i.i.i ], [ %i.ah, %.split.loop.exit89.i.i.i ], [ %.0114.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.o ]
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit, label %bb.p

bb.p:                                             ; preds = %.split.loop.exit101.i.i.i
  store i64 %.168.i.i.i, ptr %2, align 8, !tbaa !52
  store ptr %.147.i.i.i, ptr %0, align 8, !tbaa !97
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.p, %bb.d, %bb.n
  %i.ak = phi ptr [ %i.l, %bb.i ], [ %.147.i.i.i, %bb.p ], [ %.046113.i.i.i, %bb.d ], [ %i.u, %bb.n ] ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.a to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %3, align 4, !tbaa !42
  %i.aq = load ptr, ptr %1, align 8, !tbaa !97    ; 6 uses
  %i.ar = icmp eq ptr %i.ak, %i.aq
  br i1 %i.ar, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.060.i.i.i.i = phi i64 [ %i.av, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.04459.i.i.i.i = phi ptr [ %i.au, %bb.r ], [ %i.ak, %bb.q ] ; 4 uses
  %i.as = load i32, ptr %.04459.i.i.i.i, align 4, !tbaa !100 ; 2 uses
  %i.at = icmp eq i32 %i.as, 48
  br i1 %i.at, label %bb.r, label %.critedge.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.04459.i.i.i.i, i64 4 ; 3 uses
  %i.av = add i64 %.060.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.aq
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit, label %.loopexit.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ax = add i32 %i.as, -48
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ax, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i
  %i.ay = icmp eq i64 %.060.i.i.i.i, 0
  br i1 %i.ay, label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit, label %.loopexit.i

bb.t:                                             ; preds = %.critedge.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.04459.i.i.i.i, i64 4 ; 3 uses
  %i.ba = icmp eq ptr %i.az, %i.aq
  br i1 %i.ba, label %.loopexit.i, label %.lr.ph64.i.i.i.i

.lr.ph64.i.i.i.i:                                 ; preds = %bb.t, %bb.y
  %.14562.i.i.i.i = phi ptr [ %i.bl, %bb.y ], [ %i.az, %bb.t ] ; 5 uses
  %i.bb = load i32, ptr %.14562.i.i.i.i, align 4, !tbaa !100
  %i.bc = add i32 %i.bb, -48
  %or.cond.i52.i.i.i.i = icmp ult i32 %i.bc, 10
  br i1 %or.cond.i52.i.i.i.i, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %.lr.ph64.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 4 ; 4 uses
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !100
  %i.bg = add i32 %i.bf, -48
  %or.cond.i53.i.i.i.i = icmp ult i32 %i.bg, 10
  br i1 %or.cond.i53.i.i.i.i, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 8 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, %i.aq
  br i1 %i.bi, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !100
  %i.bk = add i32 %i.bj, -48
  %or.cond.i54.i.i.i.i = icmp ult i32 %i.bk, 10
  br i1 %or.cond.i54.i.i.i.i, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %.14562.i.i.i.i, i64 12 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq
  br i1 %i.bm, label %.loopexit.i, label %.lr.ph64.i.i.i.i, !llvm.loop !10

.loopexit.i:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %.lr.ph64.i.i.i.i, %bb.t, %bb.s, %._crit_edge.i.i.i.i
  %.04459.lcssa.sink.i.i.i.i = phi ptr [ %i.au, %._crit_edge.i.i.i.i ], [ %.04459.i.i.i.i, %bb.s ], [ %i.az, %bb.t ], [ %.14562.i.i.i.i, %.lr.ph64.i.i.i.i ], [ %i.bd, %bb.v ], [ %i.bh, %bb.x ], [ %i.bh, %bb.w ], [ %i.bd, %bb.u ], [ %i.bl, %bb.y ]
  store ptr %.04459.lcssa.sink.i.i.i.i, ptr %0, align 8, !tbaa !97
  br label %_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit

_ZN5boost6spirit2qi12extract_uintImLj10ELj1ELin1ELb1ELb1EE4callIPKwEEbRT_RKS7_Rm.exit: ; preds = %.loopexit.i, %bb.s, %._crit_edge.i.i.i.i, %bb.q, %.split.loop.exit101.i.i.i, %bb.a
  %.1.i11 = phi i1 [ false, %.split.loop.exit101.i.i.i ], [ false, %bb.a ], [ true, %bb.q ], [ true, %._crit_edge.i.i.i.i ], [ true, %bb.s ], [ true, %.loopexit.i ]
  ret i1 %.1.i11
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6spirit2qi6detail11extract_intIiLj10ELj1ELin1ENS2_20negative_accumulatorILj10EEELb0ELb0EE10parse_mainIPKwiEEbRT_RKSA_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !97     ; 6 uses
  %.not106 = icmp eq ptr %i.a, %i.b
  br i1 %.not106, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0108 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.050107 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.c = load i32, ptr %.050107, align 4, !tbaa !100 ; 3 uses
  %i.d = icmp eq i32 %i.c, 48
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.050107, i64 4 ; 3 uses
  %i.f = add i64 %.0108, 1                        ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !439

._crit_edge:                                      ; preds = %bb.b
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %i.e, ptr %0, align 8, !tbaa !97
  br label %._crit_edge.thread

.critedge:                                        ; preds = %.lr.ph
  %i.h = add i32 %i.c, -48
  %or.cond.i = icmp ult i32 %i.h, 10
  br i1 %or.cond.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.i = icmp eq i64 %.0108, 0
  br i1 %i.i, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !42
  store ptr %.050107, ptr %0, align 8, !tbaa !97
  br label %._crit_edge.thread

bb.f:                                             ; preds = %.critedge
  %i.j = sub nsw i32 48, %i.c                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.050107, i64 4 ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.f, %bb.w
  %.1112 = phi i64 [ %i.al, %bb.w ], [ %.0108, %bb.f ] ; 4 uses
  %.151111 = phi ptr [ %i.ak, %bb.w ], [ %i.k, %bb.f ] ; 5 uses
  %.186110 = phi i32 [ %8, %bb.w ], [ %i.j, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %.151111, align 4, !tbaa !100 ; 3 uses
  %i.n = add i32 %i.m, -48
  %or.cond.i58 = icmp ult i32 %i.n, 10
  br i1 %or.cond.i58, label %bb.g, label %._crit_edge115

bb.g:                                             ; preds = %.lr.ph114
  %i.o = icmp ult i64 %.1112, 8
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = mul nsw i32 %.186110, 10
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.q = icmp slt i32 %.186110, -214748364
  br i1 %i.q, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = mul i32 %.186110, 10                     ; 2 uses
  %3 = add nuw i32 %i.m, 2147483600
  %.not.i.i.i = icmp slt i32 %i.r, %3
  br i1 %.not.i.i.i, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit, label %bb.k

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit: ; preds = %bb.i, %bb.j
  store i32 %.186110, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j, %bb.h
  %.3.ph = phi i32 [ %i.p, %bb.h ], [ %i.r, %bb.j ]
  %reass.sub.i59 = sub i32 %.3.ph, %i.m
  %4 = add i32 %reass.sub.i59, 48                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.151111, i64 4 ; 4 uses
  %i.t = add i64 %.1112, 1
  %i.u = icmp eq ptr %i.s, %i.b
  br i1 %i.u, label %._crit_edge115, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.s, align 4, !tbaa !100  ; 3 uses
  %i.w = add i32 %i.v, -48
  %or.cond.i60 = icmp ult i32 %i.w, 10
  br i1 %or.cond.i60, label %bb.m, label %._crit_edge115

bb.m:                                             ; preds = %bb.l
  %i.x = icmp ult i64 %i.t, 8
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = mul nsw i32 %4, 10
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.z = icmp slt i32 %4, -214748364
  br i1 %i.z, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = mul i32 %4, 10                          ; 2 uses
  %5 = add nuw i32 %i.v, 2147483600
  %.not.i.i.i61 = icmp slt i32 %i.aa, %5
  br i1 %.not.i.i.i61, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit67, label %bb.q

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit67: ; preds = %bb.o, %bb.p
  store i32 %4, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.q:                                             ; preds = %bb.p, %bb.n
  %.4.ph = phi i32 [ %i.y, %bb.n ], [ %i.aa, %bb.p ]
  %reass.sub.i64 = sub i32 %.4.ph, %i.v
  %6 = add i32 %reass.sub.i64, 48                 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.151111, i64 8 ; 4 uses
  %i.ac = add i64 %.1112, 2
  %i.ad = icmp eq ptr %i.ab, %i.b
  br i1 %i.ad, label %._crit_edge115, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !100 ; 3 uses
  %i.af = add i32 %i.ae, -48
  %or.cond.i68 = icmp ult i32 %i.af, 10
  br i1 %or.cond.i68, label %bb.s, label %._crit_edge115

bb.s:                                             ; preds = %bb.r
  %i.ag = icmp ult i64 %i.ac, 8
  br i1 %i.ag, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ah = mul nsw i32 %6, 10
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ai = icmp slt i32 %6, -214748364
  br i1 %i.ai, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit75, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = mul i32 %6, 10                          ; 2 uses
  %7 = add nuw i32 %i.ae, 2147483600
  %.not.i.i.i69 = icmp slt i32 %i.aj, %7
  br i1 %.not.i.i.i69, label %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit75, label %bb.w

_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit75: ; preds = %bb.u, %bb.v
  store i32 %6, ptr %2, align 4, !tbaa !42
  br label %._crit_edge.thread

bb.w:                                             ; preds = %bb.v, %bb.t
  %.5.ph = phi i32 [ %i.ah, %bb.t ], [ %i.aj, %bb.v ]
  %reass.sub = sub i32 %.5.ph, %i.ae
  %8 = add i32 %reass.sub, 48                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.151111, i64 12 ; 3 uses
  %i.al = add i64 %.1112, 3
  %i.am = icmp eq ptr %i.ak, %i.b
  br i1 %i.am, label %._crit_edge115, label %.lr.ph114, !llvm.loop !440

._crit_edge115:                                   ; preds = %bb.w, %.lr.ph114, %bb.k, %bb.l, %bb.q, %bb.r, %bb.f
  %.287 = phi i32 [ %i.j, %bb.f ], [ %.186110, %.lr.ph114 ], [ %4, %bb.l ], [ %6, %bb.r ], [ %6, %bb.q ], [ %4, %bb.k ], [ %8, %bb.w ]
  %.2 = phi ptr [ %i.k, %bb.f ], [ %.151111, %.lr.ph114 ], [ %i.s, %bb.l ], [ %i.ab, %bb.r ], [ %i.ab, %bb.q ], [ %i.s, %bb.k ], [ %i.ak, %bb.w ]
  store i32 %.287, ptr %2, align 4, !tbaa !42
  store ptr %.2, ptr %0, align 8, !tbaa !97
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit67, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit75, %._crit_edge115, %bb.d, %._crit_edge, %bb.c
  %.153 = phi i1 [ false, %._crit_edge ], [ true, %bb.c ], [ true, %._crit_edge115 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit75 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit67 ], [ false, %_ZN5boost6spirit2qi6detail13int_extractorILj10ENS2_20negative_accumulatorILj10EEELin1ELb0EE4callIwiEEbT_mRT0_.exit ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.a ]
  ret i1 %.153
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li0EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_8equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::locale", align 8       ; 6 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !442, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = invoke noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux17code_convert_implEPKwmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRKSt6locale(ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 4611686018427387903, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i unwind label %bb.b ; 0 uses

_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i: ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_8equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  store i8 0, ptr %i.k, align 1, !tbaa !51
  call void @__cxa_end_catch()
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_8equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_8equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit: ; preds = %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !442, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !98
  %spec.select.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 1152921504606846975, i64 %i.r)
  %i.s = call i64 @llvm.umin.i64(i64 %i.p, i64 %spec.select.i.i.i.i)
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef %i.t, i64 noundef %i.s)
          to label %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i unwind label %bb.c ; 0 uses

_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i: ; preds = %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_8equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_8equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit

bb.c:                                             ; preds = %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_8equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #21 ; 0 uses
  store i64 0, ptr %i.q, align 8, !tbaa !98
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !50
  store i32 0, ptr %i.y, align 4, !tbaa !100
  call void @__cxa_end_catch()
  br label %_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_8equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit

_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_8equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit: ; preds = %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li0EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_12not_equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::locale", align 8       ; 6 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !444, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = invoke noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux17code_convert_implEPKwmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRKSt6locale(ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 4611686018427387903, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i unwind label %bb.b ; 0 uses

_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i: ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_12not_equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  store i8 0, ptr %i.k, align 1, !tbaa !51
  call void @__cxa_end_catch()
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_12not_equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_12not_equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit: ; preds = %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !444, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !98
  %spec.select.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 1152921504606846975, i64 %i.r)
  %i.s = call i64 @llvm.umin.i64(i64 %i.p, i64 %spec.select.i.i.i.i)
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef %i.t, i64 noundef %i.s)
          to label %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i unwind label %bb.c ; 0 uses

_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i: ; preds = %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_12not_equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_12not_equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit

bb.c:                                             ; preds = %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_12not_equal_toEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #21 ; 0 uses
  store i64 0, ptr %i.q, align 8, !tbaa !98
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !50
  store i32 0, ptr %i.y, align 4, !tbaa !100
  call void @__cxa_end_catch()
  br label %_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_12not_equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit

_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li1EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_12not_equal_toEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE.exit: ; preds = %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEwS5_S6_EENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valueeqstS8_stS9_EbE4typeERKNSt7__cxx1112basic_stringIS8_T0_T1_EERNSD_IS9_T3_T4_EERKSt6locale.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6fusion6detail15for_each_linearINS0_14basic_iteratorINS0_16set_iterator_tagENS0_3setIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS7_IwS8_IwESaIwEEEEE8categoryESF_Li0EEENS3_IS4_SG_SF_Li2EEENS_3log11v2_mt_posix3aux9anonymous16string_predicateINSK_4lessEE11initializerISE_EEEEvRKT_RKT0_RT1_N4mpl_5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::locale", align 8       ; 6 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !446, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = invoke noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux17code_convert_implEPKwmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRKSt6locale(ptr noundef %i.c, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 4611686018427387903, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i unwind label %bb.b ; 0 uses

_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i: ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_4lessEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !26
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !24
  store i8 0, ptr %i.k, align 1, !tbaa !51
  call void @__cxa_end_catch()
  br label %_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_4lessEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit

_ZNK5boost3log11v2_mt_posix3aux9anonymous16string_predicateINS1_4lessEE11initializerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclINS9_IcSA_IcESaIcEEEEEvRT_.exit: ; preds = %_ZN5boost3log11v2_mt_posix3aux12code_convertIwSt11char_traitsIwESaIwEcS4_IcESaIcEEENS_11enable_if_cIXaaaasr17is_character_typeIT_EE5valuesr17is_character_typeIT2_EE5valuenestSA_stSB_EbE4typeERKNSt7__cxx1112basic_stringISA_T0_T1_EERNSF_ISB_T3_T4_EERKSt6locale.exit.i, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !446, !nonnull !105, !align !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !98
end_hunk_2
