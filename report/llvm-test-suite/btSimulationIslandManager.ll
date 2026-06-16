inline.NumInlined: 177
inline.NumDeleted: 65
begin_hunk_0_@_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher:bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 220
  store i32 %indvars16, ptr %i.k, align 4, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store i32 -1, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !65
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars16.1 = trunc i64 %indvars.iv.next to i32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  store i32 %indvars16.1, ptr %i.p, align 4, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store i32 -1, ptr %i.q, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 260
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !65
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %indvars16.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 220
  store i32 %indvars16.2, ptr %i.u, align 4, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i32 -1, ptr %i.v, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 260
  store float 1.000000e+00, ptr %i.w, align 4, !tbaa !65
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %indvars16.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  store i32 %indvars16.3, ptr %i.z, align 4, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  store i32 -1, ptr %i.aa, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 260
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %indvars16.epil = trunc i64 %indvars.iv.epil to i32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 220
  store i32 %indvars16.epil, ptr %i.ae, align 4, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  store i32 -1, ptr %i.af, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 260
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !65
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !66

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  tail call void @_ZN25btSimulationIslandManager10findUnionsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr poison, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN25btSimulationIslandManager26storeIslandActivationStateEP16btCollisionWorld(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11btUnionFind4findEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11btUnionFind4findEi.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  %i.l = and i32 %i.k, 3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_ZN11btUnionFind4findEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !59   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.not6.i = icmp eq i64 %indvars.iv, %i.o
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not6.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = phi i32 [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.r = phi ptr [ %i.w, %.lr.ph.i ], [ %i.m, %bb.c ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 4 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !59
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59   ; 2 uses
  %.not.i = icmp eq i32 %i.u, %i.x
  br i1 %.not.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i

_ZN11btUnionFind4findEi.exit:                     ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.sink20 = phi i32 [ -1, %bb.b ], [ %i.p, %bb.c ], [ %i.u, %.lr.ph.i ]
  %.sink = phi i32 [ -2, %bb.b ], [ -1, %bb.c ], [ -1, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  store i32 %.sink20, ptr %i.y, align 4, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i32 %.sink, ptr %i.z, align 8, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN11btUnionFind4findEi.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN25btSimulationIslandManager12buildIslandsEP12btDispatcherP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit131

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %bb.b
  %.not.i5.i.i = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !33
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond28.i = select i1 %.not.i5.i.i, i1 %i.k, i1 false
  br i1 %or.cond28.i, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i unwind label %bb.h

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.c, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.i, align 8, !tbaa !10
  store ptr null, ptr %i.g, align 8, !tbaa !17
  store i32 0, ptr %i.d, align 8, !tbaa !19
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.l = phi ptr [ null, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.m = sext i32 %i.b to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 3
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.n
  %i.o = mul nsw i64 %i.m, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !68
  br label %.loopexit131

.loopexit131:                                     ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN11btUnionFind11sortIslandsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.loopexit131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70   ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %.loopexit
  %.083141 = phi i32 [ 0, %.lr.ph143 ], [ %.081.lcssa, %.loopexit ] ; 7 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !58   ; 5 uses
  %i.x = zext nneg i32 %.083141 to i64            ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59   ; 6 uses
  %i.aa = add nuw nsw i32 %.083141, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.aa) ; 3 uses
  %i.ab = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %i.x, 1   ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next184, %i.v
  br i1 %i.ac, label %.lr.ph188, label %.critedge

bb.f:                                             ; preds = %.lr.ph188
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next186, 1 ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.ad, label %.lr.ph188, label %.critedge

.lr.ph188:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.next186 = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.next184, %bb.e ] ; 4 uses
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %bb.f ], [ %i.x, %bb.e ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next186
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ag = icmp eq i32 %i.af, %i.z
  br i1 %i.ag, label %bb.f, label %.critedge.split.loop.exit178

bb.g:                                             ; preds = %.loopexit131
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.critedge.split.loop.exit178:                     ; preds = %.lr.ph188
  %i.aj = trunc nuw nsw i64 %indvars.iv185 to i32
  %i.ak = trunc nuw nsw i64 %indvars.iv.next186 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %.critedge.split.loop.exit178
  %.081.in.lcssa = phi i32 [ %i.aj, %.critedge.split.loop.exit178 ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %.081.lcssa = phi i32 [ %i.ak, %.critedge.split.loop.exit178 ], [ %smax, %bb.e ], [ %smax, %bb.f ] ; 3 uses
  %3 = icmp slt i32 %.083141, %.081.lcssa
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.critedge
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !24  ; 3 uses
  %smax149 = tail call i32 @llvm.smax.i32(i32 %.081.in.lcssa, i32 %.083141) ; 2 uses
  %i.am = add nuw nsw i32 %smax149, 1
  %i.an = add i32 %smax149, 1
  %i.ao = sub i32 %i.an, %.083141                 ; 3 uses
  %xtraiter = and i32 %i.ao, 1
  %.not194 = icmp slt i32 %.083141, %.081.in.lcssa
  br i1 %.not194, label %.lr.ph.new, label %.epil.preheader

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.ao, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv153 = phi i64 [ %i.x, %.lr.ph.new ], [ %indvars.iv.next154.1, %bb.m ] ; 3 uses
  %.084134 = phi i1 [ true, %.lr.ph.new ], [ %.286.1, %bb.m ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.m ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv153
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !61
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 220
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !57
  %.not110 = icmp eq i32 %i.aw, %i.z
  br i1 %.not110, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 228
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !71 ; 2 uses
  %i.az = icmp ne i32 %i.ay, 1
  %i.ba = icmp ne i32 %i.ay, 4
  %.not150 = and i1 %i.ba, %i.az
  %spec.select111 = select i1 %.not150, i1 %.084134, i1 false
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.286 = phi i1 [ %.084134, %bb.i ], [ %spec.select111, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv153
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 220
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !57
  %.not110.1 = icmp eq i32 %i.bi, %i.z
  br i1 %.not110.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 228
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !71 ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 1
  %i.bm = icmp ne i32 %i.bk, 4
  %.not150.1 = and i1 %i.bm, %i.bl
  %spec.select111.1 = select i1 %.not150.1, i1 %.286, i1 false
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.286.1 = phi i1 [ %.286, %bb.k ], [ %spec.select111.1, %bb.l ] ; 3 uses
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.i

._crit_edge.unr-lcssa:                            ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv153.epil.init = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next154.1, %._crit_edge.unr-lcssa ]
  %.084134.epil.init = phi i1 [ true, %.lr.ph ], [ %.286.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod195 = trunc i32 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv153.epil.init
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !61
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 220
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !57
  %.not110.epil = icmp eq i32 %i.bu, %i.z
  br i1 %.not110.epil, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.epil.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 228
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !71 ; 2 uses
  %i.bx = icmp ne i32 %i.bw, 1
  %i.by = icmp ne i32 %i.bw, 4
  %.not150.epil = and i1 %i.by, %i.bx
  %spec.select111.epil = select i1 %.not150.epil, i1 %.084134.epil.init, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.n, %._crit_edge.unr-lcssa
  %.286.lcssa = phi i1 [ %.286.1, %._crit_edge.unr-lcssa ], [ %.084134.epil.init, %.epil.preheader ], [ %spec.select111.epil, %bb.n ]
  br i1 %.286.lcssa, label %.lr.ph140.preheader, label %.lr.ph137

.lr.ph140.preheader:                              ; preds = %._crit_edge
  %smax158 = tail call i32 @llvm.smax.i32(i32 %.081.in.lcssa, i32 %.083141)
  %i.bz = add nuw nsw i32 %smax158, 1
  br label %.lr.ph140.a

.lr.ph140.a:                                      ; preds = %.lr.ph140.preheader, %bb.q
  %indvars.iv160 = phi i64 [ %i.x, %.lr.ph140.preheader ], [ %indvars.iv.next161, %bb.q ] ; 2 uses
  %i.ca = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv160
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !61
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !62 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 220
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !57
  %.not104 = icmp eq i32 %i.cj, %i.z
  br i1 %.not104, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.p:                                             ; preds = %.lr.ph140.a
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.ch, i32 noundef 2)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p, %.lr.ph140.a
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %lftr.wideiv163 = trunc i64 %indvars.iv.next161 to i32
  %exitcond164.not = icmp eq i32 %i.bz, %lftr.wideiv163
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph140.a

.lr.ph137:                                        ; preds = %._crit_edge, %bb.v
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.v ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv155
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !61
  %i.cp = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !62 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 220
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !57
  %.not102 = icmp eq i32 %i.cu, %i.z
  br i1 %.not102, label %bb.s, label %bb.v

bb.r:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.s:                                             ; preds = %.lr.ph137
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 228
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !71
  %i.cy = icmp eq i32 %i.cx, 2
  br i1 %i.cy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.cs, i32 noundef 3)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  store float 0.000000e+00, ptr %i.cz, align 8, !tbaa !72
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %.lr.ph137
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %lftr.wideiv158 = trunc i64 %indvars.iv.next156 to i32
  %exitcond159.not = icmp eq i32 %i.am, %lftr.wideiv158
  br i1 %exitcond159.not, label %.loopexit, label %.lr.ph137

.loopexit:                                        ; preds = %bb.v, %bb.q, %.critedge
  %i.da = icmp slt i32 %.081.lcssa, %i.r
  br i1 %i.da, label %bb.e, label %._crit_edge144

._crit_edge144:                                   ; preds = %.loopexit, %bb.d
  %i.db = load ptr, ptr %1, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef i32 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.preheader unwind label %bb.ae ; 2 uses

.preheader:                                       ; preds = %._crit_edge144
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph146, %bb.as
  %.082145 = phi i32 [ 0, %.lr.ph146 ], [ %i.gg, %bb.as ] ; 2 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.082145)
          to label %bb.x unwind label %bb.af      ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 712
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !73 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 720
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !76 ; 6 uses
  %.not = icmp eq ptr %i.dp, null
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 228
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !71
  %.not93 = icmp eq i32 %i.dt, 2
  br i1 %.not93, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not94 = icmp eq ptr %i.dr, null
  br i1 %.not94, label %bb.as, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 228
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !71
  %.not95 = icmp eq i32 %i.dv, 2
  br i1 %.not95, label %bb.as, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 216
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !52
  %i.dy = and i32 %i.dx, 2
  %.not126 = icmp eq i32 %i.dy, 0
  br i1 %.not126, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 228
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !71
  %.not96 = icmp eq i32 %i.ea, 2
  br i1 %.not96, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.dr, i1 noundef zeroext false)
          to label %bb.ah unwind label %bb.ag

bb.ae:                                            ; preds = %._crit_edge144
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.af:                                            ; preds = %bb.w
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ag:                                            ; preds = %bb.ar, %bb.aq, %bb.al, %bb.aj, %bb.ad
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ah:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 216
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !52
  %i.eg = and i32 %i.ef, 2
  %.not127 = icmp eq i32 %i.eg, 0
  br i1 %.not127, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 228
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !71
  %.not97 = icmp eq i32 %i.ei, 2
  br i1 %.not97, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.dp, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.ag

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ej = load i8, ptr %i.dg, align 8, !tbaa !27, !range !33, !noundef !77
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.el = load ptr, ptr %1, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dr)
          to label %bb.am unwind label %bb.ag

bb.am:                                            ; preds = %bb.al
  br i1 %i.eo, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !18  ; 7 uses
  %i.eq = load i32, ptr %i.dh, align 8, !tbaa !19
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ao, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.ao:                                            ; preds = %bb.an
  %.not.i.i = icmp eq i32 %i.ep, 0
  %i.es = shl nsw i32 %i.ep, 1
end_hunk_0
