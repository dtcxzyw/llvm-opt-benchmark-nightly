inline.NumInlined: 2865
inline.NumDeleted: 633
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZN10btSoftBody11appendTetraEiPNS_8MaterialE:bb.a
  br i1 %i.q, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.r = shl nsw i32 %i.n, 1
  %i.s = select i1 %.not.i.i, i32 1, i32 %i.r     ; 4 uses
  %i.t = icmp slt i32 %i.n, %i.s
  br i1 %i.t, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = sext i32 %i.s to i64
  %i.v = mul nsw i64 %i.u, 136
  %i.w = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !122
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.x = phi i32 [ %.pre.i, %bb.j ], [ %i.n, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.w, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE8allocateEi.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aa = icmp eq i32 %i.x, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw [136 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw [136 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ab, ptr noundef nonnull align 8 dereferenceable(136) %i.ad, i64 136, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ag = getelementptr inbounds nuw [136 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, ptr noundef nonnull align 8 dereferenceable(136) %i.ag, i64 136, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.aj = getelementptr inbounds nuw [136 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(136) %i.aj, i64 136, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE8allocateEi.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.an = load i8, ptr %i.am, align 8, !tbaa !120, !range !179, !noundef !180
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody5TetraEE4copyEiiPS1_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i8 1, ptr %i.ap, align 8, !tbaa !120
  store ptr %.0.i.i.i, ptr %i.ak, align 8, !tbaa !121
  store i32 %i.s, ptr %i.o, align 8, !tbaa !123
  %.pre2.i = load i32, ptr %i.m, align 4, !tbaa !122
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i
  %i.aq = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEE10deallocateEv.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !121
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [136 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store ptr %.sroa.0.0, ptr %i.au, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7, i64 120, i1 false)
  %i.av = load i32, ptr %i.m, align 4, !tbaa !122
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.m, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody11appendTetraEiiiiPNS_8MaterialE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN10btSoftBody11appendTetraEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef -1, ptr noundef %5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.b = load i32, ptr %i.a, align 4, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr [136 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [120 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = getelementptr i8, ptr %i.f, i64 -120
  store ptr %i.j, ptr %i.k, align 8, !tbaa !251
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds [120 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = getelementptr i8, ptr %i.f, i64 -112
  store ptr %i.n, ptr %i.o, align 8, !tbaa !251
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.q = sext i32 %3 to i64
  %i.r = getelementptr inbounds [120 x i8], ptr %i.p, i64 %i.q ; 4 uses
  %i.s = getelementptr i8, ptr %i.f, i64 -104
  store ptr %i.r, ptr %i.s, align 8, !tbaa !251
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.u = sext i32 %4 to i64
  %i.v = getelementptr inbounds [120 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 -96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !251
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = load float, ptr %i.y, align 4, !tbaa !159
  %i.ac = load float, ptr %i.x, align 4, !tbaa !159 ; 3 uses
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 3 uses
  %i.ai = fsub float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !159
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !159 ; 3 uses
  %i.an = fsub float %i.ak, %i.am
  %i.ao = load float, ptr %i.z, align 4, !tbaa !159
  %i.ap = fsub float %i.ao, %i.ac                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !159
  %i.as = fsub float %i.ar, %i.ah                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.au = load float, ptr %i.at, align 4, !tbaa !159
  %i.av = fsub float %i.au, %i.am                 ; 2 uses
  %i.aw = load float, ptr %i.aa, align 4, !tbaa !159
  %i.ax = fsub float %i.aw, %i.ac                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.az = load float, ptr %i.ay, align 4, !tbaa !159
  %i.ba = fsub float %i.az, %i.ah                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !159
  %i.bd = fsub float %i.bc, %i.am                 ; 2 uses
  %i.be = fneg float %i.ba
  %i.bf = fmul float %i.av, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.as, float %i.bd, float %i.bf)
  %i.bh = fneg float %i.bd
  %i.bi = fmul float %i.ap, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.bi)
  %i.bk = fneg float %i.ax
  %i.bl = fmul float %i.as, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ba, float %i.bl)
  %i.bn = fmul float %i.ai, %i.bj
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.bg, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.bm, float %i.bo)
  %i.bq = getelementptr i8, ptr %i.f, i64 -88
  store float %i.bp, ptr %i.bq, align 8, !tbaa !274
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.br, align 4, !tbaa !166
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody12appendAnchorEiP11btRigidBodyb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 9 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  %i.h = icmp eq ptr %i.g, %2
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.c

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.l = shl nsw i32 %i.b, 1
  %i.m = select i1 %.not.i.i, i32 1, i32 %i.l     ; 4 uses
  %i.n = icmp slt i32 %i.b, %i.m
  br i1 %i.n, label %bb.f, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = sext i32 %i.m to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.p, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %.pre.i, %bb.g ], [ %i.b, %bb.f ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.q, %bb.g ], [ null, %bb.f ] ; 8 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 9 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %i.v = ptrtoaddr ptr %i.u to i64
  %.0.i.i.i38 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.r to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  %i.w = sub i64 %i.v, %.0.i.i.i38
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x ptr>, ptr %i.y, align 8, !tbaa !276
  %wide.load39 = load <2 x ptr>, ptr %i.z, align 8, !tbaa !276
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> %wide.load, ptr %i.x, align 8, !tbaa !276
  store <2 x ptr> %wide.load39, ptr %i.aa, align 8, !tbaa !276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !278

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
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.prol
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !276
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !276
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !279

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !276
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !276
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !276
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !276
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !276
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !276
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !276
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !276
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !280

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.au = load i8, ptr %i.at, align 8, !tbaa !10, !range !179, !noundef !180
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.u)
  %.pre2.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.r, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.h ], [ %i.r, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.aw, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.t, align 8, !tbaa !17
  store i32 %i.m, ptr %i.i, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, %bb.e, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.b, %bb.e ], [ %i.b, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %2, ptr %i.bb, align 8, !tbaa !276
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !109
  %i.bf = sext i32 %1 to i64
  %i.bg = getelementptr inbounds [120 x i8], ptr %i.be, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bn = load <2 x float>, ptr %i.bh, align 4, !tbaa !159, !noalias !281 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bi, align 4, !tbaa !159, !noalias !281 ; 2 uses
  %i.bp = load <2 x float>, ptr %i.bj, align 4, !tbaa !159, !noalias !281 ; 2 uses
  %i.bq = load float, ptr %i.bk, align 4, !tbaa !159, !noalias !281
  %i.br = load float, ptr %i.bl, align 4, !tbaa !159, !noalias !281
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !159, !noalias !281
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !159, !noalias !286
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !159, !noalias !286
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.by = load float, ptr %i.bx, align 4, !tbaa !159, !noalias !286
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.ca = load <2 x float>, ptr %i.bz, align 4, !tbaa !159 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !159 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = or i8 %i.ce, 1
  store i8 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 5 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !126 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !127
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.j, label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i.i6 = icmp eq i32 %i.ch, 0
  %i.cl = shl nsw i32 %i.ch, 1
  %i.cm = select i1 %.not.i.i6, i32 1, i32 %i.cl  ; 4 uses
  %i.cn = icmp slt i32 %i.ch, %i.cm
  br i1 %i.cn, label %bb.k, label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE9push_backERKS1_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i7 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i7, label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = sext i32 %i.cm to i64
  %i.cp = mul nsw i64 %i.co, 104
  %i.cq = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cp, i32 noundef 16)
  %.pre.i8 = load i32, ptr %i.cg, align 4, !tbaa !126
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.cr = phi i32 [ %.pre.i8, %bb.l ], [ %i.ch, %bb.k ] ; 2 uses
  %.0.i.i.i9 = phi ptr [ %i.cq, %bb.l ], [ null, %bb.k ] ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i12, label %_ZNK20btAlignedObjectArrayIN10btSoftBody6AnchorEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i12:                                   ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE8allocateEi.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 960
  %wide.trip.count.i.i.i13 = zext nneg i32 %i.cr to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i12
  %indvars.iv.i.i.i14 = phi i64 [ 0, %.lr.ph.i.i.i12 ], [ %indvars.iv.next.i.i.i15, %bb.m ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %.0.i.i.i9, i64 %indvars.iv.i.i.i14 ; 5 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !125
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %i.cv, i64 %indvars.iv.i.i.i14 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.cu, ptr noundef nonnull align 8 dereferenceable(100) %i.cw, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 16, i1 false), !tbaa.struct !198
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !198
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !198
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dd, ptr noundef nonnull align 8 dereferenceable(20) %i.de, i64 20, i1 false)
  %indvars.iv.next.i.i.i15 = add nuw nsw i64 %indvars.iv.i.i.i14, 1 ; 2 uses
  %exitcond.not.i.i.i16 = icmp eq i64 %indvars.iv.next.i.i.i15, %wide.trip.count.i.i.i13
  br i1 %exitcond.not.i.i.i16, label %_ZNK20btAlignedObjectArrayIN10btSoftBody6AnchorEE4copyEiiPS1_.exit.i.i, label %bb.m

_ZNK20btAlignedObjectArrayIN10btSoftBody6AnchorEE4copyEiiPS1_.exit.i.i: ; preds = %bb.m, %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE8allocateEi.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !125 ; 2 uses
  %.not.i5.i.i10 = icmp eq ptr %i.dg, null
  br i1 %.not.i5.i.i10, label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody6AnchorEE4copyEiiPS1_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !124, !range !179, !noundef !180
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.o, label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dg)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayIN10btSoftBody6AnchorEE4copyEiiPS1_.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 968
  store i8 1, ptr %i.dk, align 8, !tbaa !124
  store ptr %.0.i.i.i9, ptr %i.df, align 8, !tbaa !125
  store i32 %i.cm, ptr %i.ci, align 8, !tbaa !127
  %.pre2.i11 = load i32, ptr %i.cg, align 4, !tbaa !126
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE9push_backERKS1_.exit: ; preds = %bb.i, %bb.j, %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i
  %i.dl = phi i32 [ %.pre2.i11, %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEE10deallocateEv.exit.i.i ], [ %i.ch, %bb.j ], [ %i.ch, %bb.i ]
  %i.dm = fneg float %i.by                        ; 2 uses
  %i.dn = fneg float %i.bu                        ; 2 uses
  %i.do = fneg float %i.bw                        ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = insertelement <2 x float> %i.ca, float %i.do, i64 0
  %i.ds = fmul <2 x float> %i.dq, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x float> %i.dv, float %i.dn, i64 0
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.ds)
  %i.dy = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.cc, i64 1
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.eb, <2 x float> %i.dx) ; 2 uses
  %shift = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ec, %shift
  %.sroa.3.12.vec.insert.i.i41 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.ed = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x float> %i.bo, %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.bo, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.em, <2 x float> %i.ek)
  %i.eo = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.eo, <2 x float> %i.ee)
  %i.eq = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.er, <2 x float> %i.ep)
  %i.et = fadd <2 x float> %i.en, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !125
  %i.ew = sext i32 %i.dl to i64
  %i.ex = getelementptr inbounds [104 x i8], ptr %i.ev, i64 %i.ew ; 4 uses
  store ptr %i.bg, ptr %i.ex, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store <2 x float> %i.et, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i41, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %2, ptr %.sroa.820.0..sroa_idx, align 8
  %i.ey = load i32, ptr %i.cg, align 4, !tbaa !126
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.cg, align 4, !tbaa !126
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody17appendLinearJointERKNS_6LJoint5SpecsEPNS_7ClusterENS_4BodyE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.btSoftBody::Body") align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 216, i32 noundef 16) ; 14 uses
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i8 0, i64 160, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10btSoftBody6LJointE, i64 16), ptr %i.a, align 8, !tbaa !8
  store ptr %2, ptr %scevgep.i.i, align 8, !tbaa !287
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !289
  %i.d = load atomic i8, ptr @_ZGVZNK10btSoftBody4Body5xformEvE8identity acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK10btSoftBody4Body5xformEvE8identity) #34
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN11btTransform11getIdentityEv()
          to label %bb.d unwind label %bb.g       ; 4 uses

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) @_ZZNK10btSoftBody4Body5xformEvE8identity, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 16, i1 false), !tbaa.struct !198
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 16), ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !198
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK10btSoftBody4Body5xformEvE8identity, i64 32), ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !198
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody26generateBendingConstraintsEiPNS_8MaterialE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 8 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !114  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge225

