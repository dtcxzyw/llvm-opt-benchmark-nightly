Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3OptimizedBvh?download=true
inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE6expandERKS0_:bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !56   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i

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
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !67

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2)
  store i32 0, ptr %i.a, align 4, !tbaa !56
  br label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !68, !range !38, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI16b3BvhSubtreeInfoE4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !68
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !66
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !65
  %.pre = load i32, ptr %i.a, align 4, !tbaa !56
  br label %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE7reserveEi.exit

_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI16b3BvhSubtreeInfoE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ak, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.am = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.aj
  ret ptr %i.am
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3OptimizedBvh5refitEP23b3StridingMeshInterfaceRK9b3Vector3S4_(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !11, !range !38, !noundef !39
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14b3QuantizedBvh21setQuantizationValuesERK9b3Vector3S2_f(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, float noundef 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !55
  tail call void @_ZN14b3OptimizedBvh14updateBvhNodesEP23b3StridingMeshInterfaceiii(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.e, i32 poison)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !34
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !59
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.p ; 6 uses
  %i.r = load i16, ptr %i.q, align 16, !tbaa !57
  store i16 %i.r, ptr %i.m, align 16, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 %i.w, ptr %i.x, align 4, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i16 %i.ac, ptr %i.ad, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !69

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3OptimizedBvh14updateBvhNodesEP23b3StridingMeshInterfaceiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 2, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr null, ptr %i.e, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 0, ptr %i.g, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 2, ptr %i.h, align 4, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not.not144 = icmp sgt i32 %3, %2
  br i1 %.not.not144, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = sext i32 %3 to i64
  %i.r = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.083145 = phi i32 [ -1, %.lr.ph ], [ %.2, %.loopexit ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.s = load ptr, ptr %i.j, align 16, !tbaa !34  ; 3 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %indvars.iv.next ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !61   ; 3 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.x = lshr i32 %i.v, 21                        ; 3 uses
  %i.y = and i32 %i.v, 2097151
  %.not = icmp eq i32 %i.x, %.083145
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp sgt i32 %.083145, -1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %1, align 16, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 16 dereferenceable(32) %1, i32 noundef %.083145)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr %1, align 16, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1 = phi i32 [ %i.x, %bb.f ], [ %.083145, %bb.c ]
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !50
  %i.ai = mul nsw i32 %i.ah, %i.y
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 18 uses
  %i.al = load i32, ptr %i.h, align 4, !tbaa !72  ; 4 uses
  %i.am = load i32, ptr %i.c, align 4, !tbaa !72
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load ptr, ptr %i.a, align 8             ; 13 uses
  %i.ap = load i32, ptr %i.d, align 4             ; 10 uses
  %i.aq = load float, ptr %i.i, align 4, !tbaa !74 ; 6 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.ar = load float, ptr %i.k, align 4, !tbaa !74 ; 5 uses
  %i.as = load float, ptr %i.l, align 4, !tbaa !74 ; 9 uses
  switch i32 %i.al, label %bb.h [
    i32 2, label %.thread
    i32 3, label %.thread167
    i32 5, label %.thread174
  ]

.thread174:                                       ; preds = %.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !49
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nsw i32 %i.ap, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !74
  %i.ba = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ar, i64 1 ; 2 uses
  %i.bc = fmul <2 x float> %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !74
  %i.bf = fmul float %i.be, %i.as
  %.sroa.3.12.vec.insert.i.us178 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !49
  %i.bi = zext i8 %i.bh to i32
  %i.bj = mul nsw i32 %i.ap, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.ao, i64 %i.bk ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !74
  %i.bn = fmul <2 x float> %i.bm, %i.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !74
  %i.bq = fmul float %i.bp, %i.as
  %.sroa.3.12.vec.insert.i.us.1213 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bq, i64 0
  %i.br = load i8, ptr %i.ak, align 1, !tbaa !49
  %i.bs = zext i8 %i.br to i32
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit

.thread167:                                       ; preds = %.split.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !57
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nsw i32 %i.ap, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.ao, i64 %i.bx ; 2 uses
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !74
  %i.ca = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.ar, i64 1 ; 2 uses
  %i.cc = fmul <2 x float> %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !74
  %i.cf = fmul float %i.ce, %i.as
  %.sroa.3.12.vec.insert.i.us171 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !57
  %i.ci = zext i16 %i.ch to i32
  %i.cj = mul nsw i32 %i.ap, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.ao, i64 %i.ck ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 4, !tbaa !74
  %i.cn = fmul <2 x float> %i.cm, %i.cb
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !74
  %i.cq = fmul float %i.cp, %i.as
  %.sroa.3.12.vec.insert.i.us.1202 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  %i.cr = load i16, ptr %i.ak, align 2, !tbaa !57
  %i.cs = zext i16 %i.cr to i32
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit

.thread:                                          ; preds = %.split.us
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !50
  %i.cv = mul nsw i32 %i.ap, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ao, i64 %i.cw ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cx, align 4, !tbaa !74
  %i.cz = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.ar, i64 1 ; 2 uses
  %i.db = fmul <2 x float> %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !74
  %i.de = fmul float %i.dd, %i.as
  %.sroa.3.12.vec.insert.i.us162 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !50
  %i.dh = mul nsw i32 %i.ap, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ao, i64 %i.di ; 2 uses
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !74
  %i.dl = fmul <2 x float> %i.dk, %i.da
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !74
  %i.do = fmul float %i.dn, %i.as
  %.sroa.3.12.vec.insert.i.us.1187 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  %i.dp = load i32, ptr %i.ak, align 4, !tbaa !50
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit

bb.h:                                             ; preds = %.split.us
  %i.dq = load <2 x float>, ptr %i.ao, align 4, !tbaa !74
  %i.dr = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.ar, i64 1 ; 2 uses
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !74 ; 2 uses
  %i.dw = fmul float %i.dv, %i.as
  %.sroa.3.12.vec.insert.i.us = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = load <2 x float>, ptr %i.ao, align 4, !tbaa !74
  %i.dy = fmul <2 x float> %i.dx, %i.ds
  %i.dz = fmul float %i.dv, %i.as
  %.sroa.3.12.vec.insert.i.us.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit

_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit:          ; preds = %bb.h, %.thread, %.thread167, %.thread174
  %.sroa.3.12.vec.insert.i.us.1195 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.us.1, %bb.h ], [ %.sroa.3.12.vec.insert.i.us.1187, %.thread ], [ %.sroa.3.12.vec.insert.i.us.1202, %.thread167 ], [ %.sroa.3.12.vec.insert.i.us.1213, %.thread174 ]
  %.sroa.0.4.vec.insert.i.us.1193 = phi <2 x float> [ %i.dy, %bb.h ], [ %i.dl, %.thread ], [ %i.cn, %.thread167 ], [ %i.bn, %.thread174 ]
  %.sroa.0.4.vec.insert.i.us164191 = phi <2 x float> [ %i.dt, %bb.h ], [ %i.db, %.thread ], [ %i.cc, %.thread167 ], [ %i.bc, %.thread174 ]
  %.sroa.3.12.vec.insert.i.us166189 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.us, %bb.h ], [ %.sroa.3.12.vec.insert.i.us162, %.thread ], [ %.sroa.3.12.vec.insert.i.us171, %.thread167 ], [ %.sroa.3.12.vec.insert.i.us178, %.thread174 ]
  %.285.us.2 = phi i32 [ undef, %bb.h ], [ %i.dp, %.thread ], [ %i.cs, %.thread167 ], [ %i.bs, %.thread174 ]
  %i.ea = mul nsw i32 %i.ap, %.285.us.2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.ao, i64 %i.eb ; 2 uses
  %i.ed = load <2 x float>, ptr %i.ec, align 4, !tbaa !74
  %i.ee = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %i.ar, i64 1
  %i.eg = fmul <2 x float> %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !74
  %i.ej = fmul float %i.ei, %i.as
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %i.ek = load float, ptr %i.k, align 4, !tbaa !74
  %i.el = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1
  %i.en = fpext <2 x float> %i.em to <2 x double> ; 3 uses
  %i.eo = load float, ptr %i.l, align 4, !tbaa !74
  %i.ep = fpext float %i.eo to double             ; 3 uses
  switch i32 %i.al, label %bb.l [
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 5, label %bb.k
  ]

