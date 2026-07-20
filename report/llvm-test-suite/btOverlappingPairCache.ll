inline.NumInlined: 238
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN28btHashedOverlappingPairCache20sortOverlappingPairsEP12btDispatcher:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  store ptr %i.au, ptr %i.as, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !39
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !39
  br label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.thread

_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.thread: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i: ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.thread, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.b, align 8, !tbaa !16
  store i32 %i.q, ptr %i.d, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i, %bb.c, %bb.b
  %i.ay = phi ptr [ %.0.i.i.i, %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.az = phi i32 [ %i.q, %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i ], [ %i.l, %bb.c ], [ %i.l, %bb.b ]
  %i.ba = sext i32 %.pre2.i to i64
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.ay, i64 %i.ba ; 3 uses
  %i.bc = load <2 x ptr>, ptr %i.n, align 8, !tbaa !34
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !39
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1                    ; 5 uses
  store i32 %i.bk, ptr %i.c, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load i32, ptr %i.e, align 4, !tbaa !17
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %bb.b, label %.preheader25

.loopexit:                                        ; preds = %.lr.ph37
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph33
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.e, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.thread
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not.i.i.i18 = icmp ne ptr %i.bo, null
  %i.bp = load i8, ptr %i.a, align 8, !range !40
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i.i = select i1 %.not.i.i.i18, i1 %i.bq, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit

bb.h:                                             ; preds = %.loopexit.split-lp
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bo)
          to label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit unwind label %bb.n

.preheader:                                       ; preds = %bb.i, %bb.a, %.preheader25
  %i.br = phi i32 [ 0, %bb.a ], [ %i.bk, %.preheader25 ], [ %i.bk, %bb.i ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph35, label %._crit_edge

.lr.ph35:                                         ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30
  br label %bb.j

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %bb.i
  %indvars.iv40 = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next41, %bb.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %indvars.iv40 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !56
  %i.cb = load ptr, ptr %0, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.by, ptr noundef %i.ca, ptr noundef %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.i:                                             ; preds = %.lr.ph33
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next41, %i.j
  br i1 %i.cf, label %.lr.ph33, label %.preheader

bb.j:                                             ; preds = %.lr.ph35, %bb.j
  %indvars.iv43 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next44, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv43
  store i32 -1, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.ch = load i32, ptr %i.bs, align 4, !tbaa !31
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next44, %i.ci
  br i1 %i.cj, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.ck = icmp sgt i32 %i.br, 1
  br i1 %i.ck, label %bb.k, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.cl = add nsw i32 %i.br, -1
  invoke void @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef 0, i32 noundef %i.cl)
          to label %._ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit_crit_edge: ; preds = %bb.k
  %.pre = load i32, ptr %i.c, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit

_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit: ; preds = %._ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit_crit_edge, %._crit_edge
  %i.cm = phi i32 [ %.pre, %._ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit_crit_edge ], [ %i.br, %._crit_edge ]
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit, %bb.l
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %bb.l ], [ 0, %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit ] ; 2 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %indvars.iv46 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.ct = load ptr, ptr %0, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.cq, ptr noundef %i.cs)
          to label %bb.l unwind label %.loopexit  ; 0 uses

bb.l:                                             ; preds = %.lr.ph37
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !17
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next47, %i.cy
  br i1 %i.cz, label %.lr.ph37, label %._crit_edge38

._crit_edge38:                                    ; preds = %bb.l, %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not.i.i.i21 = icmp ne ptr %i.da, null
  %i.db = load i8, ptr %i.a, align 8, !range !40
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i.i22 = select i1 %.not.i.i.i21, i1 %i.dc, i1 false
  br i1 %or.cond.i.i22, label %bb.m, label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit23

bb.m:                                             ; preds = %._crit_edge38
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.da)
  br label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit23