.lr.ph:                                           ; preds = %.preheader217
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %wide.trip.count266 = zext nneg i32 %i.o to i64
  br label %bb.k

.preheader218.new:                                ; preds = %.preheader218, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.h ], [ 0, %.preheader218 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader218 ]
  %.not158 = icmp eq i64 %indvars.iv, %indvars.iv258
  br i1 %.not158, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader218.new
  %i.v = mul nuw nsw i64 %indvars.iv, %i.i
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.v
  store i32 2147483647, ptr %gep, align 4, !tbaa !4
  %gep348.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep347.a, i64 %indvars.iv
  store i32 2147483647, ptr %gep348.a, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %.preheader218.new
  store i32 0, ptr %i.m, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %.not158.1 = icmp eq i64 %indvars.iv.next, %indvars.iv258
  br i1 %.not158.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = mul nuw nsw i64 %indvars.iv.next, %i.i
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.w
  store i32 2147483647, ptr %gep.1, align 4, !tbaa !4
  %gep348.1.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep347.a, i64 %indvars.iv.next
  store i32 2147483647, ptr %gep348.1.a, align 4, !tbaa !4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader218.new

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader218
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader218 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %.not158.epil = icmp eq i64 %indvars.iv.epil.init, %indvars.iv258
  br i1 %.not158.epil, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.x = mul nuw nsw i64 %indvars.iv.epil.init, %i.i
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.x
  store i32 2147483647, ptr %gep.epil, align 4, !tbaa !4
  %gep348.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep347.a, i64 %indvars.iv.epil.init
  store i32 2147483647, ptr %gep348.epil, align 4, !tbaa !4
  br label %._crit_edge

bb.j:                                             ; preds = %.epil.preheader
  store i32 0, ptr %i.m, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %i.i
  br i1 %exitcond262.not, label %.preheader217, label %.preheader218

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv263 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next264, %bb.k ] ; 2 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv263 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !251
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.u
  %i.ad = sdiv exact i64 %i.ac, 120
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !251
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.u
  %i.aj = sdiv exact i64 %i.ai, 120
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = mul nsw i32 %i.c, %i.ak
  %i.am = add nsw i32 %i.al, %i.ae
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  store i32 1, ptr %i.ao, align 4, !tbaa !4
  %i.ap = mul nsw i32 %i.c, %i.ae
  %i.aq = add nsw i32 %i.ap, %i.ak
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ar
  store i32 1, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next264, %wide.trip.count266
  br i1 %exitcond267.not, label %._crit_edge225, label %bb.k

._crit_edge225:                                   ; preds = %bb.k, %.preheader217
  %i.at = icmp eq i32 %1, 2
  br i1 %i.at, label %bb.l, label %.preheader215

.preheader215:                                    ; preds = %._crit_edge225
  br i1 %i.h, label %.preheader214.preheader, label %._crit_edge253

.preheader214.preheader:                          ; preds = %.preheader215
  %i.au = zext nneg i32 %i.c to i64               ; 10 uses
  %i.av = zext nneg i32 %i.c to i64
  %i.aw = add nsw i64 %i.au, -2
  br label %.preheader214

bb.l:                                             ; preds = %._crit_edge225
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !366
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !370
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !371
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !372
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !152
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.bd, align 4, !tbaa !154
  invoke void @_ZN20btAlignedObjectArrayI9NodeLinksE6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.be, null
  %i.bf = load i8, ptr %i.bb, align 8, !range !179
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %_ZN9NodeLinksD2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.be)
          to label %_ZN9NodeLinksD2Ev.exit unwind label %bb.v

_ZN9NodeLinksD2Ev.exit:                           ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !114
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph234, label %.preheader212

.lr.ph234:                                        ; preds = %_ZN9NodeLinksD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 832
  br label %bb.o

.preheader212:                                    ; preds = %bb.ag, %_ZN9NodeLinksD2Ev.exit
  %i.bl = load i32, ptr %i.az, align 4, !tbaa !371 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.lr.ph, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i.i

.preheader.lr.ph:                                 ; preds = %.preheader212
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !370 ; 2 uses
  %i.bo = sext i32 %i.c to i64
  %wide.trip.count297 = zext nneg i32 %i.bl to i64
  br label %.preheader

bb.o:                                             ; preds = %.lr.ph234, %bb.ag
  %indvars.iv285 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next286, %bb.ag ] ; 2 uses
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bp, i64 %indvars.iv285 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !251
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 120               ; 2 uses
  %i.by = trunc i64 %i.bx to i32                  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !251
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bv
  %i.cd = sdiv exact i64 %i.cc, 120               ; 2 uses
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = load ptr, ptr %i.ay, align 8, !tbaa !370 ; 4 uses
  %sext = shl i64 %i.bx, 32
  %i.cg = ashr exact i64 %sext, 27
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 5 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154 ; 9 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread

.lr.ph.i:                                         ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !153
  %wide.trip.count.i = zext nneg i32 %i.cj to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = icmp eq i32 %i.co, %i.ce
  br i1 %i.cp, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread, label %bb.p

_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread: ; preds = %bb.q, %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !155
  %i.cs = icmp eq i32 %i.cj, %i.cr
  br i1 %i.cs, label %bb.r, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.r:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread
  %.not.i.i = icmp eq i32 %i.cj, 0
  %i.ct = shl nsw i32 %i.cj, 1
  %i.cu = select i1 %.not.i.i, i32 1, i32 %i.ct   ; 4 uses
  %i.cv = icmp slt i32 %i.cj, %i.cu
  br i1 %i.cv, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = sext i32 %i.cu to i64
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cx, i32 noundef 16)
          to label %.noexc159 unwind label %bb.y

.noexc159:                                        ; preds = %bb.t
  %.pre.i = load i32, ptr %i.ci, align 4, !tbaa !154
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %.noexc159, %bb.s
  %i.cz = phi i32 [ %.pre.i, %.noexc159 ], [ %i.cj, %bb.s ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.cy, %.noexc159 ], [ null, %bb.s ] ; 8 uses
  %i.da = icmp sgt i32 %i.cz, 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !153 ; 9 uses
  br i1 %i.da, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %.0.i.i.i364 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.cz to i64 ; 5 uses
  %min.iters.check367 = icmp ult i32 %i.cz, 8
  %i.de = sub i64 %i.dd, %.0.i.i.i364
  %diff.check365 = icmp ugt i64 %i.de, -32
  %or.cond379 = select i1 %min.iters.check367, i1 true, i1 %diff.check365
  br i1 %or.cond379, label %scalar.ph366.preheader, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph.i.i.i
  %n.vec370 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph368
  %index372 = phi i64 [ 0, %vector.ph368 ], [ %index.next375, %vector.body371 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index372 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index372 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load373 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4
  %wide.load374 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %wide.load373, ptr %i.df, align 4, !tbaa !4
  store <4 x i32> %wide.load374, ptr %i.di, align 4, !tbaa !4
  %index.next375 = add nuw i64 %index372, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next375, %n.vec370
  br i1 %i.dj, label %middle.block376, label %vector.body371, !llvm.loop !373

middle.block376:                                  ; preds = %vector.body371
  %cmp.n377 = icmp eq i64 %n.vec370, %wide.trip.count.i.i.i
  br i1 %cmp.n377, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph366.preheader

scalar.ph366.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block376
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec370, %middle.block376 ] ; 3 uses
  %xtraiter386 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod387.not, label %scalar.ph366.prol.loopexit, label %scalar.ph366.prol

scalar.ph366.prol:                                ; preds = %scalar.ph366.preheader, %scalar.ph366.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph366.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph366.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph366.prol ], [ 0, %scalar.ph366.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter386
  br i1 %prol.iter.cmp.not, label %scalar.ph366.prol.loopexit, label %scalar.ph366.prol, !llvm.loop !374

scalar.ph366.prol.loopexit:                       ; preds = %scalar.ph366.prol, %scalar.ph366.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph366.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph366.prol ]
  %i.dn = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph366

scalar.ph366:                                     ; preds = %scalar.ph366.prol.loopexit, %scalar.ph366
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph366 ], [ %indvars.iv.i.i.i.unr, %scalar.ph366.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph366, !llvm.loop !375

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph366.prol.loopexit, %scalar.ph366, %middle.block376, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !152, !range !179, !noundef !180
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %.noexc160

bb.u:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dc)
          to label %.noexc160 unwind label %bb.y

.noexc160:                                        ; preds = %bb.u, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.ci, align 4, !tbaa !154
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %.noexc160, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %.noexc160 ], [ %i.cz, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i8 1, ptr %i.ee, align 8, !tbaa !152
  store ptr %.0.i.i.i, ptr %i.db, align 8, !tbaa !153
  store i32 %i.cu, ptr %i.cq, align 8, !tbaa !155
  %.pre.pre = load ptr, ptr %i.ay, align 8, !tbaa !370
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread, %bb.r, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %.pre = phi ptr [ %.pre.pre, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.cf, %bb.r ], [ %i.cf, %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread ]
  %i.ef = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.cj, %bb.r ], [ %i.cj, %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit.thread ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !153
  %i.ei = sext i32 %i.ef to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ei
  store i32 %i.ce, ptr %i.ej, align 4, !tbaa !4
  %i.ek = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ci, align 4, !tbaa !154
  br label %bb.z

bb.v:                                             ; preds = %bb.n
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9NodeLinksD2Ev.exit164

bb.w:                                             ; preds = %bb.l
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %i.bc, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i161 = icmp ne ptr %i.eo, null
  %i.ep = load i8, ptr %i.bb, align 8, !range !179
  %i.eq = trunc nuw i8 %i.ep to i1
  %or.cond.i.i.i162 = select i1 %.not.i.i.i.i161, i1 %i.eq, i1 false
  br i1 %or.cond.i.i.i162, label %bb.x, label %_ZN9NodeLinksD2Ev.exit164

bb.x:                                             ; preds = %bb.w
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.eo)
          to label %_ZN9NodeLinksD2Ev.exit164 unwind label %bb.bm

_ZN9NodeLinksD2Ev.exit164:                        ; preds = %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.em, %bb.v ], [ %i.en, %bb.x ], [ %i.en, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ap

bb.y:                                             ; preds = %bb.af, %bb.ae, %bb.u, %bb.t
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.z:                                             ; preds = %bb.p, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.es = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ], [ %i.cf, %bb.p ]
  %sext211 = shl i64 %i.cd, 32
  %i.et = ashr exact i64 %sext211, 27
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 5 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !154 ; 9 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i166, label %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread

.lr.ph.i166:                                      ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !153
  %wide.trip.count.i167 = zext nneg i32 %i.ew to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i166
  %indvars.iv.i168 = phi i64 [ 0, %.lr.ph.i166 ], [ %indvars.iv.next.i169, %bb.ab ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv.i168
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = icmp eq i32 %i.fb, %i.by
  br i1 %i.fc, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i168, 1 ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count.i167
  br i1 %exitcond.not.i170, label %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread, label %bb.aa

_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread: ; preds = %bb.ab, %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !155
  %i.ff = icmp eq i32 %i.ew, %i.fe
  br i1 %i.ff, label %bb.ac, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit191

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread
  %.not.i.i173 = icmp eq i32 %i.ew, 0
  %i.fg = shl nsw i32 %i.ew, 1
  %i.fh = select i1 %.not.i.i173, i32 1, i32 %i.fg ; 4 uses
  %i.fi = icmp slt i32 %i.ew, %i.fh
  br i1 %i.fi, label %bb.ad, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit191

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i174 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i174, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i176, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fj = sext i32 %i.fh to i64
  %i.fk = shl nsw i64 %i.fj, 2
  %i.fl = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fk, i32 noundef 16)
          to label %.noexc189 unwind label %bb.y

