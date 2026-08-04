inline.NumInlined: 92
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN22btMultiBodyPoint2PointC2EP11btMultiBodyiS1_iRK9btVector3S4_:bb.a
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29
  store float %i.af, ptr %i.ad, align 4, !tbaa !29
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.1
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !29
  store float %i.ai, ptr %i.ag, align 4, !tbaa !29
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.2
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.2
  %i.al = load float, ptr %i.ak, align 4, !tbaa !29
  store float %i.al, ptr %i.aj, align 4, !tbaa !29
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !42

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %.noexc
  %.not.i5.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i unwind label %bb.e

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ap, align 8, !tbaa !37
  store ptr %i.j, ptr %i.l, align 8, !tbaa !28
  store i32 3, ptr %i.g, align 8, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.aq = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.j, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ar = sext i32 %i.e to i64
  %i.as = shl nsw i64 %i.ar, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aq, i64 %i.as
  %i.at = sub nsw i64 12, %i.as
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.at, i1 false), !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  store i32 3, ptr %i.d, align 4, !tbaa !26
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #13
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN22btMultiBodyPoint2Point16finalizeMultiDofEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22btMultiBodyPoint2PointD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22btMultiBodyPoint2PointD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(144) %0) #13
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN22btMultiBodyPoint2PointdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #14
  unreachable

