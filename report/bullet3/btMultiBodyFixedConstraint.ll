inline.NumInlined: 208
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN26btMultiBodyFixedConstraintC2EP11btMultiBodyiS1_iRK9btVector3S4_RK11btMatrix3x3S7_:bb.a
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.av = load float, ptr %i.au, align 4, !tbaa !30
  store float %i.av, ptr %i.at, align 4, !tbaa !30
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !43

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %.noexc
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !38, !range !39, !noundef !40
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.d, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i unwind label %bb.e

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.az, align 8, !tbaa !38
  store ptr %i.t, ptr %i.v, align 8, !tbaa !29
  store i32 6, ptr %i.q, align 8, !tbaa !28
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.ba = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.t, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.bb = sext i32 %i.o to i64
  %i.bc = shl nsw i64 %i.bb, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ba, i64 %i.bc
  %i.bd = sub nsw i64 24, %i.bc
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  store i32 6, ptr %i.n, align 4, !tbaa !27
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #14
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN26btMultiBodyFixedConstraint16finalizeMultiDofEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN26btMultiBodyFixedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN26btMultiBodyFixedConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btMultiBodyConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(240) %0) #14
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN21btMultiBodyConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN21btMultiBodyConstraintdlEPv.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK26btMultiBodyFixedConstraint12getIslandIdAEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 3 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
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
define dso_local noundef i32 @_ZNK26btMultiBodyFixedConstraint12getIslandIdBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
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
define dso_local void @_ZN26btMultiBodyFixedConstraint20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #7 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 10 uses
  %5 = alloca %class.btMatrix3x3, align 16        ; 17 uses
  %6 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %7 = alloca %class.btVector3, align 8           ; 10 uses
  %8 = alloca %class.btMatrix3x3, align 16        ; 16 uses
  %9 = alloca %class.btMatrix3x3, align 4         ; 6 uses
  %10 = alloca %class.btMatrix3x3, align 4        ; 10 uses
  %11 = alloca %class.btVector3, align 4          ; 4 uses
  %12 = alloca %class.btVector3, align 4          ; 9 uses
  %13 = alloca %class.btVector3, align 8          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.c

bb.b:                                             ; preds = %bb.t
  ret void

bb.c:                                             ; preds = %bb.a, %bb.t
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.t ] ; 5 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !78  ; 8 uses
  %i.be = load i32, ptr %i.b, align 8, !tbaa !82
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.bd, 0
  %i.bg = shl nsw i32 %i.bd, 1
  %i.bh = select i1 %.not.i.i, i32 1, i32 %i.bg   ; 4 uses
  %i.bi = icmp slt i32 %i.bd, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = sext i32 %i.bh to i64
  %i.bk = mul nsw i64 %i.bj, 224
  %i.bl = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bk, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.bm = phi i32 [ %.pre.i, %bb.f ], [ %i.bd, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bl, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bo = icmp eq i32 %i.bm, 1
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.bp = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw [224 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bp, ptr noundef nonnull align 8 dereferenceable(224) %i.br, i64 224, i1 false), !tbaa.struct !84
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw [224 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bs, ptr noundef nonnull align 8 dereferenceable(224) %i.bu, i64 224, i1 false), !tbaa.struct !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !89

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i32 %i.bm to i1
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.bv = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.bx = getelementptr inbounds nuw [224 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull align 8 dereferenceable(224) %i.bx, i64 224, i1 false), !tbaa.struct !84
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !83  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.bz = load i8, ptr %i.d, align 8, !tbaa !90, !range !39, !noundef !40
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.by)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.d, align 8, !tbaa !90
  store ptr %.0.i.i.i, ptr %i.c, align 8, !tbaa !83
  store i32 %i.bh, ptr %i.b, align 8, !tbaa !82
  %.pre2.i = load i32, ptr %i.a, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.c, %bb.d, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.cb = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.bd, %bb.d ], [ %i.bd, %bb.c ]
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !78
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ce = sext i32 %i.bd to i64
  %i.cf = getelementptr inbounds [224 x i8], ptr %i.cd, i64 %i.ce ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 208
  store ptr %0, ptr %i.cg, align 8, !tbaa !91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 216
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ci, ptr %i.ch, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.cj, i8 0, i64 96, i1 false)
  %i.ck = load i32, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 168 ; 2 uses
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 188 ; 2 uses
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !25
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !11  ; 12 uses
  %.not = icmp eq ptr %i.cn, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !99
  store i32 %i.cp, ptr %i.cl, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.ct = load float, ptr %i.f, align 8, !tbaa !30 ; 2 uses
  %i.cu = load float, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.cv = load float, ptr %i.n, align 8, !tbaa !30 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !30
  %i.da = load float, ptr %i.cs, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.dc = load float, ptr %i.db, align 4, !tbaa !30
  %i.dd = fmul float %i.cu, %i.dc
  %i.de = call float @llvm.fmuladd.f32(float %i.ct, float %i.da, float %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.dg = load float, ptr %i.df, align 8, !tbaa !30
  %i.dh = call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.dg, float %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.dj = load <2 x float>, ptr %i.cq, align 8, !tbaa !30 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.cr, align 8, !tbaa !30 ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.do = fmul <2 x float> %i.dm, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dr, <2 x float> %i.do)
  %i.dt = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.cz, i64 1
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.ds)
  %i.dy = load <2 x float>, ptr %i.di, align 8, !tbaa !30
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !30
  %i.ec = fadd float %i.dh, %i.eb
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  store <2 x float> %i.dz, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !26
  %i.ed = load float, ptr %5, align 16, !tbaa !30, !noalias !100
  %i.ee = load float, ptr %i.i, align 16, !tbaa !30, !noalias !100
  %i.ef = load float, ptr %i.k, align 16, !tbaa !30, !noalias !100
  %i.eg = load float, ptr %i.o, align 4, !tbaa !30, !noalias !100
  %i.eh = load float, ptr %i.p, align 4, !tbaa !30, !noalias !100