.noexc189:                                        ; preds = %bb.ae
  %.pre.i175 = load i32, ptr %i.ev, align 4, !tbaa !154
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i176

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i176: ; preds = %.noexc189, %bb.ad
  %i.fm = phi i32 [ %.pre.i175, %.noexc189 ], [ %i.ew, %bb.ad ] ; 4 uses
  %.0.i.i.i177 = phi ptr [ %i.fl, %.noexc189 ], [ null, %bb.ad ] ; 8 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !153 ; 9 uses
  br i1 %i.fn, label %.lr.ph.i.i.i184, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i178

.lr.ph.i.i.i184:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i176
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %.0.i.i.i177361 = ptrtoaddr ptr %.0.i.i.i177 to i64
  %wide.trip.count.i.i.i185 = zext nneg i32 %i.fm to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fm, 8
  %i.fr = sub i64 %i.fq, %.0.i.i.i177361
  %diff.check = icmp ugt i64 %i.fr, -32
  %or.cond380 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond380, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i184
  %n.vec = and i64 %wide.trip.count.i.i.i185, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %index ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <4 x i32>, ptr %i.ft, align 4, !tbaa !4
  %wide.load362 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x i32> %wide.load, ptr %i.fs, align 4, !tbaa !4
  store <4 x i32> %wide.load362, ptr %i.fv, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i185
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i184, %middle.block
  %indvars.iv.i.i.i186.ph = phi i64 [ 0, %.lr.ph.i.i.i184 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter388 = and i64 %wide.trip.count.i.i.i185, 3 ; 2 uses
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i186.prol = phi i64 [ %indvars.iv.next.i.i.i187.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i186.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter390 = phi i64 [ %prol.iter390.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.i.i.i186.prol
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i186.prol
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !4
  %indvars.iv.next.i.i.i187.prol = add nuw nsw i64 %indvars.iv.i.i.i186.prol, 1 ; 2 uses
  %prol.iter390.next = add i64 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i64 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !377

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i186.unr = phi i64 [ %indvars.iv.i.i.i186.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i187.prol, %scalar.ph.prol ]
  %i.ga = sub nsw i64 %indvars.iv.i.i.i186.ph, %wide.trip.count.i.i.i185
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i186 = phi i64 [ %indvars.iv.next.i.i.i187.3, %scalar.ph ], [ %indvars.iv.i.i.i186.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.i.i.i186
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i186
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !4
  %indvars.iv.next.i.i.i187 = add nuw nsw i64 %indvars.iv.i.i.i186, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i187
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i187
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !4
  %indvars.iv.next.i.i.i187.1 = add nuw nsw i64 %indvars.iv.i.i.i186, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i187.1
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i187.1
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !4
  %indvars.iv.next.i.i.i187.2 = add nuw nsw i64 %indvars.iv.i.i.i186, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i177, i64 %indvars.iv.next.i.i.i187.2
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i187.2
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !4
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !4
  %indvars.iv.next.i.i.i187.3 = add nuw nsw i64 %indvars.iv.i.i.i186, 4 ; 2 uses
  %exitcond.not.i.i.i188.3 = icmp eq i64 %indvars.iv.next.i.i.i187.3, %wide.trip.count.i.i.i185
  br i1 %exitcond.not.i.i.i188.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180, label %scalar.ph, !llvm.loop !378

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i178: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i176
  %.not.i5.i.i179 = icmp eq ptr %i.fp, null
  br i1 %.not.i5.i.i179, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i182, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i178
  %i.go = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !152, !range !179, !noundef !180
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.af, label %.noexc190

bb.af:                                            ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fp)
          to label %.noexc190 unwind label %bb.y

.noexc190:                                        ; preds = %bb.af, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i180
  %.pre2.pre.i181 = load i32, ptr %i.ev, align 4, !tbaa !154
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i182

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i182: ; preds = %.noexc190, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i178
  %.pre2.i183 = phi i32 [ %.pre2.pre.i181, %.noexc190 ], [ %i.fm, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i178 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store i8 1, ptr %i.gr, align 8, !tbaa !152
  store ptr %.0.i.i.i177, ptr %i.fo, align 8, !tbaa !153
  store i32 %i.fh, ptr %i.fd, align 8, !tbaa !155
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit191

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit191: ; preds = %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread, %bb.ac, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i182
  %i.gs = phi i32 [ %.pre2.i183, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i182 ], [ %i.ew, %bb.ac ], [ %i.ew, %_ZNK20btAlignedObjectArrayIiE16findLinearSearchERKi.exit172.thread ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !153
  %i.gv = sext i32 %i.gs to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gv
  store i32 %i.by, ptr %i.gw, align 4, !tbaa !4
  %i.gx = load i32, ptr %i.ev, align 4, !tbaa !154
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.ev, align 4, !tbaa !154
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aa, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit191
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.gz = load i32, ptr %i.n, align 4, !tbaa !114
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp slt i64 %indvars.iv.next286, %i.ha
  br i1 %i.hb, label %bb.o, label %.preheader212

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge241
  %indvars.iv294 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next295, %._crit_edge241 ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv294 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !154 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph240, label %._crit_edge241

.lr.ph240:                                        ; preds = %.preheader
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !153
  %i.hi = mul nsw i64 %indvars.iv294, %i.bo
  %i.hj = trunc nuw nsw i64 %indvars.iv294 to i32 ; 2 uses
  %i.hk = getelementptr [4 x i8], ptr %i.g, i64 %i.hi
  %i.hl = zext nneg i32 %i.he to i64
  br label %bb.ak

.lr.ph.i.i.i193:                                  ; preds = %._crit_edge241
  %zext.i.i = zext nneg i32 %i.bl to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9NodeLinksD2Ev.exit.i.i.i, %.lr.ph.i.i.i193
  %indvars.iv.i.i.i194 = phi i64 [ 0, %.lr.ph.i.i.i193 ], [ %indvars.iv.next.i.i.i195, %_ZN9NodeLinksD2Ev.exit.i.i.i ] ; 2 uses
  %i.hm = load ptr, ptr %i.ay, align 8, !tbaa !370
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %indvars.iv.i.i.i194 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne ptr %i.hp, null
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hr = load i8, ptr %i.hq, align 8, !range !179
  %i.hs = trunc nuw i8 %i.hr to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.hs, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ai, label %_ZN9NodeLinksD2Ev.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hp)
  br label %_ZN9NodeLinksD2Ev.exit.i.i.i

_ZN9NodeLinksD2Ev.exit.i.i.i:                     ; preds = %bb.ai, %bb.ah
  %indvars.iv.next.i.i.i195 = add nuw nsw i64 %indvars.iv.i.i.i194, 1 ; 2 uses
  %i.ht = icmp eq i64 %indvars.iv.next.i.i.i195, %zext.i.i
  br i1 %i.ht, label %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i.i, label %bb.ah

_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i.i: ; preds = %_ZN9NodeLinksD2Ev.exit.i.i.i, %.preheader212
  %i.hu = load ptr, ptr %i.ay, align 8, !tbaa !370 ; 2 uses
  %.not.i.i.i192 = icmp ne ptr %i.hu, null
  %i.hv = load i8, ptr %i.ax, align 8, !range !179
  %i.hw = trunc nuw i8 %i.hv to i1
  %or.cond = select i1 %.not.i.i.i192, i1 %i.hw, i1 false
  br i1 %or.cond, label %bb.aj, label %_ZN20btAlignedObjectArrayI9NodeLinksED2Ev.exit

bb.aj:                                            ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hu)
  br label %_ZN20btAlignedObjectArrayI9NodeLinksED2Ev.exit

_ZN20btAlignedObjectArrayI9NodeLinksED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %.loopexit216

._crit_edge241:                                   ; preds = %._crit_edge238, %.preheader
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.lr.ph.i.i.i193, label %.preheader

bb.ak:                                            ; preds = %.lr.ph240, %._crit_edge238
  %indvars.iv291 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next292, %._crit_edge238 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv291
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4  ; 3 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [32 x i8], ptr %i.bn, i64 %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !154 ; 2 uses
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !153
  %i.ig = mul nsw i32 %i.hy, %i.c
  %i.ih = add nsw i32 %i.ig, %i.hj
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ii
  %i.ik = zext nneg i32 %i.ic to i64
  br label %bb.al

._crit_edge238:                                   ; preds = %bb.ao, %bb.ak
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.il = icmp samesign ult i64 %indvars.iv.next292, %i.hl
  br i1 %i.il, label %bb.ak, label %._crit_edge241

bb.al:                                            ; preds = %.lr.ph237, %bb.ao
  %indvars.iv288 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next289, %bb.ao ] ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv288
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4  ; 3 uses
  %i.io = zext i32 %i.in to i64
  %.not = icmp eq i64 %indvars.iv294, %i.io
  br i1 %.not, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ip = load i32, ptr %i.ij, align 4, !tbaa !4
  %i.iq = mul nsw i32 %i.in, %i.c                 ; 2 uses
  %i.ir = add nsw i32 %i.iq, %i.hy
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = add i32 %i.iu, %i.ip                    ; 3 uses
  %i.iw = add nsw i32 %i.iq, %i.hj
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4
  %i.ja = icmp ugt i32 %i.iz, %i.iv
  br i1 %i.ja, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jb = sext i32 %i.in to i64
  %i.jc = getelementptr [4 x i8], ptr %i.hk, i64 %i.jb
  store i32 %i.iv, ptr %i.jc, align 4, !tbaa !4
  store i32 %i.iv, ptr %i.iy, align 4, !tbaa !4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.al
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.jd = icmp samesign ult i64 %indvars.iv.next289, %i.ik
  br i1 %i.jd, label %bb.al, label %._crit_edge238

bb.ap:                                            ; preds = %bb.y, %_ZN9NodeLinksD2Ev.exit164
  %.pn156 = phi { ptr, i32 } [ %i.er, %bb.y ], [ %.pn, %_ZN9NodeLinksD2Ev.exit164 ]
  invoke void @_ZN20btAlignedObjectArrayI9NodeLinksED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3)
          to label %bb.aq unwind label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn156

.preheader214:                                    ; preds = %.preheader214.preheader, %._crit_edge231
  %indvars.iv280 = phi i64 [ 0, %.preheader214.preheader ], [ %indvars.iv.next281, %._crit_edge231 ] ; 3 uses
  %i.je = mul nuw nsw i64 %indvars.iv280, %i.au
  %invariant.gep355 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv280
  %invariant.gep349.a = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.je ; 3 uses
  br label %bb.ar

.loopexit213:                                     ; preds = %.prol.loopexit, %bb.aw, %bb.ar
  %indvars.iv.next269.a = add nuw nsw i64 %indvars.iv268.a, 1
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %i.au
  br i1 %exitcond279.not, label %._crit_edge231, label %bb.ar

bb.ar:                                            ; preds = %.preheader214, %.loopexit213
  %indvars.iv275 = phi i64 [ 0, %.preheader214 ], [ %indvars.iv.next276, %.loopexit213 ] ; 5 uses
  %indvars.iv268.a = phi i64 [ 1, %.preheader214 ], [ %indvars.iv.next269.a, %.loopexit213 ] ; 6 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 3 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next276, %i.av
  br i1 %i.jf, label %.lr.ph228, label %.loopexit213

.lr.ph228:                                        ; preds = %bb.ar
  %i.jg = mul nuw nsw i64 %indvars.iv275, %i.au   ; 2 uses
  %gep356 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep355, i64 %i.jg ; 3 uses
  %invariant.gep351 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jg ; 3 uses
  %invariant.gep353.a = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv275 ; 3 uses
  %i.jh = sub nsw i64 %indvars.iv275, %i.au
  %i.ji = and i64 %i.jh, 1
  %lcmp.mod385.not.not = icmp eq i64 %i.ji, 0
  br i1 %lcmp.mod385.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph228
  %gep350.prol.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep349.a, i64 %indvars.iv268.a
  %i.jj = load i32, ptr %gep350.prol.a, align 4, !tbaa !4
  %i.jk = load i32, ptr %gep356, align 4, !tbaa !4
  %i.jl = add i32 %i.jk, %i.jj                    ; 3 uses
  %gep352.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep351, i64 %indvars.iv268.a ; 2 uses
  %i.jm = load i32, ptr %gep352.prol, align 4, !tbaa !4
  %i.jn = icmp ugt i32 %i.jm, %i.jl
  br i1 %i.jn, label %bb.as, label %.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %.prol.preheader
  %i.jo = mul nuw nsw i64 %indvars.iv268.a, %i.au
  %gep354.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep353.a, i64 %i.jo
  store i32 %i.jl, ptr %gep354.prol, align 4, !tbaa !4
  store i32 %i.jl, ptr %gep352.prol, align 4, !tbaa !4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.as, %.prol.preheader
  %indvars.iv.next271.prol = add nuw nsw i64 %indvars.iv268.a, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph228
  %indvars.iv270.unr = phi i64 [ %indvars.iv268.a, %.lr.ph228 ], [ %indvars.iv.next271.prol, %.prol.loopexit.unr-lcssa ]
  %i.jp = icmp eq i64 %i.aw, %indvars.iv275
  br i1 %i.jp, label %.loopexit213, label %.lr.ph228.new

.lr.ph228.new:                                    ; preds = %.prol.loopexit, %bb.aw
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.1, %bb.aw ], [ %indvars.iv270.unr, %.prol.loopexit ] ; 5 uses
  %gep350.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep349.a, i64 %indvars.iv270
  %i.jq = load i32, ptr %gep350.a, align 4, !tbaa !4
  %i.jr = load i32, ptr %gep356, align 4, !tbaa !4