_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit23: ; preds = %._crit_edge38, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %bb.h
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #13
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN28btSortedOverlappingPairCache21removeOverlappingPairEP17btBroadphaseProxyS1_P12btDispatcher(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = icmp slt i32 %i.f, %i.h                  ; 2 uses
  %spec.select.i = select i1 %i.i, ptr %1, ptr %2
  %spec.select8.i = select i1 %i.i, ptr %2, ptr %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.i ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.q = icmp eq ptr %i.p, %spec.select.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %spec.select8.i
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %bb.c

_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit: ; preds = %bb.c
  %4 = trunc nuw nsw i64 %indvars.iv.i to i32
  %5 = icmp sgt i32 %i.k, %4
  br i1 %5, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit
  %i.v = load i32, ptr @gOverlappingPairs, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr @gOverlappingPairs, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !18
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = sext i32 %i.ak to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.ao
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !34
  %i.ar = load <2 x ptr>, ptr %i.an, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !tbaa.struct !66
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.at = getelementptr inbounds [32 x i8], ptr %i.as, i64 %i.ao ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.at, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %i.ar, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !39
  %i.au = load i32, ptr %i.j, align 4, !tbaa !17
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.j, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit, %bb.a, %bb.g
  %.1 = phi ptr [ %i.y, %bb.g ], [ null, %bb.a ], [ null, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN28btSortedOverlappingPairCache18addOverlappingPairEP17btBroadphaseProxyS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %2), !inline_history !71
  br i1 %i.f, label %bb.d, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !73
  %i.k = and i16 %i.j, %i.h
  %.not10.i = icmp eq i16 %i.k, 0
  br i1 %.not10.i, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit

_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !73
  %i.p = and i16 %i.o, %i.m
  %.not12 = icmp eq i16 %i.p, 0
  br i1 %.not12, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.r, 0
  %i.v = shl nsw i32 %i.r, 1
  %i.w = select i1 %.not.i.i, i32 1, i32 %i.v     ; 4 uses
  %i.x = icmp slt i32 %i.r, %i.w
  br i1 %i.x, label %bb.f, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sext i32 %i.w to i64
  %i.z = shl nsw i64 %i.y, 5
  %i.aa = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.z, i32 noundef 16)
  %.pre.i = load i32, ptr %i.q, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ab = phi i32 [ %.pre.i, %bb.g ], [ %i.r, %bb.f ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ] ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ab to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ae = icmp eq i32 %i.ab, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.h ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !34
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !39
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i ; 3 uses
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i.i ; 3 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !34
  store <2 x ptr> %i.as, ptr %i.ap, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  store ptr %i.av, ptr %i.at, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !39
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.h

_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init ; 3 uses
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %indvars.iv.i.i.i.epil.init ; 3 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !34
  store <2 x ptr> %i.bc, ptr %i.az, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !39
  br label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !10, !range !40, !noundef !41
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
  br label %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bo, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.bj, align 8, !tbaa !16
  store i32 %i.w, ptr %i.s, align 8, !tbaa !18
  %.pre4.i = load i32, ptr %i.q, align 4, !tbaa !17
  br label %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit

_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit: ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i
  %i.bp = phi i32 [ %.pre4.i, %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.q, align 4, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bt = sext i32 %i.r to i64                    ; 2 uses
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bs, i64 %i.bt
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false)
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.bv, i64 %i.bt ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.cb = icmp slt i32 %i.by, %i.ca               ; 2 uses
  %spec.select.i = select i1 %i.cb, ptr %1, ptr %2
  %spec.select8.i = select i1 %i.cb, ptr %2, ptr %1
  store ptr %spec.select.i, ptr %i.bw, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %spec.select8.i, ptr %i.cc, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ce = load i32, ptr @gOverlappingPairs, align 4, !tbaa !4
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr @gOverlappingPairs, align 4, !tbaa !4
  %i.cg = load i32, ptr @gAddedPairs, align 4, !tbaa !4
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr @gAddedPairs, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  br label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread

