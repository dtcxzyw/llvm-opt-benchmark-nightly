Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 595
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.epil.init
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !69
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %.not.i5.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !27, !range !36, !noundef !37
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ad, align 8, !tbaa !27
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !28
  store i32 %i.g, ptr %i.c, align 8, !tbaa !30
  %.pre2 = load i32, ptr %i.a, align 4, !tbaa !29
  br label %_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit

_ZN20btAlignedObjectArrayI9btVector3E7reserveEi.exit: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, %bb.b, %bb.a
  %i.ae = phi i32 [ %.pre2, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !69
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !29
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK11btTransformmlERK9btVector3(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load float, ptr %0, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <4 x float>, ptr %i.j, align 4
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load float, ptr %i.m, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load float, ptr %i.o, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load float, ptr %1, align 4, !tbaa !54   ; 2 uses
  %i.s = load float, ptr %i.d, align 4, !tbaa !54 ; 2 uses
  %i.t = fmul float %i.s, %i.f
  %i.u = tail call float @llvm.fmuladd.f32(float %i.r, float %i.c, float %i.t)
  %i.v = load float, ptr %i.g, align 4, !tbaa !54 ; 2 uses
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.i, float %i.u)
  %i.x = load <2 x float>, ptr %i.a, align 4, !tbaa !54 ; 2 uses
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !54 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.s, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.af, <2 x float> %i.ac)
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> %i.l, float %i.n, i64 1
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.aj, <2 x float> %i.ag)
  %i.al = fadd float %i.w, %i.p
  %i.am = load <2 x float>, ptr %i.q, align 4, !tbaa !54
  %i.an = fadd <2 x float> %i.ak, %i.am           ; 2 uses
  %.sroa.0.0.vec.insert.i2.i = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2.i, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.ap = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.an, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i5.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ao, 0
  %.fca.1.insert.i6.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i5.i, <2 x float> %i.ap, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i6.i
}

