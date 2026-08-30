Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLRegAllocEvictAdvisor?download=true
inline.NumInlined: 2124
inline.NumDeleted: 1192
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4llvm15AllocationOrder16getOrderLimitEndEj:bb.a
  br i1 %i.ad, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us, label %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us

._crit_edge._crit_edge52.i.i.i.i.i.i.us.us:       ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.us.us
  %i.ae = load i16, ptr %i.x, align 2, !tbaa !422
  %i.af = icmp eq i16 %i.y, %i.ae
  br i1 %i.af, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us, %._crit_edge._crit_edge.i.i.i.i.i.i.us.us, %._crit_edge.i.i.i.i.i.i.us.us
  %.028.i.i.i.i.i.i.us.us = phi ptr [ %i.v, %._crit_edge._crit_edge.i.i.i.i.i.i.us.us ], [ %i.p, %._crit_edge.i.i.i.i.i.i.us.us ], [ %i.x, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us ]
  %.not4.i.us.us = icmp eq ptr %.028.i.i.i.i.i.i.us.us, %i.r
  br i1 %.not4.i.us.us, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i19.us.us, 1 ; 3 uses
  %i.ag = trunc nuw i64 %indvars.iv.next.i.us.us to i32 ; 3 uses
  %i.ah = icmp sgt i32 %i.f, %i.ag
  br i1 %i.ah, label %bb.d, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, !llvm.loop !560

.lr.ph.split.us.split.us33:                       ; preds = %.lr.ph.split.us
  %i.ai = load i16, ptr %i.p, align 2, !tbaa !422
  br label %._crit_edge.i.i.i.i.i.i.us.us34

._crit_edge.i.i.i.i.i.i.us.us34:                  ; preds = %bb.f, %.lr.ph.split.us.split.us33
  %i.aj = phi i16 [ %i.n, %.lr.ph.split.us.split.us33 ], [ %i.am, %bb.f ] ; 2 uses
  %indvars.iv.i19.us.us35 = phi i64 [ %i.l, %.lr.ph.split.us.split.us33 ], [ %indvars.iv.next.i.us.us45, %bb.f ]
  %.sroa.5.117.us.us36 = phi i32 [ %spec.select, %.lr.ph.split.us.split.us33 ], [ %i.ap, %bb.f ] ; 2 uses
  %i.ak = icmp eq i16 %i.aj, %i.ai
  br i1 %i.ak, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42, label %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40

bb.f:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i.us.us45
  %i.am = load i16, ptr %i.al, align 2, !tbaa !422 ; 2 uses
  %.not.i.us.us37 = icmp eq i16 %i.am, 0
  br i1 %.not.i.us.us37, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %._crit_edge.i.i.i.i.i.i.us.us34, !llvm.loop !560

._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40:     ; preds = %._crit_edge.i.i.i.i.i.i.us.us34
  %i.an = load i16, ptr %i.v, align 2, !tbaa !422
  %i.ao = icmp eq i16 %i.aj, %i.an
  br i1 %i.ao, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42: ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40, %._crit_edge.i.i.i.i.i.i.us.us34
  %.028.i.i.i.i.i.i.us.us43 = phi ptr [ %i.p, %._crit_edge.i.i.i.i.i.i.us.us34 ], [ %i.v, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40 ]
  %.not4.i.us.us44 = icmp eq ptr %.028.i.i.i.i.i.i.us.us43, %i.r
  br i1 %.not4.i.us.us44, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42
  %indvars.iv.next.i.us.us45 = add nuw nsw i64 %indvars.iv.i19.us.us35, 1 ; 3 uses
  %i.ap = trunc nuw i64 %indvars.iv.next.i.us.us45 to i32 ; 3 uses
  %i.aq = icmp sgt i32 %i.f, %i.ap
  br i1 %i.aq, label %bb.f, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, !llvm.loop !560