_ZN22btMultiBodyPoint2PointdlEPv.exit:            ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK22btMultiBodyPoint2Point12getIslandIdAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not11.not = icmp eq ptr %i.i, null
  br i1 %.not11.not, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = zext nneg i32 %i.f to i64
  %i.m = getelementptr inbounds nuw [688 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.e, %bb.d, %bb.a
  %.sink17 = phi ptr [ %i.b, %bb.a ], [ %i.i, %bb.d ], [ %i.o, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink17, i64 228
  %i.q = load i32, ptr %i.p, align 4, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.b, %bb.e
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.d ], [ %i.q, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK22btMultiBodyPoint2Point12getIslandIdBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !77   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not11.not = icmp eq ptr %i.i, null
  br i1 %.not11.not, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = zext nneg i32 %i.f to i64
  %i.m = getelementptr inbounds nuw [688 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.e, %bb.d, %bb.a
  %.sink17 = phi ptr [ %i.b, %bb.a ], [ %i.i, %bb.d ], [ %i.o, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink17, i64 228
  %i.q = load i32, ptr %i.p, align 4, !tbaa !68
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.b, %bb.e
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.d ], [ %i.q, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22btMultiBodyPoint2Point20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #7 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 8 uses
  %5 = alloca %class.btVector3, align 8           ; 8 uses
  %6 = alloca %class.btVector3, align 8           ; 9 uses
  %7 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.c

bb.b:                                             ; preds = %bb.q
  ret void

bb.c:                                             ; preds = %bb.a, %bb.q
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !78   ; 8 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !82
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.z = shl nsw i32 %i.w, 1
  %i.aa = select i1 %.not.i.i, i32 1, i32 %i.z    ; 4 uses
  %i.ab = icmp slt i32 %i.w, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = sext i32 %i.aa to i64
  %i.ad = mul nsw i64 %i.ac, 224
  %i.ae = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ad, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.af = phi i32 [ %.pre.i, %bb.f ], [ %i.w, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ae, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.af to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ah = icmp eq i32 %i.af, 1
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.ai = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw [224 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ai, ptr noundef nonnull align 8 dereferenceable(224) %i.ak, i64 224, i1 false), !tbaa.struct !84
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw [224 x i8], ptr %i.am, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.al, ptr noundef nonnull align 8 dereferenceable(224) %i.an, i64 224, i1 false), !tbaa.struct !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !89

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.ao = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw [224 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ao, ptr noundef nonnull align 8 dereferenceable(224) %i.aq, i64 224, i1 false), !tbaa.struct !84
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !83  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.as = load i8, ptr %i.d, align 8, !tbaa !90, !range !38, !noundef !39
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ar)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.d, align 8, !tbaa !90
  store ptr %.0.i.i.i, ptr %i.c, align 8, !tbaa !83
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !82
  %.pre2.i = load i32, ptr %i.a, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.c, %bb.d, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.au = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.w, %bb.d ], [ %i.w, %bb.c ]
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.a, align 4, !tbaa !78
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ax = sext i32 %i.w to i64
  %i.ay = getelementptr inbounds [224 x i8], ptr %i.aw, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  store ptr %0, ptr %i.az, align 8, !tbaa !91
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 216
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bb, ptr %i.ba, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.bc, i8 0, i64 96, i1 false)
  %i.bd = load i32, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 168 ; 2 uses
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 188 ; 2 uses
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store float -1.000000e+00, ptr %i.bg, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !24
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !11  ; 11 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !99
  store i32 %i.bj, ptr %i.be, align 8, !tbaa !97
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bn = load float, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.bo = load float, ptr %i.j, align 4, !tbaa !29 ; 2 uses
  %i.bp = load float, ptr %i.k, align 8, !tbaa !29 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.br = load float, ptr %i.bq, align 8, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !29
  %i.bu = load float, ptr %i.bm, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = fmul float %i.bo, %i.bw
  %i.by = call float @llvm.fmuladd.f32(float %i.bn, float %i.bu, float %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !29
  %i.cb = call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.ca, float %i.by)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.cd = load <2 x float>, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.bl, align 8, !tbaa !29 ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.ci = fmul <2 x float> %i.cg, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.ci)
  %i.cn = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cq = insertelement <2 x float> %i.cp, float %i.bt, i64 1
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.cq, <2 x float> %i.cm)
  %i.cs = load <2 x float>, ptr %i.cc, align 8, !tbaa !29
  %i.ct = fadd <2 x float> %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !29
  %i.cw = fadd float %i.cb, %i.cv
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cw, i64 0
  br label %.sink.split

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !43  ; 2 uses
  %.not35 = icmp eq ptr %i.cx, null
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load i32, ptr %i.m, align 8, !tbaa !44
  %i.cz = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.cx, i32 noundef %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %i.h) ; 2 uses
  %i.da = extractvalue { <2 x float>, <2 x float> } %i.cz, 0
  %i.db = extractvalue { <2 x float>, <2 x float> } %i.cz, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.l
  %.sink82 = phi <2 x float> [ %i.da, %bb.l ], [ %i.ct, %bb.j ]
  %.sink = phi <2 x float> [ %i.db, %bb.l ], [ %.sroa.3.12.vec.insert.i4.i.i, %bb.j ]
  store <2 x float> %.sink82, ptr %5, align 8
  store <2 x float> %.sink, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !24
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !23  ; 11 uses
  %.not36 = icmp eq ptr %i.dc, null
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 232
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !99
  store i32 %i.de, ptr %i.bf, align 4, !tbaa !98
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.di = load float, ptr %i.n, align 8, !tbaa !29 ; 2 uses
  %i.dj = load float, ptr %i.df, align 8, !tbaa !29
  %i.dk = load float, ptr %i.p, align 4, !tbaa !29 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !29
  %i.dn = fmul float %i.dk, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.di, float %i.dj, float %i.dn)
  %i.dp = load float, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !29
  %i.ds = call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.dr, float %i.do)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.du = load float, ptr %i.dt, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !29
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !29
  %i.dz = fadd float %i.ds, %i.dy                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 60
  %i.eb = load <2 x float>, ptr %i.dg, align 8, !tbaa !29 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dh, align 8, !tbaa !29 ; 2 uses
  %i.ed = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.eg = fmul <2 x float> %i.ee, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x float> %i.eb, <2 x float> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eg)
  %i.el = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x float> poison, float %i.du, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.dw, i64 1
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.eo, <2 x float> %i.ek)
  %i.eq = load <2 x float>, ptr %i.ea, align 4, !tbaa !29
  %i.er = fadd <2 x float> %i.ep, %i.eq           ; 3 uses
  %.sroa.0.0.vec.insert.i2.i.i38 = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.es = shufflevector <2 x float> %.sroa.0.0.vec.insert.i2.i.i38, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.et = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.er, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.es, ptr %6, align 8
  store <2 x float> %i.et, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !25
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.r, align 8, !tbaa !76  ; 2 uses
  %.not37 = icmp eq ptr %i.eu, null
  br i1 %.not37, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.o
  %.pre = load float, ptr %6, align 8, !tbaa !29
  %i.ev = load <2 x float>, ptr %i.u, align 4, !tbaa !29
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ew = load i32, ptr %i.s, align 4, !tbaa !77
  %i.ex = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.eu, i32 noundef %i.ew, ptr noundef nonnull align 4 dereferenceable(16) %i.n) ; 2 uses
  %i.ey = extractvalue { <2 x float>, <2 x float> } %i.ex, 0 ; 3 uses
  %i.ez = extractvalue { <2 x float>, <2 x float> } %i.ex, 1 ; 2 uses
  store <2 x float> %i.ey, ptr %6, align 8
  store <2 x float> %i.ez, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !25
  %i.fa = extractelement <2 x float> %i.ey, i64 0
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> %i.ez, <2 x i32> <i32 1, i32 2>
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p, %bb.n
  %i.fc = phi float [ %.pre, %._crit_edge ], [ %i.fa, %bb.p ], [ %i.dz, %bb.n ]
  %i.fd = phi <2 x float> [ %i.ev, %._crit_edge ], [ %i.fb, %bb.p ], [ %i.er, %bb.n ] ; 2 uses
  %i.fe = load float, ptr %5, align 8, !tbaa !29
  %i.ff = fsub float %i.fe, %i.fc
  %8 = load float, ptr %i.t, align 4, !tbaa !29
  %9 = extractelement <2 x float> %i.fd, i64 0
  %10 = fsub float %8, %9
  %i.fg = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !29
  %11 = extractelement <2 x float> %i.fd, i64 1
  %12 = fsub float %i.fg, %11
  %i.fh = load float, ptr %4, align 4, !tbaa !29
  %13 = load float, ptr %i.f, align 4, !tbaa !29
  %i.fi = fmul float %10, %13
  %i.fj = call float @llvm.fmuladd.f32(float %i.ff, float %i.fh, float %i.fi)
  %i.fk = load float, ptr %i.g, align 4, !tbaa !29
  %i.fl = call noundef float @llvm.fmuladd.f32(float %12, float %i.fk, float %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.fm = load float, ptr %i.v, align 4, !tbaa !100 ; 2 uses
  %i.fn = fneg float %i.fm
  %i.fo = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.ay, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %i.fl, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %i.fn, float noundef %i.fm, i1 noundef zeroext false, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101
}

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(220), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef, float noundef, i1 noundef zeroext, float noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22btMultiBodyPoint2Point9debugDrawEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store float 1.000000e+00, ptr %2, align 4, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 10 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load float, ptr %i.i, align 8, !tbaa !29 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load float, ptr %i.m, align 4, !tbaa !29 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load float, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !29
  %i.u = load float, ptr %i.k, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.w = load float, ptr %i.v, align 4, !tbaa !29
  %i.x = fmul float %i.n, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aa, float %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.j, align 4, !tbaa !29 ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.ai)
  %i.an = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.r, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.t, i64 1
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.aq, <2 x float> %i.am)
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !29
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.av = load float, ptr %i.au, align 4, !tbaa !29
  %i.aw = fadd float %i.ab, %i.av
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.at, ptr %i.ax, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.418.0..sroa_idx, align 4, !tbaa !25
  %i.ay = load ptr, ptr %1, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %.not5 = icmp eq ptr %i.bc, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.bc, i32 noundef %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bf) ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.bh, ptr %i.bj, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.bi, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !25
  %i.bk = load ptr, ptr %1, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 10 uses
  %.not6 = icmp eq ptr %i.bo, null
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bt = load float, ptr %i.bq, align 8, !tbaa !29 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !29 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !29 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = load float, ptr %i.bs, align 4, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !29
  %i.cf = fmul float %i.bv, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.bt, float %i.cc, float %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !29
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ci, float %i.cg)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.cl = load <2 x float>, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !29 ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cq = fmul <2 x float> %i.co, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.cq)
  %i.cv = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cb, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cu)
  %i.da = load <2 x float>, ptr %i.ck, align 4, !tbaa !29
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !29
  %i.de = fadd float %i.cj, %i.dd
  %.sroa.3.12.vec.insert.i4.i.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.db, ptr %i.df, align 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i10, ptr %.sroa.414.0..sroa_idx, align 4, !tbaa !25
  %i.dg = load ptr, ptr %1, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !76 ; 2 uses
  %.not7 = icmp eq ptr %i.dk, null
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.do = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.dk, i32 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.dn) ; 2 uses
  %i.dp = extractvalue { <2 x float>, <2 x float> } %i.do, 0
  %i.dq = extractvalue { <2 x float>, <2 x float> } %i.do, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.dp, ptr %i.dr, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.dq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  %i.ds = load ptr, ptr %1, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_0