end_hunk_0
begin_hunk_1_@_ZN26btMultiBodyFixedConstraint20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo:bb.a
  %i.ke = fmul float %.sroa.062.0.vec.extract, %i.kc ; 2 uses
  %i.kf = fmul <2 x float> %i.jn, %i.jz           ; 2 uses
  %i.kg = fmul float %.sroa.062.4.vec.extract, %i.ju ; 2 uses
  %i.kh = fmul float %.sroa.563.8.vec.extract, %i.ju ; 2 uses
  %i.ki = extractelement <2 x float> %i.kf, i64 1 ; 2 uses
  %i.kj = fadd float %i.ki, %i.kh
  %i.kk = fsub float 1.000000e+00, %i.kj
  %i.kl = fsub float %i.ke, %i.jv
  %i.km = fadd float %i.jw, %i.kd
  %i.kn = fadd float %i.ke, %i.jv
  %i.ko = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.kp = fadd float %i.ko, %i.kh
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = fsub float %i.kg, %i.kb
  %i.ks = fsub float %i.jw, %i.kd
  %i.kt = fadd float %i.kg, %i.kb
  %i.ku = fadd float %i.ko, %i.ki
  %i.kv = fsub float 1.000000e+00, %i.ku
  %i.kw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.je, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ky = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.kn, i64 0
  %i.kz = insertelement <4 x float> %i.ky, float %i.kq, i64 1
  %i.la = insertelement <4 x float> %i.kz, float %i.kr, i64 2 ; 3 uses
  %i.lb = fmul <4 x float> %i.kx, %i.la
  %i.lc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.kk, i64 0
  %i.ld = insertelement <4 x float> %i.lc, float %i.kl, i64 1
  %i.le = insertelement <4 x float> %i.ld, float %i.km, i64 2 ; 3 uses
  %i.lf = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jd, i64 0
  %i.lg = shufflevector <4 x float> %i.lf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lg, <4 x float> %i.lb)
  %i.li = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ks, i64 0
  %i.lj = insertelement <4 x float> %i.li, float %i.kt, i64 1
  %i.lk = insertelement <4 x float> %i.lj, float %i.kv, i64 2 ; 3 uses
  %i.ll = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jf, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ln = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lk, <4 x float> %i.lm, <4 x float> %i.lh)
  store <4 x float> %i.ln, ptr %8, align 16
  %i.lo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.jh, i64 0
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lq = fmul <4 x float> %i.lp, %i.la
  %i.lr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jg, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.ls, <4 x float> %i.lq)
  %i.lu = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ji, i64 0
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lk, <4 x float> %i.lv, <4 x float> %i.lt)
  store <4 x float> %i.lw, ptr %i.ab, align 16
  %i.lx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.jk, i64 0
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lz = fmul <4 x float> %i.ly, %i.la
  %i.ma = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jj, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.mb, <4 x float> %i.lz)
  %i.md = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.jl, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lk, <4 x float> %i.me, <4 x float> %i.mc)
  store <4 x float> %i.mf, ptr %i.ad, align 16
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.mg = load ptr, ptr %i.an, align 8, !tbaa !76 ; 2 uses
  %.not45 = icmp eq ptr %i.mg, null
  br i1 %.not45, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mh = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.mi = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.mg, i32 noundef %i.mh, ptr noundef nonnull align 4 dereferenceable(16) %i.y) ; 2 uses
  %i.mj = extractvalue { <2 x float>, <2 x float> } %i.mi, 0
  %i.mk = extractvalue { <2 x float>, <2 x float> } %i.mi, 1
  store <2 x float> %i.mj, ptr %7, align 8
  store <2 x float> %i.mk, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ml = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.mm = load i32, ptr %i.ao, align 4, !tbaa !77
  call void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind nonnull writable sret(%class.btMatrix3x3) align 4 %9, ptr noundef nonnull align 8 dereferenceable(640) %i.ml, i32 noundef %i.mm, ptr noundef nonnull align 4 dereferenceable(48) %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %8, ptr noundef nonnull align 4 dereferenceable(48) %9, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !30, !alias.scope !106
  %i.mn = load float, ptr %i.ab, align 16, !tbaa !30, !noalias !106 ; 3 uses
  %i.mo = load float, ptr %8, align 16, !tbaa !30, !noalias !106 ; 3 uses
  %i.mp = load <2 x float>, ptr %i.ad, align 16, !tbaa !30, !noalias !106 ; 3 uses
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mr = insertelement <4 x float> %i.mq, float 0.000000e+00, i64 3
  %i.ms = load <2 x float>, ptr %i.ai, align 4, !tbaa !30, !noalias !106 ; 3 uses
  %i.mt = load <2 x float>, ptr %i.ah, align 4, !tbaa !30, !noalias !106 ; 3 uses
  %i.mu = load <2 x float>, ptr %i.aj, align 4, !tbaa !30, !noalias !106 ; 4 uses
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mr, <4 x float> %i.mv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.mx = load float, ptr %i.s, align 8, !tbaa !30, !noalias !109 ; 2 uses
  %i.my = load <2 x float>, ptr %i.p, align 4, !tbaa !30, !noalias !109 ; 2 uses
  %i.mz = load float, ptr %i.t, align 8, !tbaa !30, !noalias !109 ; 2 uses
  %i.na = load <2 x float>, ptr %i.q, align 4, !tbaa !30, !noalias !109 ; 2 uses
  %i.nb = load <2 x float>, ptr %i.k, align 16, !tbaa !30, !noalias !109 ; 3 uses
  %i.nc = load <2 x float>, ptr %i.i, align 16, !tbaa !30, !noalias !109 ; 3 uses
  %i.nd = fneg float %i.mz
  %i.ne = fneg <2 x float> %i.na
  %i.nf = extractelement <2 x float> %i.nc, i64 0 ; 2 uses
  %i.ng = fmul float %i.nf, %i.nd
  %i.nh = fneg <2 x float> %i.nb                  ; 2 uses
  %i.ni = fmul <2 x float> %i.my, %i.nh
  %i.nj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.na, <2 x float> %i.ni) ; 3 uses
  %i.nk = load <2 x float>, ptr %5, align 16, !tbaa !30, !noalias !109 ; 4 uses
  %i.nl = load <2 x float>, ptr %i.o, align 4, !tbaa !30, !noalias !109 ; 3 uses
  %i.nm = extractelement <2 x float> %i.nl, i64 1 ; 3 uses
  %i.nn = extractelement <2 x float> %i.nh, i64 0
  %i.no = fmul float %i.nm, %i.nn
  %i.np = fneg float %i.mx
  %i.nq = extractelement <2 x float> %i.nk, i64 0 ; 3 uses
  %i.nr = fmul float %i.nq, %i.np
  %i.ns = fmul <2 x float> %i.nk, %i.ne
  %i.nt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.nb, <2 x float> %i.ns)
  %i.nu = fneg <2 x float> %i.nc
  %i.nv = fmul <2 x float> %i.nl, %i.nu
  %i.nw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nk, <2 x float> %i.my, <2 x float> %i.nv)
  %i.nx = extractelement <2 x float> %i.nb, i64 0
  %i.ny = call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.nx, float %i.ng) ; 2 uses
  %i.nz = extractelement <2 x float> %i.nk, i64 1
  %i.oa = fmul float %i.nz, %i.ny
  %i.ob = extractelement <2 x float> %i.nj, i64 1
  %i.oc = call float @llvm.fmuladd.f32(float %i.nq, float %i.ob, float %i.oa)
  %i.od = extractelement <2 x float> %i.nj, i64 0
  %i.oe = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.od, float %i.oc)
  %i.of = fdiv float 1.000000e+00, %i.oe          ; 4 uses
  %i.og = fmul float %i.ny, %i.of                 ; 2 uses
  %i.oh = call noundef float @llvm.fmuladd.f32(float %i.nq, float %i.mz, float %i.no)
  %i.oi = fmul float %i.oh, %i.of                 ; 2 uses
  %i.oj = call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.nf, float %i.nr)
  %i.ok = fmul float %i.oj, %i.of
  %i.ol = insertelement <2 x float> poison, float %i.of, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.on = fmul <2 x float> %i.nj, %i.om           ; 3 uses
  %i.oo = fmul <2 x float> %i.nt, %i.om           ; 3 uses
  %i.op = fmul <2 x float> %i.nw, %i.om           ; 3 uses
  %i.oq = fmul float %i.mn, %i.oi
  %i.or = call float @llvm.fmuladd.f32(float %i.mo, float %i.og, float %i.oq)
  %i.os = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ok, i64 0
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ou = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.or, i64 0
  %i.ov = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ow = insertelement <2 x float> %i.ov, float %i.mn, i64 1
  %i.ox = fmul <2 x float> %i.ow, %i.oo
  %i.oy = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oz = insertelement <2 x float> %i.oy, float %i.mo, i64 1
  %i.pa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oz, <2 x float> %i.on, <2 x float> %i.ox)
  %i.pb = shufflevector <2 x float> %i.mu, <2 x float> %i.mp, <2 x i32> <i32 1, i32 2>
  %i.pc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> %i.op, <2 x float> %i.pa) ; 2 uses
  %i.pd = extractelement <2 x float> %i.pc, i64 1
  store float %i.pd, ptr %10, align 4, !tbaa !30, !alias.scope !106
  %i.pe = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pf = fmul <2 x float> %i.pe, %i.ms
  %i.pg = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ph = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.pg, <2 x float> %i.pf)
  %i.pi = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mu, <2 x float> %i.pi, <2 x float> %i.ph)
  %i.pk = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %i.pl, %i.ms
  %i.pn = insertelement <2 x float> poison, float %i.og, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> %i.po, <2 x float> %i.pm)
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pr = shufflevector <4 x float> %i.ou, <4 x float> %i.pq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ps = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mw, <4 x float> %i.ot, <4 x float> %i.pr)
  store <2 x float> %i.pj, ptr %i.ar, align 4, !tbaa !30, !alias.scope !106
  store <4 x float> %i.ps, ptr %i.at, align 4, !tbaa !30, !alias.scope !106
  %i.pt = insertelement <2 x float> %i.ov, float %i.mn, i64 0
  %i.pu = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pv = fmul <2 x float> %i.pt, %i.pu
  %i.pw = insertelement <2 x float> %i.oy, float %i.mo, i64 0
  %i.px = shufflevector <2 x float> %i.on, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.px, <2 x float> %i.pv)
  %i.pz = shufflevector <2 x float> %i.mp, <2 x float> %i.mu, <2 x i32> <i32 0, i32 2>
  %i.qa = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pz, <2 x float> %i.qa, <2 x float> %i.py)
  store <2 x float> %i.qb, ptr %i.au, align 4, !tbaa !30, !alias.scope !106
  %i.qc = extractelement <2 x float> %i.pc, i64 0
  store float %i.qc, ptr %i.av, align 4, !tbaa !30, !alias.scope !106
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !30, !alias.scope !106
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.qd = call noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(16) %11) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.qe = icmp samesign ult i64 %indvars.iv, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br i1 %i.qe, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv
  store float 1.000000e+00, ptr %i.qf, align 4, !tbaa !30
  %i.qg = load float, ptr %4, align 8, !tbaa !30
  %i.qh = load float, ptr %7, align 8, !tbaa !30
  %i.qi = fsub float %i.qg, %i.qh
  %14 = load float, ptr %i.bb, align 4, !tbaa !30
  %15 = load float, ptr %i.bc, align 4, !tbaa !30
  %16 = fsub float %14, %15
  %17 = load float, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !30
  %i.qj = load float, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !30
  %18 = fsub float %17, %i.qj
  %i.qk = load float, ptr %12, align 4, !tbaa !30
  %19 = load float, ptr %i.ax, align 4, !tbaa !30
  %i.ql = fmul float %16, %19
  %i.qm = call float @llvm.fmuladd.f32(float %i.qi, float %i.qk, float %i.ql)
  %i.qn = load float, ptr %i.ay, align 4, !tbaa !30
  %i.qo = call noundef float @llvm.fmuladd.f32(float %18, float %i.qn, float %i.qm)
  %i.qp = load float, ptr %i.ba, align 4, !tbaa !112 ; 2 uses
  %i.qq = fneg float %i.qp
  %i.qr = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.cf, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.qo, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %i.qq, float noundef %i.qp, i1 noundef zeroext false, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.qs = add nsw i64 %indvars.iv, -3             ; 4 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.qs
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.qs
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.qs
  %i.qw = load float, ptr %i.qt, align 4, !tbaa !30
  %.sroa.0.0.vec.insert.i51 = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.qx = load float, ptr %i.qu, align 4, !tbaa !30
  %.sroa.0.4.vec.insert.i52 = insertelement <2 x float> %.sroa.0.0.vec.insert.i51, float %i.qx, i64 1
  %i.qy = load float, ptr %i.qv, align 4, !tbaa !30
  %.sroa.3.12.vec.insert.i53 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qy, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i52, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i53, ptr %i.az, align 8, !tbaa !26
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.qs
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !30
  %i.rb = load float, ptr %i.ba, align 4, !tbaa !112 ; 2 uses
  %i.rc = fneg float %i.rb
  %i.rd = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.cf, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.ra, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %i.rc, float noundef %i.rb, i1 noundef zeroext true, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !113
}

