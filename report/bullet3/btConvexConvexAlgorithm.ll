Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 595
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_:bb.a
.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.epil.init
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !69
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %.not.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !27, !range !36, !noundef !37
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ab, align 8, !tbaa !27
  store ptr %.0.i.i, ptr %i.w, align 8, !tbaa !28
  store i32 %1, ptr %i.d, align 8, !tbaa !30
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = sext i32 %i.b to i64                    ; 5 uses
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count, %i.ad
  %xtraiter28 = and i64 %i.ae, 1
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.prol = add nsw i64 %i.ad, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ad, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %i.ah, %i.ad
  br i1 %i.ai, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.am = getelementptr [16 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !134

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !29
  ret void
}

declare void @_ZN27btPolyhedralContactClipping19clipHullAgainstHullERK9btVector3RK18btConvexPolyhedronS5_RK11btTransformS8_ffR20btAlignedObjectArrayIS0_ESB_RN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), float noundef, float noundef, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
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
  %i.r = load float, ptr %i.d, align 4, !tbaa !54 ; 2 uses
  %i.s = load float, ptr %1, align 4, !tbaa !54   ; 2 uses
  %i.t = load float, ptr %i.g, align 4, !tbaa !54 ; 2 uses
  %i.u = fmul float %i.r, %i.f
  %i.v = tail call float @llvm.fmuladd.f32(float %i.s, float %i.c, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.i, float %i.v)
  %i.x = load <2 x float>, ptr %i.a, align 4, !tbaa !54 ; 2 uses
  %2 = load <2 x float>, ptr %i.b, align 4, !tbaa !54 ; 2 uses
  %3 = insertelement <2 x float> poison, float %i.r, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <2 x float> %i.x, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %6 = fmul <2 x float> %4, %5
  %i.y = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.aa, <2 x float> %6)
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> %i.l, float %i.n, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = fadd float %i.w, %i.p
  %i.ah = load <2 x float>, ptr %i.q, align 4, !tbaa !54
  %i.ai = fadd <2 x float> %i.af, %i.ah           ; 2 uses
  %.sroa.0.0.vec.insert.i2.i = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2.i, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ak = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ai, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i5.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aj, 0
  %.fca.1.insert.i6.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i5.i, <2 x float> %i.ak, 1
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
  %i.p = ptrtoaddr ptr %i.o to i64
  %.0.i.i7 = ptrtoaddr ptr %.0.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.p, %.0.i.i7
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !84
  %wide.load8 = load <4 x i32>, ptr %i.t, align 4, !tbaa !84
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !84
  store <4 x i32> %wide.load8, ptr %i.u, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !135

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
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84
  store i32 %i.y, ptr %i.w, align 4, !tbaa !84
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !136

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !84
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !84
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !84
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !84
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !84
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !84
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !84
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !84
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i, label %scalar.ph, !llvm.loop !137

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i:   ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.o, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !80, !range !36, !noundef !37
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i
  %.pre2.pre = load i32, ptr %i.a, align 4, !tbaa !82
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i
  %.pre2 = phi i32 [ %.pre2.pre, %bb.f ], [ %i.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aq, align 8, !tbaa !80
  store ptr %.0.i.i, ptr %i.n, align 8, !tbaa !81
  store i32 %i.g, ptr %i.c, align 8, !tbaa !83
  br label %_ZN20btAlignedObjectArrayIiE7reserveEi.exit

_ZN20btAlignedObjectArrayIiE7reserveEi.exit:      ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.ar = phi i32 [ %.pre2, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !81
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %1, align 4, !tbaa !84
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !84
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !82
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !82
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
end_hunk_0
