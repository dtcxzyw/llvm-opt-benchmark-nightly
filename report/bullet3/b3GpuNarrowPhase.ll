Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuNarrowPhase?download=true
inline.NumInlined: 1268
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN16b3GpuNarrowPhase19registerSphereShapeEf:bb.a

_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.l = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN20b3AlignedObjectArrayI12b3CollidableE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.m = icmp slt i32 %i.d, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = zext nneg i32 %i.d to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 7, ptr %i.s, align 4, !tbaa !369
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %1, ptr %i.u, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.v = fneg float %1                            ; 3 uses
  store float %i.v, ptr %3, align 16, !tbaa !130
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.v, ptr %i.x, align 8, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !130
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %1, ptr %i.z, align 16, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %1, ptr %i.aa, align 4, !tbaa !130
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %1, ptr %i.ab, align 8, !tbaa !130
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ac, align 4, !tbaa !130
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  call void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.af, ptr noundef nonnull align 16 dereferenceable(32) %3)
  %i.ag = load ptr, ptr @__clewFinish, align 8, !tbaa !231
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  %i.aj = call i32 %i.ag(ptr noundef %i.ai)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit, %bb.b
  %.0.i24 = phi i32 [ -1, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread ], [ %i.d, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit ], [ %i.d, %bb.b ]
  ret i32 %.0.i24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZN16b3GpuNarrowPhase16getCollidableCpuEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !138  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !139
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 5
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !138  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !371

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.a, align 4, !tbaa !138
  br label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !137 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !133, !range !95, !noundef !96
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !133
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !137
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !139
  %.pre = load i32, ptr %i.a, align 4, !tbaa !138
  br label %_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit

_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI9b3SapAabbE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !138
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN16b3GpuNarrowPhase12registerFaceERK9b3Vector3f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %struct.b3GpuFace, align 16         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.e = load i32, ptr %i.d, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.f = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI9b3GpuFaceE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %4 = load <3 x float>, ptr %1, align 16         ; 2 uses
  %.sroa.3.12.vec.insert6.i = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.0.4.vec.insert.i = shufflevector <3 x float> %4, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.12.vec.insert6.i, float %2, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.f, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  ret i32 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI9b3GpuFaceE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !145
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI9b3GpuFaceE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 5
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI9b3GpuFaceE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !146  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !148
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !148
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !149

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI9b3GpuFaceE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.a, align 4, !tbaa !146
  br label %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !148
  br label %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !147 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !150, !range !95, !noundef !96
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI9b3GpuFaceE4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !150
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !147
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !145
  %.pre = load i32, ptr %i.a, align 4, !tbaa !146
  br label %_ZN20b3AlignedObjectArrayI9b3GpuFaceE7reserveEi.exit

_ZN20b3AlignedObjectArrayI9b3GpuFaceE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI9b3GpuFaceE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !147
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ak, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !148
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !147
  %i.am = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.aj
  ret ptr %i.am
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZN16b3GpuNarrowPhase18registerPlaneShapeERK9b3Vector3f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %struct.b3GpuFace, align 16         ; 4 uses
  %4 = alloca %struct.b3Collidable, align 4       ; 4 uses
  %5 = alloca %struct.b3SapAabb, align 16         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  %i.d = load i32, ptr %i.c, align 4, !tbaa !127  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 620
  %i.f = load i32, ptr %i.e, align 4, !tbaa !368
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit, label %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread

_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread: ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 154)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 620
  %i.j = load i32, ptr %i.i, align 4, !tbaa !368
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2, i32 noundef %i.j)
  br label %bb.d

_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.l = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN20b3AlignedObjectArrayI12b3CollidableE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.m = icmp slt i32 %i.d, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = zext nneg i32 %i.d to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 4, ptr %i.s, align 4, !tbaa !369
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 252
  %i.v = load i32, ptr %i.u, align 4, !tbaa !146  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.w = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI9b3GpuFaceE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %6 = load <3 x float>, ptr %1, align 16         ; 2 uses
  %.sroa.3.12.vec.insert6.i.i = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.0.4.vec.insert.i.i = shufflevector <3 x float> %6, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.12.vec.insert6.i.i, float %2, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.w, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 %i.v, ptr %i.x, align 4, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %2, ptr %i.y, align 4, !tbaa !130
  %i.z = icmp sgt i32 %i.v, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store <2 x float> splat (float -1.000000e+30), ptr %5, align 16, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float -1.000000e+30, ptr %i.aa, align 8, !tbaa !130
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !130
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> splat (float 1.000000e+30), ptr %i.ac, align 16, !tbaa !130
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float 1.000000e+30, ptr %i.ad, align 8, !tbaa !130
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 0, ptr %i.ae, align 4, !tbaa !130
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 424
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !140
  call void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.ah, ptr noundef nonnull align 16 dereferenceable(32) %5)
  %i.ai = load ptr, ptr @__clewFinish, align 8, !tbaa !231
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = call i32 %i.ai(ptr noundef %i.ak)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.d

bb.d:                                             ; preds = %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread, %bb.b, %bb.c, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit
  %.0.i13 = phi i32 [ -1, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit.thread ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %_ZN16b3GpuNarrowPhase18allocateCollidableEv.exit ]
  ret i32 %.0.i13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN16b3GpuNarrowPhase31registerConvexHullShapeInternalEP15b3ConvexUtilityR12b3Collidable(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %3 = alloca %struct.b3ConvexPolyhedronData, align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !196  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.e = load i32, ptr %i.d, align 8, !tbaa !204  ; 5 uses
  %i.f = add nsw i32 %i.e, 1                      ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !194  ; 2 uses
  %.not = icmp slt i32 %i.e, %i.h
  br i1 %.not, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !195
  %.not162 = icmp sgt i32 %i.j, %i.e
  br i1 %.not162, label %..lr.ph.i_crit_edge, label %bb.c

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !193
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.k = sext i32 %i.f to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.l, i32 noundef 16) ; 12 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i
  %i.p = load i32, ptr %i.g, align 4, !tbaa !194  ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193  ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.p to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.n
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x ptr>, ptr %i.w, align 8, !tbaa !197
  %wide.load226 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !197
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.load, ptr %i.v, align 8, !tbaa !197
  store <2 x ptr> %wide.load226, ptr %i.y, align 8, !tbaa !197
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.prol
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.prol
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !197
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !197
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !373

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !197
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !197
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !197
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.1
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !197
  store ptr %i.an, ptr %i.al, align 8, !tbaa !197
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.2
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !197
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !197
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i, label %scalar.ph, !llvm.loop !374

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.g, align 4, !tbaa !194
  br label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i

_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.m, %.split.i.i ], [ %i.m, %middle.block ], [ %i.m, %scalar.ph ], [ %i.m, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.f, %.split.i.i ], [ %i.f, %middle.block ], [ %i.f, %scalar.ph ], [ %i.f, %scalar.ph.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !193 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !189, !range !95, !noundef !96
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.e, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.as)
  br label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.aw, align 8, !tbaa !189
  store ptr %.0.i12.i.i, ptr %i.ar, align 8, !tbaa !193
  store i32 %.0.i.i, ptr %i.i, align 8, !tbaa !195
  %.pre187.pre = load ptr, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert188.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre187.pre, i64 368
  %.pre189.pre = load i32, ptr %.phi.trans.insert188.phi.trans.insert, align 8, !tbaa !204 ; 2 uses
  %.pre197 = add nsw i32 %.pre189.pre, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i
  %.pre196.pre-phi = phi i32 [ %i.f, %..lr.ph.i_crit_edge ], [ %.pre197, %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE10deallocateEv.exit.i.i ]
end_hunk_0