declare { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK11btMultiBody17localFrameToWorldEiRK11btMatrix3x3(ptr dead_on_unwind writable sret(%class.btMatrix3x3) align 4, ptr noundef nonnull align 8 dereferenceable(640), i32 noundef, ptr noundef nonnull align 4 dereferenceable(48)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN30btGeneric6DofSpring2Constraint16matrixToEulerXYZERK11btMatrix3x3R9btVector3(ptr noundef nonnull align 4 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(220), ptr noundef nonnull align 8 dereferenceable(204), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(128), float noundef, float noundef, i1 noundef zeroext, float noundef, i1 noundef zeroext, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26btMultiBodyFixedConstraint9debugDrawEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store float 1.000000e+00, ptr %2, align 4, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !30
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
  %i.l = load float, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load float, ptr %i.m, align 4, !tbaa !30 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load float, ptr %i.o, align 8, !tbaa !30 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !30
  %i.u = load float, ptr %i.k, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.w = load float, ptr %i.v, align 4, !tbaa !30
  %i.x = fmul float %i.n, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.aa = load float, ptr %i.z, align 4, !tbaa !30
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aa, float %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.j, align 4, !tbaa !30 ; 2 uses
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
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !30
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.av = load float, ptr %i.au, align 4, !tbaa !30
  %i.aw = fadd float %i.ab, %i.av
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.at, ptr %i.ax, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.418.0..sroa_idx, align 4, !tbaa !26
  %i.ay = load ptr, ptr %1, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !44 ; 2 uses
  %.not5 = icmp eq ptr %i.bc, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK11btMultiBody15localPosToWorldEiRK9btVector3(ptr noundef nonnull align 8 dereferenceable(640) %i.bc, i32 noundef %i.be, ptr noundef nonnull align 4 dereferenceable(16) %i.bf) ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.bh, ptr %i.bj, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> %i.bi, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !26
  %i.bk = load ptr, ptr %1, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, float noundef 1.000000e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 10 uses
  %.not6 = icmp eq ptr %i.bo, null
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bt = load float, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !30 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bz = load float, ptr %i.by, align 4, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !30
  %i.cc = load float, ptr %i.bs, align 4, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !30
  %i.cf = fmul float %i.bv, %i.ce
  %i.cg = call float @llvm.fmuladd.f32(float %i.bt, float %i.cc, float %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !30
  %i.cj = call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ci, float %i.cg)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.cl = load <2 x float>, ptr %i.bp, align 4, !tbaa !30 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.br, align 4, !tbaa !30 ; 2 uses
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
  %i.da = load <2 x float>, ptr %i.ck, align 4, !tbaa !30
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !30
  %i.de = fadd float %i.cj, %i.dd
  %.sroa.3.12.vec.insert.i4.i.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x float> %i.db, ptr %i.df, align 4
end_hunk_1
