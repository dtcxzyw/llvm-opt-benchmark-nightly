Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSimulationIslandManager?download=true
inline.NumInlined: 196
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher:bb.a
bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.1, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 228
  store i32 %.1, ptr %i.w, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  store i32 -1, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 300
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !84
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01314.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod18 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !48
  %i.ad = and i32 %i.ac, 3
  %.not.epil = icmp eq i32 %i.ad, 0
  br i1 %.not.epil, label %bb.g, label %._crit_edge.loopexit.epilog-lcssa

bb.g:                                             ; preds = %.epil.preheader
  %i.ae = add nsw i32 %.01314.epil.init, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 228
  store i32 %.01314.epil.init, ptr %i.af, align 4, !tbaa !49
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.g, %.epil.preheader
  %.1.epil = phi i32 [ %.01314.epil.init, %.epil.preheader ], [ %i.ae, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  store i32 -1, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 300
  store float 1.000000e+00, ptr %i.ah, align 4, !tbaa !84
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %._crit_edge.loopexit.epilog-lcssa ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN11btUnionFind5resetEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i32 noundef %.013.lcssa)
  tail call void @_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr poison, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.01415 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %i.l = and i32 %i.k, 3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %.01415 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
  %.not7.i = icmp eq i32 %.01415, %i.o
  br i1 %.not7.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.p = phi i32 [ %i.w, %.lr.ph.i ], [ %i.o, %bb.c ]
  %i.q = phi ptr [ %i.v, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52   ; 4 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !52
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp eq i32 %i.t, %i.w
  br i1 %.not.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i, !llvm.loop !0

_ZN11btUnionFind4findEi.exit:                     ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i32 [ %.01415, %bb.c ], [ %i.t, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  store i32 %.0.lcssa.i, ptr %i.x, align 4, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store i32 -1, ptr %i.aa, align 8, !tbaa !57
  %i.ab = add nsw i32 %.01415, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 228
  store i32 -1, ptr %i.ac, align 4, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store i32 -2, ptr %i.ad, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11btUnionFind4findEi.exit
  %.1 = phi i32 [ %.01415, %bb.d ], [ %i.ab, %_ZN11btUnionFind4findEi.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit146

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %bb.b
  %.not.i5.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.i, align 8, !tbaa !18, !range !35, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.c, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.l, align 8, !tbaa !18
  store ptr null, ptr %i.g, align 8, !tbaa !19
  store i32 0, ptr %i.d, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !60
  br label %.loopexit146

.loopexit146:                                     ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN11btUnionFind11sortIslandsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.loopexit146
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !61   ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph156, %.loopexit138
  %.084155 = phi i32 [ 0, %.lr.ph156 ], [ %.085.lcssa, %.loopexit138 ] ; 5 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !50   ; 3 uses
  %i.y = zext nneg i32 %.084155 to i64            ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !52  ; 4 uses
  %i.ab = add nuw nsw i32 %.084155, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ab) ; 3 uses
  %i.ac = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next205 = add nuw nsw i64 %i.y, 1   ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next205, %i.w
  br i1 %i.ad, label %.lr.ph209, label %.critedge

bb.f:                                             ; preds = %.lr.ph209
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next207, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.ae, label %.lr.ph209, label %.critedge, !llvm.loop !86

.lr.ph209:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.next207 = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.next205, %bb.e ] ; 4 uses
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %bb.f ], [ %i.y, %bb.e ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next207
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ah = icmp eq i32 %i.ag, %i.aa
  br i1 %i.ah, label %bb.f, label %.critedge.split.loop.exit194, !llvm.loop !86

.critedge.split.loop.exit194:                     ; preds = %.lr.ph209
  %i.ai = trunc nuw nsw i64 %indvars.iv206 to i32
  %i.aj = trunc nuw nsw i64 %indvars.iv.next207 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %.critedge.split.loop.exit194
  %.085.in.lcssa = phi i32 [ %i.ai, %.critedge.split.loop.exit194 ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %.085.lcssa = phi i32 [ %i.aj, %.critedge.split.loop.exit194 ], [ %smax, %bb.e ], [ %smax, %bb.f ] ; 3 uses
  %.not134145 = icmp slt i32 %.084155, %.085.lcssa
  br i1 %.not134145, label %.lr.ph, label %.loopexit138

.lr.ph:                                           ; preds = %.critedge
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !26
  %smax167 = call i32 @llvm.smax.i32(i32 %.085.in.lcssa, i32 %.084155)
  %i.al = add nuw nsw i32 %smax167, 1             ; 2 uses
  br label %bb.g

.lr.ph148.preheader:                              ; preds = %bb.i
  %smax177 = call i32 @llvm.smax.i32(i32 %.085.in.lcssa, i32 %.084155)
  %4 = add nuw nsw i32 %smax177, 1
  br label %.lr.ph154.a

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv168.a = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next169.a, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv168.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %.not106.a = icmp eq i32 %i.at, %i.aa
  br i1 %.not106.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.av = load i32, ptr %i.au, align 8, !tbaa !62
  switch i32 %i.av, label %bb.i [
    i32 1, label %.lr.ph151.preheader
    i32 4, label %.lr.ph151.preheader
  ]

.lr.ph151.preheader:                              ; preds = %bb.h, %bb.h
  br label %.lr.ph151

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next169.a = add nuw nsw i64 %indvars.iv168.a, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next169.a to i32
  %exitcond.not = icmp eq i32 %i.al, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph148.preheader, label %bb.g, !llvm.loop !87

.lr.ph154.a:                                      ; preds = %.lr.ph148.preheader, %.critedge137
  %indvars.iv176 = phi i64 [ %i.y, %.lr.ph148.preheader ], [ %indvars.iv.next177, %.critedge137 ] ; 2 uses
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !54
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 228
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !49
  %.not110 = icmp eq i32 %i.bf, %i.aa
  br i1 %.not110, label %bb.j, label %.critedge137

bb.j:                                             ; preds = %.lr.ph154.a
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.bd, i32 noundef 2)
          to label %.critedge137 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge137:                                     ; preds = %bb.j, %.lr.ph154.a
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %lftr.wideiv179 = trunc i64 %indvars.iv.next177 to i32
  %exitcond180.not.a = icmp eq i32 %4, %lftr.wideiv179
  br i1 %exitcond180.not.a, label %.loopexit138, label %.lr.ph154.a, !llvm.loop !88

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %bb.n
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.n ], [ %i.y, %.lr.ph151.preheader ] ; 2 uses
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv171
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 228
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !49
  %.not108 = icmp eq i32 %i.bp, %i.aa
  br i1 %.not108, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph151
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !62
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(372) %i.bn, i32 noundef 3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 244
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !95
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %.lr.ph151
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv174 = trunc i64 %indvars.iv.next172 to i32
  %exitcond175.not = icmp eq i32 %i.al, %lftr.wideiv174
  br i1 %exitcond175.not, label %.loopexit138, label %.lr.ph151, !llvm.loop !89