_Z8b3SetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit
  %.sink = phi float [ %i.ik, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %i.ej, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ] ; 4 uses
  %.sroa.20.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i106, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %.sroa.3.12.vec.insert.i.us166189, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ]
  %.sroa.16.0 = phi <2 x float> [ %i.gz, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %.sroa.0.4.vec.insert.i.us164191, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ] ; 4 uses
  %.sroa.13.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i106.1, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %.sroa.3.12.vec.insert.i.us.1195, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ]
  %.sroa.9.0 = phi <2 x float> [ %i.hr, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %.sroa.0.4.vec.insert.i.us.1193, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ] ; 4 uses
  %i.eq = phi <2 x float> [ %i.ig, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 ], [ %i.eg, %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit ] ; 4 uses
  %i.er = fcmp olt <2 x float> %i.eq, splat (float f0x5D5E0B6B)
  %i.es = fcmp olt float %.sink, f0x5D5E0B6B
  %.sroa.18133.0 = select i1 %i.es, float %.sink, float f0x5D5E0B6B ; 2 uses
  %i.et = fcmp ogt float %.sink, f0xDD5E0B6B
  %.sroa.18.0 = select i1 %i.et, float %.sink, float f0xDD5E0B6B ; 2 uses
  %.sroa.13.24.vec.extract = extractelement <2 x float> %.sroa.13.0, i64 0 ; 4 uses
  %i.eu = fcmp olt float %.sroa.13.24.vec.extract, %.sroa.18133.0
  %.sroa.18133.1 = select i1 %i.eu, float %.sroa.13.24.vec.extract, float %.sroa.18133.0 ; 2 uses
  %i.ev = fcmp olt float %.sroa.18.0, %.sroa.13.24.vec.extract
  %.sroa.18.1 = select i1 %i.ev, float %.sroa.13.24.vec.extract, float %.sroa.18.0 ; 2 uses
  %.sroa.20.40.vec.extract = extractelement <2 x float> %.sroa.20.0, i64 0 ; 4 uses
  %i.ew = fcmp olt float %.sroa.20.40.vec.extract, %.sroa.18133.1
  %.sroa.18133.2 = select i1 %i.ew, float %.sroa.20.40.vec.extract, float %.sroa.18133.1
  %i.ex = fcmp olt float %.sroa.18.1, %.sroa.20.40.vec.extract
  %.sroa.18.2 = select i1 %i.ex, float %.sroa.20.40.vec.extract, float %.sroa.18.1
  %i.ey = load float, ptr %i.n, align 8, !tbaa !49
  %i.ez = fsub float %.sroa.18133.2, %i.ey
  %i.fa = load float, ptr %i.p, align 8, !tbaa !49
  %i.fb = fmul float %i.ez, %i.fa
  %i.fc = fptoui float %i.fb to i16
  %i.fd = and i16 %i.fc, -2
  %i.fe = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> splat (float f0x5D5E0B6B) ; 2 uses
  %i.ff = fcmp olt <2 x float> %.sroa.9.0, %i.fe
  %i.fg = select <2 x i1> %i.ff, <2 x float> %.sroa.9.0, <2 x float> %i.fe ; 2 uses
  %i.fh = fcmp olt <2 x float> %.sroa.16.0, %i.fg
  %i.fi = select <2 x i1> %i.fh, <2 x float> %.sroa.16.0, <2 x float> %i.fg
  %i.fj = load <2 x float>, ptr %i.m, align 16, !tbaa !49
  %i.fk = fsub <2 x float> %i.fi, %i.fj
  %i.fl = load <2 x float>, ptr %i.o, align 16, !tbaa !49
  %i.fm = fmul <2 x float> %i.fk, %i.fl
  %i.fn = fptoui <2 x float> %i.fm to <2 x i16>
  %i.fo = and <2 x i16> %i.fn, splat (i16 -2)
  store <2 x i16> %i.fo, ptr %i.t, align 4, !tbaa !57
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i16 %i.fd, ptr %i.fp, align 4, !tbaa !57
  %i.fq = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.fr = load float, ptr %i.n, align 8, !tbaa !49
  %i.fs = fsub float %.sroa.18.2, %i.fr
  %i.ft = load float, ptr %i.p, align 8, !tbaa !49
  %i.fu = fmul float %i.fs, %i.ft
  %i.fv = fadd float %i.fu, 1.000000e+00
  %i.fw = fptoui float %i.fv to i16
  %i.fx = or i16 %i.fw, 1
  %i.fy = fcmp ogt <2 x float> %i.eq, splat (float f0xDD5E0B6B)
  %i.fz = select <2 x i1> %i.fy, <2 x float> %i.eq, <2 x float> splat (float f0xDD5E0B6B) ; 2 uses
  %i.ga = fcmp olt <2 x float> %i.fz, %.sroa.9.0
  %i.gb = select <2 x i1> %i.ga, <2 x float> %.sroa.9.0, <2 x float> %i.fz ; 2 uses
  %i.gc = fcmp olt <2 x float> %i.gb, %.sroa.16.0
  %i.gd = select <2 x i1> %i.gc, <2 x float> %.sroa.16.0, <2 x float> %i.gb
  %i.ge = load <2 x float>, ptr %i.m, align 16, !tbaa !49
  %i.gf = fsub <2 x float> %i.gd, %i.ge
  %i.gg = load <2 x float>, ptr %i.o, align 16, !tbaa !49
  %i.gh = fmul <2 x float> %i.gf, %i.gg
  %i.gi = fadd <2 x float> %i.gh, splat (float 1.000000e+00)
  %i.gj = fptoui <2 x float> %i.gi to <2 x i16>
  %i.gk = or <2 x i16> %i.gj, splat (i16 1)
  store <2 x i16> %i.gk, ptr %i.fq, align 2, !tbaa !57
  %i.gl = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i16 %i.fx, ptr %i.gl, align 2, !tbaa !57
  br label %.loopexit