end_hunk_1
begin_hunk_2_@_ZN20btAlignedObjectArrayI9NodeLinksED2Ev:bb.a

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !366, !range !179, !noundef !180
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_ZN20btAlignedObjectArrayI9NodeLinksE5clearEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
  br label %_ZN20btAlignedObjectArrayI9NodeLinksE5clearEv.exit

_ZN20btAlignedObjectArrayI9NodeLinksE5clearEv.exit: ; preds = %_ZN20btAlignedObjectArrayI9NodeLinksE7destroyEii.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody20randomizeConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %1 = alloca %"struct.btSoftBody::Face", align 8 ; 4 uses
  %2 = alloca %"struct.btSoftBody::Link", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.01217 = phi i64 [ 243703, %.lr.ph ], [ %i.j, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.h = mul nuw nsw i64 %.01217, 1664525
  %i.i = add nuw nsw i64 %i.h, 1013904223         ; 2 uses
  %i.j = and i64 %i.i, 4294967295                 ; 2 uses
  %.lhs.trunc = trunc i64 %i.i to i32
  %i.k = urem i32 %.lhs.trunc, %i.b
  %.zext = zext nneg i32 %i.k to i64
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.zext ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.g, ptr noundef nonnull align 8 dereferenceable(68) %i.l, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 8 dereferenceable(68) %2, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.012.lcssa = phi i64 [ 243703, %bb.a ], [ %i.j, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.q = zext nneg i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph22, %bb.c
  %indvars.iv25 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next26, %bb.c ] ; 2 uses
  %.11319 = phi i64 [ %.012.lcssa, %.lr.ph22 ], [ %i.v, %bb.c ]
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %indvars.iv25 ; 2 uses
  %i.t = mul nuw nsw i64 %.11319, 1664525
  %i.u = add nuw nsw i64 %i.t, 1013904223         ; 2 uses
  %i.v = and i64 %i.u, 4294967295
  %.lhs.trunc31 = trunc i64 %i.u to i32
  %i.w = urem i32 %.lhs.trunc31, %i.n
  %.zext33 = zext nneg i32 %i.w to i64
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %.zext33 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %i.q
  br i1 %exitcond29.not, label %._crit_edge23, label %bb.c

._crit_edge23:                                    ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody14releaseClusterEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !385  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1272
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.l = load i8, ptr %i.k, align 8, !range !179
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.m, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.j)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.g

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i4.i = icmp ne ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.q = load i8, ptr %i.p, align 8, !range !179
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i.i5.i = select i1 %.not.i.i.i4.i, i1 %i.r, i1 false
  br i1 %or.cond.i.i5.i, label %bb.e, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.i

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.e, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !362  ; 2 uses
  %.not.i.i.i7.i = icmp ne ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load i8, ptr %i.u, align 8, !range !179
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i.i8.i = select i1 %.not.i.i.i7.i, i1 %i.w, i1 false
  br i1 %or.cond.i.i8.i, label %bb.f, label %_ZN10btSoftBody7ClusterD2Ev.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  br label %_ZN10btSoftBody7ClusterD2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %.not.i.i.i9.i = icmp ne ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !range !179
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i10.i = select i1 %.not.i.i.i9.i, i1 %i.ac, i1 false
  br i1 %or.cond.i.i10.i, label %bb.h, label %_ZN20btAlignedObjectArrayIfED2Ev.exit12.i

bb.h:                                             ; preds = %bb.g
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit12.i unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit12.i

_ZN20btAlignedObjectArrayIfED2Ev.exit12.i:        ; preds = %bb.i, %bb.h, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.x, %bb.h ], [ %i.x, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !362 ; 2 uses
  %.not.i.i.i13.i = icmp ne ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !range !179
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i14.i = select i1 %.not.i.i.i13.i, i1 %i.ai, i1 false
  br i1 %or.cond.i.i14.i, label %bb.j, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit16.i

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit12.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.af)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit16.i unwind label %bb.k

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit16.i: ; preds = %bb.j, %_ZN20btAlignedObjectArrayIfED2Ev.exit12.i
  resume { ptr, i32 } %.pn.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #35
  unreachable

_ZN10btSoftBody7ClusterD2Ev.exit:                 ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i, %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !146 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6removeERKS2_.exit

.lr.ph.i.i:                                       ; preds = %_ZN10btSoftBody7ClusterD2Ev.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !145 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.am to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !287 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6removeERKS2_.exit, label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.at = add nsw i32 %i.am, -1                   ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !287
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !287
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !287
  store i32 %i.at, ptr %i.al, align 4, !tbaa !146
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6removeERKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6removeERKS2_.exit: ; preds = %bb.m, %_ZN10btSoftBody7ClusterD2Ev.exit, %bb.n
  ret void
}

declare void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN10btSoftBody16generateClustersEii(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 26 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !146  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN10btSoftBody15releaseClustersEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  tail call void @_ZN10btSoftBody14releaseClusterEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef 0)
  %i.e = load i32, ptr %i.b, align 4, !tbaa !146  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZN10btSoftBody15releaseClustersEv.exit

_ZN10btSoftBody15releaseClustersEv.exit:          ; preds = %.lr.ph.i, %bb.a
  %i.g = phi i32 [ %i.c, %bb.a ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 8 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !110
  %.sroa.speculated538 = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.i) ; 11 uses
  %i.j = icmp sgt i32 %.sroa.speculated538, %i.g
  br i1 %i.j, label %bb.b, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit.thread

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit.thread: ; preds = %_ZN10btSoftBody15releaseClustersEv.exit
  store i32 %.sroa.speculated538, ptr %i.b, align 4, !tbaa !146
  br label %._crit_edge.thread

bb.b:                                             ; preds = %_ZN10btSoftBody15releaseClustersEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !147
  %i.m = icmp slt i32 %i.l, %.sroa.speculated538
  br i1 %i.m, label %bb.c, label %..lr.ph.i180_crit_edge

..lr.ph.i180_crit_edge:                           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !145
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.sroa.speculated538, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !145
  br label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.p = sext i32 %.sroa.speculated538 to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.q, i32 noundef 16) ; 11 uses
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !146 ; 3 uses
  %i.s = icmp sgt i32 %.pre.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !145  ; 11 uses
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = ptrtoaddr ptr %i.r to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.x = sub i64 %i.v, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !287
  %wide.load937 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !287
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !287
  store <2 x ptr> %wide.load937, ptr %i.ab, align 8, !tbaa !287
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i.prol
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i.prol
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !287
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !287
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !387

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !287
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !287
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287
  store ptr %i.an, ptr %i.al, align 8, !tbaa !287
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !287
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !287
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i.2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !287
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !287
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph, !llvm.loop !388