.loopexit138:                                     ; preds = %bb.n, %.critedge137, %.critedge
  %i.bu = icmp slt i32 %.085.lcssa, %i.s
  br i1 %i.bu, label %bb.e, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.loopexit138, %bb.d
  %i.bv = load ptr, ptr %1, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %._crit_edge
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph158, %bb.aj
  %.0157 = phi i32 [ 0, %.lr.ph158 ], [ %i.fh, %bb.aj ] ; 2 uses
  %i.cf = load ptr, ptr %1, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0157)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.p:                                             ; preds = %bb.o
  %i.cj = load i8, ptr %i.ca, align 8, !tbaa !63, !range !35, !noundef !58
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 856
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !96
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 840
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 848
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !67 ; 6 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !62
  %.not98 = icmp eq i32 %i.ct, 2
  br i1 %.not98, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not99 = icmp eq ptr %i.cr, null
  br i1 %.not99, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 240
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !62
  %.not100 = icmp eq i32 %i.cv, 2
  br i1 %.not100, label %bb.aj, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 224
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not135 = icmp eq i32 %i.cy, 0
  br i1 %.not135, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !62
  %.not101 = icmp ne i32 %i.da, 2
  %i.db = and i32 %i.cx, 4
  %i.dc = icmp eq i32 %i.db, 0
  %or.cond = and i1 %i.dc, %.not101
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.cr, i1 noundef zeroext false)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.ai, %bb.ah, %bb.o, %bb.ac, %bb.aa, %bb.x, %bb.l, %._crit_edge, %.loopexit146, %bb.c
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %lpad.loopexit.split-lp217

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 224
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !48 ; 2 uses
  %i.df = and i32 %i.de, 2
  %.not136 = icmp eq i32 %i.df, 0
  br i1 %.not136, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 240
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !62
  %.not102 = icmp ne i32 %i.dh, 2
  %i.di = and i32 %i.de, 4
  %i.dj = icmp eq i32 %i.di, 0
  %or.cond134 = and i1 %i.dj, %.not102
  br i1 %or.cond134, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(372) %i.cp, i1 noundef zeroext false)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dk = load i8, ptr %i.cb, align 8, !tbaa !34, !range !35, !noundef !58
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load ptr, ptr %1, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.dp, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !20  ; 7 uses
  %i.dr = load i32, ptr %i.cc, align 8, !tbaa !21
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.af, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.af:                                            ; preds = %bb.ae
  %.not.i.i = icmp eq i32 %i.dq, 0
  %i.dt = shl nsw i32 %i.dq, 1
  %i.du = select i1 %.not.i.i, i32 1, i32 %i.dt   ; 4 uses
  %i.dv = icmp slt i32 %i.dq, %i.du
  br i1 %i.dv, label %bb.ag, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

end_hunk_0
