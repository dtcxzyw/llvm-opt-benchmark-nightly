Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGImpactCollisionAlgorithm?download=true
inline.NumInlined: 560
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE:bb.a
  %.0.i.i.i6 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.s = sub i64 %i.r, %.0.i.i.i6
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x ptr>, ptr %i.u, align 8, !tbaa !210
  %wide.load7 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !210
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load, ptr %i.t, align 8, !tbaa !210
  store <2 x ptr> %wide.load7, ptr %i.w, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !210
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !212

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !210
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !210
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !210
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !210
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !210
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !210
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !210
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !213

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !214, !range !70, !noundef !71
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.q)
  %.pre2.pre.pre.i = load i32, ptr %i.c, align 4, !tbaa !204
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.n, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.n, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !214
  store ptr %.0.i.i.i, ptr %i.p, align 8, !tbaa !209
  store i32 %i.i, ptr %i.e, align 8, !tbaa !208
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !210
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.at = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.au = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !209
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !210
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr %i.c, align 4, !tbaa !204
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN17btTriangleShapeExD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #13
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load float, ptr %i.d, align 4, !tbaa !56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load float, ptr %i.g, align 8, !tbaa !56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !56 ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 4, !tbaa !56 ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.t = insertelement <2 x float> poison, float %i.b, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = insertelement <2 x float> poison, float %i.h, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !56 ; 3 uses
  %i.ad = fmul float %i.e, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.b, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load float, ptr %i.af, align 4, !tbaa !56 ; 3 uses
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.h, float %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !56 ; 3 uses
  %i.ak = fadd float %i.aj, %i.ah                 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ao = load float, ptr %i.an, align 4, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.c, align 4, !tbaa !56 ; 2 uses
  %4 = load float, ptr %i.f, align 4, !tbaa !56
  %i.as = load <2 x float>, ptr %i.k, align 4, !tbaa !56 ; 2 uses
  %i.at = load float, ptr %i.l, align 4, !tbaa !56
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.x, <2 x float> %i.v)
  %i.aw = fadd <2 x float> %i.av, %i.y            ; 12 uses
  %i.ax = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ax, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.bc, <2 x float> %i.ba)
  %i.be = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = fadd <2 x float> %i.y, %i.bg            ; 6 uses
  %i.bi = fmul float %i.ac, %i.ao
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.am, float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.aq, float %i.bj)
  %i.bl = fadd float %i.aj, %i.bk                 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load float, ptr %i.bq, align 8, !tbaa !56 ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.ax, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.bw, <2 x float> %i.bu)
  %5 = insertelement <2 x float> poison, float %4, i64 0
  %i.by = insertelement <2 x float> %5, float %i.at, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = fadd <2 x float> %i.y, %i.cb            ; 6 uses
  %i.cd = fmul float %i.ac, %i.bp
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.bn, float %i.cd)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.br, float %i.ce)
  %i.cg = fadd float %i.aj, %i.cf                 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !215 ; 6 uses
  %i.cj = extractelement <2 x float> %i.bh, i64 0 ; 4 uses
  %i.ck = extractelement <2 x float> %i.cc, i64 0 ; 4 uses
  %i.cl = fcmp ogt float %i.cj, %i.ck
  br i1 %i.cl, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.cm = extractelement <2 x float> %i.aw, i64 0
  %i.cn = fcmp ogt float %i.cm, %i.ck
  %.sroa.017.0.vec.extract82 = extractelement <2 x float> %i.cc, i64 0
  br i1 %i.cn, label %bb.d, label %bb.c

.thread.i:                                        ; preds = %bb.a
  %i.co = extractelement <2 x float> %i.aw, i64 0
  %i.cp = fcmp ogt float %i.co, %i.cj
  %.sroa.028.0.vec.extract88 = extractelement <2 x float> %i.bh, i64 0
  br i1 %i.cp, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  %.sroa.040.0.vec.extract94 = extractelement <2 x float> %i.aw, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i, %bb.b
  %.in67.i.sroa.speculated = phi float [ %.sroa.040.0.vec.extract94, %bb.c ], [ %.sroa.017.0.vec.extract82, %bb.b ], [ %.sroa.028.0.vec.extract88, %.thread.i ]
  %i.cq = extractelement <2 x float> %i.bh, i64 1 ; 4 uses
  %i.cr = extractelement <2 x float> %i.cc, i64 1 ; 4 uses
  %i.cs = fcmp ogt float %i.cq, %i.cr
  br i1 %i.cs, label %bb.e, label %.thread83.i