_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i
  %i.au = phi ptr [ %i.o, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.u, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %i.av = phi ptr [ %i.n, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.t, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %.0.i.i.i903 = phi ptr [ null, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i.thread ], [ %i.r, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i ] ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i
  %i.aw = phi ptr [ %i.au, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.u, %middle.block ], [ %i.u, %scalar.ph ], [ %i.u, %scalar.ph.prol.loopexit ]
  %i.ax = phi ptr [ %i.av, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.t, %middle.block ], [ %i.t, %scalar.ph ], [ %i.t, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i.i901.a = phi ptr [ %.0.i.i.i903, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ], [ %i.r, %middle.block ], [ %i.r, %scalar.ph ], [ %i.r, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !144, !range !179, !noundef !180
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aw)
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i
  %i.bb = phi ptr [ %i.ax, %bb.d ], [ %i.ax, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i ], [ %i.av, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ]
  %.0.i.i.i902 = phi ptr [ %.0.i.i.i901.a, %bb.d ], [ %.0.i.i.i901.a, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.thread.i.i ], [ %.0.i.i.i903, %_ZNK20btAlignedObjectArrayIPN10btSoftBody7ClusterEE4copyEiiPS2_.exit.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i8 1, ptr %i.bc, align 8, !tbaa !144
  store ptr %.0.i.i.i902, ptr %i.bb, align 8, !tbaa !145
  store i32 %.sroa.speculated538, ptr %i.k, align 8, !tbaa !147
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i, %..lr.ph.i180_crit_edge
  %i.bd = phi ptr [ %.pre, %..lr.ph.i180_crit_edge ], [ %.0.i.i.i902, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE10deallocateEv.exit.i.i ]
  %i.be = sext i32 %i.g to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %.sroa.speculated538 to i64
  %i.bf = shl nsw i64 %i.be, 3
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bg = sub nsw i64 %wide.trip.count.i, %i.be
  %i.bh = shl nsw i64 %i.bg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bh, i1 false), !tbaa !287
  store i32 %.sroa.speculated538, ptr %i.b, align 4, !tbaa !146
  %i.bi = icmp sgt i32 %.sroa.speculated538, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE6resizeEiRKS2_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1352
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bk = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 424, i32 noundef 16) ; 17 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i8 1, ptr %i.bl, align 8, !tbaa !389
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !362
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 0, ptr %i.bn, align 4, !tbaa !358
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !390
end_hunk_2
begin_hunk_3_@_ZN10btSoftBody16generateClustersEii:bb.a
  %foldExtExtBinop1236 = fadd <2 x float> %i.md, %shift
  %i.me = extractelement <2 x float> %foldExtExtBinop1236, i64 0
  %i.mf = tail call noundef float @llvm.fabs.f32(float %i.ma)
  %i.mg = fadd float %i.me, %i.mf                 ; 2 uses
  %i.mh = fcmp olt float %i.mg, %.0154621         ; 2 uses
  %i.mi = trunc nuw nsw i64 %indvars.iv700 to i32
  %.1157 = select i1 %i.mh, i32 %i.mi, i32 %.0156620 ; 2 uses
  %.1155 = select i1 %i.mh, float %i.mg, float %.0154621
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 2 uses
  %exitcond705.not = icmp eq i64 %indvars.iv.next701, %wide.trip.count704
  br i1 %exitcond705.not, label %._crit_edge625.loopexit, label %.lr.ph624

bb.u:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247, %bb.q, %._crit_edge625
  %i.mj = phi i32 [ %.pre782.a, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.jk, %bb.q ], [ %i.jk, %._crit_edge625 ] ; 3 uses
  %i.mk = phi i32 [ %.pre2.i248, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.kh, %bb.q ], [ %i.kh, %._crit_edge625 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !362
  %i.mn = sext i32 %i.mk to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mn
  store ptr %i.jm, ptr %i.mo, align 8, !tbaa !251
  %i.mp = add nsw i32 %i.mk, 1
  store i32 %i.mp, ptr %i.kg, align 4, !tbaa !358
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1 ; 2 uses
  %i.mq = sext i32 %i.mj to i64
  %i.mr = icmp slt i64 %indvars.iv.next707, %i.mq
  br i1 %i.mr, label %.lr.ph628, label %._crit_edge629

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit346.thread563

._crit_edge629:                                   ; preds = %bb.u, %.preheader575
  %.lcssa586 = phi i32 [ %i.gj, %.preheader575 ], [ %i.mj, %bb.u ] ; 2 uses
  %i.mt = icmp slt i32 %i.gg, %2
  %i.mu = select i1 %.1152, i1 %i.mt, i1 false
  br i1 %i.mu, label %.preheader574.preheader, label %bb.w

bb.w:                                             ; preds = %._crit_edge629
  %i.mv = icmp sgt i32 %.lcssa586, 0
  br i1 %i.mv, label %bb.x, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit

bb.x:                                             ; preds = %bb.w
  %i.mw = zext nneg i32 %.lcssa586 to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2                ; 2 uses
  %i.my = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.mx, i32 noundef 16)
          to label %.lr.ph.i258 unwind label %.thread ; 2 uses

.lr.ph.i258:                                      ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.my, i8 -1, i64 %i.mx, i1 false), !tbaa !4
  br label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %.lr.ph.i258, %bb.w
  %.sroa.10446.2 = phi ptr [ null, %bb.w ], [ %i.my, %.lr.ph.i258 ] ; 8 uses
  %i.mz = load i32, ptr %i.b, align 4, !tbaa !146 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.preheader572.lr.ph, label %.preheader571

.preheader572.lr.ph:                              ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.nb = load ptr, ptr %i.fy, align 8, !tbaa !145
  br label %.preheader572

.preheader572:                                    ; preds = %.preheader572.lr.ph, %._crit_edge633
  %i.nc = phi i32 [ %i.mz, %.preheader572.lr.ph ], [ %i.nu, %._crit_edge633 ]
  %indvars.iv712 = phi i64 [ 0, %.preheader572.lr.ph ], [ %indvars.iv.next713, %._crit_edge633 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv712
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !287 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !358
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %.preheader572
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !362
  %i.nk = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = trunc nuw nsw i64 %indvars.iv712 to i32
  br label %bb.aa

.preheader571:                                    ; preds = %._crit_edge633, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.nn = phi i32 [ %i.mz, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit ], [ %i.nu, %._crit_edge633 ]
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !118
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %.lr.ph638, label %._crit_edge639

.lr.ph638:                                        ; preds = %.preheader571
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ab

._crit_edge633.loopexit:                          ; preds = %bb.aa
  %.pre783.a = load i32, ptr %i.b, align 4, !tbaa !146
  br label %._crit_edge633

._crit_edge633:                                   ; preds = %._crit_edge633.loopexit, %.preheader572
  %i.nu = phi i32 [ %.pre783.a, %._crit_edge633.loopexit ], [ %i.nc, %.preheader572 ] ; 3 uses
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = icmp slt i64 %indvars.iv.next713, %i.nv
  br i1 %i.nw, label %.preheader572, label %.preheader571

bb.y:                                             ; preds = %bb.bq
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit346

bb.z:                                             ; preds = %bb.bo
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.thread:                                          ; preds = %bb.x
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit346

bb.aa:                                            ; preds = %.lr.ph632, %bb.aa
  %indvars.iv709 = phi i64 [ 0, %.lr.ph632 ], [ %indvars.iv.next710, %bb.aa ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv709
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !251
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = sub i64 %i.oc, %i.nl
  %i.oe = sdiv exact i64 %i.od, 120
  %sext = shl i64 %i.oe, 32
  %i.of = ashr exact i64 %sext, 30
  %i.og = getelementptr inbounds i8, ptr %.sroa.10446.2, i64 %i.of
  store i32 %i.nm, ptr %i.og, align 4, !tbaa !4
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.oh = load i32, ptr %i.nf, align 4, !tbaa !358
  %i.oi = sext i32 %i.oh to i64
  %i.oj = icmp slt i64 %indvars.iv.next710, %i.oi
  br i1 %i.oj, label %bb.aa, label %._crit_edge633.loopexit

bb.ab:                                            ; preds = %.lr.ph638, %bb.ac
  %indvars.iv720 = phi i64 [ 0, %.lr.ph638 ], [ %indvars.iv.next721, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ok = load ptr, ptr %i.nr, align 8, !tbaa !117
  %i.ol = getelementptr inbounds nuw [72 x i8], ptr %i.ok, i64 %indvars.iv720 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !251
  %i.oo = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64               ; 3 uses
  %i.or = sub i64 %i.op, %i.oq
  %i.os = sdiv exact i64 %i.or, 120
  %i.ot = trunc i64 %i.os to i32
  store i32 %i.ot, ptr %i.a, align 4, !tbaa !4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !251
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = sub i64 %i.ow, %i.oq
  %i.oy = sdiv exact i64 %i.ox, 120
  %i.oz = trunc i64 %i.oy to i32
  store i32 %i.oz, ptr %i.ns, align 4, !tbaa !4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !251
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = sub i64 %i.pc, %i.oq
  %i.pe = sdiv exact i64 %i.pd, 120
  %i.pf = trunc i64 %i.pe to i32
  store i32 %i.pf, ptr %i.nt, align 4, !tbaa !4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %i.pg = load i32, ptr %i.no, align 4, !tbaa !118
  %i.ph = sext i32 %i.pg to i64
  %i.pi = icmp slt i64 %indvars.iv.next721, %i.ph
  br i1 %i.pi, label %bb.ab, label %._crit_edge639.loopexit

bb.ad:                                            ; preds = %bb.ab, %bb.aw
  %indvars.iv716 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next717, %bb.aw ] ; 3 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv716
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !4
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %.sroa.10446.2, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4  ; 3 uses
  %i.po = sext i32 %i.pn to i64                   ; 2 uses
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 1 ; 4 uses
  %i.pp = icmp eq i64 %indvars.iv.next717, 3
  %i.pq = select i1 %i.pp, i64 0, i64 %indvars.iv.next717
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds [4 x i8], ptr %.sroa.10446.2, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4
  %.not167 = icmp eq i32 %i.pv, %i.pn
  br i1 %.not167, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pw = load ptr, ptr %i.fy, align 8, !tbaa !145
  %i.px = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.po
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !287 ; 7 uses
  %i.pz = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.qa = getelementptr inbounds [120 x i8], ptr %i.pz, i64 %i.pt ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 4 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !358 ; 9 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph.i275, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread

.lr.ph.i275:                                      ; preds = %bb.ae
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !362
  %wide.trip.count.i276 = zext nneg i32 %i.qc to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i275
  %indvars.iv.i277 = phi i64 [ 0, %.lr.ph.i275 ], [ %indvars.iv.next.i278, %bb.ag ] ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %indvars.iv.i277
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !251
  %i.qi = icmp eq ptr %i.qh, %i.qa
  br i1 %i.qi, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i278 = add nuw nsw i64 %indvars.iv.i277, 1 ; 2 uses
  %exitcond.not.i279 = icmp eq i64 %indvars.iv.next.i278, %wide.trip.count.i276
  br i1 %exitcond.not.i279, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread, label %bb.af

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread: ; preds = %bb.ag, %bb.ae
  %i.qj = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !390
  %i.ql = icmp eq i32 %i.qc, %i.qk
  br i1 %i.ql, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread
  %.not.i.i280 = icmp eq i32 %i.qc, 0
  %i.qm = shl nsw i32 %i.qc, 1
  %i.qn = select i1 %.not.i.i280, i32 1, i32 %i.qm ; 4 uses
  %i.qo = icmp slt i32 %i.qc, %i.qn
  br i1 %i.qo, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i281 = icmp eq i32 %i.qn, 0
  br i1 %.not.i.i.i281, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qp = sext i32 %i.qn to i64
  %i.qq = shl nsw i64 %i.qp, 3
  %i.qr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.qq, i32 noundef 16)
          to label %.noexc296 unwind label %bb.am

.noexc296:                                        ; preds = %bb.aj
  %.pre.i282 = load i32, ptr %i.qb, align 4, !tbaa !358
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283: ; preds = %.noexc296, %bb.ai
  %i.qs = phi i32 [ %.pre.i282, %.noexc296 ], [ %i.qc, %bb.ai ] ; 5 uses
  %.0.i.i.i284 = phi ptr [ %i.qr, %.noexc296 ], [ null, %bb.ai ] ; 8 uses
  %i.qt = icmp sgt i32 %i.qs, 0
  %i.qu = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !362 ; 9 uses
  br i1 %i.qt, label %.lr.ph.i.i.i291, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285

.lr.ph.i.i.i291:                                  ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283
  %i.qw = ptrtoaddr ptr %i.qv to i64
  %.0.i.i.i2841129 = ptrtoaddr ptr %.0.i.i.i284 to i64
  %wide.trip.count.i.i.i292 = zext nneg i32 %i.qs to i64 ; 5 uses
  %min.iters.check1132 = icmp ult i32 %i.qs, 4
  %i.qx = sub i64 %i.qw, %.0.i.i.i2841129
  %diff.check1130 = icmp ugt i64 %i.qx, -32
  %or.cond1216.a = select i1 %min.iters.check1132, i1 true, i1 %diff.check1130
  br i1 %or.cond1216.a, label %scalar.ph1131.preheader, label %vector.ph1133

vector.ph1133:                                    ; preds = %.lr.ph.i.i.i291
  %n.vec1135 = and i64 %wide.trip.count.i.i.i292, 2147483644 ; 3 uses
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %vector.ph1133
  %index1137 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1140, %vector.body1136 ] ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %index1137 ; 2 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %index1137 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %wide.load1138 = load <2 x ptr>, ptr %i.qz, align 8, !tbaa !251
  %wide.load1139 = load <2 x ptr>, ptr %i.ra, align 8, !tbaa !251
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store <2 x ptr> %wide.load1138, ptr %i.qy, align 8, !tbaa !251
  store <2 x ptr> %wide.load1139, ptr %i.rb, align 8, !tbaa !251
  %index.next1140 = add nuw i64 %index1137, 4     ; 2 uses
  %i.rc = icmp eq i64 %index.next1140, %n.vec1135
  br i1 %i.rc, label %middle.block1141, label %vector.body1136, !llvm.loop !400

middle.block1141:                                 ; preds = %vector.body1136
  %cmp.n1142 = icmp eq i64 %n.vec1135, %wide.trip.count.i.i.i292
  br i1 %cmp.n1142, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1131.preheader

scalar.ph1131.preheader:                          ; preds = %.lr.ph.i.i.i291, %middle.block1141
  %indvars.iv.i.i.i293.ph = phi i64 [ 0, %.lr.ph.i.i.i291 ], [ %n.vec1135, %middle.block1141 ] ; 3 uses
  %xtraiter1308 = and i64 %wide.trip.count.i.i.i292, 3 ; 2 uses
  %lcmp.mod1309.not = icmp eq i64 %xtraiter1308, 0
  br i1 %lcmp.mod1309.not, label %scalar.ph1131.prol.loopexit, label %scalar.ph1131.prol

scalar.ph1131.prol:                               ; preds = %scalar.ph1131.preheader, %scalar.ph1131.prol
  %indvars.iv.i.i.i293.prol = phi i64 [ %indvars.iv.next.i.i.i294.prol, %scalar.ph1131.prol ], [ %indvars.iv.i.i.i293.ph, %scalar.ph1131.preheader ] ; 3 uses
  %prol.iter1310 = phi i64 [ %prol.iter1310.next, %scalar.ph1131.prol ], [ 0, %scalar.ph1131.preheader ]
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.i.i.i293.prol
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.i.i.i293.prol
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !251
  store ptr %i.rf, ptr %i.rd, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.prol = add nuw nsw i64 %indvars.iv.i.i.i293.prol, 1 ; 2 uses
  %prol.iter1310.next = add i64 %prol.iter1310, 1 ; 2 uses
  %prol.iter1310.cmp.not = icmp eq i64 %prol.iter1310.next, %xtraiter1308
  br i1 %prol.iter1310.cmp.not, label %scalar.ph1131.prol.loopexit, label %scalar.ph1131.prol, !llvm.loop !401

scalar.ph1131.prol.loopexit:                      ; preds = %scalar.ph1131.prol, %scalar.ph1131.preheader
  %indvars.iv.i.i.i293.unr = phi i64 [ %indvars.iv.i.i.i293.ph, %scalar.ph1131.preheader ], [ %indvars.iv.next.i.i.i294.prol, %scalar.ph1131.prol ]
  %i.rg = sub nsw i64 %indvars.iv.i.i.i293.ph, %wide.trip.count.i.i.i292
  %i.rh = icmp ugt i64 %i.rg, -4
  br i1 %i.rh, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1131

scalar.ph1131:                                    ; preds = %scalar.ph1131.prol.loopexit, %scalar.ph1131
  %indvars.iv.i.i.i293 = phi i64 [ %indvars.iv.next.i.i.i294.3, %scalar.ph1131 ], [ %indvars.iv.i.i.i293.unr, %scalar.ph1131.prol.loopexit ] ; 6 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.i.i.i293
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.i.i.i293
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !251
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294 = add nuw nsw i64 %indvars.iv.i.i.i293, 1 ; 2 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next.i.i.i294
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !251
  store ptr %i.rn, ptr %i.rl, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.11312 = add nuw nsw i64 %indvars.iv.i.i.i293, 2 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294.11312
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next.i.i.i294.11312
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !251
  store ptr %i.rq, ptr %i.ro, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.2 = add nuw nsw i64 %indvars.iv.i.i.i293, 3 ; 2 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294.2
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.next.i.i.i294.2
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !251
  store ptr %i.rt, ptr %i.rr, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.3 = add nuw nsw i64 %indvars.iv.i.i.i293, 4 ; 2 uses
  %exitcond.not.i.i.i295.3 = icmp eq i64 %indvars.iv.next.i.i.i294.3, %wide.trip.count.i.i.i292
  br i1 %exitcond.not.i.i.i295.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1131, !llvm.loop !402

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283
  %.not.i5.i.i286 = icmp eq ptr %i.qv, null
  br i1 %.not.i5.i.i286, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287: ; preds = %scalar.ph1131.prol.loopexit, %scalar.ph1131, %middle.block1141, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285
  %i.ru = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !389, !range !179, !noundef !180
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.ak, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288

bb.ak:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.qv)
          to label %.noexc297 unwind label %bb.am