bb.i:                                             ; preds = %.split
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !50
  br label %bb.l

bb.j:                                             ; preds = %.split
  %i.go = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !57
  %i.gq = zext i16 %i.gp to i32
  br label %bb.l

bb.k:                                             ; preds = %.split
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !49
  %i.gt = zext i8 %i.gs to i32
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k, %bb.j, %bb.i
  %.285 = phi i32 [ undef, %.split ], [ %i.gn, %bb.i ], [ %i.gq, %bb.j ], [ %i.gt, %bb.k ]
  %i.gu = mul nsw i32 %i.ap, %.285
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.ao, i64 %i.gv ; 2 uses
  %i.gx = load <2 x double>, ptr %i.gw, align 8, !tbaa !76
  %i.gy = fmul <2 x double> %i.gx, %i.en
  %i.gz = fptrunc <2 x double> %i.gy to <2 x float>
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !76
  %i.hc = fmul double %i.hb, %i.ep
  %i.hd = fptrunc double %i.hc to float
  %.sroa.3.12.vec.insert.i106 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  switch i32 %i.al, label %bb.p [
    i32 2, label %bb.o
    i32 3, label %bb.n
    i32 5, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.he = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !49
  %i.hg = zext i8 %i.hf to i32
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !57
  %i.hj = zext i16 %i.hi to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.285.1 = phi i32 [ undef, %bb.l ], [ %i.hl, %bb.o ], [ %i.hj, %bb.n ], [ %i.hg, %bb.m ]
  %i.hm = mul nsw i32 %i.ap, %.285.1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.ao, i64 %i.hn ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 8, !tbaa !76
  %i.hq = fmul <2 x double> %i.hp, %i.en
  %i.hr = fptrunc <2 x double> %i.hq to <2 x float>
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !76
  %i.hu = fmul double %i.ht, %i.ep
  %i.hv = fptrunc double %i.hu to float
  %.sroa.3.12.vec.insert.i106.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hv, i64 0
  switch i32 %i.al, label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149 [
    i32 2, label %bb.s
    i32 3, label %bb.r
    i32 5, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.hw = load i8, ptr %i.ak, align 1, !tbaa !49
  %i.hx = zext i8 %i.hw to i32
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149

bb.r:                                             ; preds = %bb.p
  %i.hy = load i16, ptr %i.ak, align 2, !tbaa !57
  %i.hz = zext i16 %i.hy to i32
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149

bb.s:                                             ; preds = %bb.p
  %i.ia = load i32, ptr %i.ak, align 4, !tbaa !50
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149

_Z8b3SetMinIfEvRT_RKS0_.exit.i.loopexit149:       ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.285.2 = phi i32 [ undef, %bb.p ], [ %i.ia, %bb.s ], [ %i.hz, %bb.r ], [ %i.hx, %bb.q ]
  %i.ib = mul nsw i32 %i.ap, %.285.2
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %i.ao, i64 %i.ic ; 2 uses
  %i.ie = load <2 x double>, ptr %i.id, align 8, !tbaa !76
  %i.if = fmul <2 x double> %i.ie, %i.en
  %i.ig = fptrunc <2 x double> %i.if to <2 x float>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !76
  %i.ij = fmul double %i.ii, %i.ep
  %i.ik = fptrunc double %i.ij to float
  br label %_Z8b3SetMinIfEvRT_RKS0_.exit.i

.loopexit.loopexit:                               ; preds = %bb.b
  %i.il = getelementptr [16 x i8], ptr %i.s, i64 %indvars.iv ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = load i32, ptr %i.im, align 4, !tbaa !61 ; 2 uses
  %i.io = getelementptr i8, ptr %i.il, i64 16
  %i.ip = sext i32 %i.in to i64
  %i.iq = sub nsw i64 %indvars.iv, %i.ip
  %i.ir = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.iq
  %i.is = icmp slt i32 %i.in, 0
  %i.it = select i1 %i.is, ptr %i.ir, ptr %i.io   ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 6
  %i.ix = load i16, ptr %i.il, align 4, !tbaa !57 ; 2 uses
  store i16 %i.ix, ptr %i.t, align 4, !tbaa !57
  %i.iy = load i16, ptr %i.it, align 2, !tbaa !57
  %spec.store.select = call i16 @llvm.umin.i16(i16 %i.ix, i16 %i.iy)
  store i16 %spec.store.select, ptr %i.t, align 4
  %i.iz = load i16, ptr %i.iu, align 2, !tbaa !57 ; 2 uses
  store i16 %i.iz, ptr %i.iv, align 2, !tbaa !57
  %i.ja = load i16, ptr %i.iw, align 2, !tbaa !57
  %spec.store.select87 = call i16 @llvm.umax.i16(i16 %i.iz, i16 %i.ja)
  store i16 %spec.store.select87, ptr %i.iv, align 2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !57 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !57
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !57
  %spec.store.select.1 = call i16 @llvm.umin.i16(i16 %i.jc, i16 %i.jf)
  store i16 %spec.store.select.1, ptr %i.jd, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !57 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i16 %i.jh, ptr %i.ji, align 4, !tbaa !57
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !57
  %spec.store.select87.1 = call i16 @llvm.umax.i16(i16 %i.jh, i16 %i.jk)
  store i16 %spec.store.select87.1, ptr %i.ji, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.jm = load i16, ptr %i.jl, align 4, !tbaa !57 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store i16 %i.jm, ptr %i.jn, align 4, !tbaa !57
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !57
  %spec.store.select.2 = call i16 @llvm.umin.i16(i16 %i.jm, i16 %i.jp)
  store i16 %spec.store.select.2, ptr %i.jn, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.il, i64 10
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !57 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.t, i64 10 ; 2 uses
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !57
  %i.jt = getelementptr inbounds nuw i8, ptr %i.it, i64 10
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !57
  %spec.store.select87.2 = call i16 @llvm.umax.i16(i16 %i.jr, i16 %i.ju)
  store i16 %spec.store.select87.2, ptr %i.js, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_Z8b3SetMinIfEvRT_RKS0_.exit.i
  %.2 = phi i32 [ %.1, %_Z8b3SetMinIfEvRT_RKS0_.exit.i ], [ %.083145, %.loopexit.loopexit ] ; 3 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.r
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.loopexit
  %i.jv = icmp sgt i32 %.2, -1
  br i1 %i.jv, label %bb.t, label %._crit_edge.thread

bb.t:                                             ; preds = %._crit_edge
  %i.jw = load ptr, ptr %1, align 16, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 16 dereferenceable(32) %1, i32 noundef %.2)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14b3OptimizedBvh12refitPartialEP23b3StridingMeshInterfaceRK9b3Vector3S4_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(252) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %2, align 16, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !49
  %i.g = load <3 x float>, ptr %i.a, align 16, !tbaa !49 ; 2 uses
  %i.h = shufflevector <3 x float> %i.g, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.i = load <3 x float>, ptr %i.d, align 16, !tbaa !49 ; 2 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.k = load <4 x float>, ptr %3, align 16
  %i.l = insertelement <4 x float> poison, float %i.f, i64 2
  %i.m = insertelement <4 x float> %i.l, float %i.b, i64 3
  %i.n = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.o = fsub <4 x float> %i.n, %i.h
  %i.p = fmul <4 x float> %i.o, %i.j
  %i.q = fadd <4 x float> %i.p, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %i.r = fptoui <4 x float> %i.q to <4 x i16>     ; 2 uses
  %i.s = load <2 x float>, ptr %i.c, align 4, !tbaa !49
  %i.t = shufflevector <3 x float> %i.g, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.u = fsub <2 x float> %i.s, %i.t
  %i.v = shufflevector <3 x float> %i.i, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = fptoui <2 x float> %i.w to <2 x i16>
  %i.y = and <2 x i16> %i.x, splat (i16 -2)
  %i.z = or <4 x i16> %i.r, <i16 1, i16 1, i16 1, i16 poison>
  %i.aa = and <4 x i16> %i.r, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.ab = shufflevector <4 x i16> %i.z, <4 x i16> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.ah = phi i32 [ %i.ad, %.lr.ph ], [ %i.bt, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load <2 x i16>, ptr %i.ak, align 2, !tbaa !57
  %i.am = icmp ugt <2 x i16> %i.y, %i.al          ; 2 uses
  %i.an = load <4 x i16>, ptr %i.aj, align 2, !tbaa !57 ; 2 uses
  %i.ao = icmp ult <4 x i16> %i.ab, %i.an
  %i.ap = icmp ugt <4 x i16> %i.ab, %i.an
  %i.aq = shufflevector <4 x i1> %i.ao, <4 x i1> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ar = bitcast <4 x i1> %i.aq to i4
  %i.as = icmp ne i4 %i.ar, 0
  %i.at = extractelement <2 x i1> %i.am, i64 1
  %op.rdx = or i1 %i.as, %i.at
  %i.au = extractelement <2 x i1> %i.am, i64 0
  %op.rdx29 = or i1 %op.rdx, %i.au
  br i1 %op.rdx29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !59 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !63
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @_ZN14b3OptimizedBvh14updateBvhNodesEP23b3StridingMeshInterfaceiii(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, i32 noundef %i.ba, i32 noundef %i.bd, i32 poison)
  %i.be = load i32, ptr %i.az, align 4, !tbaa !59
  %i.bf = load ptr, ptr %i.ag, align 16, !tbaa !34
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg ; 6 uses
  %i.bi = load i16, ptr %i.bh, align 16, !tbaa !57
  store i16 %i.bi, ptr %i.aj, align 16, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !57
  store i16 %i.bk, ptr %i.av, align 2, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !57
  store i16 %i.bm, ptr %i.aw, align 4, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !57
  store i16 %i.bo, ptr %i.ay, align 2, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !57
  store i16 %i.bq, ptr %i.ak, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !57
  store i16 %i.bs, ptr %i.ax, align 2, !tbaa !57
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = phi i32 [ %.pre, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.b, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN14b3OptimizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN14b3QuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  ret ptr %i.a
}

declare noundef ptr @_ZN14b3QuantizedBvh18deSerializeInPlaceEPvjb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK14b3QuantizedBvh9serializeEPvjb(ptr noundef nonnull align 16 dereferenceable(252), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14b3QuantizedBvh31calculateSerializeBufferSizeNewEv(ptr noundef nonnull align 16 dereferenceable(252) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 96
}

declare noundef ptr @_ZNK14b3QuantizedBvh9serializeEPvP12b3Serializer(ptr noundef nonnull align 16 dereferenceable(252), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN14b3QuantizedBvh16deSerializeFloatER23b3QuantizedBvhFloatData(ptr noundef nonnull align 16 dereferenceable(252), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare void @_ZN14b3QuantizedBvh17deSerializeDoubleER24b3QuantizedBvhDoubleData(ptr noundef nonnull align 16 dereferenceable(252), ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14b3OptimizedBvh16serializeInPlaceEPvjb(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK14b3QuantizedBvh9serializeEPvjb(ptr noundef nonnull align 16 dereferenceable(252) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN29QuantizedNodeTriangleCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN31b3InternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN14b3OptimizedBvh5buildEP23b3StridingMeshInterfacebRK9b3Vector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 {
_Z8b3SetMinIfEvRT_RKS0_.exit.i:
  %4 = alloca %struct.b3QuantizedBvhNode, align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = load float, ptr %1, align 4, !tbaa !74   ; 4 uses
  %i.b = fcmp olt float %i.a, f0x5D5E0B6B
  %.sroa.046.1 = select i1 %i.b, float %i.a, float f0x5D5E0B6B ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = fcmp ogt float %i.a, f0xDD5E0B6B
  %.sroa.0.1 = select i1 %i.d, float %i.a, float f0xDD5E0B6B ; 2 uses
end_hunk_0