declare void @_ZN18btConvexPolyhedronC1Ev(ptr noundef nonnull align 8 dereferenceable(172)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !82   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !82
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i:   ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %2 = ptrtoaddr ptr %.0.i.i to i64
  %3 = ptrtoaddr ptr %i.o to i64
  %i.p = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !84
  %wide.load8 = load <4 x i32>, ptr %i.s, align 4, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %wide.load, ptr %i.q, align 4, !tbaa !84
  store <4 x i32> %wide.load8, ptr %i.t, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.prol
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !84
  store i32 %i.x, ptr %i.v, align 4, !tbaa !84
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !136

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !84
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !84
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !84
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.1
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !84
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !84
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !84
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph, !llvm.loop !137

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i:   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !80, !range !36, !noundef !37
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i
  %.pre2.pre = load i32, ptr %i.a, align 4, !tbaa !82
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %.pre2 = phi i32 [ %.pre2.pre, %bb.f ], [ %i.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ap, align 8, !tbaa !80
  store ptr %.0.i.i, ptr %i.n, align 8, !tbaa !81
  store i32 %i.g, ptr %i.c, align 8, !tbaa !83
  br label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

_ZN20btAlignedObjectArrayIiE7reserveEi.exit:      ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.aq = phi i32 [ %.pre2, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !81
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %1, align 4, !tbaa !84
  store i32 %i.av, ptr %i.au, align 4, !tbaa !84
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !82
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !82
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI6btFaceE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f
  tail call void @_ZN20btAlignedObjectArrayI6btFaceE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !96
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  store i8 1, ptr %i.m, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr null, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 4 uses
  store i32 0, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !82   ; 6 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i: ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64                ; 6 uses
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.u, i32 noundef 16) ; 16 uses
  %.pre.i.i.i = load i32, ptr %i.o, align 4, !tbaa !82 ; 3 uses
  %i.w = icmp sgt i32 %.pre.i.i.i, 0
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !81   ; 9 uses
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %.pre.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i.i.i, 8
  %2 = ptrtoaddr ptr %i.v to i64
  %3 = ptrtoaddr ptr %i.x to i64
  %i.y = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !84
  %wide.load4 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !84
  store <4 x i32> %wide.load4, ptr %i.ac, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i.prol
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.prol
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !84
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !139

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !84
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  store i32 %i.au, ptr %i.as, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, label %scalar.ph, !llvm.loop !140

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i.i.i
  %.not.i5.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i5.i.i.i.i, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  %i.av = load i8, ptr %i.m, align 8, !tbaa !80, !range !36, !noundef !37
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.d, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i.i.i, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i.i.i
  store i8 1, ptr %i.m, align 8, !tbaa !80
  store ptr %i.v, ptr %i.n, align 8, !tbaa !81
  store i32 %i.r, ptr %i.p, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.u, i1 false), !tbaa !84
  store i32 %i.r, ptr %i.o, align 4, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 7 uses
  %min.iters.check8 = icmp ult i32 %i.r, 8
  %4 = ptrtoaddr ptr %i.v to i64
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %4
  %diff.check6 = icmp ugt i64 %i.ba, -32
  %or.cond20 = select i1 %min.iters.check8, i1 true, i1 %diff.check6
  br i1 %or.cond20, label %scalar.ph7.preheader, label %vector.ph9

vector.ph9:                                       ; preds = %.lr.ph.i.i.i
  %n.vec10 = and i64 %i.t, 2147483640             ; 3 uses
  br label %vector.body11

vector.body11:                                    ; preds = %vector.body11, %vector.ph9
  %index12 = phi i64 [ 0, %vector.ph9 ], [ %index.next15, %vector.body11 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index12 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load13 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !84
  %wide.load14 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %wide.load13, ptr %i.bb, align 4, !tbaa !84
  store <4 x i32> %wide.load14, ptr %i.be, align 4, !tbaa !84
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.bf, label %middle.block16, label %vector.body11, !llvm.loop !141

middle.block16:                                   ; preds = %vector.body11
  %cmp.n17 = icmp eq i64 %n.vec10, %i.t
  br i1 %cmp.n17, label %_ZN6btFaceC2ERKS_.exit, label %scalar.ph7.preheader

scalar.ph7.preheader:                             ; preds = %.lr.ph.i.i.i, %middle.block16
  %indvars.iv.i6.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec10, %middle.block16 ] ; 3 uses
  %xtraiter21 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %scalar.ph7.prol.loopexit, label %scalar.ph7.prol

scalar.ph7.prol:                                  ; preds = %scalar.ph7.preheader, %scalar.ph7.prol
  %indvars.iv.i6.i.i.prol = phi i64 [ %indvars.iv.next.i7.i.i.prol, %scalar.ph7.prol ], [ %indvars.iv.i6.i.i.ph, %scalar.ph7.preheader ] ; 3 uses
  %prol.iter23 = phi i64 [ %prol.iter23.next, %scalar.ph7.prol ], [ 0, %scalar.ph7.preheader ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i6.i.i.prol
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i6.i.i.prol
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.prol = add nuw nsw i64 %indvars.iv.i6.i.i.prol, 1 ; 2 uses
  %prol.iter23.next = add i64 %prol.iter23, 1     ; 2 uses
  %prol.iter23.cmp.not = icmp eq i64 %prol.iter23.next, %xtraiter21
  br i1 %prol.iter23.cmp.not, label %scalar.ph7.prol.loopexit, label %scalar.ph7.prol, !llvm.loop !142

scalar.ph7.prol.loopexit:                         ; preds = %scalar.ph7.prol, %scalar.ph7.preheader
  %indvars.iv.i6.i.i.unr = phi i64 [ %indvars.iv.i6.i.i.ph, %scalar.ph7.preheader ], [ %indvars.iv.next.i7.i.i.prol, %scalar.ph7.prol ]
  %i.bj = sub nsw i64 %indvars.iv.i6.i.i.ph, %i.t
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZN6btFaceC2ERKS_.exit, label %scalar.ph7

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i: ; preds = %bb.c
  store i32 %i.r, ptr %i.o, align 4, !tbaa !82
  br label %_ZN6btFaceC2ERKS_.exit

scalar.ph7:                                       ; preds = %scalar.ph7.prol.loopexit, %scalar.ph7
  %indvars.iv.i6.i.i = phi i64 [ %indvars.iv.next.i7.i.i.3, %scalar.ph7 ], [ %indvars.iv.i6.i.i.unr, %scalar.ph7.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i6.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i6.i.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !84
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i = add nuw nsw i64 %indvars.iv.i6.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i7.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i7.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !84
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.1 = add nuw nsw i64 %indvars.iv.i6.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i7.i.i.1
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i7.i.i.1
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.2 = add nuw nsw i64 %indvars.iv.i6.i.i, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next.i7.i.i.2
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next.i7.i.i.2
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !84
  %indvars.iv.next.i7.i.i.3 = add nuw nsw i64 %indvars.iv.i6.i.i, 4 ; 2 uses
  %exitcond.not.i8.i.i.3 = icmp eq i64 %indvars.iv.next.i7.i.i.3, %i.t
  br i1 %exitcond.not.i8.i.i.3, label %_ZN6btFaceC2ERKS_.exit, label %scalar.ph7, !llvm.loop !143

_ZN6btFaceC2ERKS_.exit:                           ; preds = %scalar.ph7.prol.loopexit, %scalar.ph7, %middle.block16, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !69
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !96
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !96
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6btFaceD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !36
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN18btConvexPolyhedron11initialize2Ev(ptr noundef nonnull align 8 dereferenceable(172)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN18btConvexPolyhedronD1Ev(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172)) unnamed_addr #6

declare void @_ZN27btPolyhedralContactClipping19clipFaceAgainstHullERK9btVector3RK18btConvexPolyhedronRK11btTransformR20btAlignedObjectArrayIS0_ESB_ffRN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25), float noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btSphereShape, align 8       ; 15 uses
  %6 = alloca %"struct.btConvexCast::CastResult", align 8 ; 10 uses
  %7 = alloca %class.btVoronoiSimplexSolver, align 4 ; 6 uses
  %8 = alloca %class.btGjkConvexCast, align 8     ; 7 uses
  %9 = alloca %class.btSphereShape, align 8       ; 15 uses
  %10 = alloca %"struct.btConvexCast::CastResult", align 8 ; 10 uses
  %11 = alloca %class.btVoronoiSimplexSolver, align 4 ; 6 uses
  %12 = alloca %class.btGjkConvexCast, align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load float, ptr %i.b, align 4, !tbaa !54
  %i.f = load float, ptr %i.d, align 4, !tbaa !54
  %i.g = fsub float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load float, ptr %i.j, align 4, !tbaa !54
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load float, ptr %i.m, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load float, ptr %i.o, align 4, !tbaa !54
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = fmul float %i.l, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.r)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.x = load float, ptr %i.w, align 4, !tbaa !149 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = fcmp olt float %i.t, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !54
  %i.ae = fsub float %i.ab, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ag = load float, ptr %i.af, align 4, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !54
  %i.aj = fsub float %i.ag, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.al = load float, ptr %i.ak, align 4, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !54
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 308
  %i.at = load float, ptr %i.as, align 4, !tbaa !149 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fcmp olt float %i.ar, %i.au
  %i.aw = load i8, ptr @disableCcd, align 1, !range !36
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.ac, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old = load i8, ptr @disableCcd, align 1, !tbaa !150, !range !36, !noundef !37
  %.old60 = trunc nuw i8 %.old to i1
  br i1 %.old60, label %bb.ac, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  store float f0x38D1B717, ptr %i.ct, align 4, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 332 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, -16
  store i8 %i.cw, ptr %i.cu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %9, ptr noundef %i.ce, ptr noundef nonnull %11)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.cx = invoke noundef zeroext i1 @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(196) %10)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.cx, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !161
  %i.da = load float, ptr %i.co, align 8, !tbaa !156 ; 6 uses
  %i.db = fcmp ogt float %i.cz, %i.da
  br i1 %i.db, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  store float %i.da, ptr %i.cy, align 4, !tbaa !161
  br label %bb.w

