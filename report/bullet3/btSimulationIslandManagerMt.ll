Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSimulationIslandManagerMt?download=true
inline.NumInlined: 320
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN27btSimulationIslandManagerMt12buildIslandsEP12btDispatcherP16btCollisionWorld:bb.a
.lr.ph126:                                        ; preds = %bb.c, %bb.d
  %indvars.iv.next124 = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next122, %bb.c ] ; 4 uses
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %bb.d ], [ %i.i, %bb.c ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next124
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85
  %i.r = icmp eq i32 %i.q, %i.k
  br i1 %i.r, label %bb.d, label %.critedge.split.loop.exit116, !llvm.loop !142

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.critedge.split.loop.exit116:                     ; preds = %.lr.ph126
  %i.t = trunc nuw nsw i64 %indvars.iv123 to i32
  %i.u = trunc nuw nsw i64 %indvars.iv.next124 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %.critedge.split.loop.exit116
  %.062.in.lcssa = phi i32 [ %i.t, %.critedge.split.loop.exit116 ], [ %i.m, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %.062.lcssa = phi i32 [ %i.u, %.critedge.split.loop.exit116 ], [ %smax, %bb.c ], [ %smax, %bb.d ] ; 2 uses
  %.not89 = icmp sgt i32 %.06197, %.062.in.lcssa
  br i1 %.not89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.w = add nuw nsw i32 %.062.in.lcssa, 1        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv101 = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next102, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv101
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !86
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 228
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !96
  %.not73 = icmp eq i32 %i.ae, %i.k
  br i1 %.not73, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !97
  switch i32 %i.ag, label %bb.h [
    i32 1, label %.lr.ph93.preheader
    i32 4, label %.lr.ph93.preheader
  ]

.lr.ph93.preheader:                               ; preds = %bb.g, %bb.g
  br label %.lr.ph93

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph96.preheader, label %bb.f, !llvm.loop !143

.lr.ph96.preheader:                               ; preds = %bb.h
  %i.ah = add nuw nsw i32 %.062.in.lcssa, 1
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.critedge87
  %indvars.iv109 = phi i64 [ %i.i, %.lr.ph96.preheader ], [ %indvars.iv.next110, %.critedge87 ] ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv109
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !86
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 228
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !96
  %.not78 = icmp eq i32 %i.ar, %i.k
  br i1 %.not78, label %bb.j, label %.critedge87

bb.i:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %.lr.ph96
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.ap, i32 noundef 2)
          to label %.critedge87 unwind label %bb.i

.critedge87:                                      ; preds = %bb.j, %.lr.ph96
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %lftr.wideiv112 = trunc i64 %indvars.iv.next110 to i32
  %exitcond113.not = icmp eq i32 %i.ah, %lftr.wideiv112
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph96, !llvm.loop !144

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.o
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %bb.o ], [ %i.i, %.lr.ph93.preheader ] ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv104
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 228
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !96
  %.not75 = icmp eq i32 %i.bc, %i.k
  br i1 %.not75, label %bb.l, label %bb.o

bb.k:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph93
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !97
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.ba, i32 noundef 3)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 244
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !147
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %.lr.ph93
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv107 = trunc i64 %indvars.iv.next105 to i32
  %exitcond108.not = icmp eq i32 %i.w, %lftr.wideiv107
  br i1 %exitcond108.not, label %.loopexit, label %.lr.ph93, !llvm.loop !145

.loopexit:                                        ; preds = %bb.o, %.critedge87, %.critedge
  %i.bi = icmp slt i32 %.062.lcssa, %i.c
  br i1 %i.bi, label %bb.c, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.p:                                             ; preds = %bb.i, %bb.k, %bb.e
  %.pn79.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.as, %bb.i ], [ %i.bd, %bb.k ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn79.pn.pn.pn.pn
}

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #1

declare void @_ZN11btUnionFind11sortIslandsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt18addBodiesToIslandsEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %.loopexit
  %.03544 = phi i32 [ 0, %.lr.ph46 ], [ %.036.lcssa, %.loopexit ] ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !83   ; 3 uses
  %i.h = sext i32 %.03544 to i64                  ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !85   ; 2 uses
  %i.k = add nsw i32 %.03544, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ %i.h, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !85
  %i.n = icmp eq i32 %i.m, %i.j
  br i1 %i.n, label %bb.d, label %.critedge.split.loop.exit66

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.o, label %bb.c, label %.critedge, !llvm.loop !148