.lr.ph.split.us.split.us54:                       ; preds = %.lr.ph.split.us
  %i.ar = load i16, ptr %i.p, align 2, !tbaa !422
  %i.as = icmp eq i16 %i.n, %i.ar
  br i1 %i.as, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.preheader, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.preheader: ; preds = %.lr.ph.split.us.split.us54
  %indvars.iv.next.i.us.us66139 = add nuw nsw i64 %i.l, 1 ; 2 uses
  %i.at = trunc nuw i64 %indvars.iv.next.i.us.us66139 to i32 ; 2 uses
  %i.au = icmp sgt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph141, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, !llvm.loop !560

.lr.ph141:                                        ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.preheader
  br label %bb.h, !llvm.loop !560

bb.h:                                             ; preds = %.lr.ph141, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63
  %i.av = phi i32 [ %i.at, %.lr.ph141 ], [ %i.az, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63 ]
  %indvars.iv.next.i.us.us66140 = phi i64 [ %indvars.iv.next.i.us.us66139, %.lr.ph141 ], [ %indvars.iv.next.i.us.us66, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i.us.us66140
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !422
  %i.ay = icmp eq i16 %i.ax, %i.n
  br i1 %i.ay, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, !llvm.loop !560

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63: ; preds = %bb.h
  %indvars.iv.next.i.us.us66 = add nuw nsw i64 %indvars.iv.next.i.us.us66140, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next.i.us.us66 to i32 ; 2 uses
  %i.ba = icmp sgt i32 %i.f, %i.az
  br i1 %i.ba, label %bb.h, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23.loopexit129_crit_edge, !llvm.loop !560

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i.i.i, i64 2
  br label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !422 ; 2 uses
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !560

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.split, %bb.i
  %i.be = phi i16 [ %i.n, %.lr.ph.split ], [ %i.bd, %bb.i ] ; 7 uses
  %indvars.iv.i19 = phi i64 [ %i.l, %.lr.ph.split ], [ %indvars.iv.next.i, %bb.i ]
  %.sroa.5.117 = phi i32 [ %spec.select, %.lr.ph.split ], [ %i.cd, %bb.i ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.br, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %bb.n ] ; 9 uses
  %i.bf = load i16, ptr %.02946.i.i.i.i.i.i, align 2, !tbaa !422
  %i.bg = icmp eq i16 %i.be, %i.bf
  br i1 %i.bg, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !422
  %i.bj = icmp eq i16 %i.be, %i.bi
  br i1 %i.bj, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit120, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !422
  %i.bm = icmp eq i16 %i.be, %i.bl
  br i1 %i.bm, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit118, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !422
  %i.bp = icmp eq i16 %i.be, %i.bo
  br i1 %i.bp, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.br = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.bs = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.j, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !561

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.n
  switch i64 %i.u, label %default.unreachable [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
    i64 0, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  ]

bb.o:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i
  %i.bt = load i16, ptr %scevgep.i.i.i.i.i.i, align 2, !tbaa !422
  %i.bu = icmp eq i16 %i.be, %i.bt
  br i1 %i.bu, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.o, %._crit_edge.loopexit.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bv = load i16, ptr %.1.i.i.i.i.i.i, align 2, !tbaa !422
  %i.bw = icmp eq i16 %i.be, %i.bv
  br i1 %i.bw, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.p
  %.2.i.i.i.i.i.i = phi ptr [ %i.bx, %bb.p ], [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 2 uses
  %i.by = load i16, ptr %.2.i.i.i.i.i.i, align 2, !tbaa !422
  %i.bz = icmp eq i16 %i.be, %i.by
  br i1 %i.bz, label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 6
  br label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit118: ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  br label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit120: ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i: ; preds = %bb.j, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit118, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit120, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.o
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i, %bb.o ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.cc, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit120 ], [ %i.ca, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit ], [ %i.cb, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.loopexit.split.loop.exit118 ], [ %.02946.i.i.i.i.i.i, %bb.j ]
  %.not4.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.r
  br i1 %.not4.i, label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i19, 1 ; 3 uses
  %i.cd = trunc nuw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.ce = icmp sgt i32 %i.f, %i.cd
  br i1 %i.ce, label %bb.i, label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, !llvm.loop !560

default.unreachable:                              ; preds = %._crit_edge.loopexit.i.i.i.i.i.i
  unreachable

_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23.loopexit129_crit_edge: ; preds = %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63
  br label %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, !llvm.loop !560

._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23: ; preds = %bb.q, %bb.g, %bb.e, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.preheader, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us63.._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23.loopexit129_crit_edge
  br label %_ZN4llvm15AllocationOrder8IteratorppEv.exit, !llvm.loop !560

_ZN4llvm15AllocationOrder8IteratorppEv.exit:      ; preds = %bb.i, %._crit_edge.loopexit.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i, %bb.h, %bb.f, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42, %bb.d, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us, %.lr.ph.split.us.split.us54, %.lr.ph.i, %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23, %.lr.ph.split.us, %bb.c, %bb.b
  %.pn = phi i32 [ %i.c, %bb.b ], [ %spec.select, %bb.c ], [ %i.ap, %bb.f ], [ %i.f, %._ZN4llvm15AllocationOrder8IteratorppEv.exit.loopexit_crit_edge23 ], [ %spec.select, %.lr.ph.split.us ], [ %i.ag, %bb.d ], [ %spec.select, %.lr.ph.i ], [ %i.av, %bb.h ], [ %spec.select, %.lr.ph.split.us.split.us54 ], [ %.sroa.5.117.us.us, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us ], [ %.sroa.5.117.us.us, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us ], [ %.sroa.5.117.us.us36, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i.us.us42 ], [ %.sroa.5.117.us.us36, %._crit_edge._crit_edge52.i.i.i.i.i.i.us.us40 ], [ %.sroa.5.117, %_ZNK4llvm15AllocationOrder6isHintENS_8RegisterE.exit.i ], [ %.sroa.5.117, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.sroa.5.117, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.cd, %bb.i ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %0, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

declare noundef zeroext i1 @_ZNK4llvm23RegAllocEvictionAdvisor18canAllocatePhysRegEjNS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(89), i32 noundef, i32) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_114MLEvictAdvisor15extractFeaturesERKN4llvm15SmallVectorImplIPKNS1_12LiveIntervalEEERNS2_IfEEmllfRNS2_INS1_14LRStartEndInfoEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i64 noundef %3, i64 noundef range(i64 0, 2) %4, i64 noundef %5, float noundef %6) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.668.i = alloca { [4 x i8], %"struct.(anonymous namespace)::LIFeatureComponents" }, align 4 ; 5 uses
  %7 = alloca %"class.llvm::SmallPtrSet.619", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !323  ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  br i1 %.not.i, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !425
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !597  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !634
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -7
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !635
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %.sroa.666.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.668.i, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.666.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.668.i, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !323
  %i.ag = icmp eq i32 %.pre, 0
  %i.ah = uitofp nneg i64 %i.mm to float          ; 2 uses
  %i.ai = uitofp nneg i32 %i.nb to float          ; 2 uses
  %i.aj = sitofp i64 %i.mp to float               ; 2 uses
  %i.ak = fptrunc <4 x double> %i.mu to <4 x float> ; 2 uses
  %i.al = fptrunc double %i.mx to float           ; 2 uses
  br i1 %i.ag, label %._crit_edge.thread, label %bb.z

