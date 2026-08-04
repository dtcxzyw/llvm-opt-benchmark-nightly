inline.NumInlined: 137
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN17btConvexHullShapeC2EPKfii:bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ae, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.at) #17
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %0) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN34btPolyhedralConvexAabbCachingShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(113)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(113)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !26
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btConvexHullShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(152) initializes((32, 48)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  tail call void @_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btConvexHullShape8addPointERK9btVector3b(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 4
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !22
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !22
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !24

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !22
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !11, !range !26, !noundef !27
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.ad, align 8, !tbaa !11
  store ptr %.0.i.i.i, ptr %i.y, align 8, !tbaa !17
  store i32 %i.g, ptr %i.c, align 8, !tbaa !19
  %.pre2.i = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.ae = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
  tail call void @_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load float, ptr %1, align 4, !tbaa !28
  %i.f = load float, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %i.g = fmul float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load <2 x float>, ptr %i.h, align 4, !tbaa !28
  %2 = load <2 x float>, ptr %i.i, align 4, !tbaa !28 ; 2 uses
  %3 = fmul <2 x float> %i.j, %2                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = zext nneg i32 %i.b to i64
  %4 = extractelement <2 x float> %3, i64 0
  %5 = extractelement <2 x float> %3, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.019.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01218.i = phi i32 [ -1, %.lr.ph.i ], [ %.113.i, %bb.b ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv.i ; 3 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !28
  %i.r = fmul float %4, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.g, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !28
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %5, float %i.s) ; 2 uses
  %i.w = fcmp ogt float %i.v, %.019.i             ; 2 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  %.113.i = select i1 %i.w, i32 %i.x, i32 %.01218.i ; 2 uses
  %.1.i = select i1 %i.w, float %i.v, float %.019.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %_ZNK9btVector36maxDotEPKS_lRf.exit, label %bb.b, !llvm.loop !31

_ZNK9btVector36maxDotEPKS_lRf.exit:               ; preds = %bb.b
  %i.y = sext i32 %.113.i to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !28
  %i.ab = fmul float %i.f, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !28
  %i.ae = fmul <2 x float> %2, %i.ad              ; 2 uses
  %.sroa.0.0.vec.insert.i2 = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ae, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i5 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.af, 0
  %.fca.1.insert.i6 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i5, <2 x float> %i.ag, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNK9btVector36maxDotEPKS_lRf.exit
  %.fca.1.insert.merged = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i6, %_ZNK9btVector36maxDotEPKS_lRf.exit ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, <2 x float> } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph21.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph21.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph21.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float f0xDD5E0B6B, ptr %i.d, align 4, !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph21, label %.lr.ph.epil, !llvm.loop !32

.lr.ph21:                                         ; preds = %.lr.ph.epil, %.lr.ph21.unr-lcssa
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load i32, ptr %i.g, align 4, !tbaa !18
  %i.j = icmp sgt i32 %i.i, 0
  %wide.trip.count32 = zext nneg i32 %3 to i64
  br i1 %i.j, label %.lr.ph21.split, label %.lr.ph21.split.us.preheader

.lr.ph21.split.us.preheader:                      ; preds = %.lr.ph21
  %xtraiter41 = and i64 %wide.trip.count, 7       ; 3 uses
  %i.k = icmp ult i32 %3, 8
  br i1 %i.k, label %.lr.ph21.split.us.epil.preheader, label %.lr.ph21.split.us.preheader.new

.lr.ph21.split.us.preheader.new:                  ; preds = %.lr.ph21.split.us.preheader
  %unroll_iter45 = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph21.split.us

.lr.ph21.split.us:                                ; preds = %.lr.ph21.split.us, %.lr.ph21.split.us.preheader.new
  %indvars.iv24 = phi i64 [ 0, %.lr.ph21.split.us.preheader.new ], [ %indvars.iv.next25.7, %.lr.ph21.split.us ] ; 9 uses
  %niter46 = phi i64 [ 0, %.lr.ph21.split.us.preheader.new ], [ %niter46.next.7, %.lr.ph21.split.us ]
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float f0xDD5E0B6B, ptr %i.m, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store float f0xDD5E0B6B, ptr %i.o, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store float f0xDD5E0B6B, ptr %i.q, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store float f0xDD5E0B6B, ptr %i.s, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  store float f0xDD5E0B6B, ptr %i.u, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  store float f0xDD5E0B6B, ptr %i.w, align 4, !tbaa !28
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  store float f0xDD5E0B6B, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 124
  store float f0xDD5E0B6B, ptr %i.aa, align 4, !tbaa !28
  %indvars.iv.next25.7 = add nuw nsw i64 %indvars.iv24, 8 ; 2 uses
  %niter46.next.7 = add i64 %niter46, 8           ; 2 uses
  %niter46.ncmp.7 = icmp eq i64 %niter46.next.7, %unroll_iter45
  br i1 %niter46.ncmp.7, label %._crit_edge.loopexit39.unr-lcssa, label %.lr.ph21.split.us, !llvm.loop !34

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store float f0xDD5E0B6B, ptr %i.ac, align 4, !tbaa !28
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store float f0xDD5E0B6B, ptr %i.ae, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store float f0xDD5E0B6B, ptr %i.ag, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  store float f0xDD5E0B6B, ptr %i.ai, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  store float f0xDD5E0B6B, ptr %i.ak, align 4, !tbaa !28
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 92
  store float f0xDD5E0B6B, ptr %i.am, align 4, !tbaa !28
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 108
  store float f0xDD5E0B6B, ptr %i.ao, align 4, !tbaa !28
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 124
  store float f0xDD5E0B6B, ptr %i.aq, align 4, !tbaa !28
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph21.unr-lcssa, label %.lr.ph, !llvm.loop !35

._crit_edge.loopexit39.unr-lcssa:                 ; preds = %.lr.ph21.split.us
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %._crit_edge, label %.lr.ph21.split.us.epil.preheader

.lr.ph21.split.us.epil.preheader:                 ; preds = %._crit_edge.loopexit39.unr-lcssa, %.lr.ph21.split.us.preheader
  %indvars.iv24.epil.init = phi i64 [ 0, %.lr.ph21.split.us.preheader ], [ %indvars.iv.next25.7, %._crit_edge.loopexit39.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter41, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph21.split.us.epil

.lr.ph21.split.us.epil:                           ; preds = %.lr.ph21.split.us.epil, %.lr.ph21.split.us.epil.preheader
  %indvars.iv24.epil = phi i64 [ %indvars.iv.next25.epil, %.lr.ph21.split.us.epil ], [ %indvars.iv24.epil.init, %.lr.ph21.split.us.epil.preheader ] ; 2 uses
  %epil.iter42 = phi i64 [ %epil.iter42.next, %.lr.ph21.split.us.epil ], [ 0, %.lr.ph21.split.us.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv24.epil
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store float f0xDD5E0B6B, ptr %i.as, align 4, !tbaa !28
  %indvars.iv.next25.epil = add nuw nsw i64 %indvars.iv24.epil, 1
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %._crit_edge, label %.lr.ph21.split.us.epil, !llvm.loop !36

._crit_edge:                                      ; preds = %._crit_edge.loopexit39.unr-lcssa, %.lr.ph21.split.us.epil, %bb.c, %bb.a
  ret void

.lr.ph21.split:                                   ; preds = %.lr.ph21, %bb.c
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %bb.c ], [ 0, %.lr.ph21 ] ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv29 ; 3 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !28
  %i.ax = load <2 x float>, ptr %i.e, align 8, !tbaa !28 ; 3 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = fmul float %i.au, %i.ay
  %i.ba = extractelement <2 x float> %i.ax, i64 1
  %i.bb = fmul float %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !28
  %i.be = load float, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !18  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph21.split
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !17  ; 2 uses
  %i.bj = zext nneg i32 %i.bg to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.019.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.1.i, %bb.b ] ; 2 uses
  %.01218.i = phi i32 [ -1, %.lr.ph.i ], [ %.113.i, %bb.b ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i ; 3 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !28
  %i.bo = fmul float %i.bb, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.az, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !28
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.bf, float %i.bp) ; 2 uses
  %i.bt = fcmp ogt float %i.bs, %.019.i           ; 2 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv.i to i32
  %.113.i = select i1 %i.bt, i32 %i.bu, i32 %.01218.i ; 2 uses
  %.1.i = select i1 %i.bt, float %i.bs, float %.019.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bj
  br i1 %exitcond.not.i, label %_ZNK9btVector36maxDotEPKS_lRf.exit, label %bb.b, !llvm.loop !31
end_hunk_0