.noexc297:                                        ; preds = %bb.ak
  %.pre2.pre.pre.i290 = load i32, ptr %i.qb, align 4, !tbaa !358
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288: ; preds = %.noexc297, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285
  %.pre2.i289 = phi i32 [ %i.qs, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285 ], [ %.pre2.pre.pre.i290, %.noexc297 ], [ %i.qs, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287 ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  store i8 1, ptr %i.rx, align 8, !tbaa !389
  store ptr %.0.i.i.i284, ptr %i.qu, align 8, !tbaa !362
  store i32 %i.qn, ptr %i.qj, align 8, !tbaa !390
  br label %bb.al

bb.al:                                            ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288, %bb.ah, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread
  %i.ry = phi i32 [ %.pre2.i289, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288 ], [ %i.qc, %bb.ah ], [ %i.qc, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !362
  %i.sb = sext i32 %i.ry to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.sb
  store ptr %i.qa, ptr %i.sc, align 8, !tbaa !251
  %i.sd = add nsw i32 %i.ry, 1
  store i32 %i.sd, ptr %i.qb, align 4, !tbaa !358
  br label %bb.an

bb.am:                                            ; preds = %bb.au, %bb.at, %bb.ak, %bb.aj
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bs

bb.an:                                            ; preds = %bb.af, %bb.al, %bb.ad
  %i.sf = trunc i64 %indvars.iv716 to i32
  %i.sg = add i32 %i.sf, 2
  %i.sh = urem i32 %i.sg, 3
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !4
  %i.sl = sext i32 %i.sk to i64                   ; 2 uses
  %i.sm = getelementptr inbounds [4 x i8], ptr %.sroa.10446.2, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !4
  %.not167.1 = icmp eq i32 %i.sn, %i.pn
  br i1 %.not167.1, label %bb.aw, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.so = load ptr, ptr %i.fy, align 8, !tbaa !145
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.po
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !287 ; 7 uses
  %i.sr = load ptr, ptr %i.fz, align 8, !tbaa !109
  %i.ss = getelementptr inbounds [120 x i8], ptr %i.sr, i64 %i.sl ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 4 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !358 ; 9 uses
  %i.sv = icmp sgt i32 %i.su, 0
  br i1 %i.sv, label %.lr.ph.i275.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1

.lr.ph.i275.1:                                    ; preds = %bb.ao
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !362
  %wide.trip.count.i276.1 = zext nneg i32 %i.su to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i275.1
  %indvars.iv.i277.1 = phi i64 [ 0, %.lr.ph.i275.1 ], [ %indvars.iv.next.i278.1, %bb.aq ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sx, i64 %indvars.iv.i277.1
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !251
  %i.ta = icmp eq ptr %i.sz, %i.ss
  br i1 %i.ta, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.i278.1 = add nuw nsw i64 %indvars.iv.i277.1, 1 ; 2 uses
  %exitcond.not.i279.1 = icmp eq i64 %indvars.iv.next.i278.1, %wide.trip.count.i276.1
  br i1 %exitcond.not.i279.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1, label %bb.ap

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1: ; preds = %bb.aq, %bb.ao
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !390
  %i.td = icmp eq i32 %i.su, %i.tc
  br i1 %i.td, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1
  %.not.i.i280.1 = icmp eq i32 %i.su, 0
  %i.te = shl nsw i32 %i.su, 1
  %i.tf = select i1 %.not.i.i280.1, i32 1, i32 %i.te ; 4 uses
  %i.tg = icmp slt i32 %i.su, %i.tf
  br i1 %i.tg, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i281.1 = icmp eq i32 %i.tf, 0
  br i1 %.not.i.i.i281.1, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.th = sext i32 %i.tf to i64
  %i.ti = shl nsw i64 %i.th, 3
  %i.tj = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ti, i32 noundef 16)
          to label %.noexc296.1 unwind label %bb.am

.noexc296.1:                                      ; preds = %bb.at
  %.pre.i282.1 = load i32, ptr %i.st, align 4, !tbaa !358
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1: ; preds = %.noexc296.1, %bb.as
  %i.tk = phi i32 [ %.pre.i282.1, %.noexc296.1 ], [ %i.su, %bb.as ] ; 5 uses
  %.0.i.i.i284.1 = phi ptr [ %i.tj, %.noexc296.1 ], [ null, %bb.as ] ; 8 uses
  %i.tl = icmp sgt i32 %i.tk, 0
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !362 ; 9 uses
  br i1 %i.tl, label %.lr.ph.i.i.i291.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1
  %.not.i5.i.i286.1 = icmp eq ptr %i.tn, null
  br i1 %.not.i5.i.i286.1, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1

.lr.ph.i.i.i291.1:                                ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1
  %i.to = ptrtoaddr ptr %i.tn to i64
  %.0.i.i.i284.11113 = ptrtoaddr ptr %.0.i.i.i284.1 to i64
  %wide.trip.count.i.i.i292.1 = zext nneg i32 %i.tk to i64 ; 5 uses
  %min.iters.check1116 = icmp ult i32 %i.tk, 4
  %i.tp = sub i64 %i.to, %.0.i.i.i284.11113
  %diff.check1114 = icmp ugt i64 %i.tp, -32
  %or.cond1217.a = select i1 %min.iters.check1116, i1 true, i1 %diff.check1114
  br i1 %or.cond1217.a, label %scalar.ph1115.preheader, label %vector.ph1117

vector.ph1117:                                    ; preds = %.lr.ph.i.i.i291.1
  %n.vec1119 = and i64 %wide.trip.count.i.i.i292.1, 2147483644 ; 3 uses
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1117
  %index1121 = phi i64 [ 0, %vector.ph1117 ], [ %index.next1124, %vector.body1120 ] ; 3 uses
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %index1121 ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %index1121 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %wide.load1122 = load <2 x ptr>, ptr %i.tr, align 8, !tbaa !251
  %wide.load1123 = load <2 x ptr>, ptr %i.ts, align 8, !tbaa !251
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store <2 x ptr> %wide.load1122, ptr %i.tq, align 8, !tbaa !251
  store <2 x ptr> %wide.load1123, ptr %i.tt, align 8, !tbaa !251
  %index.next1124 = add nuw i64 %index1121, 4     ; 2 uses
  %i.tu = icmp eq i64 %index.next1124, %n.vec1119
  br i1 %i.tu, label %middle.block1125, label %vector.body1120, !llvm.loop !403

middle.block1125:                                 ; preds = %vector.body1120
  %cmp.n1126 = icmp eq i64 %n.vec1119, %wide.trip.count.i.i.i292.1
  br i1 %cmp.n1126, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1115.preheader

scalar.ph1115.preheader:                          ; preds = %.lr.ph.i.i.i291.1, %middle.block1125
  %indvars.iv.i.i.i293.1.ph = phi i64 [ 0, %.lr.ph.i.i.i291.1 ], [ %n.vec1119, %middle.block1125 ] ; 3 uses
  %xtraiter1314 = and i64 %wide.trip.count.i.i.i292.1, 3 ; 2 uses
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1314, 0
  br i1 %lcmp.mod1315.not, label %scalar.ph1115.prol.loopexit, label %scalar.ph1115.prol

scalar.ph1115.prol:                               ; preds = %scalar.ph1115.preheader, %scalar.ph1115.prol
  %indvars.iv.i.i.i293.1.prol = phi i64 [ %indvars.iv.next.i.i.i294.1.prol, %scalar.ph1115.prol ], [ %indvars.iv.i.i.i293.1.ph, %scalar.ph1115.preheader ] ; 3 uses
  %prol.iter1316 = phi i64 [ %prol.iter1316.next, %scalar.ph1115.prol ], [ 0, %scalar.ph1115.preheader ]
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.i.i.i293.1.prol
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.i.i.i293.1.prol
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !251
  store ptr %i.tx, ptr %i.tv, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.1.prol = add nuw nsw i64 %indvars.iv.i.i.i293.1.prol, 1 ; 2 uses
  %prol.iter1316.next = add i64 %prol.iter1316, 1 ; 2 uses
  %prol.iter1316.cmp.not = icmp eq i64 %prol.iter1316.next, %xtraiter1314
  br i1 %prol.iter1316.cmp.not, label %scalar.ph1115.prol.loopexit, label %scalar.ph1115.prol, !llvm.loop !404

scalar.ph1115.prol.loopexit:                      ; preds = %scalar.ph1115.prol, %scalar.ph1115.preheader
  %indvars.iv.i.i.i293.1.unr = phi i64 [ %indvars.iv.i.i.i293.1.ph, %scalar.ph1115.preheader ], [ %indvars.iv.next.i.i.i294.1.prol, %scalar.ph1115.prol ]
  %i.ty = sub nsw i64 %indvars.iv.i.i.i293.1.ph, %wide.trip.count.i.i.i292.1
  %i.tz = icmp ugt i64 %i.ty, -4
  br i1 %i.tz, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1115

scalar.ph1115:                                    ; preds = %scalar.ph1115.prol.loopexit, %scalar.ph1115
  %indvars.iv.i.i.i293.1 = phi i64 [ %indvars.iv.next.i.i.i294.1.3, %scalar.ph1115 ], [ %indvars.iv.i.i.i293.1.unr, %scalar.ph1115.prol.loopexit ] ; 6 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.i.i.i293.1
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.i.i.i293.1
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !251
  store ptr %i.uc, ptr %i.ua, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.1 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 1 ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.next.i.i.i294.1
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !251
  store ptr %i.uf, ptr %i.ud, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.1.1 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 2 ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1.1
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.next.i.i.i294.1.1
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !251
  store ptr %i.ui, ptr %i.ug, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.1.2 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 3 ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1.2
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv.next.i.i.i294.1.2
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !251
  store ptr %i.ul, ptr %i.uj, align 8, !tbaa !251
  %indvars.iv.next.i.i.i294.1.3 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 4 ; 2 uses
  %exitcond.not.i.i.i295.1.3 = icmp eq i64 %indvars.iv.next.i.i.i294.1.3, %wide.trip.count.i.i.i292.1
  br i1 %exitcond.not.i.i.i295.1.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1115, !llvm.loop !405

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1: ; preds = %scalar.ph1115.prol.loopexit, %scalar.ph1115, %middle.block1125, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1
  %i.um = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  %i.un = load i8, ptr %i.um, align 8, !tbaa !389, !range !179, !noundef !180
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.au, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1

bb.au:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.tn)
          to label %.noexc297.1 unwind label %bb.am

.noexc297.1:                                      ; preds = %bb.au
  %.pre2.pre.pre.i290.1 = load i32, ptr %i.st, align 4, !tbaa !358
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1: ; preds = %.noexc297.1, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1
  %.pre2.i289.1 = phi i32 [ %i.tk, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1 ], [ %.pre2.pre.pre.i290.1, %.noexc297.1 ], [ %i.tk, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1 ]
  %i.up = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  store i8 1, ptr %i.up, align 8, !tbaa !389
  store ptr %.0.i.i.i284.1, ptr %i.tm, align 8, !tbaa !362
  store i32 %i.tf, ptr %i.tb, align 8, !tbaa !390
  br label %bb.av

bb.av:                                            ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1, %bb.ar, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1
  %i.uq = phi i32 [ %.pre2.i289.1, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1 ], [ %i.su, %bb.ar ], [ %i.su, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1 ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !362
  %i.ut = sext i32 %i.uq to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.us, i64 %i.ut
  store ptr %i.ss, ptr %i.uu, align 8, !tbaa !251
  %i.uv = add nsw i32 %i.uq, 1
  store i32 %i.uv, ptr %i.st, align 4, !tbaa !358
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %bb.av, %bb.an
  %exitcond719.not = icmp eq i64 %indvars.iv.next717, 3
  br i1 %exitcond719.not, label %bb.ac, label %bb.ad

._crit_edge639.loopexit:                          ; preds = %bb.ac
  %.pre784.a = load i32, ptr %i.b, align 4, !tbaa !146
  br label %._crit_edge639

._crit_edge639:                                   ; preds = %._crit_edge639.loopexit, %.preheader571
  %i.uw = phi i32 [ %.pre784.a, %._crit_edge639.loopexit ], [ %i.nn, %.preheader571 ] ; 2 uses
  %i.ux = icmp sgt i32 %i.uw, 1
  br i1 %i.ux, label %bb.ax, label %bb.bn

bb.ax:                                            ; preds = %._crit_edge639
  %i.uy = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 424, i32 noundef 16)
          to label %bb.ay unwind label %bb.bf     ; 18 uses

bb.ay:                                            ; preds = %bb.ax
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 24 ; 5 uses
  store i8 1, ptr %i.uz, align 8, !tbaa !389
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 16 ; 6 uses
  store ptr null, ptr %i.va, align 8, !tbaa !362
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 4 ; 6 uses
  store i32 0, ptr %i.vb, align 4, !tbaa !358
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 3 uses
  store i32 0, ptr %i.vc, align 8, !tbaa !390
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 56
  store i8 1, ptr %i.vd, align 8, !tbaa !39
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  store ptr null, ptr %i.ve, align 8, !tbaa !43
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uy, i64 36
  store i32 0, ptr %i.vf, align 4, !tbaa !44
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  store i32 0, ptr %i.vg, align 8, !tbaa !45
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 88
  store i8 1, ptr %i.vh, align 8, !tbaa !32
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  store ptr null, ptr %i.vi, align 8, !tbaa !36
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uy, i64 68
  store i32 0, ptr %i.vj, align 4, !tbaa !37
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uy, i64 72
  store i32 0, ptr %i.vk, align 8, !tbaa !38
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uy, i64 384
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uy, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+02, float f0x3C23D70A>, ptr %i.vm, align 8, !tbaa !159
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uy, i64 416
  store i8 0, ptr %i.vn, align 8, !tbaa !391
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uy, i64 417
  store i8 0, ptr %i.vo, align 1, !tbaa !392
  %i.vp = load i32, ptr %i.h, align 4, !tbaa !110 ; 4 uses
  %i.vq = icmp sgt i32 %i.vp, 0
  br i1 %i.vq, label %bb.az, label %._crit_edge642

bb.az:                                            ; preds = %bb.ay
  %i.vr = zext nneg i32 %i.vp to i64
  %i.vs = shl nuw nsw i64 %i.vr, 3
  %i.vt = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.vs, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i unwind label %bb.bf ; 9 uses

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i: ; preds = %bb.az
  %i.vu = load i32, ptr %i.vb, align 4, !tbaa !358 ; 3 uses
  %i.vv = icmp sgt i32 %i.vu, 0
  %i.vw = load ptr, ptr %i.va, align 8, !tbaa !362 ; 9 uses
  br i1 %i.vv, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i
  %i.vx = ptrtoaddr ptr %i.vw to i64
  %i.vy = ptrtoaddr ptr %i.vt to i64
  %wide.trip.count.i.i = zext nneg i32 %i.vu to i64 ; 5 uses
  %min.iters.check1147 = icmp ult i32 %i.vu, 8
  %i.vz = sub i64 %i.vx, %i.vy
  %diff.check1145 = icmp ugt i64 %i.vz, -32
  %or.cond1218.a = select i1 %min.iters.check1147, i1 true, i1 %diff.check1145
  br i1 %or.cond1218.a, label %scalar.ph1146.preheader, label %vector.ph1148

vector.ph1148:                                    ; preds = %.lr.ph.i.i
  %n.vec1150 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %vector.ph1148
  %index1152 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1155, %vector.body1151 ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %index1152 ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %index1152 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %wide.load1153 = load <2 x ptr>, ptr %i.wb, align 8, !tbaa !251
  %wide.load1154 = load <2 x ptr>, ptr %i.wc, align 8, !tbaa !251
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <2 x ptr> %wide.load1153, ptr %i.wa, align 8, !tbaa !251
  store <2 x ptr> %wide.load1154, ptr %i.wd, align 8, !tbaa !251
  %index.next1155 = add nuw i64 %index1152, 4     ; 2 uses
  %i.we = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %i.we, label %middle.block1156, label %vector.body1151, !llvm.loop !406

middle.block1156:                                 ; preds = %vector.body1151
  %cmp.n1157 = icmp eq i64 %n.vec1150, %wide.trip.count.i.i
  br i1 %cmp.n1157, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1146.preheader

scalar.ph1146.preheader:                          ; preds = %.lr.ph.i.i, %middle.block1156
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec1150, %middle.block1156 ] ; 3 uses
  %xtraiter1317 = and i64 %wide.trip.count.i.i, 3 ; 2 uses
  %lcmp.mod1318.not = icmp eq i64 %xtraiter1317, 0
  br i1 %lcmp.mod1318.not, label %scalar.ph1146.prol.loopexit, label %scalar.ph1146.prol

