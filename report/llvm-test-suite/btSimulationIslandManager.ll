Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSimulationIslandManager?download=true
inline.NumInlined: 177
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN25btSimulationIslandManager21updateActivationStateEP16btCollisionWorldP12btDispatcher:bb.a
  store i32 %indvars16, ptr %i.k, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store i32 -1, ptr %i.l, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !78
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars16.1 = trunc i64 %indvars.iv.next to i32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  store i32 %indvars16.1, ptr %i.p, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  store i32 -1, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 260
  store float 1.000000e+00, ptr %i.r, align 4, !tbaa !78
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %indvars16.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 220
  store i32 %indvars16.2, ptr %i.u, align 4, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  store i32 -1, ptr %i.v, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 260
  store float 1.000000e+00, ptr %i.w, align 4, !tbaa !78
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %indvars16.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 220
  store i32 %indvars16.3, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  store i32 -1, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 260
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !78
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 220
  store i32 %indvars16.epil, ptr %i.ae, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  store i32 -1, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 260
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !78
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !77

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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = and i32 %i.k, 3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_ZN11btUnionFind4findEi.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.not6.i = icmp eq i64 %indvars.iv, %i.o
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not6.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = phi i32 [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.r = phi ptr [ %i.w, %.lr.ph.i ], [ %i.m, %bb.c ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45   ; 4 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !45
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45   ; 2 uses
  %.not.i = icmp eq i32 %i.u, %i.x
  br i1 %.not.i, label %_ZN11btUnionFind4findEi.exit, label %.lr.ph.i

_ZN11btUnionFind4findEi.exit:                     ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.sink20 = phi i32 [ -1, %bb.b ], [ %i.p, %bb.c ], [ %i.u, %.lr.ph.i ]
  %.sink = phi i32 [ -2, %bb.b ], [ -1, %bb.c ], [ -1, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  store i32 %.sink20, ptr %i.y, align 4, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i32 %.sink, ptr %i.z, align 8, !tbaa !49
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
  br i1 %i.c, label %bb.b, label %.loopexit136

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  br i1 %i.f, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %bb.b
  %.not.i5.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i8, ptr %i.i, align 8, !tbaa !16, !range !33, !noundef !51
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.c:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.h)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.c, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.l, align 8, !tbaa !16
  store ptr null, ptr %i.g, align 8, !tbaa !17
  store i32 0, ptr %i.d, align 8, !tbaa !19
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.h, %bb.b ]
  %i.n = sext i32 %i.b to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 3
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !53
  br label %.loopexit136

.loopexit136:                                     ; preds = %.lr.ph.i, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN11btUnionFind11sortIslandsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.loopexit136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54   ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph148, %.loopexit128
  %.079146 = phi i32 [ 0, %.lr.ph148 ], [ %.080.lcssa, %.loopexit128 ] ; 7 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !43   ; 5 uses
  %i.y = zext nneg i32 %.079146 to i64            ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45  ; 6 uses
  %i.ab = add nuw nsw i32 %.079146, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ab) ; 3 uses
  %i.ac = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %i.y, 1   ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next200, %i.w
  br i1 %i.ad, label %.lr.ph204, label %.critedge

bb.f:                                             ; preds = %.lr.ph204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next202, 1 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.ae, label %.lr.ph204, label %.critedge