bb.t:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.by, %bb.j ], [ %i.bx, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

bb.u:                                             ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.v:                                             ; preds = %bb.p
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #21
  br label %bb.ab

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 300 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !161
  %i.dg = fcmp ogt float %i.df, %i.da
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float %i.da, ptr %i.de, align 4, !tbaa !161
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dh = fcmp ogt float %.043, %i.da
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.q
  %.144 = phi float [ %i.da, %bb.z ], [ %.043, %bb.y ], [ %.043, %bb.q ]
  call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v, %bb.u
  %.pn55 = phi { ptr, i32 } [ %i.dd, %bb.v ], [ %i.dc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.c, %bb.b, %bb.aa
  %.045 = phi float [ %.144, %bb.aa ], [ 1.000000e+00, %bb.b ], [ 1.000000e+00, %bb.c ]
  ret float %.045

bb.ad:                                            ; preds = %bb.ab, %bb.t
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %.pn55, %bb.ab ], [ %.pn, %bb.t ]
  resume { ptr, i32 } %.pn55.pn.pn.pn
}

declare void @_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(196)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoPK24btCollisionObjectWrapperS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 120) ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.x = load <2 x i32>, ptr %i.j, align 8, !tbaa !84
  tail call void @_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoPK24btCollisionObjectWrapperS5_(ptr noundef nonnull align 8 dereferenceable(116) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV23btConvexConvexAlgorithm, i64 16), ptr %i.e, align 8, !tbaa !13
  store ptr %i.i, ptr %i.k, align 8, !tbaa !26
  store i8 1, ptr %i.l, align 8, !tbaa !27
  store ptr null, ptr %i.m, align 8, !tbaa !28
  store i32 0, ptr %i.n, align 4, !tbaa !29
  store i32 0, ptr %i.o, align 8, !tbaa !30
  store i8 1, ptr %i.p, align 8, !tbaa !27
  store ptr null, ptr %i.q, align 8, !tbaa !28
  store i32 0, ptr %i.r, align 4, !tbaa !29
  store i32 0, ptr %i.s, align 8, !tbaa !30
  store i8 0, ptr %i.t, align 8, !tbaa !31
  store ptr %i.g, ptr %i.u, align 8, !tbaa !32
  store i8 0, ptr %i.v, align 8, !tbaa !33
  store <2 x i32> %i.x, ptr %i.w, align 4, !tbaa !84
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !36
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !172
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !171
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %2 = ptrtoaddr ptr %.0.i.i.i to i64
  %3 = ptrtoaddr ptr %i.t to i64
  %i.u = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !174
  %wide.load9 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.load, ptr %i.v, align 8, !tbaa !174
  store <2 x ptr> %wide.load9, ptr %i.y, align 8, !tbaa !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !165

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
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !166

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !174
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !174
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !174
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !174
  store ptr %i.an, ptr %i.al, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !174
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !174
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !167

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !175, !range !36, !noundef !37
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !171
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !175
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !173
  store i32 %i.l, ptr %i.h, align 8, !tbaa !172
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !174
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.av = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.aw = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !173
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !174
  %i.bb = add nsw i32 %i.aw, 1
  store i32 %i.bb, ptr %i.f, align 4, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResultD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult20setShapeIdentifiersAEii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult20setShapeIdentifiersBEii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResultEN21btWithoutMarginResult15addContactPointERK9btVector3SB_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(45) initializes((16, 32), (40, 44)) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) unnamed_addr #9 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float %3, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !54
  %i.g = fmul float %i.d, %i.f
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !54
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  %i.l = load <2 x float>, ptr %2, align 4, !tbaa !54
  %i.m = fsub <2 x float> %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !54
  %i.p = fsub float %i.o, %i.g
  %.sroa.3.12.vec.insert.i9 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  store <2 x float> %i.m, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load float, ptr %i.r, align 8, !tbaa !73
  %i.t = fadd float %i.d, %i.s
  %i.u = fadd float %3, %i.t                      ; 3 uses
  store float %i.u, ptr %i.a, align 8, !tbaa !76
  %i.v = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.w, align 4, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24btPerturbedContactResultD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
end_hunk_1
