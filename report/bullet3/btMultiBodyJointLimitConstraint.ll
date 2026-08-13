inline.NumInlined: 141
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK31btMultiBodyJointLimitConstraint12getIslandIdAEv:bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not9.not = icmp eq ptr %i.g, null
  br i1 %.not9.not, label %.thread, label %.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink14 = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink14, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK31btMultiBodyJointLimitConstraint12getIslandIdBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not9.not = icmp eq ptr %i.g, null
  br i1 %.not9.not, label %.thread, label %.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [688 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.c
  %.sink14 = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink14, i64 228
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ %i.o, %.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31btMultiBodyJointLimitConstraint20createConstraintRowsER20btAlignedObjectArrayI27btMultiBodySolverConstraintER23btMultiBodyJacobianDataRK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef nonnull align 4 dereferenceable(128) %3) unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %6 = alloca %class.btVector3, align 4           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39
  %i.l = tail call noundef float @_ZNK11btMultiBody11getJointPosEi(ptr noundef nonnull align 8 dereferenceable(640) %i.i, i32 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load float, ptr %i.m, align 8, !tbaa !30
  %i.o = fsub float %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  store float %i.o, ptr %i.u, align 4, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.w = load float, ptr %i.v, align 4, !tbaa !37
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.y = load i32, ptr %i.j, align 8, !tbaa !39
  %i.z = tail call noundef float @_ZNK11btMultiBody11getJointPosEi(ptr noundef nonnull align 8 dereferenceable(640) %i.x, i32 noundef %i.y)
  %i.aa = fsub float %i.w, %i.z
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !66
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  store float %i.aa, ptr %i.af, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.fca.1.gep.i67 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.d

._crit_edge:                                      ; preds = %bb.u, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %i.av = phi i32 [ %i.ah, %.lr.ph ], [ %i.iz, %bb.u ] ; 3 uses
  %.098 = phi i32 [ 0, %.lr.ph ], [ %i.ja, %bb.u ] ; 5 uses
  %i.aw = load i32, ptr %i.p, align 8, !tbaa !66
  %i.ax = add nsw i32 %i.aw, %.098
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !42  ; 3 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !43 ; 4 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not57 = icmp eq i32 %.098, 0
  %i.bd = select i1 %.not57, i32 1, i32 -1
  %i.be = sitofp i32 %i.bd to float               ; 4 uses
  %i.bf = load i32, ptr %i.aj, align 4, !tbaa !67 ; 8 uses
  %i.bg = load i32, ptr %i.ak, align 8, !tbaa !71
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.bf, 0
  %i.bi = shl nsw i32 %i.bf, 1
  %i.bj = select i1 %.not.i.i, i32 1, i32 %i.bi   ; 4 uses
  %i.bk = icmp slt i32 %i.bf, %i.bj
  br i1 %i.bk, label %bb.g, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sext i32 %i.bj to i64
  %i.bm = mul nsw i64 %i.bl, 224
  %i.bn = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bm, i32 noundef 16)
  %.pre.i = load i32, ptr %i.aj, align 4, !tbaa !67
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bo = phi i32 [ %.pre.i, %bb.h ], [ %i.bf, %bb.g ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.bn, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.bo to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.bq = icmp eq i32 %i.bo, 1
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.br = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bs = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw [224 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.br, ptr noundef nonnull align 8 dereferenceable(224) %i.bt, i64 224, i1 false), !tbaa.struct !73
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %7 = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bu = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.bv = getelementptr inbounds nuw [224 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, ptr noundef nonnull align 8 dereferenceable(224) %i.bv, i64 224, i1 false), !tbaa.struct !73
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !79

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod114 = trunc i32 %i.bo to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.bw = getelementptr inbounds nuw [224 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw [224 x i8], ptr %i.bx, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bw, ptr noundef nonnull align 8 dereferenceable(224) %i.by, i64 224, i1 false), !tbaa.struct !73
  br label %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE8allocateEi.exit.i.i
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ca = load i8, ptr %i.am, align 8, !tbaa !81, !range !82, !noundef !83
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bz)
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.k, %bb.j, %_ZNK20btAlignedObjectArrayI27btMultiBodySolverConstraintE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.am, align 8, !tbaa !81
  store ptr %.0.i.i.i, ptr %i.al, align 8, !tbaa !72
  store i32 %i.bj, ptr %i.ak, align 8, !tbaa !71
  %.pre2.i = load i32, ptr %i.aj, align 4, !tbaa !67
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !41
  %.pre99 = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.e, %bb.f, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i
  %i.cc = phi ptr [ %.pre99, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.ay, %bb.f ], [ %i.ay, %bb.e ] ; 2 uses
  %i.cd = phi i32 [ %.pre, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.av, %bb.f ], [ %i.av, %bb.e ]
  %i.ce = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE10deallocateEv.exit.i.i ], [ %i.bf, %bb.f ], [ %i.bf, %bb.e ]
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.aj, align 4, !tbaa !67
  %i.cg = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.ch = sext i32 %i.bf to i64
  %i.ci = getelementptr inbounds [224 x i8], ptr %i.cg, i64 %i.ch ; 20 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 208
  store ptr %0, ptr %i.cj, align 8, !tbaa !84
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 216
  store i32 %.098, ptr %i.ck, align 8, !tbaa !86
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 176
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !87
  %i.cn = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 192
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !44
  %i.cq = mul nsw i32 %i.cp, %.098
  %i.cr = add nsw i32 %i.cq, %i.cd                ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cs
  %i.cu = load i32, ptr %i.ao, align 8, !tbaa !45
  %i.cv = add nsw i32 %i.cr, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cw
  %i.cy = load float, ptr %i.ap, align 4, !tbaa !89
  %i.cz = call noundef float @_ZN21btMultiBodyConstraint23fillMultiBodyConstraintER27btMultiBodySolverConstraintR23btMultiBodyJacobianDataPfS4_RK9btVector3S7_S7_S7_fRK19btContactSolverInfoffbfbfff(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(220) %i.ci, ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef %i.ct, ptr noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef 0.000000e+00, float noundef %i.cy, i1 noundef zeroext false, float noundef 1.000000e+00, i1 noundef zeroext false, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00)
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.db = load i32, ptr %i.j, align 8, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !9
  %i.de = sext i32 %i.db to i64
  %i.df = getelementptr inbounds [688 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 564
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !90
  switch i32 %i.dh, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !9
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr inbounds [688 x i8], ptr %i.dn, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 4 uses
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.ds = load i32, ptr %i.j, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 192
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !9
  %i.dv = sext i32 %i.ds to i64
  %i.dw = getelementptr inbounds [688 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  %.sroa.589.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %.sroa.088.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %.sroa.589.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 140
  %.sroa.088.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.dx, align 4, !tbaa !43 ; 5 uses
  %i.ea = load <2 x float>, ptr %i.dy, align 4, !tbaa !43 ; 3 uses
  %i.eb = fmul <2 x float> %.fca.0.load.i, %i.ea
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  %foldExtExtBinop = fmul <2 x float> %.fca.1.load.i, %i.dz
  %i.ed = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ee = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ef = shufflevector <2 x float> %i.ea, <2 x float> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.eb)
  %i.eh = extractelement <2 x float> %i.dz, i64 1 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %.sroa.589.12.vec.extract, float %i.eh, float %i.ed)
  %i.ej = fneg float %.sroa.589.8.vec.extract     ; 4 uses
  %i.ek = fneg float %.sroa.088.4.vec.extract     ; 3 uses
  %i.el = fneg float %.sroa.088.0.vec.extract     ; 4 uses
  %i.em = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ej, i64 1
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.dz, <2 x float> %i.eg) ; 5 uses
  %i.ep = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.eq = call float @llvm.fmuladd.f32(float %i.el, float %i.ep, float %i.ei) ; 3 uses
  %i.er = fneg float %i.eh
  %i.es = fmul float %.sroa.088.4.vec.extract, %i.er
  %i.et = call float @llvm.fmuladd.f32(float %i.el, float %i.ec, float %i.es)
  %i.eu = call float @llvm.fmuladd.f32(float %i.ej, float %i.ep, float %i.et) ; 2 uses
  %i.ev = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x float> %i.ev, float %i.eq, i64 1
  %i.ex = fmul <2 x float> %i.ee, %i.ew
  %i.ey = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.ek, i64 1
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fb, <2 x float> %i.ex)
  %i.fd = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.ff = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %i.el, i64 1
  %i.fh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fg, <2 x float> %i.fc)
  %i.fi = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.fi, <2 x float> %i.fh)
  %i.fk = extractelement <2 x float> %i.eo, i64 0
  %i.fl = fmul float %.sroa.589.12.vec.extract, %i.fk
  %i.fm = call float @llvm.fmuladd.f32(float %i.eu, float %i.ej, float %i.fl)
  %i.fn = extractelement <2 x float> %i.eo, i64 1
  %i.fo = call float @llvm.fmuladd.f32(float %i.fn, float %i.ek, float %i.fm)
  %i.fp = call float @llvm.fmuladd.f32(float %i.eq, float %.sroa.088.0.vec.extract, float %i.fo)
  %i.fq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fj, %i.fr           ; 2 uses
  %i.ft = fmul float %i.fp, %i.be                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ft, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x float> %i.fs, ptr %i.fu, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.693.0..sroa_idx, align 8, !tbaa !75
  %i.fv = fneg <2 x float> %i.fs
  %i.fw = fneg float %i.ft
  %.sroa.3.12.vec.insert.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fw, i64 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store <2 x float> %i.fv, ptr %i.fx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i62, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !75
  br label %bb.n

bb.m:                                             ; preds = %_ZN20btAlignedObjectArrayI27btMultiBodySolverConstraintE21expandNonInitializingEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.df, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.fy, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i65 = load <2 x float>, ptr %4, align 8 ; 4 uses
  %.fca.1.load.i68 = load <2 x float>, ptr %.fca.1.gep.i67, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.ga = load i32, ptr %i.j, align 8, !tbaa !39
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !9
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds [688 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 152
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.fca.1.load.i68, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.fca.0.load.i65, i64 1 ; 2 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.fca.1.load.i68, i64 0
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 156
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i65, i64 0 ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !43 ; 5 uses
  %i.gi = load <2 x float>, ptr %i.gg, align 4, !tbaa !43 ; 3 uses
  %i.gj = fmul <2 x float> %.fca.0.load.i65, %i.gi
end_hunk_0