bb.b:                                             ; preds = %.lr.ph, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit
  %.0166 = phi i64 [ 0, %.lr.ph ], [ %i.mp, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %.0134165 = phi i64 [ 0, %.lr.ph ], [ %i.mm, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %.0140160 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.mx, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %.0143159 = phi i32 [ 0, %.lr.ph ], [ %i.nb, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %.0144158 = phi ptr [ %i.e, %.lr.ph ], [ %i.nc, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ] ; 2 uses
  %.0112157 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated111, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ] ; 2 uses
  %.0113156 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.speculated80, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ] ; 2 uses
  %.sroa.0101.0155 = phi i64 [ %i.r, %.lr.ph ], [ %.sroa.0101.1, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ] ; 3 uses
  %.sroa.098.0154 = phi i64 [ %i.n, %.lr.ph ], [ %spec.select, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ] ; 3 uses
  %.0114153 = phi i64 [ 0, %.lr.ph ], [ %.sroa.speculated87, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %.0115152 = phi i64 [ 9223372036854775807, %.lr.ph ], [ %.sroa.speculated84, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %i.am = phi <4 x double> [ zeroinitializer, %.lr.ph ], [ %i.mu, %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit ]
  %i.an = load ptr, ptr %.0144158, align 8, !tbaa !484 ; 7 uses
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !426, !nonnull !29, !align !273
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 912
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 112 ; 5 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aq, align 8, !tbaa !427 ; 6 uses
  %i.ar = and i32 %.sroa.0.0.copyload.i.i, 2147483647
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !496
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.sroa.speculated87 = call i64 @llvm.umax.i64(i64 %.0114153, i64 %i.aw) ; 3 uses
  %.sroa.speculated84 = call i64 @llvm.umin.i64(i64 %.0115152, i64 %i.aw) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 116
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !392 ; 2 uses
  %i.az = fcmp olt float %.0113156, %i.ay
  %.sroa.speculated80 = select i1 %i.az, float %i.ay, float %.0113156 ; 3 uses
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ba, align 8, !tbaa !23 ; 3 uses
  %i.bb = and i64 %.sroa.0.0.copyload.i, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !636
  %i.bf = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 3
  %i.bi = or i32 %i.bh, %i.be
  %i.bj = and i64 %.sroa.098.0154, -8
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !636
  %i.bn = trunc i64 %.sroa.098.0154 to i32
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = and i32 %i.bo, 3
  %i.bq = or i32 %i.bm, %i.bp
  %i.br = icmp ult i32 %i.bi, %i.bq
  %spec.select = select i1 %i.br, i64 %.sroa.0.0.copyload.i, i64 %.sroa.098.0154 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !323
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %.sroa.0.0.copyload.i169 = load i64, ptr %i.bw, align 8, !tbaa !23 ; 3 uses
  %i.bx = and i64 %.sroa.0.0.copyload.i169, -8
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !636
  %i.cb = trunc i64 %.sroa.0.0.copyload.i169 to i32
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 3
  %i.ce = or i32 %i.cd, %i.ca
  %i.cf = and i64 %.sroa.0101.0155, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !636
  %i.cj = trunc i64 %.sroa.0101.0155 to i32
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = and i32 %i.ck, 3
  %i.cm = or i32 %i.ci, %i.cl
  %i.cn = icmp ugt i32 %i.ce, %i.cm
  %.sroa.0101.1 = select i1 %i.cn, i64 %.sroa.0.0.copyload.i169, i64 %.sroa.0101.0155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(53) %.sroa.666.i.4..sroa_idx, i8 0, i64 53, i1 false)
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !390, !noalias !641 ; 3 uses
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !650, !noalias !641 ; 3 uses
  %i.cq = load i32, ptr %i.v, align 4, !tbaa !389, !noalias !641 ; 4 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = add i32 %i.cq, -1                       ; 2 uses
  %i.ct = mul i32 %.sroa.0.0.copyload.i.i, 37
  %.05.i.i.i.i.i = and i32 %i.cs, %i.ct           ; 3 uses
  %i.cu = zext i32 %.05.i.i.i.i.i to i64          ; 2 uses
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %i.cu ; 2 uses
  %i.cw = lshr i64 %i.cu, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !427, !noalias !651
  %i.cz = and i32 %.05.i.i.i.i.i, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !551

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = add nuw i32 %.06.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.dc, %i.cs            ; 3 uses
  %i.dd = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %i.dd ; 2 uses
  %i.df = lshr i64 %i.dd, 5
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !427, !noalias !651
  %i.di = and i32 %.0.i.i.i.i.i, 31
  %i.dj = lshr i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i1
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !552, !llvm.loop !652

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.dl = phi ptr [ %i.de, %bb.d ], [ %i.cv, %bb.c ] ; 2 uses
  %.06.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.d ], [ %.05.i.i.i.i.i, %bb.c ]
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !427, !noalias !651
  %i.dn = icmp eq i32 %.sroa.0.0.copyload.i.i, %i.dm
  br i1 %i.dn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_119LIFeatureComponentsENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E6insertEOSt4pairIjS3_E.exit.i, label %bb.d, !prof !335

.loopexit.i.i.i.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %.lcssa11.sink.i.ph.i.i.i.i = phi ptr [ %i.cv, %bb.c ], [ null, %bb.b ], [ %i.de, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !651
  store ptr %.lcssa11.sink.i.ph.i.i.i.i, ptr %i.a, align 8, !tbaa !653, !noalias !651
  %.val6.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !654, !noalias !651
  %i.do = shl i32 %.val6.i.i.i.i.i, 2
  %i.dp = add i32 %i.do, 4
  %i.dq = mul i32 %i.cq, 3
  %.not.i.i.i.i.i = icmp ult i32 %i.dp, %i.dq
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !335

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.dr = shl i32 %i.cq, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_119LIFeatureComponentsENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i32 noundef %i.dr), !noalias !651
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_119LIFeatureComponentsENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.t, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !653, !noalias !651
  %.val4.i.pre.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !650, !noalias !651
  %.val7.i.pre.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !390, !noalias !651
  br label %bb.f

_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_119LIFeatureComponentsENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E6insertEOSt4pairIjS3_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.i)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  br label %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit

