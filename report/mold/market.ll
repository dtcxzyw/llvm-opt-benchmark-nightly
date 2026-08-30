Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/market?download=true
inline.NumInlined: 229
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3tbb6detail2r16market29unregister_and_destroy_clientERNS1_9pm_clientE:bb.a
_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b, !llvm.loop !40

bb.f:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 220
  %i.z = load i32, ptr %i.y, align 4, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 7 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr i64 %i.ai, 5                       ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.al = and i64 %i.ai, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ad, i64 %i.al ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %i.ay, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.ax, %bb.k ] ; 9 uses
  %i.am = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !88
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88
  %i.at = icmp eq ptr %i.as, %1
  br i1 %i.at, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.ay = add nsw i64 %.052.i.i.i, -1
  %i.az = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.az, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !102

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ag, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ai, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ad, %bb.f ] ; 5 uses
  %i.ba = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.ba, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !88
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.m
  %.sroa.032.1.i.i.i = phi ptr [ %i.bd, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.be = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !88
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.sroa.032.2.i.i.i = phi ptr [ %i.bg, %bb.n ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !88
  %i.bi = icmp eq ptr %i.bh, %1
  %spec.select.i.i.i = select i1 %i.bi, ptr %.sroa.032.2.i.i.i, ptr %i.af
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37: ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39: ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit: ; preds = %bb.g, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.af, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit39 ], [ %i.bj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit ], [ %i.bk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit.loopexit.split.loop.exit37 ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %i.bm = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.bn = sub i64 %i.bm, %i.ah
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bp, %i.af
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.ag, %i.bq                    ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 8
  br i1 %i.bs, label %bb.p, label %bb.q, !prof !103

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false)
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !84
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, 8
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !88
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !88
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit
  %i.bv = phi ptr [ %i.af, %bb.r ], [ %i.af, %bb.q ], [ %.pre.i.i, %bb.p ], [ %i.af, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN3tbb6detail2r19pm_clientESt6vectorIS6_NS3_2d113tbb_allocatorIS6_EEEEES6_ET_SE_SE_RKT0_.exit ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  store ptr %i.bw, ptr %i.ae, align 8, !tbaa !84
  %i.bx = atomicrmw and ptr %i.a, i64 -2 seq_cst, align 8
  %i.by = and i64 %i.bx, 2
  %.not.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.s
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.t

.invoke.i:                                        ; preds = %bb.s
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.invoke.i, %.invoke4.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #17
  unreachable

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit: ; preds = %.invoke4.i, %.invoke.i
  %i.cb = load ptr, ptr %1, align 8, !tbaa !15
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #9
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %1)
  ret void
}

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market16update_allotmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = select i1 %or.cond, i32 1, i32 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !105
  %..i39 = tail call noundef i32 @llvm.smin.i32(i32 %i.l, i32 %..i) ; 2 uses
  %i.m = sub nsw i32 %..i, %..i39                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !101, !noalias !109
  %.not44 = icmp eq ptr %i.o, %i.p
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.a
  %.133.lcssa = phi i32 [ 0, %bb.a ], [ %.335, %bb.s ] ; 2 uses
  %.130.lcssa = phi i32 [ 0, %bb.a ], [ %.3.a, %bb.s ] ; 2 uses
  %.1.lcssa = phi i32 [ 3, %bb.a ], [ %.2, %bb.s ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !105
  %..i39.1 = tail call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %i.m) ; 2 uses
  %i.s = sub nsw i32 %i.m, %..i39.1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !101, !noalias !109
  %.not44.1 = icmp eq ptr %i.v, %i.w
  br i1 %.not44.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %bb.g
  %.148.1 = phi i32 [ %.2.1, %bb.g ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.13047.1 = phi i32 [ %.3.1.a, %bb.g ], [ %.130.lcssa, %._crit_edge ] ; 3 uses
  %.13346.1 = phi i32 [ %.335.1, %bb.g ], [ %.133.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.040.045.1 = phi ptr [ %i.x, %bb.g ], [ %i.v, %._crit_edge ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.040.045.1, i64 -8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.1
  %i.ac = icmp eq i32 %.148.1, 3
  %spec.select.1 = select i1 %i.ac, i32 1, i32 %.148.1 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !20
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = mul nsw i32 %i.aa, %..i39.1
  %i.ag = add nsw i32 %i.af, %.13047.1            ; 2 uses
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !105 ; 2 uses
  %i.ai = sdiv i32 %i.ag, %i.ah
  %i.aj = srem i32 %i.ag, %i.ah
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = icmp slt i32 %.13346.1, %..i
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  %i.ap = zext i1 %i.ao to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.231.1 = phi i32 [ %.13047.1, %bb.d ], [ %i.aj, %bb.c ]
  %.028.1 = phi i32 [ %i.ap, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.ar, i32 noundef %.028.1)
  %i.as = icmp eq i32 %spec.select.1, 1
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768) %i.at, i1 noundef zeroext %i.as)
  %i.au = add nsw i32 %.028.1, %.13346.1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.aw, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.335.1 = phi i32 [ %.13346.1, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %.3.1.a = phi i32 [ %.13047.1, %bb.f ], [ %.231.1, %bb.e ] ; 2 uses
  %.2.1 = phi i32 [ %.148.1, %bb.f ], [ %spec.select.1, %bb.e ] ; 2 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !101, !noalias !109
  %.not.1 = icmp eq ptr %i.x, %i.ax
  br i1 %.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !112

._crit_edge.1:                                    ; preds = %bb.g, %._crit_edge
  %.133.lcssa.1 = phi i32 [ %.133.lcssa, %._crit_edge ], [ %.335.1, %bb.g ]
  %.130.lcssa.1 = phi i32 [ %.130.lcssa, %._crit_edge ], [ %.3.1.a, %bb.g ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.2.1, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !105
  %..i39.2 = tail call noundef i32 @llvm.smin.i32(i32 %i.az, i32 %i.s)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101, !noalias !106 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !101, !noalias !109
  %.not44.2 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not44.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %bb.m
  %.148.2 = phi i32 [ %.2.2, %bb.m ], [ %.1.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.13047.2 = phi i32 [ %.3.2.a, %bb.m ], [ %.130.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.13346.2 = phi i32 [ %.335.2, %bb.m ], [ %.133.lcssa.1, %._crit_edge.1 ] ; 3 uses
  %.sroa.040.045.2 = phi ptr [ %i.be, %bb.m ], [ %i.bc, %._crit_edge.1 ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.040.045.2, i64 -8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !88 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.2
  %i.bj = icmp eq i32 %.148.2, 3
  %spec.select.2 = select i1 %i.bj, i32 2, i32 %.148.2 ; 2 uses
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !20
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = mul nsw i32 %i.bh, %..i39.2
  %i.bn = add nsw i32 %i.bm, %.13047.2            ; 2 uses
  %i.bo = load i32, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %i.bp = sdiv i32 %i.bn, %i.bo
  %i.bq = srem i32 %i.bn, %i.bo
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !26
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = icmp slt i32 %.13346.2, %..i
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bw = zext i1 %i.bv to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.231.2 = phi i32 [ %.13047.2, %bb.j ], [ %i.bq, %bb.i ]
  %.028.2 = phi i32 [ %i.bw, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.by, i32 noundef %.028.2)
  %i.bz = icmp eq i32 %spec.select.2, 2
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768) %i.ca, i1 noundef zeroext %i.bz)
  %i.cb = add nsw i32 %.028.2, %.13346.2
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.cd, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.335.2 = phi i32 [ %.13346.2, %bb.l ], [ %i.cb, %bb.k ]
  %.3.2.a = phi i32 [ %.13047.2, %bb.l ], [ %.231.2, %bb.k ]
  %.2.2 = phi i32 [ %.148.2, %bb.l ], [ %spec.select.2, %bb.k ]
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !101, !noalias !109
  %.not.2 = icmp eq ptr %i.be, %i.ce
  br i1 %.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !112

._crit_edge.2:                                    ; preds = %bb.m, %._crit_edge.1
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.148 = phi i32 [ %.2, %bb.s ], [ 3, %bb.a ]    ; 3 uses
  %.13047 = phi i32 [ %.3.a, %bb.s ], [ 0, %bb.a ] ; 3 uses
  %.13346 = phi i32 [ %.335, %bb.s ], [ 0, %bb.a ] ; 3 uses
  %.sroa.040.045 = phi ptr [ %i.cf, %bb.s ], [ %i.o, %bb.a ]
  %i.cf = getelementptr inbounds i8, ptr %.sroa.040.045, i64 -8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !28 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.cl, i32 noundef 0)
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph
  %i.cm = icmp eq i32 %.148, 3
  %spec.select = select i1 %i.cm, i32 0, i32 %.148 ; 2 uses
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !26
  %i.cr = icmp sgt i32 %i.cq, 0
  %i.cs = icmp slt i32 %.13346, %..i
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  %i.cu = zext i1 %i.ct to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cv = mul nsw i32 %i.ci, %..i39
  %i.cw = add nsw i32 %i.cv, %.13047              ; 2 uses
  %i.cx = load i32, ptr %i.j, align 8, !tbaa !105 ; 2 uses
  %i.cy = sdiv i32 %i.cw, %i.cx
  %i.cz = srem i32 %i.cw, %i.cx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.231 = phi i32 [ %.13047, %bb.p ], [ %i.cz, %bb.q ]
  %.028 = phi i32 [ %i.cu, %bb.p ], [ %i.cy, %bb.q ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena13set_allotmentEj(ptr noundef nonnull align 128 dereferenceable(768) %i.db, i32 noundef %.028)
  %i.dc = icmp eq i32 %spec.select, 0
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !41, !nonnull !42, !align !43
  tail call void @_ZN3tbb6detail2r15arena16set_top_priorityEb(ptr noundef nonnull align 128 dereferenceable(768) %i.dd, i1 noundef zeroext %i.dc)
  %i.de = add nsw i32 %.028, %.13346
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.335 = phi i32 [ %.13346, %bb.n ], [ %i.de, %bb.r ] ; 2 uses
  %.3.a = phi i32 [ %.13047, %bb.n ], [ %.231, %bb.r ] ; 2 uses
  %.2 = phi i32 [ %.148, %bb.n ], [ %spec.select, %bb.r ] ; 2 uses
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !101, !noalias !109
  %.not = icmp eq ptr %i.cf, %i.df
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r16market22set_active_num_workersEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.tbb::detail::d1::delegated_function", align 8 ; 5 uses
  %4 = alloca %"class.tbb::detail::d1::rw_scoped_lock", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !29
  store ptr %i.a, ptr %4, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, %bb.a
  %i.d = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.e = and i64 %i.d, -3
  %.not.i.i.i4 = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i4, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i:   ; preds = %bb.b
  %i.f = cmpxchg ptr %i.a, i64 %i.d, i64 1 seq_cst seq_cst, align 8
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit, label %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i

_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i, %bb.b
  %i.h = load atomic i64, ptr %i.a monotonic, align 8
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  %i.j = atomicrmw or ptr %i.a, i64 2 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %i.k = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in16.i.i.i.i = and i64 %i.k, -3
  %.09.in17.i.i.i.i = icmp eq i64 %.09.in.in16.i.i.i.i, 0
  br i1 %.09.in17.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.d, %.lr.ph.i.i.i.i.i.prol
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.l = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i = and i64 %i.l, -3
  %.09.in.i.i.i.i = icmp eq i64 %.09.in.in.i.i.i.i, 0
  br i1 %.09.in.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.1

.lr.ph.i.i.i.i.i.prol.1:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.1
  %prol.iter.1 = phi i32 [ %prol.iter.next.1, %.lr.ph.i.i.i.i.i.prol.1 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.1 = add i32 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i32 %prol.iter.next.1, 2
  br i1 %prol.iter.cmp.1.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.prol.1, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.prol.1
  %i.m = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.1 = and i64 %i.m, -3
  %.09.in.i.i.i.i.1 = icmp eq i64 %.09.in.in.i.i.i.i.1, 0
  br i1 %.09.in.i.i.i.i.1, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.prol.2

.lr.ph.i.i.i.i.i.prol.2:                          ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.2
  %prol.iter.2 = phi i32 [ %prol.iter.next.2, %.lr.ph.i.i.i.i.i.prol.2 ], [ 0, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1 ]
  call void @llvm.x86.sse2.pause()
  %prol.iter.next.2 = add i32 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i32 %prol.iter.next.2, 4
  br i1 %prol.iter.cmp.2.not, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.prol.2, !llvm.loop !113

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.prol.2
  %i.n = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.2 = and i64 %i.n, -3
  %.09.in.i.i.i.i.2 = icmp eq i64 %.09.in.in.i.i.i.i.2, 0
  br i1 %.09.in.i.i.i.i.2, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3
  %.01.i.i.i.i.i.3 = phi i32 [ %i.o, %.lr.ph.i.i.i.i.i.3 ], [ 8, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.o = add nsw i32 %.01.i.i.i.i.i.3, -8
  call void @llvm.x86.sse2.pause()
  %.not6 = icmp eq i32 %.01.i.i.i.i.i.3, 8
  br i1 %.not6, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3
  %i.p = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.3 = and i64 %i.p, -3
  %.09.in.i.i.i.i.3 = icmp eq i64 %.09.in.in.i.i.i.i.3, 0
  br i1 %.09.in.i.i.i.i.3, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4
  %.01.i.i.i.i.i.4 = phi i32 [ %i.q, %.lr.ph.i.i.i.i.i.4 ], [ 16, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3 ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.q = add nsw i32 %.01.i.i.i.i.i.4, -8
  call void @llvm.x86.sse2.pause()
  %.not7 = icmp eq i32 %.01.i.i.i.i.i.4, 8
  br i1 %.not7, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, !llvm.loop !36

_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4: ; preds = %.lr.ph.i.i.i.i.i.4
  %i.r = load atomic i64, ptr %i.a monotonic, align 8
  %.09.in.in.i.i.i.i.4 = and i64 %i.r, -3
  %.09.in.i.i.i.i.4 = icmp eq i64 %.09.in.in.i.i.i.i.4, 0
  br i1 %.09.in.i.i.i.i.4, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %.lr.ph.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ 32, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4 ] ; 2 uses
  %i.s = call noundef i32 @sched_yield() #9       ; 0 uses
  %i.t = load atomic i64, ptr %i.a monotonic, align 8
  %i.u = and i64 %i.t, -3
  %.not.i13.i.i.i.i = icmp eq i64 %i.u, 0         ; 2 uses
  %i.v = add nuw nsw i32 %.019.i.i.i.i, 1
  %i.w = icmp samesign ugt i32 %.019.i.i.i.i, 62
  %.not11.i.i.i.i = select i1 %.not.i13.i.i.i.i, i1 true, i1 %i.w
  br i1 %.not11.i.i.i.i, label %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  br i1 %.not.i13.i.i.i.i, label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tbb6detail2d118delegated_functionIZNS1_8rw_mutex4lockEvEUlvE_EE, i64 16), ptr %3, align 8, !tbaa !15
  store ptr %2, ptr %i.c, align 8, !tbaa !39
  call void @_ZN3tbb6detail2r115wait_on_addressEPvRNS0_2d113delegate_baseEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i

_ZN3tbb6detail2d124adaptive_wait_on_addressIZNS1_8rw_mutex4lockEvEUlvE_EEvPvT_m.exit.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.1, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.2, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.3, %bb.e, %_ZN3tbb6detail2d021timed_spin_wait_untilIZNS0_2d18rw_mutex4lockEvEUlvE_EEbT_.exit.i.i.i, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.4, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.b, !llvm.loop !40

_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit: ; preds = %_ZN3tbb6detail2d18rw_mutex8try_lockEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %.not = icmp eq i32 %i.y, %1
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit
  store i32 %1, ptr %i.x, align 8, !tbaa !20
  invoke void @_ZN3tbb6detail2r16market16update_allotmentEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.z

bb.h:                                             ; preds = %bb.f, %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEE7acquireERS3_b.exit
  %i.aa = load ptr, ptr %4, align 8, !tbaa !33    ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %4, align 8, !tbaa !33
  %i.ab = load i8, ptr %i.b, align 8, !tbaa !29, !range !99, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = atomicrmw and ptr %i.aa, i64 -2 seq_cst, align 8
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %.invoke.i, label %.invoke4.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw sub ptr %i.aa, i64 4 seq_cst, align 8
  %i.ag = and i64 %i.af, 2
  %.not.i3.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i3.i.i, label %.invoke.i, label %.invoke4.i

.invoke4.i:                                       ; preds = %bb.k, %bb.j
  invoke void @_ZN3tbb6detail2r117notify_by_addressEPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_8rw_mutexEED2Ev.exit unwind label %bb.l

.invoke.i:                                        ; preds = %bb.k, %bb.j
  invoke void @_ZN3tbb6detail2r121notify_by_address_allEPv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
end_hunk_0