bb.e:                                             ; preds = %bb.d
  %i.ct = extractelement <2 x float> %i.aw, i64 1
  %i.cu = fcmp ogt float %i.ct, %i.cr
  %.sroa.017.4.vec.extract = extractelement <2 x float> %i.cc, i64 1
  br i1 %i.cu, label %bb.g, label %bb.f

.thread83.i:                                      ; preds = %bb.d
  %i.cv = extractelement <2 x float> %i.aw, i64 1
  %i.cw = fcmp ogt float %i.cv, %i.cq
  %.sroa.028.4.vec.extract90 = extractelement <2 x float> %i.bh, i64 1
  br i1 %i.cw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread83.i, %bb.e
  %.sroa.040.4.vec.extract96 = extractelement <2 x float> %i.aw, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread83.i, %bb.e
  %.in69.i.sroa.speculated = phi float [ %.sroa.040.4.vec.extract96, %bb.f ], [ %.sroa.017.4.vec.extract, %bb.e ], [ %.sroa.028.4.vec.extract90, %.thread83.i ]
  %i.cx = fcmp ogt float %i.bl, %i.cg
  br i1 %i.cx, label %bb.h, label %.thread87.i

bb.h:                                             ; preds = %bb.g
  %i.cy = fcmp ogt float %i.ak, %i.cg
  br i1 %i.cy, label %bb.j, label %bb.i

.thread87.i:                                      ; preds = %bb.g
  %i.cz = fcmp ogt float %i.ak, %i.bl
  br i1 %i.cz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread87.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread87.i, %bb.h
  %.in72.i.sroa.speculated = phi float [ %i.ak, %bb.i ], [ %i.cg, %bb.h ], [ %i.bl, %.thread87.i ]
  %i.da = fcmp olt float %i.cj, %i.ck
  br i1 %i.da, label %bb.k, label %.thread91.i

bb.k:                                             ; preds = %bb.j
  %i.db = extractelement <2 x float> %i.aw, i64 0
  %i.dc = fcmp olt float %i.db, %i.ck
  %.sroa.017.0.vec.extract = extractelement <2 x float> %i.cc, i64 0
  br i1 %i.dc, label %bb.m, label %bb.l

.thread91.i:                                      ; preds = %bb.j
  %i.dd = extractelement <2 x float> %i.aw, i64 0
  %i.de = fcmp olt float %i.dd, %i.cj
  %.sroa.028.0.vec.extract = extractelement <2 x float> %i.bh, i64 0
  br i1 %i.de, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread91.i, %bb.k
  %.sroa.040.0.vec.extract = extractelement <2 x float> %i.aw, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread91.i, %bb.k
  %.in74.i.sroa.speculated = phi float [ %.sroa.040.0.vec.extract, %bb.l ], [ %.sroa.017.0.vec.extract, %bb.k ], [ %.sroa.028.0.vec.extract, %.thread91.i ]
  %i.df = fcmp olt float %i.cq, %i.cr
  br i1 %i.df, label %bb.n, label %.thread94.i

bb.n:                                             ; preds = %bb.m
  %i.dg = extractelement <2 x float> %i.aw, i64 1
  %i.dh = fcmp olt float %i.dg, %i.cr
  %.sroa.017.4.vec.extract84 = extractelement <2 x float> %i.cc, i64 1
  br i1 %i.dh, label %bb.p, label %bb.o

.thread94.i:                                      ; preds = %bb.m
  %i.di = extractelement <2 x float> %i.aw, i64 1
  %i.dj = fcmp olt float %i.di, %i.cq
  %.sroa.028.4.vec.extract = extractelement <2 x float> %i.bh, i64 1
  br i1 %i.dj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread94.i, %bb.n
  %.sroa.040.4.vec.extract = extractelement <2 x float> %i.aw, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread94.i, %bb.n
  %.in77.i.sroa.speculated = phi float [ %.sroa.040.4.vec.extract, %bb.o ], [ %.sroa.017.4.vec.extract84, %bb.n ], [ %.sroa.028.4.vec.extract, %.thread94.i ]
  %i.dk = fcmp olt float %i.bl, %i.cg
  br i1 %i.dk, label %bb.q, label %.thread98.i