scalar.ph1146.prol:                               ; preds = %scalar.ph1146.preheader, %scalar.ph1146.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph1146.prol ], [ %indvars.iv.i.i.ph, %scalar.ph1146.preheader ] ; 3 uses
  %prol.iter1319 = phi i64 [ %prol.iter1319.next, %scalar.ph1146.prol ], [ 0, %scalar.ph1146.preheader ]
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i.prol
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.i.i.prol
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !251
  store ptr %i.wh, ptr %i.wf, align 8, !tbaa !251
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter1319.next = add i64 %prol.iter1319, 1 ; 2 uses
  %prol.iter1319.cmp.not = icmp eq i64 %prol.iter1319.next, %xtraiter1317
  br i1 %prol.iter1319.cmp.not, label %scalar.ph1146.prol.loopexit, label %scalar.ph1146.prol, !llvm.loop !407

scalar.ph1146.prol.loopexit:                      ; preds = %scalar.ph1146.prol, %scalar.ph1146.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph1146.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph1146.prol ]
  %i.wi = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.wj = icmp ugt i64 %i.wi, -4
  br i1 %i.wj, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1146

scalar.ph1146:                                    ; preds = %scalar.ph1146.prol.loopexit, %scalar.ph1146
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph1146 ], [ %indvars.iv.i.i.unr, %scalar.ph1146.prol.loopexit ] ; 6 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.i.i
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !251
  store ptr %i.wm, ptr %i.wk, align 8, !tbaa !251
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i.i
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.next.i.i
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !251
  store ptr %i.wp, ptr %i.wn, align 8, !tbaa !251
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i.i.1
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.next.i.i.1
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !251
  store ptr %i.ws, ptr %i.wq, align 8, !tbaa !251
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i.i.2
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.next.i.i.2
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !251
  store ptr %i.wv, ptr %i.wt, align 8, !tbaa !251
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1146, !llvm.loop !408

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.vw, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph1146.prol.loopexit, %scalar.ph1146, %middle.block1156, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i
  %i.ww = load i8, ptr %i.uz, align 8, !tbaa !389, !range !179, !noundef !180
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.ba, label %.noexc301

bb.ba:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.vw)
          to label %.noexc301 unwind label %bb.bf

.noexc301:                                        ; preds = %bb.ba, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i
  store ptr null, ptr %i.va, align 8, !tbaa !362
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit: ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i, %.noexc301
  store i8 1, ptr %i.uz, align 8, !tbaa !389
  store ptr %i.vt, ptr %i.va, align 8, !tbaa !362
  store i32 %i.vp, ptr %i.vc, align 8, !tbaa !390
  %.pre785.a = load i32, ptr %i.h, align 4, !tbaa !110 ; 2 uses
  %i.wy = icmp sgt i32 %.pre785.a, 0
  br i1 %i.wy, label %.lr.ph641, label %._crit_edge642

.lr.ph641:                                        ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit
  %.pre786.a = load i32, ptr %i.vb, align 4, !tbaa !358
  br label %bb.bg

._crit_edge642:                                   ; preds = %bb.bk, %bb.ay, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit
  %i.wz = load i32, ptr %i.b, align 4, !tbaa !146 ; 7 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !147
  %i.xc = icmp eq i32 %i.wz, %i.xb
  br i1 %i.xc, label %bb.bb, label %bb.bm

bb.bb:                                            ; preds = %._crit_edge642
  %.not.i.i302 = icmp eq i32 %i.wz, 0
  %i.xd = shl nsw i32 %i.wz, 1
  %i.xe = select i1 %.not.i.i302, i32 1, i32 %i.xd ; 4 uses
  %i.xf = icmp slt i32 %i.wz, %i.xe
  br i1 %i.xf, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i303 = icmp eq i32 %i.xe, 0
  br i1 %.not.i.i.i303, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i305, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.xg = sext i32 %i.xe to i64
  %i.xh = shl nsw i64 %i.xg, 3
  %i.xi = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.xh, i32 noundef 16)
          to label %.noexc318 unwind label %bb.bf

.noexc318:                                        ; preds = %bb.bd
end_hunk_3
begin_hunk_4_@_ZN10btSoftBody11staticSolveEi:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN10btSoftBody22solveCommonConstraintsEPPS_ii(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #22 align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody13solveClustersERK20btAlignedObjectArrayIPS_E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !552  ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge51

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !556  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

.lr.ph44.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph44.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.lr.ph44.unr-lcssa ]
  %.03341.epil.init = phi i32 [ 0, %.lr.ph ], [ %.sroa.speculated.3, %.lr.ph44.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.03341.epil = phi i32 [ %.03341.epil.init, %.epil.preheader ], [ %.sroa.speculated.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !557
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.03341.epil, i32 %i.j) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph44, label %bb.b, !llvm.loop !558

.lr.ph44:                                         ; preds = %bb.b, %.lr.ph44.unr-lcssa
  %.sroa.speculated.lcssa = phi i32 [ %.sroa.speculated.3, %.lr.ph44.unr-lcssa ], [ %.sroa.speculated.epil, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count58 = zext nneg i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.03341 = phi i32 [ 0, %.lr.ph.new ], [ %.sroa.speculated.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !557
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.03341, i32 %i.o)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !557
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 408
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !557
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.y)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !557
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 408
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %.sroa.speculated.3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.ad) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph44.unr-lcssa, label %bb.c

.preheader35:                                     ; preds = %_ZN10btSoftBody15prepareClustersEi.exit
  %i.ae = icmp sgt i32 %.sroa.speculated.lcssa, 0
  br i1 %i.ae, label %.preheader34.lr.ph, label %.lr.ph50

.preheader34.lr.ph:                               ; preds = %.preheader35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count63 = zext nneg i32 %i.b to i64
  br label %.preheader34