bb.f:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  %.val7.i.i.i.i.i = phi ptr [ %.val7.i.pre.i.i.i.i, %bb.e ], [ %i.co, %.loopexit.i.i.i.i ]
  %.val4.i.i.i.i.i = phi ptr [ %.val4.i.pre.i.i.i.i, %bb.e ], [ %i.cp, %.loopexit.i.i.i.i ]
  %i.dt = phi ptr [ %.pre.i.i.i.i.i, %bb.e ], [ %.lcssa11.sink.i.ph.i.i.i.i, %.loopexit.i.i.i.i ] ; 9 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %.val7.i.i.i.i.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 6                 ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 31
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = lshr i64 %i.dx, 5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i.i.i, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !427, !noalias !651
  %i.ee = or i32 %i.ea, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !427, !noalias !651
  %.val.i.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !654, !noalias !651
  %i.ef = add i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.ef, ptr %i.w, align 8, !tbaa !654, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !651
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.dt, align 4, !tbaa !427, !noalias !651
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eg, ptr noundef nonnull align 4 dereferenceable(56) %.sroa.666.8..sroa_idx.i, i64 56, i1 false), !tbaa.struct !655, !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.x, ptr %7, align 8, !tbaa !30
  store i32 8, ptr %i.y, align 8, !tbaa !659
  store i32 0, ptr %i.z, align 4, !tbaa !660
  store i8 1, ptr %i.aa, align 8, !tbaa !24
  %i.eh = load ptr, ptr %i.ab, align 8, !tbaa !661, !nonnull !29, !align !273
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !662, !nonnull !29, !align !273 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 200
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(344) %i.ej) #22, !inline_history !663
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !498 ; 4 uses
  %.sroa.0.0.copyload.i38.i = load i32, ptr %i.aq, align 8, !tbaa !427 ; 3 uses
  %i.ep = icmp slt i32 %.sroa.0.0.copyload.i38.i, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.er = and i32 %.sroa.0.0.copyload.i38.i, 2147483647
  %i.es = zext nneg i32 %i.er to i64
  %i.et = load ptr, ptr %i.eq, align 8
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 312
  %i.ex = zext nneg i32 %.sroa.0.0.copyload.i38.i to i64
  %i.ey = load ptr, ptr %i.ew, align 8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex
  %.0.in.i.i.i = select i1 %i.ep, ptr %i.ev, ptr %i.ez
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !324 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = load i32, ptr %.0.i.i.i, align 8
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.preheader.i.i.i, label %.lr.ph.i