.critedge.split.loop.exit66:                      ; preds = %bb.c
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit66
  %.036.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit66 ], [ %smax, %bb.d ] ; 6 uses
  %i.q = icmp slt i32 %.03544, %.036.lcssa
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !53
  %wide.trip.count = sext i32 %.036.lcssa to i64
  br label %.outer

.outer:                                           ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.thread, %.lr.ph
  %indvars.iv50.ph = phi i64 [ %indvars.iv.next5162, %_ZNK17btCollisionObject8isActiveEv.exit.thread ], [ %i.h, %.lr.ph ]
  %.03439.ph = phi i1 [ false, %_ZNK17btCollisionObject8isActiveEv.exit.thread ], [ true, %.lr.ph ]
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK17btCollisionObject8isActiveEv.exit
  br i1 %.03439.ph, label %.loopexit, label %.lr.ph43

bb.e:                                             ; preds = %.outer, %_ZNK17btCollisionObject8isActiveEv.exit
  %indvars.iv50 = phi i64 [ %indvars.iv.next5162, %_ZNK17btCollisionObject8isActiveEv.exit ], [ %indvars.iv50.ph, %.outer ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !86
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load i32, ptr %i.y, align 8, !tbaa !97
  %indvars.iv.next5162 = add nsw i64 %indvars.iv50, 1 ; 3 uses
  %exitcond.not63 = icmp eq i64 %indvars.iv.next5162, %wide.trip.count ; 2 uses
  switch i32 %i.z, label %_ZNK17btCollisionObject8isActiveEv.exit.thread [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit
  ]

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %bb.e, %bb.e, %bb.e
  br i1 %exitcond.not63, label %._crit_edge, label %bb.e, !llvm.loop !149

_ZNK17btCollisionObject8isActiveEv.exit.thread:   ; preds = %bb.e
  br i1 %exitcond.not63, label %.lr.ph43, label %.outer, !llvm.loop !149

.lr.ph43:                                         ; preds = %_ZNK17btCollisionObject8isActiveEv.exit.thread, %._crit_edge
  %i.aa = sub nsw i32 %.036.lcssa, %.03544
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %i.j, i32 noundef %i.aa) ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  store i8 0, ptr %i.af, align 4, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !54
  %.pre56 = load i32, ptr %i.ah, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph43, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
  %i.ak = phi i32 [ %.pre56, %.lr.ph43 ], [ %i.ce, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit ] ; 8 uses
  %i.al = phi i32 [ %.pre, %.lr.ph43 ], [ %i.cj, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit ] ; 2 uses
  %indvars.iv52 = phi i64 [ %i.h, %.lr.ph43 ], [ %indvars.iv.next53, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit ] ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !86
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.ar = sext i32 %i.ap to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.au = icmp eq i32 %i.al, %i.ak
  br i1 %i.au, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.ak, 0
  %i.av = shl nsw i32 %i.ak, 1
  %i.aw = select i1 %.not.i.i, i32 1, i32 %i.av   ; 5 uses
  %i.ax = icmp slt i32 %i.ak, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = sext i32 %i.aw to i64
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.az, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ag, align 4, !tbaa !54
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i: ; preds = %bb.i, %bb.h
  %i.bb = phi i32 [ %.pre.i, %bb.i ], [ %i.ak, %bb.h ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.ba, %bb.i ], [ null, %bb.h ] ; 8 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 9 uses
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %i.be = ptrtoaddr ptr %i.bd to i64
  %.0.i.i.i71 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bb to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bb, 4
  %i.bf = sub i64 %i.be, %.0.i.i.i71
  %diff.check = icmp ugt i64 %i.bf, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !67
  %wide.load72 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x ptr> %wide.load, ptr %i.bg, align 8, !tbaa !67
  store <2 x ptr> %wide.load72, ptr %i.bj, align 8, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i.prol
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !67
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !151

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !67
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !67
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !67
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.i.1
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !67
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.i.2
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !67
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !67
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !152

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %i.cc = load i8, ptr %i.aj, align 8, !tbaa !71, !range !59, !noundef !60
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
  %.pre2.pre.pre.i = load i32, ptr %i.ag, align 4, !tbaa !54
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i: ; preds = %bb.j, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.bb, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.j ], [ %i.bb, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i ]
  store i8 1, ptr %i.aj, align 8, !tbaa !71
  store ptr %.0.i.i.i, ptr %i.ai, align 8, !tbaa !53
  store i32 %i.aw, ptr %i.ah, align 8, !tbaa !64
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit: ; preds = %bb.f, %bb.g, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
  %i.ce = phi i32 [ %i.aw, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.f ]
  %i.cf = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.ak, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  store ptr %i.at, ptr %i.ci, align 8, !tbaa !67
  %i.cj = add nsw i32 %i.cf, 1                    ; 2 uses
  store i32 %i.cj, ptr %i.ag, align 4, !tbaa !54
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next53 to i32
  %exitcond55.not = icmp eq i32 %.036.lcssa, %lftr.wideiv
  br i1 %exitcond55.not, label %.loopexit, label %bb.f, !llvm.loop !153

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit, %.critedge, %._crit_edge
  %i.ck = icmp slt i32 %.036.lcssa, %i.b
  br i1 %i.ck, label %bb.b, label %._crit_edge47, !llvm.loop !154