.lr.ph204:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.next202 = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.next200, %bb.e ] ; 4 uses
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.f ], [ %i.y, %bb.e ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next202
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp eq i32 %i.ag, %i.aa
  br i1 %i.ah, label %bb.f, label %.critedge.split.loop.exit189

.critedge.split.loop.exit189:                     ; preds = %.lr.ph204
  %i.ai = trunc nuw nsw i64 %indvars.iv201 to i32
  %i.aj = trunc nuw nsw i64 %indvars.iv.next202 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %.critedge.split.loop.exit189
  %.080.in.lcssa = phi i32 [ %i.ai, %.critedge.split.loop.exit189 ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ] ; 3 uses
  %.080.lcssa = phi i32 [ %i.aj, %.critedge.split.loop.exit189 ], [ %smax, %bb.e ], [ %smax, %bb.f ] ; 3 uses
  %3 = icmp slt i32 %.079146, %.080.lcssa
  br i1 %3, label %.lr.ph, label %.loopexit128

.lr.ph:                                           ; preds = %.critedge
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !24  ; 3 uses
  %smax160 = tail call i32 @llvm.smax.i32(i32 %.080.in.lcssa, i32 %.079146) ; 2 uses
  %i.al = add nuw nsw i32 %smax160, 1
  %i.am = add i32 %smax160, 1
  %i.an = sub i32 %i.am, %.079146                 ; 3 uses
  %xtraiter = and i32 %i.an, 1
  %.not216 = icmp slt i32 %.079146, %.080.in.lcssa
  br i1 %.not216, label %.lr.ph.new, label %.epil.preheader

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.an, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv164 = phi i64 [ %i.y, %.lr.ph.new ], [ %indvars.iv.next165.1, %bb.k ] ; 3 uses
  %.078138 = phi i1 [ true, %.lr.ph.new ], [ %.2.1, %bb.k ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv164
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !46
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %.not110 = icmp eq i32 %i.av, %i.aa
  br i1 %.not110, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 228
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !55 ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 1
  %i.az = icmp ne i32 %i.ax, 4
  %.not155 = and i1 %i.az, %i.ay
  %spec.select111 = select i1 %.not155, i1 %.078138, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i1 [ %.078138, %bb.g ], [ %spec.select111, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv164
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !46
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 220
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42
  %.not110.1 = icmp eq i32 %i.bh, %i.aa
  br i1 %.not110.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 228
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !55 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 1
  %i.bl = icmp ne i32 %i.bj, 4
  %.not155.1 = and i1 %i.bl, %i.bk
  %spec.select111.1 = select i1 %.not155.1, i1 %.2, i1 false
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi i1 [ %.2, %bb.i ], [ %spec.select111.1, %bb.j ] ; 3 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv164.epil.init = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next165.1, %._crit_edge.unr-lcssa ]
  %.078138.epil.init = phi i1 [ true, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod217 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv164.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !46
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 220
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !42
  %.not110.epil = icmp eq i32 %i.bt, %i.aa
  br i1 %.not110.epil, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.epil.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 228
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !55 ; 2 uses
  %i.bw = icmp ne i32 %i.bv, 1
  %i.bx = icmp ne i32 %i.bv, 4
  %.not155.epil = and i1 %i.bx, %i.bw
  %spec.select111.epil = select i1 %.not155.epil, i1 %.078138.epil.init, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.l, %._crit_edge.unr-lcssa
  %.2.lcssa = phi i1 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.078138.epil.init, %.epil.preheader ], [ %spec.select111.epil, %bb.l ]
  br i1 %.2.lcssa, label %.lr.ph145.preheader, label %.lr.ph142

.lr.ph145.preheader:                              ; preds = %._crit_edge
  %smax169 = tail call i32 @llvm.smax.i32(i32 %.080.in.lcssa, i32 %.079146)
  %i.by = add nuw nsw i32 %smax169, 1
  br label %.lr.ph145.a

.lr.ph145.a:                                      ; preds = %.lr.ph145.preheader, %bb.n
  %indvars.iv171 = phi i64 [ %i.y, %.lr.ph145.preheader ], [ %indvars.iv.next172, %bb.n ] ; 2 uses
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv171
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !46
  %i.cd = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 220
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42
  %.not104 = icmp eq i32 %i.ci, %i.aa
  br i1 %.not104, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph145.a
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.cg, i32 noundef 2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m, %.lr.ph145.a
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv174 = trunc i64 %indvars.iv.next172 to i32
  %exitcond175.not = icmp eq i32 %i.by, %lftr.wideiv174
  br i1 %exitcond175.not, label %.loopexit128, label %.lr.ph145.a

.lr.ph142:                                        ; preds = %._crit_edge, %bb.r
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %bb.r ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv166
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !48 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 220
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42
  %.not102 = icmp eq i32 %i.cs, %i.aa
  br i1 %.not102, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.lr.ph142
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 228
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !55
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN17btCollisionObject18setActivationStateEi(ptr noundef nonnull align 8 dereferenceable(280) %i.cq, i32 noundef 3)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 232
  store float 0.000000e+00, ptr %i.cw, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %.lr.ph142
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %lftr.wideiv169 = trunc i64 %indvars.iv.next167 to i32
  %exitcond170.not = icmp eq i32 %i.al, %lftr.wideiv169
  br i1 %exitcond170.not, label %.loopexit128, label %.lr.ph142

.loopexit128:                                     ; preds = %bb.r, %bb.n, %.critedge
  %i.cx = icmp slt i32 %.080.lcssa, %i.s
  br i1 %i.cx, label %bb.e, label %._crit_edge149

._crit_edge149:                                   ; preds = %.loopexit128, %bb.d
  %i.cy = load ptr, ptr %1, align 8, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader:                                       ; preds = %._crit_edge149
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %.preheader
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph151, %bb.al
  %.0150 = phi i32 [ 0, %.lr.ph151 ], [ %i.ga, %bb.al ] ; 2 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0150)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 712
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !58 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 720
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59 ; 6 uses
  %.not = icmp eq ptr %i.dm, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 228
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !55
  %.not93 = icmp eq i32 %i.dq, 2
  br i1 %.not93, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not94 = icmp eq ptr %i.do, null
  br i1 %.not94, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 228
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !55
  %.not95 = icmp eq i32 %i.ds, 2
  br i1 %.not95, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 216
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !41
  %i.dv = and i32 %i.du, 2
  %.not125 = icmp eq i32 %i.dv, 0
  br i1 %.not125, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 228
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !55
  %.not96 = icmp eq i32 %i.dx, 2
  br i1 %.not96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.do, i1 noundef zeroext false)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.ak, %bb.aj, %bb.s, %bb.ae, %bb.ac, %bb.z, %bb.p, %._crit_edge149, %.loopexit136, %bb.c
  %lpad.loopexit.split-lp211 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN15CProfileManager12Stop_ProfileEv()
          to label %_ZN14CProfileSampleD2Ev.exit unwind label %bb.am

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 216
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !41
  %i.ea = and i32 %i.dz, 2
  %.not126 = icmp eq i32 %i.ea, 0
  br i1 %.not126, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 228
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !55
  %.not97 = icmp eq i32 %i.ec, 2
  br i1 %.not97, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN17btCollisionObject8activateEb(ptr noundef nonnull align 8 dereferenceable(280) %i.dm, i1 noundef zeroext false)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ed = load i8, ptr %i.dd, align 8, !tbaa !32, !range !33, !noundef !51
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load ptr, ptr %1, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.do)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ei, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !18  ; 7 uses
  %i.ek = load i32, ptr %i.de, align 8, !tbaa !19
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.ah, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i = icmp eq i32 %i.ej, 0
  %i.em = shl nsw i32 %i.ej, 1
  %i.en = select i1 %.not.i.i, i32 1, i32 %i.em   ; 4 uses
  %i.eo = icmp slt i32 %i.ej, %i.en
  br i1 %i.eo, label %bb.ai, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = sext i32 %i.en to i64
  %i.eq = shl nsw i64 %i.ep, 3
  %i.er = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eq, i32 noundef 16)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.aj
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %.noexc121, %bb.ai
end_hunk_0