bb.d:                                             ; preds = %.lr.ph44, %_ZN10btSoftBody15prepareClustersEi.exit
  %indvars.iv55 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next56, %_ZN10btSoftBody15prepareClustersEi.exit ] ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !556
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv55
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !557 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1044 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !138
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %_ZN10btSoftBody15prepareClustersEi.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1056
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 512
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !137
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !249 ; 2 uses
  %i.ar = load float, ptr %i.an, align 8, !tbaa !487
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(181) %i.aq, float noundef %i.ar, i32 noundef %.sroa.speculated.lcssa), !inline_history !559
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.aj, align 4, !tbaa !138
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZN10btSoftBody15prepareClustersEi.exit

_ZN10btSoftBody15prepareClustersEi.exit:          ; preds = %bb.e, %bb.d
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.preheader35, label %bb.d

.preheader34:                                     ; preds = %.preheader34.lr.ph, %._crit_edge
  %.247 = phi i32 [ %i.az, %._crit_edge ], [ 0, %.preheader34.lr.ph ]
  br label %bb.f

.lr.ph50:                                         ; preds = %._crit_edge, %.preheader35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count69 = zext nneg i32 %i.b to i64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN10btSoftBody13solveClustersEf.exit
  %i.az = add nuw nsw i32 %.247, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.az, %.sroa.speculated.lcssa
  br i1 %exitcond65.not, label %.lr.ph50, label %.preheader34

bb.f:                                             ; preds = %.preheader34, %_ZN10btSoftBody13solveClustersEf.exit
  %indvars.iv60 = phi i64 [ 0, %.preheader34 ], [ %indvars.iv.next61, %_ZN10btSoftBody13solveClustersEf.exit ] ; 2 uses
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !556
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv60
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !557 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1044
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !138 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i24, label %_ZN10btSoftBody13solveClustersEf.exit

.lr.ph.i24:                                       ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1056
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i24 ], [ %indvars.iv.next.i26, %bb.g ] ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !137
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i25
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !249 ; 2 uses
  %i.bl = load float, ptr %i.bh, align 8, !tbaa !487
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(181) %i.bk, float noundef %i.bl, float noundef 1.000000e+00), !inline_history !560
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10btSoftBody13solveClustersEf.exit, label %bb.g

_ZN10btSoftBody13solveClustersEf.exit:            ; preds = %bb.g, %bb.f
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge, label %bb.f

bb.h:                                             ; preds = %.lr.ph50, %_ZN10btSoftBody15cleanupClustersEv.exit
  %indvars.iv66 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next67, %_ZN10btSoftBody15cleanupClustersEv.exit ] ; 2 uses
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !556
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv66
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !557 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1044 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !138
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i27, label %_ZN10btSoftBody15cleanupClustersEv.exit

.lr.ph.i27:                                       ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1056 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 512
  %.pre.i = load ptr, ptr %i.bv, align 8, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i, %.lr.ph.i27
  %i.bx = phi ptr [ %.pre.i, %.lr.ph.i27 ], [ %2, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i ]
  %.011.i = phi i32 [ 0, %.lr.ph.i27 ], [ %.1.i, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i ] ; 5 uses
  %i.by = sext i32 %.011.i to i64                 ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !249 ; 2 uses
  %i.cb = load float, ptr %i.bw, align 8, !tbaa !487
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(181) %i.ca, float noundef %i.cb), !inline_history !561
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !137 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.by
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !249 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 180
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !562, !range !179, !noundef !180
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.j, label %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i

._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i: ; preds = %bb.i
  %.pre14.i = load i32, ptr %i.bs, align 4, !tbaa !138
  %i.cl = add nsw i32 %.011.i, 1
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ch)
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !137 ; 7 uses
  %i.cn = load i32, ptr %i.bs, align 4, !tbaa !138 ; 5 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.by
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !249
  %wide.trip.count.i.i.i = zext nneg i32 %i.cn to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !249 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cq
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i, label %bb.k

bb.m:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i
  %i.cv = add nsw i32 %i.cn, -1                   ; 3 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !249
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !249
  store ptr %i.cs, ptr %i.cx, align 8, !tbaa !249
  store i32 %i.cv, ptr %i.bs, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i: ; preds = %bb.l, %bb.m, %bb.j, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i
  %1 = phi i32 [ %.pre14.i, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i ], [ %i.cn, %bb.j ], [ %i.cv, %bb.m ], [ %i.cn, %bb.l ]
  %2 = phi ptr [ %i.cf, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i ], [ %i.cm, %bb.j ], [ %i.cm, %bb.m ], [ %i.cm, %bb.l ]
  %.1.i = phi i32 [ %i.cl, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge.i ], [ %.011.i, %bb.j ], [ %.011.i, %bb.m ], [ %.011.i, %bb.l ] ; 2 uses
  %i.cz = icmp slt i32 %.1.i, %1
  br i1 %i.cz, label %bb.i, label %_ZN10btSoftBody15cleanupClustersEv.exit

_ZN10btSoftBody15cleanupClustersEv.exit:          ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit.i, %bb.h
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge51, label %bb.h

._crit_edge51:                                    ; preds = %_ZN10btSoftBody15cleanupClustersEv.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody15prepareClustersEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !138
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249  ; 2 uses
  %i.i = load float, ptr %i.e, align 8, !tbaa !487
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(181) %i.h, float noundef %i.i, i32 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !138
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody13solveClustersEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.b = load i32, ptr %i.a, align 4, !tbaa !138  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !249  ; 2 uses
  %i.i = load float, ptr %i.e, align 8, !tbaa !487
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(181) %i.h, float noundef %i.i, float noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody15cleanupClustersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !138
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !137
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit
  %i.f = phi ptr [ %.pre, %.lr.ph ], [ %2, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit ]
  %.011 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit ] ; 5 uses
  %i.g = sext i32 %.011 to i64                    ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %i.j = load float, ptr %i.e, align 8, !tbaa !487
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(181) %i.i, float noundef %i.j)
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !249  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 180
  %i.r = load i8, ptr %i.q, align 4, !tbaa !562, !range !179, !noundef !180
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge

._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge: ; preds = %bb.b
  %.pre14 = load i32, ptr %i.a, align 4, !tbaa !138
  %i.t = add nsw i32 %.011, 1
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !137  ; 7 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !138  ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.x = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249
  %wide.trip.count.i.i = zext nneg i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !249 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit, label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.ad = add nsw i32 %i.v, -1                    ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !249
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !249
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !249
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !138
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit: ; preds = %bb.e, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge, %bb.f, %bb.c
  %1 = phi i32 [ %.pre14, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge ], [ %i.v, %bb.c ], [ %i.ad, %bb.f ], [ %i.v, %bb.e ]
  %2 = phi ptr [ %i.n, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge ], [ %i.u, %bb.c ], [ %i.u, %bb.f ], [ %i.u, %bb.e ]
  %.1 = phi i32 [ %i.t, %._ZN20btAlignedObjectArrayIPN10btSoftBody5JointEE6removeERKS2_.exit_crit_edge ], [ %.011, %bb.c ], [ %.011, %bb.f ], [ %.011, %bb.e ] ; 2 uses
  %i.ah = icmp slt i32 %.1, %1
  br i1 %i.ah, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody15integrateMotionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN10btSoftBody13updateNormalsEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10btSoftBody15RayFromToCasterC2ERK9btVector3S3_f(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(76) initializes((0, 60), (64, 76)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN10btSoftBody15RayFromToCasterE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !198
  %i.d = load <2 x float>, ptr %2, align 4, !tbaa !159
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.f = fsub <2 x float> %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !159
  %i.k = fsub float %i.h, %i.j
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  store <2 x float> %i.f, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !198
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %3, ptr %i.l, align 8, !tbaa !481
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.m, align 8, !tbaa !484
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !485
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody15RayFromToCaster7ProcessEPK10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = load float, ptr %i.o, align 8, !tbaa !481
  %i.q = tail call noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.n, float noundef %i.p) ; 3 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = load float, ptr %i.o, align 8, !tbaa !481
  %i.t = fcmp olt float %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.q, ptr %i.o, align 8, !tbaa !481
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.u, align 8, !tbaa !484
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !485
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !485
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_ZN10btSoftBody15RayFromToCaster17rayFromToTriangleERK9btVector3S3_S3_S3_S3_S3_f(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %6) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load float, ptr %4, align 4, !tbaa !159  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !159 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load <2 x float>, ptr %3, align 4, !tbaa !159 ; 3 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !159 ; 3 uses
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  %i.h = fsub float %i.a, %i.g                    ; 2 uses
  %i.i = fsub float %i.c, %i.f                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !159 ; 4 uses
  %i.n = fsub float %i.k, %i.m                    ; 2 uses
  %i.o = load float, ptr %5, align 4, !tbaa !159  ; 2 uses
  %i.p = fsub float %i.o, %i.g                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !159 ; 2 uses
  %i.s = fsub float %i.r, %i.f                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !159 ; 2 uses
  %i.v = fsub float %i.u, %i.m                    ; 2 uses
  %i.w = fneg float %i.s
  %i.x = fmul float %i.n, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.i, float %i.v, float %i.x) ; 5 uses
  %i.z = fneg float %i.v
  %i.aa = fmul float %i.h, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.aa) ; 5 uses
  %i.ac = fneg float %i.p
  %i.ad = fmul float %i.i, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.ad) ; 5 uses
  %i.af = load float, ptr %2, align 4, !tbaa !159 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159 ; 2 uses
  %i.ai = fmul float %i.ah, %i.ab
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.y, float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !159 ; 2 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.ae, float %i.aj) ; 2 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp olt float %i.an, f0x34000000
  br i1 %i.ao, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !159 ; 2 uses
  %i.ar = load <2 x float>, ptr %0, align 4, !tbaa !159 ; 3 uses
  %i.as = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.m, i64 1
  %i.bc = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bd, <2 x float> %i.az) ; 2 uses
  %shift = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.be, %shift
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bg = fneg float %i.bf
  %i.bh = fdiv float %i.bg, %i.am                 ; 6 uses
  %i.bi = fcmp ogt float %i.bh, f0x35A00000
  %i.bj = fcmp olt float %i.bh, %6
  %or.cond = and i1 %i.bi, %i.bj
  br i1 %or.cond, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !159
  %i.bm = fmul float %i.af, %i.bh
  %i.bn = fmul float %i.ah, %i.bh
  %i.bo = fmul float %i.al, %i.bh
  %i.bp = extractelement <2 x float> %i.ar, i64 0
  %i.bq = fadd float %i.bp, %i.bm                 ; 3 uses
  %i.br = fadd float %i.bl, %i.bn                 ; 3 uses
  %i.bs = fadd float %i.aq, %i.bo                 ; 3 uses
  %i.bt = fsub float %i.g, %i.bq                  ; 4 uses
  %i.bu = fsub float %i.f, %i.br                  ; 4 uses
  %i.bv = fsub float %i.m, %i.bs                  ; 4 uses
  %i.bw = fsub float %i.a, %i.bq                  ; 4 uses
  %i.bx = fsub float %i.c, %i.br                  ; 4 uses
  %i.by = fsub float %i.k, %i.bs                  ; 4 uses
  %i.bz = fneg float %i.bx
  %i.ca = fmul float %i.bv, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.by, float %i.ca)
  %i.cc = fneg float %i.by
  %i.cd = fmul float %i.bt, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bw, float %i.cd)
  %i.cf = fneg float %i.bw
  %i.cg = fmul float %i.bu, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bx, float %i.cg)
  %i.ci = fmul float %i.ab, %i.ce
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.cb, float %i.ci)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ch, float %i.cj)
  %i.cl = fcmp ogt float %i.ck, f0xB5A00000
  br i1 %i.cl, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.cm = fsub float %i.o, %i.bq                  ; 4 uses
  %i.cn = fsub float %i.r, %i.br                  ; 4 uses
  %i.co = fsub float %i.u, %i.bs                  ; 4 uses
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.by, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.co, float %i.cq)
  %i.cs = fneg float %i.co
  %i.ct = fmul float %i.bw, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.by, float %i.cm, float %i.ct)
  %i.cv = fneg float %i.cm
  %i.cw = fmul float %i.bx, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cn, float %i.cw)
  %i.cy = fmul float %i.ab, %i.cu
end_hunk_4