.preheader.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.h ], [ %.0.i.i.i, %bb.g ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !23 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.fc = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %.preheader.i.i.i, label %.lr.ph.i, !llvm.loop !664

.lr.ph.i:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %storemerge.i.i.i.i, %bb.h ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dt, i64 48 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dt, i64 56 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dt, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  br label %bb.j

._crit_edge.loopexit.i:                           ; preds = %.critedge.i
  %.pre108.i = load ptr, ptr %i.ac, align 8, !tbaa !498
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i.i.i, %._crit_edge.loopexit.i, %bb.f
  %i.fj = phi ptr [ %.pre108.i, %._crit_edge.loopexit.i ], [ %i.eo, %bb.f ], [ %i.eo, %.preheader.i.i.i ]
  %i.fk = load ptr, ptr %i.b, align 8, !tbaa !425
  %i.fl = load ptr, ptr %i.af, align 8, !tbaa !665
  %i.fm = load ptr, ptr %i.ab, align 8, !tbaa !661, !nonnull !29, !align !273
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !662, !nonnull !29, !align !273 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call noundef ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(344) %i.fo) #22, !inline_history !663
  %i.ft = call noundef zeroext i1 @_ZN4llvm14VirtRegAuxInfo18isRematerializableERKNS_12LiveIntervalERKNS_13LiveIntervalsERKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(120) %i.an, ptr noundef nonnull align 8 dereferenceable(424) %i.fk, ptr noundef nonnull align 8 dereferenceable(128) %i.fl, ptr noundef nonnull align 8 dereferenceable(520) %i.fj, ptr noundef nonnull align 8 dereferenceable(112) %i.fs) #22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dt, i64 60
  %i.fv = zext i1 %i.ft to i8
  store i8 %i.fv, ptr %i.fu, align 4, !tbaa !666
  %i.fw = load i8, ptr %i.aa, align 8, !tbaa !24, !range !28, !noundef !29
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.fy = load ptr, ptr %7, align 8, !tbaa !30
  call void @free(ptr noundef %i.fy) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.sroa.0.0.copyload.i174.pre = load i32, ptr %i.aq, align 8, !tbaa !427
  br label %_ZNK12_GLOBAL__N_114MLEvictAdvisor22getLIFeatureComponentsERKN4llvm12LiveIntervalE.exit