bb.q:                                             ; preds = %bb.p
  %i.dl = fcmp olt float %i.ak, %i.cg
  br i1 %i.dl, label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit, label %bb.r

.thread98.i:                                      ; preds = %bb.p
  %i.dm = fcmp olt float %i.ak, %i.bl
  br i1 %i.dm, label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit, label %bb.r

bb.r:                                             ; preds = %.thread98.i, %bb.q
  br label %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit

_ZN6btAABBC2ERK9btVector3S2_S2_f.exit:            ; preds = %bb.q, %.thread98.i, %bb.r
  %.in80.i.sroa.speculated = phi float [ %i.ak, %bb.r ], [ %i.cg, %bb.q ], [ %i.bl, %.thread98.i ]
  %i.dn = fsub float %.in67.i.sroa.speculated, %i.ci
  %i.do = fsub float %.in69.i.sroa.speculated, %i.ci
  %i.dp = fsub float %.in72.i.sroa.speculated, %i.ci
  %i.dq = fadd float %i.ci, %.in74.i.sroa.speculated
  %i.dr = fadd float %i.ci, %.in77.i.sroa.speculated
  %i.ds = fadd float %i.ci, %.in80.i.sroa.speculated
  store float %i.dn, ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.do, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.dp, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.dq, ptr %3, align 4
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.dr, ptr %.sroa.12.16..sroa_idx, align 4
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ds, ptr %.sroa.14.16..sroa_idx, align 4
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !215
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !215
  ret float %i.b
}

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load <4 x float>, ptr %i.g, align 8
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load float, ptr %i.k, align 8, !tbaa !56
  %i.m = load <2 x float>, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 8, !tbaa !56 ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.r = fmul <2 x float> %i.p, %i.q
  %i.s = insertelement <2 x float> poison, float %i.b, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.u, <2 x float> %i.r)
  %i.w = insertelement <2 x float> poison, float %i.f, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> %i.i, float %i.l, i64 1
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.y, <2 x float> %i.v) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !56
  %i.ae = fmul float %i.d, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ab, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !56
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ah, float %i.af)
  %i.aj = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.ak = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  %i.al = fcmp olt float %i.aj, %i.ak             ; 2 uses
  %..i = select i1 %i.al, float %i.ak, float %i.aj
  %i.am = fcmp olt float %..i, %i.ai
  %i.an = zext i1 %i.al to i64
  %i.ao = select i1 %i.am, i64 2, i64 %i.an
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ap, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !81
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !56 ; 2 uses
  %4 = load float, ptr %i.c, align 8, !tbaa !56
  %i.o = load float, ptr %i.e, align 8, !tbaa !56
  %i.p = load <2 x float>, ptr %i.b, align 8, !tbaa !56 ; 2 uses
  %i.q = load <2 x float>, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.l, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 1, i32 3>
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = insertelement <2 x float> poison, float %i.j, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.x, <2 x float> %i.u)
  %i.z = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x float> poison, float %4, i64 0
  %i.ab = insertelement <2 x float> %5, float %i.o, i64 1
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ab, <2 x float> %i.y) ; 2 uses
  %i.ad = load float, ptr %i.f, align 8, !tbaa !56
  %i.ae = load float, ptr %i.g, align 4, !tbaa !56
  %i.af = fmul float %i.l, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ad, float %i.af)
  %i.ah = load float, ptr %i.h, align 8, !tbaa !56
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.ah, float %i.ag)
  %i.aj = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ak = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.al = fcmp olt float %i.aj, %i.ak             ; 2 uses
  %..i = select i1 %i.al, float %i.ak, float %i.aj
  %i.am = fcmp olt float %..i, %i.ai
  %i.an = zext i1 %i.al to i64
  %i.ao = select i1 %i.am, i64 2, i64 %i.an
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load float, ptr %i.b, align 8, !tbaa !56
  %i.d = load float, ptr %i.a, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !56 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !56 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !56 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !81
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am            ; 2 uses
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !56
  %i.ao = fmul float %i.af, %i.ak                 ; 2 uses
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !56
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg <2 x float> %i.an
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !56
  %i.aq = fneg float %i.ao
  store float %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.d = add nsw i32 %1, 1
  %i.e = srem i32 %i.d, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !111
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape8getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK15btTriangleShape8isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 13 uses
  %4 = alloca %class.btVector3, align 8           ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 100
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load <4 x float>, ptr %1, align 4
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.i = load <2 x float>, ptr %i.a, align 8, !tbaa !56 ; 4 uses
  %i.j = load <2 x float>, ptr %i.b, align 8, !tbaa !56 ; 2 uses
  %i.k = load <2 x float>, ptr %i.c, align 4, !tbaa !56 ; 2 uses
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !56 ; 2 uses
  %i.m = load <2 x float>, ptr %i.f, align 4, !tbaa !56 ; 2 uses
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !56 ; 5 uses
  %i.o = fsub <2 x float> %i.k, %i.n              ; 2 uses
  %i.p = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 1, i32 2>
  %i.q = shufflevector <2 x float> %i.n, <2 x float> %i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.r = fsub <2 x float> %i.p, %i.q
  %i.s = shufflevector <2 x float> %i.i, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.t = fsub <2 x float> %i.j, %i.s
  %i.u = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 1, i32 2>
  %i.v = fsub <2 x float> %i.u, %i.q
  %i.w = fsub <2 x float> %i.m, %i.n              ; 2 uses
  %i.x = fsub <2 x float> %i.l, %i.s
  %i.y = fneg <2 x float> %i.w
  %i.z = fneg <2 x float> %i.x
  %i.aa = fmul <2 x float> %i.r, %i.y
  %i.ab = fmul <2 x float> %i.o, %i.z
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.v, <2 x float> %i.aa) ; 4 uses
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.w, <2 x float> %i.ab) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ac, %i.ac
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.af = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ae)
  %i.ah = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ai)
  %i.aj = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fmul <2 x float> %i.ac, %i.al           ; 6 uses
  %i.an = fmul <2 x float> %i.ad, %i.al           ; 3 uses
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !56 ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.aq = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.at = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.at, <2 x float> %i.ar)
  %i.av = shufflevector <2 x float> %i.h, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.au) ; 2 uses
  %shift = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop54 = fsub <2 x float> %i.ax, %shift
  %i.ay = extractelement <2 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %i.az = fneg float %2                           ; 4 uses
  %i.ba = fcmp ult float %i.ay, %i.az
  %i.bb = fcmp ugt float %i.ay, %2
  %or.cond = or i1 %i.ba, %i.bb
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = extractelement <2 x float> %i.am, i64 1
  %i.bf = fneg float %i.be                        ; 3 uses
  %i.bg = fneg <2 x float> %i.an                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.bh = load ptr, ptr %0, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.bk = load float, ptr %i.bd, align 8, !tbaa !56
  %6 = load float, ptr %5, align 4, !tbaa !56
  %i.bl = load <2 x float>, ptr %3, align 8, !tbaa !56 ; 4 uses
  %i.bm = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.bn = load <2 x float>, ptr %4, align 8, !tbaa !56 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bc, align 4, !tbaa !56 ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bq = insertelement <2 x float> %i.bp, float %i.bk, i64 0
  %i.br = shufflevector <2 x float> %i.bo, <2 x float> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.bs = fsub <2 x float> %i.bq, %i.br           ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fmul float %i.bt, %i.bf
  %i.bv = shufflevector <2 x float> %i.bl, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bw = fsub <2 x float> %i.bn, %i.bv           ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bm, float %i.bu) ; 3 uses
  %i.bz = fmul <2 x float> %i.bw, %i.bg
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.am, <2 x float> %i.bz) ; 4 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.ca, %i.ca
  %i.cb = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.cc = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.cb)
  %i.cd = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.ce = call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cc)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ce)
  %i.cf = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cg = fmul float %i.by, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.ca, %i.ci           ; 2 uses
  %i.ck = load <2 x float>, ptr %1, align 4, !tbaa !56 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.cp = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cq, <2 x float> %i.cn)
  %7 = insertelement <2 x float> %i.bo, float %6, i64 0
  %i.cs = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.cs, <2 x float> %i.cr) ; 2 uses
  %shift58 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x float> %i.ct, %shift58
  %i.cu = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.cv = fcmp uge float %i.cu, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.cv, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cw = load ptr, ptr %0, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 160
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.cz = load float, ptr %i.bd, align 8, !tbaa !56
  %8 = load float, ptr %5, align 4, !tbaa !56
  %i.da = load <2 x float>, ptr %3, align 8, !tbaa !56 ; 4 uses
  %i.db = load <2 x float>, ptr %4, align 8, !tbaa !56 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.bc, align 4, !tbaa !56 ; 3 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.de = insertelement <2 x float> %i.dd, float %i.cz, i64 0
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <2 x i32> <i32 1, i32 2>
  %i.dg = fsub <2 x float> %i.de, %i.df           ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = fmul float %i.dh, %i.bf
  %i.dj = shufflevector <2 x float> %i.da, <2 x float> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.dk = fsub <2 x float> %i.db, %i.dj           ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float %i.bm, float %i.di) ; 3 uses
  %i.dn = fmul <2 x float> %i.dk, %i.bg
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.am, <2 x float> %i.dn) ; 4 uses
  %foldExtExtBinop61 = fmul <2 x float> %i.do, %i.do
  %i.dp = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.dq = call float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.dp)
  %i.dr = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.dq)
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.ds)
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.du = fmul float %i.dm, %i.dt
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %i.do, %i.dw           ; 2 uses
  %i.dy = load <2 x float>, ptr %1, align 4, !tbaa !56 ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> %i.da, <2 x i32> <i32 1, i32 3>
  %i.ea = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = shufflevector <2 x float> %i.dy, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.ed = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ee, <2 x float> %i.eb)
  %9 = insertelement <2 x float> %i.dc, float %8, i64 0
  %i.eg = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %i.eg, <2 x float> %i.ef) ; 2 uses
  %shift63 = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fsub <2 x float> %i.eh, %shift63
  %i.ei = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.ej = fcmp uge float %i.ei, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.ej, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ek = load ptr, ptr %0, align 8, !tbaa !8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.en = load float, ptr %i.bd, align 8, !tbaa !56
  %10 = load float, ptr %5, align 4, !tbaa !56
  %i.eo = load <2 x float>, ptr %3, align 8, !tbaa !56 ; 4 uses
  %i.ep = load <2 x float>, ptr %4, align 8, !tbaa !56 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.bc, align 4, !tbaa !56 ; 3 uses
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.es = insertelement <2 x float> %i.er, float %i.en, i64 0
  %i.et = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.eu = fsub <2 x float> %i.es, %i.et           ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = fmul float %i.ev, %i.bf
  %i.ex = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.ey = fsub <2 x float> %i.ep, %i.ex           ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 1
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float %i.bm, float %i.ew) ; 3 uses
  %i.fb = fmul <2 x float> %i.ey, %i.bg
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.am, <2 x float> %i.fb) ; 4 uses
  %foldExtExtBinop66 = fmul <2 x float> %i.fc, %i.fc
  %i.fd = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.fe = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fd)
  %i.ff = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fg = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fe)
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.fg)
  %i.fh = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.fi = fmul float %i.fa, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.fc, %i.fk           ; 2 uses
  %i.fm = load <2 x float>, ptr %1, align 4, !tbaa !56 ; 2 uses
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fo = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.fm, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.fr = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fs, <2 x float> %i.fp)
  %11 = insertelement <2 x float> %i.eq, float %10, i64 0
  %i.fu = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.fu, <2 x float> %i.ft) ; 2 uses
  %shift68 = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fsub <2 x float> %i.fv, %shift68
  %i.fw = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.fx = fcmp uge float %i.fw, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.fx, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.c, %bb.d, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load float, ptr %i.b, align 8, !tbaa !56
  %i.d = load float, ptr %i.a, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !56 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !56 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !56 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !81
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !56
  %i.ao = fmul float %i.af, %i.ak
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !111
  ret void
}

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN16btBU_Simplex1to4C2Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN20btTetrahedronShapeExD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #13
  unreachable
}

declare void @_ZNK16btBU_Simplex1to47getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(64), float noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK16btBU_Simplex1to47getNameEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.1
}

declare { <2 x float>, <2 x float> } @_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

declare noundef i32 @_ZNK16btBU_Simplex1to414getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to411getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to47getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to49getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to412getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

declare void @_ZNK16btBU_Simplex1to48getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK16btBU_Simplex1to48isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 4 dereferenceable(16), float noundef) unnamed_addr #1

declare noundef i32 @_ZNK16btBU_Simplex1to48getIndexEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(176) %i.c, i32 noundef %1)
  ret ptr %i.g
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(176) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %i.d)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  ret ptr %i.i
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef ptr @_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