._crit_edge47:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN27btSimulationIslandManagerMt21addManifoldsToIslandsEP12btDispatcher(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38
  %.047 = phi i32 [ 0, %.lr.ph ], [ %i.de, %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38 ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.047) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 840 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 848 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.r = load i32, ptr %i.q, align 8, !tbaa !97
  %.not27 = icmp eq i32 %i.r, 2
  br i1 %.not27, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.t = load i32, ptr %i.s, align 8, !tbaa !97
  %.not29 = icmp eq i32 %i.t, 2
  br i1 %.not29, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.v = load i32, ptr %i.u, align 8, !tbaa !102  ; 2 uses
  %i.w = and i32 %i.v, 2
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97
  %.not30 = icmp ne i32 %i.y, 2
  %i.z = and i32 %i.v, 4
  %i.aa = icmp eq i32 %i.z, 0
  %or.cond = and i1 %i.aa, %.not30
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.p, i1 noundef zeroext false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !102 ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %.not45 = icmp eq i32 %i.ad, 0
  br i1 %.not45, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !97
  %.not31 = icmp ne i32 %i.af, 2
  %i.ag = and i32 %i.ac, 4
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond43 = and i1 %i.ah, %.not31
  br i1 %or.cond43, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.n, i1 noundef zeroext false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
  br i1 %i.al, label %bb.m, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 228
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !96 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %_Z11getIslandIdPK20btPersistentManifold.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 228
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96
  br label %_Z11getIslandIdPK20btPersistentManifold.exit

_Z11getIslandIdPK20btPersistentManifold.exit:     ; preds = %bb.m, %bb.n
  %i.at = phi i32 [ %i.as, %bb.n ], [ %i.ao, %bb.m ] ; 2 uses
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.preheader.i, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread

.preheader.i:                                     ; preds = %_Z11getIslandIdPK20btPersistentManifold.exit
  %i.az = load i32, ptr %i.g, align 4, !tbaa !20  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !19
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread38, label %bb.p, !llvm.loop !0

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !81
  %i.bg = icmp eq i32 %i.bf, %i.at
  br i1 %i.bg, label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit, label %bb.o

_ZN27btSimulationIslandManagerMt9getIslandEi.exit: ; preds = %bb.p
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !47
  br label %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread

_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread: ; preds = %_Z11getIslandIdPK20btPersistentManifold.exit, %_ZN27btSimulationIslandManagerMt9getIslandEi.exit
  %.1.i37 = phi ptr [ %i.bd, %_ZN27btSimulationIslandManagerMt9getIslandEi.exit ], [ %i.ax, %_Z11getIslandIdPK20btPersistentManifold.exit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i37, i64 36 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !48 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i37, i64 40 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !65
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.q, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.q:                                             ; preds = %_ZN27btSimulationIslandManagerMt9getIslandEi.exit.thread
  %.not.i.i = icmp eq i32 %i.bi, 0
  %i.bm = shl nsw i32 %i.bi, 1
  %i.bn = select i1 %.not.i.i, i32 1, i32 %i.bm   ; 4 uses
  %i.bo = icmp slt i32 %i.bi, %i.bn
  br i1 %i.bo, label %bb.r, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = sext i32 %i.bn to i64
  %i.bq = shl nsw i64 %i.bp, 3
  %i.br = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bq, i32 noundef 16)
  %.pre.i = load i32, ptr %i.bh, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.s, %bb.r
  %i.bs = phi i32 [ %.pre.i, %bb.s ], [ %i.bi, %bb.r ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.br, %bb.s ], [ null, %bb.r ] ; 8 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.i37, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62 ; 9 uses
  br i1 %i.bt, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %.0.i.i.i61 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.bs to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bs, 4
  %i.bx = sub i64 %i.bw, %.0.i.i.i61
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond63 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond63, label %scalar.ph.preheader, label %vector.ph

end_hunk_0