bb.j:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.sroa.062.098.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i ], [ %storemerge.i.i.i42.i, %.critedge.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.062.098.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !668 ; 9 uses
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %.pn.i.i.i40.i = phi ptr [ %.sroa.062.098.i, %bb.j ], [ %storemerge.i.i.i42.i, %.backedge ]
  %storemerge.in.i.i.i41.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i40.i, i64 24
  %storemerge.i.i.i42.i = load ptr, ptr %storemerge.in.i.i.i41.i, align 8, !tbaa !23 ; 5 uses
  %.not.i.i.i43.i = icmp eq ptr %storemerge.i.i.i42.i, null ; 2 uses
  br i1 %.not.i.i.i43.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EEppEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gb = load i32, ptr %storemerge.i.i.i42.i, align 8
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %.backedge, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EE7advanceEv.exit.i.i.i

.backedge:                                        ; preds = %bb.l, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EE7advanceEv.exit.i.i.i
  br label %bb.k, !llvm.loop !670

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EE7advanceEv.exit.i.i.i: ; preds = %bb.l
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i42.i, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !668
  %i.gf = icmp eq ptr %i.ge, %i.ga
  br i1 %i.gf, label %.backedge, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EEppEi.exit.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EEppEi.exit.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EE7advanceEv.exit.i.i.i, %bb.k
  %i.gg = load i64, ptr %i.fe, align 8, !tbaa !671
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.fe, align 8, !tbaa !671
  %i.gi = load i8, ptr %i.aa, align 8, !tbaa !24, !range !28, !noalias !672, !noundef !29
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.m, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i

bb.m:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EEppEi.exit.i
  %i.gk = load ptr, ptr %7, align 8, !tbaa !30, !noalias !672 ; 2 uses
  %i.gl = load i32, ptr %i.z, align 4, !tbaa !660, !noalias !672 ; 4 uses
  %i.gm = zext i32 %i.gl to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.gm, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.gp, %.critedge.i.i.i ], [ %i.gk, %bb.m ] ; 2 uses
  %i.go = load ptr, ptr %.023.i.i.i, align 8, !tbaa !39, !noalias !672
  %.not15.i.i.i = icmp eq ptr %i.go, %i.ga
  br i1 %.not15.i.i.i, label %.critedge.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i44.i = icmp eq ptr %i.gp, %i.gn
  br i1 %.not.i.i44.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.m
  %i.gq = load i32, ptr %i.y, align 8, !tbaa !659, !noalias !672
  %i.gr = icmp ult i32 %i.gl, %i.gq
  br i1 %i.gr, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i.thread, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i.thread: ; preds = %._crit_edge.i.i.i
  %i.gs = add nuw i32 %i.gl, 1
  store i32 %i.gs, ptr %i.z, align 4, !tbaa !660, !noalias !672
  store ptr %i.ga, ptr %i.gn, align 8, !tbaa !39, !noalias !672
  br label %bb.n

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb1ELb1ELb1EEppEi.exit.i, %._crit_edge.i.i.i
  %i.gt = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull %i.ga) #22, !noalias !672
  %i.gu = extractvalue { ptr, i8 } %i.gt, 1
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.n, label %.critedge.i, !llvm.loop !675