_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread: ; preds = %bb.c, %bb.b, %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit, %bb.k, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit
  %.0 = phi ptr [ null, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit ], [ %i.bw, %bb.k ], [ %i.bw, %_ZN20btAlignedObjectArrayI16btBroadphasePairE6expandERKS0_.exit ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN28btSortedOverlappingPairCache8findPairEP17btBroadphaseProxyS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %2), !inline_history !71
  br i1 %i.f, label %bb.d, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !73
  %i.k = and i16 %i.j, %i.h
  %.not10.i = icmp eq i16 %i.k, 0
  br i1 %.not10.i, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit

_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !73
  %i.p = and i16 %i.o, %i.m
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52
  %i.u = icmp slt i32 %i.r, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.u, ptr %1, ptr %2
  %spec.select8.i = select i1 %i.u, ptr %2, ptr %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  %wide.trip.count.i = zext nneg i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv.i ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = icmp eq ptr %i.ab, %spec.select.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, %spec.select8.i
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread, label %bb.e

_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit: ; preds = %bb.e
  %3 = trunc nuw nsw i64 %indvars.iv.i to i32
  %4 = icmp sgt i32 %i.w, %3
  %spec.select = select i1 %4, ptr %i.aa, ptr null
  br label %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread

_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit.thread: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit, %bb.d, %bb.c, %bb.b, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit
  %.1 = phi ptr [ null, %bb.c ], [ null, %_ZNK28btSortedOverlappingPairCache24needsBroadphaseCollisionEP17btBroadphaseProxyS1_.exit ], [ null, %bb.b ], [ null, %bb.d ], [ %spec.select, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE16findLinearSearchERKS0_.exit ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: uwtable
define dso_local void @_ZN28btSortedOverlappingPairCache26processAllOverlappingPairsEP17btOverlapCallbackP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.010 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = sext i32 %.010 to i64                    ; 2 uses
  %i.g = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %2)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.o = load i32, ptr %i.a, align 4, !tbaa !17
  %i.p = add nsw i32 %i.o, -1
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.f ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = sext i32 %i.p to i64                     ; 2 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.t
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !34
  %i.w = load <2 x ptr>, ptr %i.s, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !tbaa.struct !66
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.y = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.t ; 2 uses
  store <2 x ptr> %i.v, ptr %i.y, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !39
  %i.z = load i32, ptr %i.a, align 4, !tbaa !17
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !17
  %i.ab = load i32, ptr @gOverlappingPairs, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr @gOverlappingPairs, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = add nsw i32 %.010, 1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i32 [ %i.aa, %bb.c ], [ %.pre, %bb.d ]
  %.1 = phi i32 [ %.010, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.af = icmp slt i32 %.1, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN28btSortedOverlappingPairCacheC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 8), (12, 20), (24, 33), (40, 42), (48, 64)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTV28btSortedOverlappingPairCache, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i8 1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.f, align 1, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16)
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %wide.trip.count.i.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.k = icmp eq i32 %i.i, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv.i.i ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv.i.i ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !34
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  store ptr %i.r, ptr %i.p, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  store ptr %i.u, ptr %i.s, align 8, !tbaa !39
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv.next.i.i ; 3 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %indvars.iv.next.i.i ; 3 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !34
  store <2 x ptr> %i.y, ptr %i.v, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !39
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.b

_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv.i.i.epil.init ; 3 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv.i.i.epil.init ; 3 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !34
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !39
  br label %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.noexc
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i5.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i
  %i.aq = load i8, ptr %i.a, align 8, !tbaa !10, !range !40, !noundef !41
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ap)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i
  store i8 1, ptr %i.a, align 8, !tbaa !10
  store ptr %i.h, ptr %i.b, align 8, !tbaa !16
  store i32 2, ptr %i.d, align 8, !tbaa !18
  ret void

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.at, null
  %i.au = load i8, ptr %i.a, align 8, !range !40
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.av, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.at)
          to label %_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit unwind label %bb.h

_ZN20btAlignedObjectArrayI16btBroadphasePairED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.as
end_hunk_0