bb.n:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i.thread, %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 52 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !676
  switch i32 %i.gx, label %.thread82.i [
    i32 20, label %bb.o
    i32 10, label %.critedge.i
  ]

bb.o:                                             ; preds = %bb.n
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !692 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 36
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !23
  %i.he = icmp eq i32 %i.hb, %i.hd
  br i1 %i.he, label %_ZNK4llvm12MachineInstr14isIdentityCopyEv.exit.i, label %.thread82.i

_ZNK4llvm12MachineInstr14isIdentityCopyEv.exit.i: ; preds = %bb.o
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hg = load i32, ptr %i.gz, align 8
  %i.hh = load i32, ptr %i.hf, align 8
  %i.hi = xor i32 %i.hh, %i.hg
  %i.hj = and i32 %i.hi, 1048320
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %.critedge.i, label %.thread82.i, !llvm.loop !675

.thread82.i:                                      ; preds = %_ZNK4llvm12MachineInstr14isIdentityCopyEv.exit.i, %bb.o, %bb.n
  %.sroa.0.0.copyload.i45.i = load i32, ptr %i.aq, align 8, !tbaa !427
  %i.hl = call i16 @_ZNK4llvm12MachineInstr26readsWritesVirtualRegisterENS_8RegisterEPNS_15SmallVectorImplIjEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, i32 %.sroa.0.0.copyload.i45.i, ptr noundef null) #22 ; 2 uses
  %.sroa.457.0.extract.shift.i = lshr i16 %i.hl, 8 ; 2 uses
  %.sroa.457.0.extract.trunc.i = trunc nuw i16 %.sroa.457.0.extract.shift.i to i8 ; 2 uses
  %i.hm = load ptr, ptr %i.ad, align 8, !tbaa !693, !nonnull !29, !align !273 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !694
  %i.hp = call i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getBlockFreqEPKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef %i.ho) #22
  %i.hq = uitofp i64 %i.hp to double
  %i.hr = call i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getEntryFreqEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) #22
  %i.hs = uitofp i64 %i.hr to double
end_hunk_0
