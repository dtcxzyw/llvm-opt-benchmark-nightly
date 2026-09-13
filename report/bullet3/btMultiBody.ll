Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11btMultiBody22addJointTorqueMultiDofEiPKf:bb.a
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.u = load float, ptr %i.t, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  store float %i.u, ptr %i.v, align 4, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !155

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.z = load float, ptr %i.y, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store float %i.ac, ptr %i.ad, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store float %i.af, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store float %i.ai, ptr %i.aj, align 4, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !156
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody12getLinkForceEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody13getLinkTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK11btMultiBody14getJointTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load float, ptr %i.e, align 8, !tbaa !20
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN11btMultiBody22getJointTorqueMultiDofEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody12hasFixedBaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.b = load i8, ptr %i.a, align 1, !tbaa !61, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !97
  %i.h = trunc i32 %i.g to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody23isBaseStaticOrKinematicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.b = load i8, ptr %i.a, align 1, !tbaa !61, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !97
  %i.h = and i32 %i.g, 3
  %i.i = icmp ne i32 %i.h, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody15isBaseKinematicEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97
  %i.e = and i32 %i.d, 2
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btMultiBody18setBaseDynamicTypeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97
  %i.e = and i32 %i.d, -4
  %i.f = or i32 %i.e, %1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr nofree noundef nonnull align 8 dereferenceable(640) initializes((638, 639)) %0, float noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [36 x float], align 16            ; 10 uses
  %i.b = alloca [6 x float], align 16             ; 6 uses
  %8 = alloca %struct.btSpatialMotionVector, align 8 ; 8 uses
  %i.c = alloca [6 x float], align 16             ; 7 uses
  %9 = alloca [6 x %struct.btSpatialForceVector], align 16 ; 16 uses
  %10 = alloca %struct.btSpatialTransformationMatrix, align 8 ; 46 uses
  %11 = alloca %struct.btSymmetricSpatialDyad, align 16 ; 30 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 638 ; 2 uses
  store i8 0, ptr %i.d, align 2, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !20 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !20 ; 4 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load <2 x float>, ptr %i.j, align 4, !tbaa !20 ; 4 uses
  %i.q = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !83
  %i.t = shl nsw i32 %i.s, 1                      ; 2 uses
  %i.u = add nsw i32 %i.t, 7                      ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51   ; 2 uses
  %i.x = icmp sgt i32 %i.u, %i.w
  br i1 %i.x, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  %i.aa = icmp slt i32 %i.z, %i.u
  br i1 %i.aa, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.ab = sext i32 %i.u to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ac, i32 noundef 16) ; 9 uses
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !51 ; 3 uses
  %i.ae = icmp sgt i32 %.pre.i, 0
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 9 uses
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = ptrtoaddr ptr %i.ad to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.aj = sub i64 %i.ah, %i.ai
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond1887 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1887, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x float>, ptr %i.al, align 4, !tbaa !20
  %wide.load1816 = load <4 x float>, ptr %i.am, align 4, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x float> %wide.load, ptr %i.ak, align 4, !tbaa !20
  store <4 x float> %wide.load1816, ptr %i.an, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.prol
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.prol
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  store float %i.ar, ptr %i.ap, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !158

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  store float %i.aw, ptr %i.au, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !20
  store float %i.az, ptr %i.ax, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.1
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !20
  store float %i.bc, ptr %i.ba, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.2
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20
  store float %i.bf, ptr %i.bd, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !159

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !49, !range !68, !noundef !69
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.d, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bj, align 8, !tbaa !49
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !50
  store i32 %i.u, ptr %i.y, align 8, !tbaa !52
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.bk = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.ad, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.bl = sext i32 %i.w to i64                    ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 2
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bm
  %i.bn = sext i32 %i.t to i64
  %i.bo = add nsw i64 %i.bn, 7
  %i.bp = sub nsw i64 %i.bo, %i.bl
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bq, i1 false), !tbaa !20
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.u, ptr %i.v, align 4, !tbaa !51
  %i.br = shl nsw i32 %i.f, 3
  %i.bs = or disjoint i32 %i.br, 6                ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !55
  %i.bv = icmp sgt i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !56
  %i.by = icmp slt i32 %i.bx, %i.bs
  br i1 %i.by, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.bz = sext i32 %i.bs to i64
  %i.ca = shl nsw i64 %i.bz, 4
  %i.cb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ca, i32 noundef 16) ; 4 uses
  %.pre.i438 = load i32, ptr %i.bt, align 4, !tbaa !55 ; 4 uses
  %i.cc = icmp sgt i32 %.pre.i438, 0
  br i1 %i.cc, label %.lr.ph.i.i.i440, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i440:                                  ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count.i.i.i441 = zext nneg i32 %.pre.i438 to i64 ; 2 uses
  %xtraiter1919 = and i64 %wide.trip.count.i.i.i441, 1
  %i.ce = icmp eq i32 %.pre.i438, 1
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.i.i.i440.new

.lr.ph.i.i.i440.new:                              ; preds = %.lr.ph.i.i.i440
  %unroll_iter = and i64 %wide.trip.count.i.i.i441, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i440.new
  %indvars.iv.i.i.i442 = phi i64 [ 0, %.lr.ph.i.i.i440.new ], [ %indvars.iv.next.i.i.i443.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i440.new ], [ %niter.next.1, %bb.g ]
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.i.i.i442
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %indvars.iv.i.i.i442
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i443 = or disjoint i64 %indvars.iv.i.i.i442, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.next.i.i.i443
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i443.1 = add nuw nsw i64 %indvars.iv.i.i.i442, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !4

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod1920.not = icmp eq i64 %xtraiter1919, 0
  br i1 %lcmp.mod1920.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i440
  %indvars.iv.i.i.i442.epil.init = phi i64 [ 0, %.lr.ph.i.i.i440 ], [ %indvars.iv.next.i.i.i443.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1921 = trunc i32 %.pre.i438 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1921)
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.i.i.i442.epil.init
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %indvars.iv.i.i.i442.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !46
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !54 ; 2 uses
  %.not.i5.i.i439 = icmp eq ptr %i.cp, null
  br i1 %.not.i5.i.i439, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !53, !range !68, !noundef !69
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cp)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.ct, align 8, !tbaa !53
  store ptr %i.cb, ptr %i.co, align 8, !tbaa !54
  store i32 %i.bs, ptr %i.bw, align 8, !tbaa !56
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.e, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !55
  %i.cu = shl nsw i32 %i.f, 2
  %i.cv = add nsw i32 %i.cu, 4                    ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59 ; 2 uses
  %i.cy = icmp sgt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !60
  %i.db = icmp slt i32 %i.da, %i.cv
  br i1 %i.db, label %bb.k, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dc = sext i32 %i.cv to i64
  %i.dd = mul nsw i64 %i.dc, 48
  %i.de = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dd, i32 noundef 16)
  %.pre.i450 = load i32, ptr %i.cw, align 4, !tbaa !59
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.df = phi i32 [ %.pre.i450, %bb.l ], [ %i.cx, %bb.k ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.de, %bb.l ], [ null, %bb.k ] ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i452, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i452:                                  ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count.i.i.i453 = zext nneg i32 %i.df to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i452
  %indvars.iv.i.i.i454 = phi i64 [ 0, %.lr.ph.i.i.i452 ], [ %indvars.iv.next.i.i.i455, %bb.m ] ; 3 uses
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i454 ; 3 uses
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !58
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %indvars.iv.i.i.i454 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.di, ptr noundef nonnull align 4 dereferenceable(48) %i.dk, i64 16, i1 false), !tbaa.struct !46
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !46
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.do, ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !46
  %indvars.iv.next.i.i.i455 = add nuw nsw i64 %indvars.iv.i.i.i454, 1 ; 2 uses
  %exitcond.not.i.i.i456 = icmp eq i64 %indvars.iv.next.i.i.i455, %wide.trip.count.i.i.i453
  br i1 %exitcond.not.i.i.i456, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i, label %bb.m, !llvm.loop !0

_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !58 ; 2 uses
  %.not.i5.i.i451 = icmp eq ptr %i.dq, null
  br i1 %.not.i5.i.i451, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !57, !range !68, !noundef !69
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.o, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dq)
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.du, align 8, !tbaa !57
  store ptr %.0.i.i.i, ptr %i.dp, align 8, !tbaa !58
  store i32 %i.cv, ptr %i.cz, align 8, !tbaa !60
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit: ; preds = %bb.j, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !59
  %i.dv = load i32, ptr %i.r, align 4, !tbaa !83  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !50 ; 6 uses
  %i.dy = sext i32 %i.dv to i64                   ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dx, i64 %i.dy ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !54 ; 14 uses
  %i.ec = shl nsw i32 %i.f, 1                     ; 2 uses
  %i.ed = add nsw i32 %i.ec, 2
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %i.ee ; 15 uses
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.ee ; 5 uses
  %i.eh = sext i32 %i.ec to i64
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !58 ; 7 uses
  %i.el = sext i32 %i.f to i64                    ; 2 uses
  %i.em = getelementptr [48 x i8], ptr %i.ek, i64 %i.el ; 25 uses
  %i.en = getelementptr i8, ptr %i.em, i64 48     ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !58 ; 20 uses
  %i.eq = icmp sgt i32 %i.dv, 0
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !54
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.eu = zext nneg i32 %i.dv to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  br label %bb.q

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit, %bb.p
  %i.ex = phi ptr [ %i.es, %bb.p ], [ null, %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit ] ; 10 uses
  %i.ey = phi ptr [ %i.ew, %bb.p ], [ null, %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %9, i8 0, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store float 1.000000e+00, ptr %11, align 16, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fa, align 4, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fc, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  store float 1.000000e+00, ptr %i.fd, align 16, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ff, align 4, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fh, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 4 uses
  store float 1.000000e+00, ptr %i.fi, align 16, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 100
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fk, align 4, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fm, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !20 ; 5 uses
  %.sroa.41182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %.sroa.51183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %.sroa.61184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 5 uses
  %.sroa.91186.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 20 ; 2 uses
  %.sroa.101187.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 3 uses
  %.sroa.111188.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 5 uses
  %.sroa.141190.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 36 ; 2 uses
  %.sroa.151191.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 40 ; 4 uses
  %.sroa.161192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %i.fv = load float, ptr %i.fo, align 8, !tbaa !20 ; 6 uses
  %i.fw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = load float, ptr %i.fq, align 8, !tbaa !20 ; 4 uses
  %i.fz = load float, ptr %i.fp, align 4, !tbaa !20 ; 5 uses
  %i.ga = fmul float %i.fz, %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.ga)
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.gb)
  %i.gd = tail call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.gc)
  %i.ge = fdiv float 2.000000e+00, %i.gd          ; 3 uses
  %i.gf = fmul float %i.fv, %i.ge                 ; 2 uses
  %i.gg = fmul float %i.fz, %i.ge                 ; 3 uses
  %i.gh = fmul float %i.fs, %i.gf                 ; 2 uses
  %i.gi = fmul float %i.fs, %i.gg                 ; 2 uses
  %i.gj = fmul float %i.fv, %i.gf                 ; 2 uses
  %i.gk = fmul float %i.fv, %i.gg                 ; 2 uses
  %i.gl = fmul float %i.fy, %i.ge                 ; 4 uses
  %i.gm = fmul float %i.fz, %i.gg                 ; 2 uses
  %i.gn = fmul float %i.fz, %i.gl                 ; 2 uses
  %i.go = fmul float %i.fv, %i.gl                 ; 2 uses
  %i.gp = fmul float %i.fy, %i.gl                 ; 2 uses
  %i.gq = fmul float %i.fs, %i.gl                 ; 2 uses
  %i.gr = fadd float %i.gm, %i.gp
  %i.gs = fadd float %i.gk, %i.gq                 ; 2 uses
  %i.gt = fsub float 1.000000e+00, %i.gr          ; 2 uses
  %i.gu = fadd float %i.gj, %i.gp
  %i.gv = fsub float 1.000000e+00, %i.gu          ; 2 uses
  %i.gw = fsub float %i.gk, %i.gq                 ; 2 uses
  %i.gx = fsub float %i.gn, %i.gh                 ; 2 uses
  %i.gy = fadd float %i.go, %i.gi                 ; 2 uses
  %i.gz = fsub float %i.go, %i.gi                 ; 3 uses
  %i.ha = fadd float %i.gn, %i.gh                 ; 3 uses
  %i.hb = fadd float %i.gj, %i.gm
  %i.hc = fsub float 1.000000e+00, %i.hb          ; 3 uses
  store float %i.gt, ptr %i.ep, align 4
  store float %i.gw, ptr %.sroa.41182.0..sroa_idx, align 4
  store float %i.gy, ptr %.sroa.51183.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.61184.0..sroa_idx, align 4, !tbaa !21
  store float %i.gs, ptr %i.ft, align 4
  store float %i.gv, ptr %.sroa.91186.16..sroa_idx, align 4
  store float %i.gx, ptr %.sroa.101187.16..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.111188.16..sroa_idx, align 4, !tbaa !21
  store float %i.gz, ptr %i.fu, align 4
  store float %i.ha, ptr %.sroa.141190.32..sroa_idx, align 4
  store float %i.hc, ptr %.sroa.151191.32..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.161192.32..sroa_idx, align 4, !tbaa !21
  %i.hd = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.he = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.gv, i64 1 ; 2 uses
  %i.hg = fmul <2 x float> %i.hd, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.gs, i64 1 ; 2 uses
  %i.hj = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hj, <2 x float> %i.hg)
  %i.hl = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.gx, i64 1 ; 2 uses
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.fx, <2 x float> %i.hk)
  %i.ho = extractelement <2 x float> %i.p, i64 1
  %i.hp = fmul float %i.ho, %i.ha
  %i.hq = extractelement <2 x float> %i.p, i64 0
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.hq, float %i.hp)
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.q, float %i.hr)
  %.sroa.3.12.vec.insert.i459 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.ht = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x float> %i.ht, %i.hf
  %i.hv = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hv, <2 x float> %i.hu)
  %i.hx = insertelement <2 x float> poison, float %i.n, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hy, <2 x float> %i.hw)
  %i.ia = extractelement <2 x float> %i.m, i64 1
  %i.ib = fmul float %i.ia, %i.ha
  %i.ic = extractelement <2 x float> %i.m, i64 0
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.ic, float %i.ib)
  %i.ie = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %i.n, float %i.id)
  %.sroa.3.12.vec.insert.i464 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ie, i64 0
  store <2 x float> %i.hn, ptr %i.eb, align 4
  %.sroa.41180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i459, ptr %.sroa.41180.0..sroa_idx, align 4, !tbaa !21
  %i.if = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 4 uses
  store <2 x float> %i.hz, ptr %i.if, align 4
  %.sroa.41178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i464, ptr %.sroa.41178.0..sroa_idx, align 4, !tbaa !21
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 561 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !61, !range !68, !noundef !69
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !89 ; 2 uses
  %.not.i = icmp eq ptr %i.ik, null
  br i1 %.not.i, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit: ; preds = %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 224
  %i.im = load i32, ptr %i.il, align 8, !tbaa !97
  %i.in = and i32 %i.im, 3
  %.not1401 = icmp eq i32 %i.in, 0
  br i1 %.not1401, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread: ; preds = %bb.q, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  br label %bb.u

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384: ; preds = %bb.r, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  %.v = select i1 %5, i64 140, i64 108
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  %.v426 = select i1 %5, i64 156, i64 124
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 %.v426 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !20
  %.sroa.41172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  %.sroa.41176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.ja = load <2 x float>, ptr %i.ep, align 4, !tbaa !20 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.ft, align 4, !tbaa !20 ; 2 uses
  %i.jc = shufflevector <2 x float> %i.ja, <2 x float> %i.jb, <2 x i32> <i32 1, i32 3>
  %i.jd = shufflevector <2 x float> %i.ja, <2 x float> %i.jb, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.kv = load <2 x float>, ptr %i.eb, align 4, !tbaa !20 ; 3 uses
  %i.kw = fmul <2 x float> %i.kt, %i.kv
  %i.kx = load float, ptr %.sroa.41180.0..sroa_idx, align 4, !tbaa !20
  %i.ky = load float, ptr %i.ix, align 8, !tbaa !45
  %i.kz = load <2 x float>, ptr %i.if, align 4, !tbaa !20 ; 3 uses
  %i.la = insertelement <2 x float> poison, float %i.ky, i64 0 ; 2 uses
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = fmul <2 x float> %i.lb, %i.kz
  %i.ld = load float, ptr %.sroa.41178.0..sroa_idx, align 4, !tbaa !20
  %i.le = insertelement <2 x float> %i.la, float %i.ku, i64 1
  %i.lf = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lg = insertelement <2 x float> %i.lf, float %i.kx, i64 1 ; 3 uses
  %i.lh = fmul <2 x float> %i.le, %i.lg
  %i.li = shufflevector <2 x float> %i.kz, <2 x float> %i.kv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lj = fmul <2 x float> %i.li, %i.li
  %i.lk = shufflevector <2 x float> %i.kz, <2 x float> %i.kv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.lk, <2 x float> %i.lj)
  %i.lm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lg, <2 x float> %i.lg, <2 x float> %i.ll) ; 2 uses
  %i.ln = fcmp ogt <2 x float> %i.lm, splat (float f0x34000000)
  %i.lo = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lm)
  %i.lp = select <2 x i1> %i.ln, <2 x float> %i.lo, <2 x float> zeroinitializer
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.lp, <2 x float> %i.h) ; 3 uses
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ls = fmul <2 x float> %i.kw, %i.lr
  %i.lt = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul <2 x float> %i.lc, %i.lt
  %i.lv = fmul <2 x float> %i.lh, %i.lq
  %i.lw = fsub <2 x float> %i.lu, %i.kr           ; 2 uses
  store <2 x float> %i.lw, ptr %i.ef, align 4, !tbaa !20
  %i.lx = fsub <2 x float> %i.lv, %i.kd           ; 2 uses
  %i.ly = extractelement <2 x float> %i.lx, i64 0 ; 2 uses
  store float %i.ly, ptr %.sroa.41172.0..sroa_idx, align 4, !tbaa !20
  %i.lz = fsub <2 x float> %i.ls, %i.kp           ; 2 uses
  store <2 x float> %i.lz, ptr %i.it, align 4, !tbaa !20
  %i.ma = extractelement <2 x float> %i.lx, i64 1 ; 2 uses
  store float %i.ma, ptr %.sroa.41176.0..sroa_idx, align 4, !tbaa !20
  %i.mb = load i8, ptr %i.iz, align 4, !tbaa !66, !range !68, !noundef !69
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = load <2 x float>, ptr %i.iw, align 4, !tbaa !20 ; 7 uses
  %.pre1657 = load float, ptr %i.eb, align 4, !tbaa !20 ; 4 uses
  br i1 %i.mc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mf = load float, ptr %i.iu, align 4, !tbaa !20
  %i.mg = extractelement <2 x float> %i.md, i64 0
  %i.mh = load <2 x float>, ptr %i.me, align 8, !tbaa !20 ; 2 uses
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mj = insertelement <2 x float> %i.mi, float %i.mf, i64 1
  %i.mk = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ml = insertelement <2 x float> %i.mk, float %.pre1657, i64 1 ; 2 uses
  %i.mm = fmul <2 x float> %i.mj, %i.ml           ; 2 uses
  %i.mn = fmul <2 x float> %i.mh, %i.md           ; 2 uses
  %i.mo = fneg <2 x float> %i.mn
  %i.mp = fmul <2 x float> %i.ml, %i.mo
  %i.mq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.mm, <2 x float> %i.mp)
  %i.mr = extractelement <2 x float> %i.mm, i64 1
  %i.ms = fneg float %i.mr
  %i.mt = fmul float %i.mg, %i.ms
  %i.mu = extractelement <2 x float> %i.mn, i64 0
  %i.mv = tail call float @llvm.fmuladd.f32(float %.pre1657, float %i.mu, float %i.mt)
  %i.mw = fadd <2 x float> %i.lz, %i.mq
  store <2 x float> %i.mw, ptr %i.it, align 4, !tbaa !20
  %i.mx = fadd float %i.ma, %i.mv
  store float %i.mx, ptr %.sroa.41176.0..sroa_idx, align 4, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384
  %i.my = load float, ptr %i.if, align 4, !tbaa !20 ; 2 uses
  %i.mz = fneg float %i.my
  %i.na = extractelement <2 x float> %i.md, i64 0
  %i.nb = fmul float %i.na, %i.mz
  %i.nc = load float, ptr %i.ix, align 8, !tbaa !20 ; 2 uses
  %i.nd = load <2 x float>, ptr %i.iy, align 4, !tbaa !20 ; 3 uses
  %i.ne = fneg <2 x float> %i.nd
  %i.nf = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ng = insertelement <2 x float> %i.nf, float %.pre1657, i64 1
  %i.nh = fmul <2 x float> %i.ng, %i.ne
  %i.ni = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nj = insertelement <2 x float> %i.ni, float %i.my, i64 1
  %i.nk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.nj, <2 x float> %i.nh)
  %i.nl = extractelement <2 x float> %i.nd, i64 0
  %i.nm = tail call float @llvm.fmuladd.f32(float %.pre1657, float %i.nl, float %i.nb)
  %i.nn = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x float> %i.nk, %i.no
  %i.nq = fmul float %i.nc, %i.nm
  %i.nr = fadd <2 x float> %i.np, %i.lw
  store <2 x float> %i.nr, ptr %i.ef, align 4, !tbaa !20
  %i.ns = fadd float %i.nq, %i.ly
  store float %i.ns, ptr %.sroa.41172.0..sroa_idx, align 4, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nu = load float, ptr %i.nt, align 8, !tbaa !20 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ny = load float, ptr %i.nv, align 4, !tbaa !20
  %i.nz = load float, ptr %i.nw, align 8, !tbaa !20
  %i.oa = load float, ptr %i.nx, align 4, !tbaa !20
  %.sroa.41136.0..sroa_idx = getelementptr i8, ptr %i.em, i64 52
  %.sroa.51137.0..sroa_idx = getelementptr i8, ptr %i.em, i64 56
  %i.ob = getelementptr i8, ptr %i.em, i64 64     ; 2 uses
  %.sroa.91140.16..sroa_idx = getelementptr i8, ptr %i.em, i64 68
  %.sroa.101141.16..sroa_idx = getelementptr i8, ptr %i.em, i64 72
  %i.oc = getelementptr i8, ptr %i.em, i64 80     ; 2 uses
  %.sroa.141144.32..sroa_idx = getelementptr i8, ptr %i.em, i64 84
  %.sroa.151145.32..sroa_idx = getelementptr i8, ptr %i.em, i64 88
  %i.od = getelementptr i8, ptr %i.em, i64 96     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.en, i8 0, i64 48, i1 false)
  store float %i.nu, ptr %i.od, align 4
  %.sroa.41115.0..sroa_idx = getelementptr i8, ptr %i.em, i64 100
  %i.oe = getelementptr i8, ptr %i.em, i64 112
  %.sroa.91119.16..sroa_idx = getelementptr i8, ptr %i.em, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.41115.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.nu, ptr %.sroa.91119.16..sroa_idx, align 4
  %.sroa.101120.16..sroa_idx = getelementptr i8, ptr %i.em, i64 120
  %i.of = getelementptr i8, ptr %i.em, i64 128
  %.sroa.151124.32..sroa_idx = getelementptr i8, ptr %i.em, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.101120.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.nu, ptr %.sroa.151124.32..sroa_idx, align 4
  %.sroa.161125.32..sroa_idx = getelementptr i8, ptr %i.em, i64 140
  store float 0.000000e+00, ptr %.sroa.161125.32..sroa_idx, align 4, !tbaa !21
  %i.og = getelementptr i8, ptr %i.em, i64 144    ; 2 uses
  store float %i.ny, ptr %i.og, align 4
  %.sroa.41097.0..sroa_idx = getelementptr i8, ptr %i.em, i64 148
  %i.oh = getelementptr i8, ptr %i.em, i64 160
  %.sroa.91101.16..sroa_idx = getelementptr i8, ptr %i.em, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.41097.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.nz, ptr %.sroa.91101.16..sroa_idx, align 4
  %.sroa.101102.16..sroa_idx = getelementptr i8, ptr %i.em, i64 168
  %i.oi = getelementptr i8, ptr %i.em, i64 176
  %.sroa.151106.32..sroa_idx = getelementptr i8, ptr %i.em, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.101102.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.oa, ptr %.sroa.151106.32..sroa_idx, align 4
  %.sroa.161107.32..sroa_idx = getelementptr i8, ptr %i.em, i64 188
  store float 0.000000e+00, ptr %.sroa.161107.32..sroa_idx, align 4, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ek, ptr noundef nonnull align 4 dereferenceable(48) %i.ep, i64 16, i1 false), !tbaa.struct !46
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oj, ptr noundef nonnull align 4 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !46
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ok, ptr noundef nonnull align 4 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !46
  %i.ol = icmp sgt i32 %i.f, 0                    ; 4 uses
  br i1 %i.ol, label %.lr.ph1430, label %._crit_edge1527

.lr.ph1430:                                       ; preds = %bb.u
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.on = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 612
  %wide.trip.count1576 = zext nneg i32 %i.f to i64
  %. = select i1 %5, i64 432, i64 400
  %.1793 = select i1 %5, i64 436, i64 404
  %.1794 = select i1 %5, i64 440, i64 408
  %.1795 = select i1 %5, i64 448, i64 416
  br label %bb.v

.lr.ph.i624.lr.ph:                                ; preds = %bb.af
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 104
  %.sroa.4933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.5934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.6935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.pu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.pv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.px = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.42.0..sroa_idx.i659 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.4.0..sroa_idx.i660 = getelementptr inbounds nuw i8, ptr %9, i64 56
  br label %.lr.ph.i624

bb.v:                                             ; preds = %.lr.ph1430, %bb.af
  %indvars.iv1573 = phi i64 [ 0, %.lr.ph1430 ], [ %indvars.iv.next1574, %bb.af ] ; 11 uses
  %i.pz = load ptr, ptr %i.om, align 8, !tbaa !47
  %i.qa = getelementptr inbounds nuw [688 x i8], ptr %i.pz, i64 %indvars.iv1573 ; 5 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 20
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !77
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 336
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !20 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 340
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !20 ; 5 uses
  %i.qh = fmul float %i.qg, %i.qg
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.qe, float %i.qe, float %i.qh)
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qa, i64 344
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !20 ; 4 uses
  %i.ql = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qi)
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qa, i64 348
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !20 ; 5 uses
  %i.qo = tail call noundef float @llvm.fmuladd.f32(float %i.qn, float %i.qn, float %i.ql)
  %i.qp = fdiv float 2.000000e+00, %i.qo          ; 3 uses
  %i.qq = fmul float %i.qe, %i.qp                 ; 2 uses
  %i.qr = fmul float %i.qg, %i.qp                 ; 3 uses
  %i.qs = fmul float %i.qk, %i.qp                 ; 4 uses
  %i.qt = fmul float %i.qn, %i.qq                 ; 2 uses
  %i.qu = fmul float %i.qn, %i.qr                 ; 2 uses
  %i.qv = fmul float %i.qn, %i.qs                 ; 2 uses
  %i.qw = fmul float %i.qe, %i.qq                 ; 2 uses
  %i.qx = fmul float %i.qe, %i.qr                 ; 2 uses
  %i.qy = fmul float %i.qe, %i.qs                 ; 2 uses
  %i.qz = fmul float %i.qg, %i.qr                 ; 2 uses
  %i.ra = fmul float %i.qg, %i.qs                 ; 2 uses
  %i.rb = fmul float %i.qk, %i.qs                 ; 2 uses
  %indvars.iv.next1574 = add nuw nsw i64 %indvars.iv1573, 1 ; 7 uses
  %i.rc = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %indvars.iv.next1574 ; 13 uses
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.61081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store float 0.000000e+00, ptr %.sroa.61081.0..sroa_idx, align 4, !tbaa !21
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16 ; 2 uses
  %.sroa.91083.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 20
  %.sroa.101084.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %.sroa.111085.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 28
  store float 0.000000e+00, ptr %.sroa.111085.16..sroa_idx, align 4, !tbaa !21
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 32 ; 2 uses
  %.sroa.141087.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 36
  %.sroa.151088.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %.sroa.161089.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rc, i64 44
  store float 0.000000e+00, ptr %.sroa.161089.32..sroa_idx, align 4, !tbaa !21
  %i.rf = add nsw i32 %i.qc, 1
  %i.rg = sext i32 %i.rf to i64                   ; 2 uses
  %i.rh = getelementptr inbounds [48 x i8], ptr %i.ek, i64 %i.rg ; 9 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 20
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 36
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rh, i64 40
  %i.rq = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %indvars.iv.next1574 ; 10 uses
  %.sroa.41067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 4 ; 2 uses
  %.sroa.51068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %.scalar = fadd float %i.qz, %i.rb
  %i.rr = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rt = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.rs ; 2 uses
  %.scalar1888 = fsub float %i.qx, %i.qv          ; 2 uses
  %i.ru = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1888, i64 0
  %i.rv = shufflevector <2 x float> %i.ru, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1889 = fadd float %i.qy, %i.qu          ; 2 uses
  %i.rw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1889, i64 0
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ry = extractelement <4 x float> %i.rt, i64 0
  store float %i.ry, ptr %i.rc, align 4
  store float %.scalar1888, ptr %.sroa.41079.0..sroa_idx, align 4
  store float %.scalar1889, ptr %.sroa.51080.0..sroa_idx, align 4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 16 ; 3 uses
  %.sroa.91071.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 20 ; 2 uses
  %i.sa = fadd float %i.qx, %i.qv                 ; 2 uses
  %i.sb = fadd float %i.qw, %i.rb
  %i.sc = fsub float 1.000000e+00, %i.sb          ; 2 uses
  %i.sd = fsub float %i.ra, %i.qt                 ; 2 uses
  store float %i.sa, ptr %i.rd, align 4
  store float %i.sc, ptr %.sroa.91083.16..sroa_idx, align 4
  store float %i.sd, ptr %.sroa.101084.16..sroa_idx, align 4
  %i.se = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.sc, i64 0
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.sg = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sa, i64 0
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.si = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sd, i64 0
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rq, i64 32 ; 3 uses
  %.sroa.141075.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 36 ; 2 uses
  %.sroa.151076.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %.scalar1890 = fsub float %i.qy, %i.qu          ; 2 uses
  %i.sl = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1890, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1891 = fadd float %i.ra, %i.qt          ; 2 uses
  %i.sn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1891, i64 0
  %i.so = shufflevector <2 x float> %i.sn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1892 = fadd float %i.qw, %i.qz
  %i.sp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar1892, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sr = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>, %i.sq ; 2 uses
  store float %.scalar1890, ptr %i.re, align 4
  store float %.scalar1891, ptr %.sroa.141087.32..sroa_idx, align 4
  %i.ss = extractelement <4 x float> %i.sr, i64 0
  store float %i.ss, ptr %.sroa.151088.32..sroa_idx, align 4
  %i.st = load <2 x float>, ptr %i.rh, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.su = load <2 x float>, ptr %i.ri, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.sv = load <2 x float>, ptr %i.rj, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.sw = load <2 x float>, ptr %i.rk, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.sx = load float, ptr %i.rn, align 4, !tbaa !20, !noalias !233
  %i.sy = load <2 x float>, ptr %i.rl, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.sz = load float, ptr %i.ro, align 4, !tbaa !20, !noalias !233
  %i.ta = shufflevector <2 x float> %i.su, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tb = insertelement <4 x float> %i.ta, float 0.000000e+00, i64 3
  %i.tc = shufflevector <2 x float> %i.sy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.td = shufflevector <4 x float> %i.tb, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.te = fmul <4 x float> %i.td, %i.rv
  %i.tf = shufflevector <2 x float> %i.st, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tg = insertelement <4 x float> %i.tf, float 0.000000e+00, i64 3
  %i.th = shufflevector <2 x float> %i.sw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> %i.tg, <4 x float> %i.th, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ti, <4 x float> %i.rt, <4 x float> %i.te)
  %i.tk = load <2 x float>, ptr %i.rm, align 4, !tbaa !20, !noalias !233 ; 2 uses
  %i.tl = load float, ptr %i.rp, align 4, !tbaa !20, !noalias !233
  %i.tm = shufflevector <2 x float> %i.sv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tn = insertelement <4 x float> %i.tm, float 0.000000e+00, i64 3
  %i.to = shufflevector <2 x float> %i.tk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tp = shufflevector <4 x float> %i.tn, <4 x float> %i.to, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tp, <4 x float> %i.rx, <4 x float> %i.tj)
  %i.tr = shufflevector <2 x float> %i.su, <2 x float> %i.sy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ts = insertelement <4 x float> %i.tr, float 0.000000e+00, i64 3 ; 2 uses
  %i.tt = fmul <4 x float> %i.ts, %i.sf
  %i.tu = shufflevector <2 x float> %i.st, <2 x float> %i.sw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.tv = insertelement <4 x float> %i.tu, float 0.000000e+00, i64 3 ; 2 uses
  %i.tw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tv, <4 x float> %i.sh, <4 x float> %i.tt)
  %i.tx = shufflevector <2 x float> %i.sv, <2 x float> %i.tk, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ty = insertelement <4 x float> %i.tx, float 0.000000e+00, i64 3 ; 2 uses
  %i.tz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ty, <4 x float> %i.sj, <4 x float> %i.tw)
  %i.ua = insertelement <4 x float> %i.ts, float %i.sz, i64 2
  %i.ub = fmul <4 x float> %i.ua, %i.so
  %i.uc = insertelement <4 x float> %i.tv, float %i.sx, i64 2
  %i.ud = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uc, <4 x float> %i.sm, <4 x float> %i.ub)
  %i.ue = insertelement <4 x float> %i.ty, float %i.tl, i64 2
  %i.uf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ue, <4 x float> %i.sr, <4 x float> %i.ud)
  store <4 x float> %i.tq, ptr %i.rq, align 4
  store <4 x float> %i.tz, ptr %i.rz, align 4
  store <4 x float> %i.uf, ptr %i.sk, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.rc, i64 16, i1 false), !tbaa.struct !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 4 dereferenceable(16) %i.rd, i64 16, i1 false), !tbaa.struct !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 4 dereferenceable(16) %i.re, i64 16, i1 false), !tbaa.struct !46
  %i.ug = load ptr, ptr %i.om, align 8, !tbaa !47
  %i.uh = getelementptr inbounds nuw [688 x i8], ptr %i.ug, i64 %indvars.iv1573
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %i.ui, i64 16, i1 false), !tbaa.struct !46
  %i.uj = load <2 x float>, ptr %i.rq, align 4    ; 3 uses
  %i.uk = load <2 x float>, ptr %i.rz, align 4    ; 3 uses
  %i.ul = load <2 x float>, ptr %i.sk, align 4    ; 2 uses
  %i.um = getelementptr inbounds [32 x i8], ptr %i.eb, i64 %i.rg ; 6 uses
  %i.un = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv.next1574 ; 13 uses
  %i.uo = load float, ptr %i.um, align 4, !tbaa !20 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.uq = load float, ptr %i.up, align 4, !tbaa !20 ; 2 uses
  %i.ur = load float, ptr %i.or, align 8, !tbaa !20
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.ut = load float, ptr %i.us, align 4, !tbaa !20 ; 2 uses
  %i.uu = load <4 x float>, ptr %i.os, align 8
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uw = load float, ptr %i.ot, align 8, !tbaa !20
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !20 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.um, i64 20
  %i.va = load float, ptr %i.uz, align 4, !tbaa !20 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !20 ; 2 uses
  %.sroa.201212.0.copyload = load float, ptr %.sroa.51068.0..sroa_idx, align 4 ; 3 uses
  %.sroa.121202.0.copyload = load float, ptr %.sroa.41067.0..sroa_idx, align 4 ; 2 uses
  %i.vd = load <2 x float>, ptr %.sroa.91071.16..sroa_idx, align 4 ; 3 uses
  %i.ve = load <2 x float>, ptr %.sroa.141075.32..sroa_idx, align 4 ; 3 uses
  %i.vf = load float, ptr %i.oq, align 4, !tbaa !20
  %i.vg = load float, ptr %10, align 8, !tbaa !20
  %i.vh = load <2 x float>, ptr %i.on, align 8, !tbaa !20 ; 2 uses
  %i.vi = load <2 x float>, ptr %i.oo, align 8, !tbaa !20 ; 2 uses
  %i.vj = insertelement <2 x float> poison, float %i.uq, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = shufflevector <2 x float> %i.vh, <2 x float> %i.vi, <2 x i32> <i32 1, i32 3>
  %i.vm = fmul <2 x float> %i.vk, %i.vl
  %i.vn = fmul float %i.vf, %i.uq
  %i.vo = shufflevector <2 x float> %i.vh, <2 x float> %i.vi, <2 x i32> <i32 0, i32 2>
  %i.vp = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.vq = shufflevector <2 x float> %i.vp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vo, <2 x float> %i.vq, <2 x float> %i.vm)
  %i.vs = tail call float @llvm.fmuladd.f32(float %i.vg, float %i.uo, float %i.vn)
  %i.vt = insertelement <2 x float> %i.uv, float %i.uw, i64 1
  %i.vu = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.afr = shufflevector <2 x float> %i.afp, <2 x float> %i.afq, <2 x i32> <i32 0, i32 2>
  %i.afs = shufflevector <2 x float> %i.afp, <2 x float> %i.afq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aft = insertelement <2 x float> poison, float %.sroa.51056.0.copyload, i64 0
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afs, <2 x float> %i.afo, <2 x float> %i.afm) ; 2 uses
  %i.afw = fneg <2 x float> %i.afv
  %i.afx = load float, ptr %.sroa.141075.32..sroa_idx, align 4, !tbaa !20
  %i.afy = load float, ptr %i.sk, align 4, !tbaa !20
  %i.afz = load float, ptr %.sroa.151076.32..sroa_idx, align 4, !tbaa !20
  %i.aga = load <2 x float>, ptr %i.afa, align 8  ; 4 uses
  %i.agb = insertelement <2 x float> %i.aga, float %.sroa.41059.0.copyload1395, i64 0
  %i.agc = insertelement <2 x float> poison, float %i.afx, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = fmul <2 x float> %i.agb, %i.agd
  %i.agf = insertelement <2 x float> poison, float %i.afy, i64 0
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.agi = insertelement <2 x float> %i.agh, float %.sroa.01058.0.copyload1393, i64 0
  %i.agj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agg, <2 x float> %i.agi, <2 x float> %i.age)
  %i.agk = insertelement <2 x float> poison, float %i.afz, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = insertelement <2 x float> %i.afn, float %.sroa.51056.0.copyload, i64 1
  %i.agn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agl, <2 x float> %i.agm, <2 x float> %i.agj) ; 3 uses
  %i.ago = extractelement <2 x float> %i.agn, i64 0
  %i.agp = fneg float %i.ago
  %.sroa.3.12.vec.insert.i570 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agp, i64 0
  %i.agq = fneg <2 x float> %i.agn
  %.sroa.3.12.vec.insert.i560 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.agq, <2 x i32> <i32 3, i32 1>
  %i.agr = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ags = fmul <2 x float> %i.agr, %i.afr
  %i.agt = shufflevector <2 x float> %i.aga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afj, <2 x float> %i.agt, <2 x float> %i.ags)
  %i.agv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afs, <2 x float> %i.afu, <2 x float> %i.agu) ; 2 uses
  %i.agw = fneg <2 x float> %i.agv
  store <2 x float> %i.afw, ptr %i.afb, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i570, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !21
  store <2 x float> %i.agw, ptr %i.afc, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i560, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !21
  %i.agx = load ptr, ptr %i.om, align 8, !tbaa !47 ; 3 uses
  %i.agy = getelementptr inbounds nuw [688 x i8], ptr %i.agx, i64 %indvars.iv1573 ; 5 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 4 ; 2 uses
  %i.aha = load <2 x float>, ptr %i.agz, align 4, !tbaa !20
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agy, i64 12
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !20
  %i.ahd = load <2 x float>, ptr %i.un, align 4, !tbaa !20 ; 3 uses
  %i.ahe = fmul <2 x float> %i.aha, %i.ahd
  %i.ahf = load float, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !20
  %i.ahg = load float, ptr %i.agy, align 8, !tbaa !76
  %i.ahh = load <2 x float>, ptr %i.xq, align 4, !tbaa !20 ; 3 uses
  %i.ahi = insertelement <2 x float> poison, float %i.ahg, i64 0 ; 2 uses
  %i.ahj = shufflevector <2 x float> %i.ahi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahk = fmul <2 x float> %i.ahj, %i.ahh
  %i.ahl = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !20
  %i.ahm = insertelement <2 x float> %i.ahi, float %i.ahc, i64 1
  %i.ahn = insertelement <2 x float> poison, float %i.ahl, i64 0
  %i.aho = insertelement <2 x float> %i.ahn, float %i.ahf, i64 1 ; 3 uses
  %i.ahp = fmul <2 x float> %i.ahm, %i.aho
  %i.ahq = shufflevector <2 x float> %i.ahh, <2 x float> %i.ahd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ahr = fmul <2 x float> %i.ahq, %i.ahq
  %i.ahs = shufflevector <2 x float> %i.ahh, <2 x float> %i.ahd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahs, <2 x float> %i.ahs, <2 x float> %i.ahr)
  %i.ahu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aho, <2 x float> %i.aho, <2 x float> %i.aht) ; 2 uses
  %i.ahv = fcmp ogt <2 x float> %i.ahu, splat (float f0x34000000)
  %i.ahw = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ahu)
  %i.ahx = select <2 x i1> %i.ahv, <2 x float> %i.ahw, <2 x float> zeroinitializer
  %i.ahy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.ahx, <2 x float> %i.h) ; 3 uses
  %i.ahz = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aia = fmul <2 x float> %i.ahe, %i.ahz
  %i.aib = shufflevector <2 x float> %i.ahy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aic = fmul <2 x float> %i.ahk, %i.aib
  %i.aid = fmul <2 x float> %i.ahp, %i.ahy
  %i.aie = fsub <2 x float> %i.aic, %i.afv        ; 2 uses
  store <2 x float> %i.aie, ptr %i.afb, align 4, !tbaa !20
  %i.aif = fsub <2 x float> %i.aid, %i.agn        ; 2 uses
  %i.aig = extractelement <2 x float> %i.aif, i64 0 ; 2 uses
  store float %i.aig, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !20
  %i.aih = fsub <2 x float> %i.aia, %i.agv        ; 2 uses
  store <2 x float> %i.aih, ptr %i.afc, align 4, !tbaa !20
  %i.aii = extractelement <2 x float> %i.aif, i64 1 ; 2 uses
  store float %i.aii, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !20
  %i.aij = load i8, ptr %i.oy, align 4, !tbaa !66, !range !68, !noundef !69
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aim = load float, ptr %i.agz, align 4, !tbaa !20
  %i.ain = load float, ptr %i.un, align 4, !tbaa !20 ; 2 uses
  %i.aio = load <2 x float>, ptr %i.ail, align 8, !tbaa !20 ; 2 uses
  %i.aip = load <2 x float>, ptr %i.acw, align 4, !tbaa !20 ; 4 uses
  %i.aiq = shufflevector <2 x float> %i.aio, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.air = insertelement <2 x float> %i.aiq, float %i.aim, i64 1
  %i.ais = shufflevector <2 x float> %i.aip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ait = insertelement <2 x float> %i.ais, float %i.ain, i64 1 ; 2 uses
  %i.aiu = fmul <2 x float> %i.air, %i.ait        ; 2 uses
  %i.aiv = fmul <2 x float> %i.aio, %i.aip        ; 2 uses
  %i.aiw = fneg <2 x float> %i.aiv
  %i.aix = fmul <2 x float> %i.ait, %i.aiw
  %i.aiy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aip, <2 x float> %i.aiu, <2 x float> %i.aix)
  %i.aiz = extractelement <2 x float> %i.aiu, i64 1
  %i.aja = fneg float %i.aiz
  %i.ajb = extractelement <2 x float> %i.aip, i64 0
  %i.ajc = fmul float %i.ajb, %i.aja
  %i.ajd = extractelement <2 x float> %i.aiv, i64 0
  %i.aje = tail call float @llvm.fmuladd.f32(float %i.ain, float %i.ajd, float %i.ajc)
  %i.ajf = fadd <2 x float> %i.aih, %i.aiy
  store <2 x float> %i.ajf, ptr %i.afc, align 4, !tbaa !20
  %i.ajg = fadd float %i.aii, %i.aje
  store float %i.ajg, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  br i1 %5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ajh = load float, ptr %i.xq, align 4, !tbaa !20 ; 2 uses
  %i.aji = load float, ptr %i.un, align 4, !tbaa !20 ; 2 uses
  %i.ajj = fneg float %i.ajh
  %i.ajk = load float, ptr %i.agy, align 8, !tbaa !20 ; 2 uses
  %i.ajl = load <2 x float>, ptr %i.acw, align 4, !tbaa !20 ; 3 uses
  %i.ajm = load <2 x float>, ptr %i.add, align 4, !tbaa !20 ; 3 uses
  %i.ajn = fneg <2 x float> %i.ajm
  %i.ajo = shufflevector <2 x float> %i.ajl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajp = insertelement <2 x float> %i.ajo, float %i.aji, i64 1
  %i.ajq = fmul <2 x float> %i.ajp, %i.ajn
  %i.ajr = shufflevector <2 x float> %i.ajm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajs = insertelement <2 x float> %i.ajr, float %i.ajh, i64 1
  %i.ajt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajl, <2 x float> %i.ajs, <2 x float> %i.ajq)
  %i.aju = extractelement <2 x float> %i.ajl, i64 0
  %i.ajv = fmul float %i.aju, %i.ajj
  %i.ajw = extractelement <2 x float> %i.ajm, i64 0
  %i.ajx = tail call float @llvm.fmuladd.f32(float %i.aji, float %i.ajw, float %i.ajv)
  %i.ajy = insertelement <2 x float> poison, float %i.ajk, i64 0
  %i.ajz = shufflevector <2 x float> %i.ajy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aka = fmul <2 x float> %i.ajt, %i.ajz
  %i.akb = fmul float %i.ajk, %i.ajx
  %i.akc = fadd <2 x float> %i.aka, %i.aie
  store <2 x float> %i.akc, ptr %i.afb, align 4, !tbaa !20
  %i.akd = fadd float %i.akb, %i.aig
  store float %i.akd, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !20
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %i.ake = phi ptr [ %i.agx, %bb.ad ], [ %i.agx, %bb.ae ], [ %.pre1658, %bb.ab ]
  %i.akf = getelementptr inbounds nuw [144 x i8], ptr %i.en, i64 %indvars.iv.next1574 ; 13 uses
  %i.akg = getelementptr inbounds nuw [688 x i8], ptr %i.ake, i64 %indvars.iv1573 ; 4 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !20 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akg, i64 12
  %i.akl = load float, ptr %i.aki, align 4, !tbaa !20
  %i.akm = load float, ptr %i.akj, align 4, !tbaa !20
  %i.akn = load float, ptr %i.akk, align 4, !tbaa !20
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akf, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.akf, i8 0, i64 48, i1 false)
  store float %i.akh, ptr %i.ako, align 4
  %.sroa.4992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 52
  %.sroa.9996.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4992.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akh, ptr %.sroa.9996.16..sroa_idx, align 4
  %.sroa.10997.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 72
  %.sroa.151001.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10997.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akh, ptr %.sroa.151001.32..sroa_idx, align 4
  %.sroa.161002.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 92
  store float 0.000000e+00, ptr %.sroa.161002.32..sroa_idx, align 4, !tbaa !21
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akf, i64 96
  store float %i.akl, ptr %i.akp, align 4
  %.sroa.4974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 100
  %.sroa.9978.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4974.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akm, ptr %.sroa.9978.16..sroa_idx, align 4
  %.sroa.10979.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 120
  %.sroa.15983.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10979.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akn, ptr %.sroa.15983.32..sroa_idx, align 4
  %.sroa.16984.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akf, i64 140
  store float 0.000000e+00, ptr %.sroa.16984.32..sroa_idx, align 4, !tbaa !21
  %exitcond1577.not = icmp eq i64 %indvars.iv.next1574, %wide.trip.count1576
  br i1 %exitcond1577.not, label %.lr.ph.i624.lr.ph, label %bb.v, !llvm.loop !165

._crit_edge1527:                                  ; preds = %bb.av, %bb.u
  %i.akq = load i8, ptr %i.ig, align 1, !tbaa !61, !range !68, !noundef !69
  %i.akr = trunc nuw i8 %i.akq to i1
  br i1 %i.akr, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1527
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !89 ; 2 uses
  %.not.i622 = icmp eq ptr %i.akt, null
  br i1 %.not.i622, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623: ; preds = %bb.ag
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 224
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !97
  %i.akw = and i32 %i.akv, 3
  %.not1402 = icmp eq i32 %i.akw, 0
  br i1 %.not1402, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread

.lr.ph.i624:                                      ; preds = %.lr.ph.i624.lr.ph, %bb.av
  %indvars.iv1627 = phi i64 [ %i.el, %.lr.ph.i624.lr.ph ], [ %indvars.iv.next1628, %bb.av ] ; 7 uses
  %indvars.iv.next1628 = add nsw i64 %indvars.iv1627, -1 ; 9 uses
  %i.akx = load ptr, ptr %i.oz, align 8, !tbaa !47 ; 3 uses
  %i.aky = trunc nuw nsw i64 %indvars.iv.next1628 to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i624
  %.010.i625 = phi i32 [ %i.aky, %.lr.ph.i624 ], [ %i.alh, %bb.ai ]
  %i.akz = sext i32 %.010.i625 to i64
  %i.ala = getelementptr inbounds [688 x i8], ptr %i.akx, i64 %i.akz ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 544
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !98 ; 2 uses
  %.not.i.i626 = icmp eq ptr %i.alc, null
  br i1 %.not.i.i626, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627

_ZNK11btMultiBody15isLinkKinematicEi.exit.i627:   ; preds = %bb.ah
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 224
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !97
  %i.alf = and i32 %i.ale, 2
  %.not8.i628 = icmp eq i32 %i.alf, 0
  br i1 %.not8.i628, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ala, i64 20
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !77 ; 2 uses
  %.not.i629 = icmp eq i32 %i.alh, -1
  br i1 %.not.i629, label %._crit_edge.i630, label %bb.ah, !llvm.loop !6

._crit_edge.i630:                                 ; preds = %bb.ai
  %i.ali = load ptr, ptr %i.pa, align 8, !tbaa !89 ; 2 uses
  %.not.i6.i631 = icmp eq ptr %i.ali, null
  br i1 %.not.i6.i631, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633: ; preds = %._crit_edge.i630
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 224
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !97
  %i.all = and i32 %i.alk, 2
  %.not1405 = icmp eq i32 %i.all, 0
  br i1 %.not1405, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.av

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread: ; preds = %bb.ah, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627, %._crit_edge.i630, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633
  %i.alm = getelementptr inbounds [688 x i8], ptr %i.akx, i64 %indvars.iv.next1628 ; 5 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 20
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !77
  %i.alp = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %indvars.iv1627 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.alp, i64 16, i1 false), !tbaa.struct !46
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, ptr noundef nonnull align 4 dereferenceable(16) %i.alq, i64 16, i1 false), !tbaa.struct !46
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, ptr noundef nonnull align 4 dereferenceable(16) %i.alr, i64 16, i1 false), !tbaa.struct !46
  %i.als = getelementptr inbounds nuw i8, ptr %i.alm, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull align 8 dereferenceable(16) %i.als, i64 16, i1 false), !tbaa.struct !46
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alm, i64 556
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !79 ; 2 uses
  %i.alv = icmp sgt i32 %i.alu, 0
  br i1 %i.alv, label %.lr.ph1433, label %.preheader1410.._crit_edge1443_crit_edge

.lr.ph1433:                                       ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread
  %i.alw = getelementptr inbounds nuw [144 x i8], ptr %i.en, i64 %indvars.iv1627 ; 22 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 96
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 104
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 112
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 120
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alw, i64 128
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 132
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alw, i64 136
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alw, i64 32
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alw, i64 20
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alw, i64 56
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alw, i64 64
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alw, i64 72
  %i.amp = getelementptr inbounds nuw i8, ptr %i.alw, i64 80
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alw, i64 84
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alw, i64 88
  %i.ams = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %indvars.iv1627 ; 4 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 16
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ams, i64 24
  %i.amw = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %indvars.iv.next1628 ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %.phi.trans.insert1684 = getelementptr inbounds nuw i8, ptr %i.alm, i64 328
  %.pre1685 = load i32, ptr %.phi.trans.insert1684, align 8, !tbaa !86
  br label %bb.aj

.preheader1410:                                   ; preds = %bb.al
  %i.ana = icmp sgt i32 %i.ath, 0
  br i1 %i.ana, label %.lr.ph1442, label %.preheader1410.._crit_edge1443_crit_edge

.preheader1410.._crit_edge1443_crit_edge:         ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, %.preheader1410
  %i.anb = phi i32 [ %i.ath, %.preheader1410 ], [ %i.alu, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ]
  %.lcssa14311752 = phi ptr [ %i.ari, %.preheader1410 ], [ %i.alm, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ] ; 2 uses
  %.phi.trans.insert1666 = getelementptr inbounds nuw i8, ptr %.lcssa14311752, i64 328
  %.pre1667 = load i32, ptr %.phi.trans.insert1666, align 8, !tbaa !86
  br label %._crit_edge1443

.lr.ph1442:                                       ; preds = %.preheader1410
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ari, i64 328
  %i.and = getelementptr inbounds nuw i8, ptr %i.ari, i64 136
  %i.ane = load i32, ptr %i.anc, align 8, !tbaa !86 ; 2 uses
  %i.anf = sext i32 %i.ane to i64
  %i.ang = zext nneg i32 %i.ath to i64            ; 5 uses
  %invariant.gep = getelementptr [32 x i8], ptr %i.ex, i64 %i.anf ; 5 uses
  %min.iters.check1818 = icmp ult i32 %i.ath, 5
  %i.anh = and i64 %i.ang, 3                      ; 2 uses
  %i.ani = icmp eq i64 %i.anh, 0
  %i.anj = select i1 %i.ani, i64 4, i64 %i.anh
  %n.vec1820 = sub nsw i64 %i.ang, %i.anj         ; 2 uses
  br label %.lr.ph1439

bb.aj:                                            ; preds = %.lr.ph1433, %bb.al
  %i.ank = phi i32 [ %.pre1685, %.lr.ph1433 ], [ %i.atc, %bb.al ]
  %indvars.iv1578 = phi i64 [ 0, %.lr.ph1433 ], [ %indvars.iv.next1579, %bb.al ] ; 5 uses
  %i.anl = phi ptr [ %i.akx, %.lr.ph1433 ], [ %.pre1659, %bb.al ]
  %i.anm = getelementptr inbounds [688 x i8], ptr %i.anl, i64 %indvars.iv.next1628
  %i.ann = trunc nuw nsw i64 %indvars.iv1578 to i32 ; 2 uses
  %i.ano = add nsw i32 %i.ank, %i.ann
  %i.anp = sext i32 %i.ano to i64
  %i.anq = getelementptr inbounds [32 x i8], ptr %i.ex, i64 %i.anp ; 4 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anm, i64 136
  %i.ans = getelementptr inbounds nuw [32 x i8], ptr %i.anr, i64 %indvars.iv1578 ; 6 uses
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.anw = load float, ptr %i.aly, align 4, !tbaa !20, !noalias !236
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.any = load float, ptr %i.anx, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.anz = load float, ptr %i.ama, align 4, !tbaa !20, !noalias !236
  %i.aoa = load float, ptr %i.amb, align 4, !tbaa !20, !noalias !236
  %i.aob = load float, ptr %i.amc, align 4, !tbaa !20, !noalias !236
  %i.aoc = fmul float %i.anv, %i.aob
  %i.aod = call float @llvm.fmuladd.f32(float %i.aoa, float %i.ant, float %i.aoc)
  %i.aoe = load float, ptr %i.amd, align 4, !tbaa !20, !noalias !236
  %i.aof = call noundef float @llvm.fmuladd.f32(float %i.aoe, float %i.any, float %i.aod)
  %i.aog = load float, ptr %i.ami, align 4, !tbaa !20, !noalias !237 ; 2 uses
  %i.aoh = load float, ptr %i.amj, align 4, !tbaa !20, !noalias !237 ; 2 uses
  %i.aoi = load float, ptr %i.amk, align 4, !tbaa !20, !noalias !237 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ans, i64 20
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !20, !noalias !236 ; 3 uses
  %i.aop = fmul float %i.aoh, %i.aom
  %i.aoq = call float @llvm.fmuladd.f32(float %i.aog, float %i.aok, float %i.aop)
  %i.aor = call noundef float @llvm.fmuladd.f32(float %i.aoi, float %i.aoo, float %i.aoq)
  %i.aos = fadd float %i.aof, %i.aor              ; 2 uses
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aos, i64 0
  %i.aot = load float, ptr %i.amm, align 4, !tbaa !20, !noalias !236
  %i.aou = load float, ptr %i.amo, align 4, !tbaa !20, !noalias !236
  %i.aov = load float, ptr %i.amp, align 4, !tbaa !20, !noalias !236
  %i.aow = load float, ptr %i.amq, align 4, !tbaa !20, !noalias !236
  %i.aox = fmul float %i.aom, %i.aow
  %i.aoy = call float @llvm.fmuladd.f32(float %i.aov, float %i.aok, float %i.aox)
  %i.aoz = load float, ptr %i.amr, align 4, !tbaa !20, !noalias !236
  %i.apa = call noundef float @llvm.fmuladd.f32(float %i.aoz, float %i.aoo, float %i.aoy)
  %i.apb = load <2 x float>, ptr %i.alw, align 4, !tbaa !20, !noalias !237 ; 3 uses
  %i.apc = load float, ptr %i.amg, align 4, !tbaa !20, !noalias !237
  %i.apd = load <2 x float>, ptr %i.ame, align 4, !tbaa !20, !noalias !237 ; 3 uses
  %i.ape = load float, ptr %i.amh, align 4, !tbaa !20, !noalias !237
  %i.apf = load <2 x float>, ptr %i.alx, align 4, !tbaa !20, !noalias !236 ; 2 uses
  %i.apg = load <2 x float>, ptr %i.alz, align 4, !tbaa !20, !noalias !236 ; 2 uses
  %i.aph = insertelement <2 x float> poison, float %i.anv, i64 0
  %i.api = shufflevector <2 x float> %i.aph, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apj = shufflevector <2 x float> %i.apf, <2 x float> %i.apg, <2 x i32> <i32 1, i32 3>
  %i.apk = fmul <2 x float> %i.api, %i.apj
  %i.apl = shufflevector <2 x float> %i.apf, <2 x float> %i.apg, <2 x i32> <i32 0, i32 2>
  %i.apm = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.apn = shufflevector <2 x float> %i.apm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apl, <2 x float> %i.apn, <2 x float> %i.apk)
  %i.app = insertelement <2 x float> poison, float %i.anw, i64 0
  %i.apq = insertelement <2 x float> %i.app, float %i.anz, i64 1
  %i.apr = insertelement <2 x float> poison, float %i.any, i64 0
  %i.aps = shufflevector <2 x float> %i.apr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apq, <2 x float> %i.aps, <2 x float> %i.apo)
  %i.apu = load <2 x float>, ptr %i.amf, align 4, !tbaa !20, !noalias !237 ; 3 uses
  %i.apv = extractelement <2 x float> %i.apu, i64 1
  %i.apw = fmul float %i.anv, %i.apv
  %i.apx = extractelement <2 x float> %i.apu, i64 0
  %i.apy = call float @llvm.fmuladd.f32(float %i.apx, float %i.ant, float %i.apw)
  %i.apz = call noundef float @llvm.fmuladd.f32(float %i.aoi, float %i.any, float %i.apy)
  %i.aqa = insertelement <2 x float> %i.apd, float %i.ape, i64 1
  %i.aqb = insertelement <2 x float> poison, float %i.aom, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqd = fmul <2 x float> %i.aqa, %i.aqc
  %i.aqe = insertelement <2 x float> %i.apb, float %i.apc, i64 1
  %i.aqf = insertelement <2 x float> poison, float %i.aok, i64 0
  %i.aqg = shufflevector <2 x float> %i.aqf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqe, <2 x float> %i.aqg, <2 x float> %i.aqd)
  %i.aqi = insertelement <2 x float> poison, float %i.aoo, i64 0
  %i.aqj = shufflevector <2 x float> %i.aqi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apu, <2 x float> %i.aqj, <2 x float> %i.aqh)
  %i.aql = fadd <2 x float> %i.apt, %i.aqk        ; 3 uses
  %i.aqm = shufflevector <2 x float> %i.apb, <2 x float> %i.apd, <2 x i32> <i32 1, i32 3>
  %i.aqn = fmul <2 x float> %i.api, %i.aqm
  %i.aqo = shufflevector <2 x float> %i.apb, <2 x float> %i.apd, <2 x i32> <i32 0, i32 2>
  %i.aqp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqo, <2 x float> %i.apn, <2 x float> %i.aqn)
  %i.aqq = insertelement <2 x float> poison, float %i.aog, i64 0
  %i.aqr = insertelement <2 x float> %i.aqq, float %i.aoh, i64 1
  %i.aqs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqr, <2 x float> %i.aps, <2 x float> %i.aqp)
  %i.aqt = load <2 x float>, ptr %i.aml, align 4, !tbaa !20, !noalias !236 ; 2 uses
  %i.aqu = load <2 x float>, ptr %i.amn, align 4, !tbaa !20, !noalias !236 ; 2 uses
  %i.aqv = shufflevector <2 x float> %i.aqt, <2 x float> %i.aqu, <2 x i32> <i32 1, i32 3>
  %i.aqw = fmul <2 x float> %i.aqc, %i.aqv
  %i.aqx = shufflevector <2 x float> %i.aqt, <2 x float> %i.aqu, <2 x i32> <i32 0, i32 2>
  %i.aqy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqx, <2 x float> %i.aqg, <2 x float> %i.aqw)
  %i.aqz = insertelement <2 x float> poison, float %i.aot, i64 0
  %i.ara = insertelement <2 x float> %i.aqz, float %i.aou, i64 1
  %i.arb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ara, <2 x float> %i.aqj, <2 x float> %i.aqy)
  %i.arc = fadd <2 x float> %i.aqs, %i.arb        ; 3 uses
  %i.ard = fadd float %i.apz, %i.apa              ; 2 uses
  %.sroa.3.12.vec.insert.i27.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ard, i64 0
  store <2 x float> %i.arc, ptr %i.anq, align 4
  %.sroa.4965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i, ptr %.sroa.4965.0..sroa_idx, align 4, !tbaa !21
  %.sroa.5966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  store <2 x float> %i.aql, ptr %.sroa.5966.0..sroa_idx, align 4
  %.sroa.6967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anq, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.6967.0..sroa_idx, align 4, !tbaa !21
  %.pre1659 = load ptr, ptr %i.oz, align 8, !tbaa !47 ; 3 uses
  br i1 %5, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.are = getelementptr inbounds [688 x i8], ptr %.pre1659, i64 %indvars.iv.next1628
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 520
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.arf, i64 %indvars.iv1578
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.0417 = phi float [ %i.arh, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.ari = getelementptr inbounds [688 x i8], ptr %.pre1659, i64 %indvars.iv.next1628 ; 7 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 136
  %i.ark = getelementptr inbounds nuw [32 x i8], ptr %i.arj, i64 %indvars.iv1578 ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 24
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !20
  %i.aro = load float, ptr %i.amt, align 4, !tbaa !20
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !20
  %i.arr = load float, ptr %i.amv, align 4, !tbaa !20
  %i.ars = load float, ptr %i.amy, align 4, !tbaa !20
  %i.art = load float, ptr %i.amz, align 4, !tbaa !20
  %i.aru = load <2 x float>, ptr %i.arl, align 4, !tbaa !20 ; 2 uses
  %i.arv = load <2 x float>, ptr %i.ams, align 4, !tbaa !20 ; 2 uses
  %i.arw = load <2 x float>, ptr %i.ark, align 4, !tbaa !20 ; 2 uses
  %i.arx = load <2 x float>, ptr %i.amu, align 4, !tbaa !20 ; 2 uses
  %i.ary = load <2 x float>, ptr %i.amx, align 4, !tbaa !20 ; 2 uses
  %i.arz = shufflevector <2 x float> %i.aru, <2 x float> %i.ary, <2 x i32> <i32 1, i32 3>
  %i.asa = shufflevector <2 x float> %i.arv, <2 x float> %i.arc, <2 x i32> <i32 1, i32 3>
  %i.asb = fmul <2 x float> %i.arz, %i.asa
  %i.asc = shufflevector <2 x float> %i.aru, <2 x float> %i.ary, <2 x i32> <i32 0, i32 2>
  %i.asd = shufflevector <2 x float> %i.arv, <2 x float> %i.arc, <2 x i32> <i32 0, i32 2>
  %i.ase = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asc, <2 x float> %i.asd, <2 x float> %i.asb)
  %i.asf = insertelement <2 x float> poison, float %i.arn, i64 0
  %i.asg = insertelement <2 x float> %i.asf, float %i.ars, i64 1
  %i.ash = insertelement <2 x float> poison, float %i.aro, i64 0
  %i.asi = insertelement <2 x float> %i.ash, float %i.ard, i64 1
  %i.asj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asg, <2 x float> %i.asi, <2 x float> %i.ase)
  %i.ask = load <2 x float>, ptr %i.amw, align 4, !tbaa !20 ; 2 uses
  %i.asl = shufflevector <2 x float> %i.arw, <2 x float> %i.ask, <2 x i32> <i32 1, i32 3>
  %i.asm = shufflevector <2 x float> %i.arx, <2 x float> %i.aql, <2 x i32> <i32 1, i32 3>
  %i.asn = fmul <2 x float> %i.asl, %i.asm
  %i.aso = shufflevector <2 x float> %i.arw, <2 x float> %i.ask, <2 x i32> <i32 0, i32 2>
  %i.asp = shufflevector <2 x float> %i.arx, <2 x float> %i.aql, <2 x i32> <i32 0, i32 2>
  %i.asq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aso, <2 x float> %i.asp, <2 x float> %i.asn)
  %i.asr = insertelement <2 x float> poison, float %i.arq, i64 0
  %i.ass = insertelement <2 x float> %i.asr, float %i.art, i64 1
  %i.ast = insertelement <2 x float> poison, float %i.arr, i64 0
  %i.asu = insertelement <2 x float> %i.ast, float %i.aos, i64 1
  %i.asv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ass, <2 x float> %i.asu, <2 x float> %i.asq)
  %i.asw = fadd <2 x float> %i.asj, %i.asv        ; 2 uses
  %i.asx = extractelement <2 x float> %i.asw, i64 0
  %i.asy = fsub float %.0417, %i.asx
  %i.asz = extractelement <2 x float> %i.asw, i64 1
  %i.ata = fsub float %i.asy, %i.asz
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ari, i64 328
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !86 ; 2 uses
  %i.atd = add nsw i32 %i.atc, %i.ann
  %i.ate = sext i32 %i.atd to i64
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ate
  store float %i.ata, ptr %i.atf, align 4, !tbaa !20
  %indvars.iv.next1579 = add nuw nsw i64 %indvars.iv1578, 1 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ari, i64 556
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !79 ; 6 uses
  %i.ati = sext i32 %i.ath to i64
  %i.atj = icmp slt i64 %indvars.iv.next1579, %i.ati
  br i1 %i.atj, label %bb.aj, label %.preheader1410, !llvm.loop !170

._crit_edge1443:                                  ; preds = %._crit_edge1440, %.preheader1410.._crit_edge1443_crit_edge
  %i.atk = phi i1 [ false, %.preheader1410.._crit_edge1443_crit_edge ], [ true, %._crit_edge1440 ] ; 2 uses
  %i.atl = phi i32 [ %i.anb, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.ath, %._crit_edge1440 ] ; 3 uses
  %.lcssa14311751 = phi ptr [ %.lcssa14311752, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.ari, %._crit_edge1440 ]
  %i.atm = phi i32 [ %.pre1667, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.ane, %._crit_edge1440 ] ; 4 uses
  %i.atn = mul i32 %i.atm, %i.atm
  %i.ato = zext i32 %i.atn to i64                 ; 2 uses
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ato ; 4 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %.lcssa14311751, i64 564
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !78
  switch i32 %i.atr, label %bb.ap [
    i32 1, label %bb.am
    i32 0, label %bb.am
    i32 2, label %.preheader1409
    i32 3, label %.preheader1409
  ]

.lr.ph1439:                                       ; preds = %.lr.ph1442, %._crit_edge1440
  %indvars.iv1586 = phi i64 [ 0, %.lr.ph1442 ], [ %indvars.iv.next1587, %._crit_edge1440 ] ; 3 uses
  %i.ats = mul nuw nsw i64 %indvars.iv1586, %i.ang
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ats ; 2 uses
  %i.atu = getelementptr inbounds nuw [32 x i8], ptr %i.and, i64 %indvars.iv1586 ; 4 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 16
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atu, i64 24
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %.pre1662 = load float, ptr %i.atw, align 4, !tbaa !20 ; 2 uses
  %i.aty = load <2 x float>, ptr %i.atv, align 4, !tbaa !20 ; 4 uses
  %i.atz = load <2 x float>, ptr %i.atu, align 4, !tbaa !20 ; 4 uses
  %.pre1665 = load float, ptr %i.atx, align 4, !tbaa !20 ; 2 uses
  br i1 %min.iters.check1818, label %scalar.ph1817.preheader, label %vector.ph1819

scalar.ph1817.preheader:                          ; preds = %vector.body1831, %.lr.ph1439
  %indvars.iv1581.ph = phi i64 [ 0, %.lr.ph1439 ], [ %n.vec1820, %vector.body1831 ]
  %i.aua = shufflevector <2 x float> %i.aty, <2 x float> %i.atz, <2 x i32> <i32 1, i32 3>
  %i.aub = shufflevector <2 x float> %i.aty, <2 x float> %i.atz, <2 x i32> <i32 0, i32 2>
  %i.auc = insertelement <2 x float> poison, float %.pre1662, i64 0
  %i.aud = insertelement <2 x float> %i.auc, float %.pre1665, i64 1
  br label %scalar.ph1817

vector.ph1819:                                    ; preds = %.lr.ph1439
  %broadcast.splat = shufflevector <2 x float> %i.aty, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1822 = shufflevector <2 x float> %i.aty, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1823 = insertelement <4 x float> poison, float %.pre1662, i64 0
  %broadcast.splat1824 = shufflevector <4 x float> %broadcast.splatinsert1823, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1826 = shufflevector <2 x float> %i.atz, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1828 = shufflevector <2 x float> %i.atz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1829 = insertelement <4 x float> poison, float %.pre1665, i64 0
  %broadcast.splat1830 = shufflevector <4 x float> %broadcast.splatinsert1829, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1831

vector.body1831:                                  ; preds = %vector.body1831, %vector.ph1819
  %index1832 = phi i64 [ 0, %vector.ph1819 ], [ %index.next1833, %vector.body1831 ] ; 6 uses
  %i.aue = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1832 ; 6 uses
  %i.auf = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1832 ; 6 uses
  %i.aug = getelementptr i8, ptr %i.auf, i64 32
  %i.auh = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1832 ; 6 uses
  %i.aui = getelementptr i8, ptr %i.auh, i64 64
  %i.auj = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1832 ; 6 uses
  %i.auk = getelementptr i8, ptr %i.auj, i64 96
  %i.aul = load float, ptr %i.aue, align 4, !tbaa !20
  %i.aum = load float, ptr %i.aug, align 4, !tbaa !20
  %i.aun = load float, ptr %i.aui, align 4, !tbaa !20
  %i.auo = load float, ptr %i.auk, align 4, !tbaa !20
  %i.aup = insertelement <4 x float> poison, float %i.aul, i64 0
  %i.auq = insertelement <4 x float> %i.aup, float %i.aum, i64 1
  %i.aur = insertelement <4 x float> %i.auq, float %i.aun, i64 2
  %i.aus = insertelement <4 x float> %i.aur, float %i.auo, i64 3
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aue, i64 4
  %i.auu = getelementptr i8, ptr %i.auf, i64 36
  %i.auv = getelementptr i8, ptr %i.auh, i64 68
  %i.auw = getelementptr i8, ptr %i.auj, i64 100
  %i.aux = load float, ptr %i.aut, align 4, !tbaa !20
  %i.auy = load float, ptr %i.auu, align 4, !tbaa !20
  %i.auz = load float, ptr %i.auv, align 4, !tbaa !20
  %i.ava = load float, ptr %i.auw, align 4, !tbaa !20
  %i.avb = insertelement <4 x float> poison, float %i.aux, i64 0
  %i.avc = insertelement <4 x float> %i.avb, float %i.auy, i64 1
  %i.avd = insertelement <4 x float> %i.avc, float %i.auz, i64 2
  %i.ave = insertelement <4 x float> %i.avd, float %i.ava, i64 3
  %i.avf = fmul <4 x float> %broadcast.splat1822, %i.ave
  %i.avg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.aus, <4 x float> %i.avf)
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  %i.avi = getelementptr i8, ptr %i.auf, i64 40
  %i.avj = getelementptr i8, ptr %i.auh, i64 72
  %i.avk = getelementptr i8, ptr %i.auj, i64 104
  %i.avl = load float, ptr %i.avh, align 4, !tbaa !20
  %i.avm = load float, ptr %i.avi, align 4, !tbaa !20
  %i.avn = load float, ptr %i.avj, align 4, !tbaa !20
  %i.avo = load float, ptr %i.avk, align 4, !tbaa !20
  %i.avp = insertelement <4 x float> poison, float %i.avl, i64 0
  %i.avq = insertelement <4 x float> %i.avp, float %i.avm, i64 1
  %i.avr = insertelement <4 x float> %i.avq, float %i.avn, i64 2
  %i.avs = insertelement <4 x float> %i.avr, float %i.avo, i64 3
  %i.avt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1824, <4 x float> %i.avs, <4 x float> %i.avg)
  %i.avu = getelementptr inbounds nuw i8, ptr %i.aue, i64 16
  %i.avv = getelementptr i8, ptr %i.auf, i64 48
  %i.avw = getelementptr i8, ptr %i.auh, i64 80
  %i.avx = getelementptr i8, ptr %i.auj, i64 112
  %i.avy = load float, ptr %i.avu, align 4, !tbaa !20
  %i.avz = load float, ptr %i.avv, align 4, !tbaa !20
  %i.awa = load float, ptr %i.avw, align 4, !tbaa !20
  %i.awb = load float, ptr %i.avx, align 4, !tbaa !20
  %i.awc = insertelement <4 x float> poison, float %i.avy, i64 0
  %i.awd = insertelement <4 x float> %i.awc, float %i.avz, i64 1
  %i.awe = insertelement <4 x float> %i.awd, float %i.awa, i64 2
  %i.awf = insertelement <4 x float> %i.awe, float %i.awb, i64 3
  %i.awg = getelementptr inbounds nuw i8, ptr %i.aue, i64 20
  %i.awh = getelementptr i8, ptr %i.auf, i64 52
  %i.awi = getelementptr i8, ptr %i.auh, i64 84
  %i.awj = getelementptr i8, ptr %i.auj, i64 116
  %i.awk = load float, ptr %i.awg, align 4, !tbaa !20
  %i.awl = load float, ptr %i.awh, align 4, !tbaa !20
  %i.awm = load float, ptr %i.awi, align 4, !tbaa !20
  %i.awn = load float, ptr %i.awj, align 4, !tbaa !20
  %i.awo = insertelement <4 x float> poison, float %i.awk, i64 0
  %i.awp = insertelement <4 x float> %i.awo, float %i.awl, i64 1
  %i.awq = insertelement <4 x float> %i.awp, float %i.awm, i64 2
  %i.awr = insertelement <4 x float> %i.awq, float %i.awn, i64 3
  %i.aws = fmul <4 x float> %broadcast.splat1828, %i.awr
  %i.awt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1826, <4 x float> %i.awf, <4 x float> %i.aws)
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aue, i64 24
  %i.awv = getelementptr i8, ptr %i.auf, i64 56
  %i.aww = getelementptr i8, ptr %i.auh, i64 88
  %i.awx = getelementptr i8, ptr %i.auj, i64 120
  %i.awy = load float, ptr %i.awu, align 4, !tbaa !20
  %i.awz = load float, ptr %i.awv, align 4, !tbaa !20
  %i.axa = load float, ptr %i.aww, align 4, !tbaa !20
  %i.axb = load float, ptr %i.awx, align 4, !tbaa !20
  %i.axc = insertelement <4 x float> poison, float %i.awy, i64 0
  %i.axd = insertelement <4 x float> %i.axc, float %i.awz, i64 1
  %i.axe = insertelement <4 x float> %i.axd, float %i.axa, i64 2
  %i.axf = insertelement <4 x float> %i.axe, float %i.axb, i64 3
  %i.axg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1830, <4 x float> %i.axf, <4 x float> %i.awt)
  %i.axh = fadd <4 x float> %i.avt, %i.axg
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %index1832
  store <4 x float> %i.axh, ptr %i.axi, align 4, !tbaa !20
  %index.next1833 = add nuw i64 %index1832, 4     ; 2 uses
  %i.axj = icmp eq i64 %index.next1833, %n.vec1820
  br i1 %i.axj, label %scalar.ph1817.preheader, label %vector.body1831, !llvm.loop !171

._crit_edge1440:                                  ; preds = %scalar.ph1817
  %indvars.iv.next1587 = add nuw nsw i64 %indvars.iv1586, 1 ; 2 uses
  %exitcond1590.not = icmp eq i64 %indvars.iv.next1587, %i.ang
end_hunk_2
begin_hunk_3_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.axp = load <2 x float>, ptr %gep, align 4, !tbaa !20 ; 2 uses
  %i.axq = load <2 x float>, ptr %i.axm, align 4, !tbaa !20 ; 2 uses
  %i.axr = shufflevector <2 x float> %i.axp, <2 x float> %i.axq, <2 x i32> <i32 1, i32 3>
  %i.axs = fmul <2 x float> %i.aua, %i.axr
  %i.axt = shufflevector <2 x float> %i.axp, <2 x float> %i.axq, <2 x i32> <i32 0, i32 2>
  %i.axu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aub, <2 x float> %i.axt, <2 x float> %i.axs)
  %i.axv = insertelement <2 x float> poison, float %i.axl, i64 0
  %i.axw = insertelement <2 x float> %i.axv, float %i.axo, i64 1
  %i.axx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aud, <2 x float> %i.axw, <2 x float> %i.axu)
  %i.axy = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.axx)
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %indvars.iv1581
  store float %i.axy, ptr %i.axz, align 4, !tbaa !20
  %indvars.iv.next1582 = add nuw nsw i64 %indvars.iv1581, 1 ; 2 uses
  %exitcond1585.not = icmp eq i64 %indvars.iv.next1582, %i.ang
  br i1 %exitcond1585.not, label %._crit_edge1440, label %scalar.ph1817, !llvm.loop !173

bb.am:                                            ; preds = %._crit_edge1443, %._crit_edge1443
  %i.aya = load float, ptr %i.a, align 16, !tbaa !20 ; 2 uses
  %i.ayb = fcmp ult float %i.aya, f0x34000000
  br i1 %i.ayb, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ayc = fdiv float 1.000000e+00, %i.aya
  store float %i.ayc, ptr %i.atp, align 4, !tbaa !20
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store float 0.000000e+00, ptr %i.atp, align 4, !tbaa !20
  br label %bb.ap

.preheader1409:                                   ; preds = %._crit_edge1443, %._crit_edge1443
  %i.ayd = load float, ptr %i.a, align 16, !tbaa !20 ; 4 uses
  %i.aye = shl nuw nsw i64 %i.ato, 2              ; 3 uses
  %scevgep1591 = getelementptr i8, ptr %i.ey, i64 %i.aye
  %i.ayf = getelementptr i8, ptr %i.ey, i64 %i.aye
  %i.ayg = load <4 x float>, ptr %i.pe, align 4, !tbaa !20 ; 6 uses
  %i.ayh = load float, ptr %i.ph, align 16, !tbaa !20 ; 2 uses
  %i.ayi = load <4 x float>, ptr %i.pi, align 4, !tbaa !20 ; 6 uses
  %i.ayj = shufflevector <4 x float> %i.ayi, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 2 uses
  %i.ayk = shufflevector <4 x float> %i.ayi, <4 x float> %i.ayg, <4 x i32> <i32 2, i32 3, i32 7, i32 3>
  %i.ayl = fneg <4 x float> %i.ayk                ; 2 uses
  %i.aym = shufflevector <4 x float> %i.ayi, <4 x float> %i.ayg, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ayn = fmul <4 x float> %i.aym, %i.ayl
  %i.ayo = shufflevector <4 x float> %i.ayg, <4 x float> %i.ayi, <4 x i32> <i32 3, i32 1, i32 0, i32 4>
  %i.ayp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayo, <4 x float> %i.ayj, <4 x float> %i.ayn) ; 3 uses
  %i.ayq = extractelement <4 x float> %i.ayg, i64 0
  %shift = shufflevector <4 x float> %i.ayp, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %i.ayg, %shift
  %i.ayr = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ays = extractelement <4 x float> %i.ayp, i64 0
  %i.ayt = call float @llvm.fmuladd.f32(float %i.ayd, float %i.ays, float %i.ayr)
  %.sroa.9.16.scevgep1591.1.sroa_idx = getelementptr i8, ptr %i.ayf, i64 16
  %i.ayu = getelementptr i8, ptr %i.ey, i64 %i.aye
  %i.ayv = load <2 x float>, ptr %i.pf, align 8, !tbaa !20 ; 4 uses
  %i.ayw = load float, ptr %i.pg, align 4, !tbaa !20
  %i.ayx = fneg <4 x float> %i.ayi
  %i.ayy = shufflevector <2 x float> %i.ayv, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ayz = insertelement <3 x float> %i.ayy, float %i.ayd, i64 1
  %i.aza = insertelement <3 x float> %i.ayz, float %i.ayh, i64 2
  %i.azb = shufflevector <3 x float> %i.aza, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.azc = shufflevector <4 x float> %i.ayl, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.azd = shufflevector <4 x float> %i.ayx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.aze = shufflevector <4 x float> %i.azd, <4 x float> %i.azc, <4 x i32> <i32 0, i32 1, i32 0, i32 7>
  %i.azf = fmul <4 x float> %i.azb, %i.aze
  %i.azg = shufflevector <4 x float> %i.ayi, <4 x float> %i.ayg, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.azh = insertelement <4 x float> %i.azg, float %i.ayd, i64 0
  %i.azi = shufflevector <2 x float> %i.ayv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.azj = shufflevector <4 x float> %i.azh, <4 x float> %i.azi, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.azk = shufflevector <2 x float> %i.ayv, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.azl = shufflevector <4 x float> %i.ayj, <4 x float> %i.azk, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.azm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azj, <4 x float> %i.azl, <4 x float> %i.azf) ; 2 uses
  %i.azn = extractelement <4 x float> %i.azm, i64 2
  %i.azo = extractelement <2 x float> %i.ayv, i64 0
  %i.azp = call noundef float @llvm.fmuladd.f32(float %i.azo, float %i.azn, float %i.ayt)
  %i.azq = fdiv float 1.000000e+00, %i.azp        ; 2 uses
  %i.azr = insertelement <4 x float> poison, float %i.azq, i64 0
  %i.azs = shufflevector <4 x float> %i.azr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.azt = fmul <4 x float> %i.ayp, %i.azs
  %i.azu = fmul <4 x float> %i.azm, %i.azs
  %i.azv = fneg float %i.ayw
  %i.azw = fmul float %i.ayq, %i.azv
  %i.azx = call noundef float @llvm.fmuladd.f32(float %i.ayd, float %i.ayh, float %i.azw)
  %i.azy = fmul float %i.azx, %i.azq
  store <4 x float> %i.azt, ptr %scevgep1591, align 4, !tbaa !20
  store <4 x float> %i.azu, ptr %.sroa.9.16.scevgep1591.1.sroa_idx, align 4, !tbaa !20
  %.sroa.15.32.scevgep1591.2.sroa_idx = getelementptr i8, ptr %i.ayu, i64 32
  store float %i.azy, ptr %.sroa.15.32.scevgep1591.2.sroa_idx, align 4, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1443, %bb.an, %bb.ao, %.preheader1409
  br i1 %i.atk, label %.lr.ph1448.us.preheader, label %._crit_edge1464.split.us

.lr.ph1448.us.preheader:                          ; preds = %bb.ap
  %i.azz = sext i32 %i.atm to i64
  %i.baa = zext nneg i32 %i.atl to i64
  %wide.trip.count1605 = zext nneg i32 %i.atl to i64 ; 2 uses
  %invariant.gep1776 = getelementptr [32 x i8], ptr %i.ex, i64 %i.azz
  br label %.lr.ph1448.us

.lr.ph1448.us:                                    ; preds = %.lr.ph1448.us.preheader, %._crit_edge1449.us
  %indvars.iv1602 = phi i64 [ 0, %.lr.ph1448.us.preheader ], [ %indvars.iv.next1603, %._crit_edge1449.us ] ; 3 uses
  %i.bab = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %indvars.iv1602 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bab, i8 0, i64 32, i1 false)
  %invariant.gep1778 = getelementptr inbounds nuw [4 x i8], ptr %i.atp, i64 %indvars.iv1602
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1448.us, %bb.aq
  %indvars.iv1597 = phi i64 [ 0, %.lr.ph1448.us ], [ %indvars.iv.next1598, %bb.aq ] ; 3 uses
  %i.bac = phi float [ 0.000000e+00, %.lr.ph1448.us ], [ %i.bay, %bb.aq ]
  %i.bad = phi float [ 0.000000e+00, %.lr.ph1448.us ], [ %i.baw, %bb.aq ]
  %i.bae = phi <2 x float> [ zeroinitializer, %.lr.ph1448.us ], [ %i.bav, %bb.aq ]
  %i.baf = phi <2 x float> [ zeroinitializer, %.lr.ph1448.us ], [ %i.bax, %bb.aq ]
  %gep1777 = getelementptr [32 x i8], ptr %invariant.gep1776, i64 %indvars.iv1597 ; 4 uses
  %i.bag = mul nuw nsw i64 %indvars.iv1597, %i.baa
  %gep1779 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1778, i64 %i.bag
  %i.bah = getelementptr inbounds nuw i8, ptr %gep1777, i64 16
  %i.bai = load float, ptr %gep1779, align 4, !tbaa !20, !noalias !238 ; 3 uses
  %i.baj = load <2 x float>, ptr %i.bah, align 4, !tbaa !20, !noalias !238
  %i.bak = insertelement <2 x float> poison, float %i.bai, i64 0
  %i.bal = shufflevector <2 x float> %i.bak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bam = fmul <2 x float> %i.bal, %i.baj
  %i.ban = getelementptr inbounds nuw i8, ptr %gep1777, i64 24
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !20, !noalias !238
  %i.bap = fmul float %i.bai, %i.bao
  %i.baq = load <2 x float>, ptr %gep1777, align 4, !tbaa !20, !noalias !238
  %i.bar = fmul <2 x float> %i.bal, %i.baq
  %i.bas = getelementptr inbounds nuw i8, ptr %gep1777, i64 8
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !20, !noalias !238
  %i.bau = fmul float %i.bai, %i.bat
  %i.bav = fadd <2 x float> %i.bar, %i.bae        ; 2 uses
  %i.baw = fadd float %i.bau, %i.bad              ; 2 uses
  %i.bax = fadd <2 x float> %i.bam, %i.baf        ; 2 uses
  %i.bay = fadd float %i.bap, %i.bac              ; 2 uses
  %indvars.iv.next1598 = add nuw nsw i64 %indvars.iv1597, 1 ; 2 uses
  %exitcond1601.not = icmp eq i64 %indvars.iv.next1598, %wide.trip.count1605
  br i1 %exitcond1601.not, label %._crit_edge1449.us, label %bb.aq, !llvm.loop !176

._crit_edge1449.us:                               ; preds = %bb.aq
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bab, i64 8
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bab, i64 16
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bab, i64 24
  store <2 x float> %i.bav, ptr %i.bab, align 16, !tbaa !20
  store float %i.baw, ptr %i.baz, align 8, !tbaa !20
  store <2 x float> %i.bax, ptr %i.bba, align 16, !tbaa !20
  store float %i.bay, ptr %i.bbb, align 8, !tbaa !20
  %indvars.iv.next1603 = add nuw nsw i64 %indvars.iv1602, 1 ; 2 uses
  %exitcond1606.not = icmp eq i64 %indvars.iv.next1603, %wide.trip.count1605
  br i1 %exitcond1606.not, label %._crit_edge1464.split.us, label %.lr.ph1448.us, !llvm.loop !177

._crit_edge1464.split.us:                         ; preds = %._crit_edge1449.us, %bb.ap
  %i.bbc = getelementptr inbounds nuw [144 x i8], ptr %i.en, i64 %indvars.iv1627 ; 19 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %11, ptr noundef nonnull align 4 dereferenceable(144) %i.bbc, i64 16, i1 false), !tbaa.struct !46
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pj, ptr noundef nonnull align 4 dereferenceable(16) %i.bbd, i64 16, i1 false), !tbaa.struct !46
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbc, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pk, ptr noundef nonnull align 4 dereferenceable(16) %i.bbe, i64 16, i1 false), !tbaa.struct !46
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbc, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fd, ptr noundef nonnull align 4 dereferenceable(48) %i.bbf, i64 16, i1 false), !tbaa.struct !46
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbc, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pl, ptr noundef nonnull align 4 dereferenceable(16) %i.bbg, i64 16, i1 false), !tbaa.struct !46
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbc, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pm, ptr noundef nonnull align 4 dereferenceable(16) %i.bbh, i64 16, i1 false), !tbaa.struct !46
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbc, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fi, ptr noundef nonnull align 4 dereferenceable(48) %i.bbi, i64 16, i1 false), !tbaa.struct !46
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbc, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pn, ptr noundef nonnull align 4 dereferenceable(16) %i.bbj, i64 16, i1 false), !tbaa.struct !46
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbc, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.po, ptr noundef nonnull align 4 dereferenceable(16) %i.bbk, i64 16, i1 false), !tbaa.struct !46
  br i1 %i.atk, label %.lr.ph1487, label %._crit_edge1488

.lr.ph1487:                                       ; preds = %._crit_edge1464.split.us
  %.promoted1484 = load float, ptr %i.fm, align 8
  %.promoted1482 = load float, ptr %i.fl, align 8
  %i.bbl = load <2 x float>, ptr %i.pn, align 16
  %i.bbm = load <2 x float>, ptr %i.fi, align 16
  %.promoted1477 = load float, ptr %i.fh, align 8
  %.promoted1475 = load float, ptr %i.fg, align 8
  %i.bbn = load <2 x float>, ptr %i.pl, align 16
  %i.bbo = load <2 x float>, ptr %i.fd, align 16
  %.promoted1470 = load float, ptr %i.fc, align 8
  %.promoted1468 = load float, ptr %i.fb, align 8
  %i.bbp = load <2 x float>, ptr %i.pj, align 16
  %i.bbq = load <2 x float>, ptr %11, align 16
  %.promoted1489 = load float, ptr %i.pp, align 8, !tbaa !20
  %i.bbr = load <2 x float>, ptr %i.pk, align 16
  %.promoted1491 = load float, ptr %i.pq, align 8, !tbaa !20
  %i.bbs = load <2 x float>, ptr %i.pm, align 16
  %.promoted1493 = load float, ptr %i.pr, align 8, !tbaa !20
  %i.bbt = load <2 x float>, ptr %i.po, align 16
  %i.bbu = sext i32 %i.atm to i64
  %wide.trip.count1610 = zext nneg i32 %i.atl to i64
  %invariant.gep1780 = getelementptr [32 x i8], ptr %i.ex, i64 %i.bbu
  br label %bb.ar

._crit_edge1488:                                  ; preds = %bb.ar, %._crit_edge1464.split.us
  %i.bbv = add nsw i32 %i.alo, 1
  %i.bbw = sext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = getelementptr inbounds [144 x i8], ptr %i.en, i64 %i.bbw
  call void @_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE(ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(144) %11, ptr noundef nonnull align 4 dereferenceable(144) %i.bbx, i32 noundef 1)
  %i.bby = load ptr, ptr %i.oz, align 8, !tbaa !47
  %i.bbz = getelementptr inbounds [688 x i8], ptr %i.bby, i64 %indvars.iv.next1628 ; 3 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 556
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !79 ; 7 uses
  %i.bcc = icmp sgt i32 %i.bcb, 0                 ; 2 uses
  br i1 %i.bcc, label %.lr.ph1503, label %._crit_edge1504

.lr.ph1503:                                       ; preds = %._crit_edge1488
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbz, i64 328
  %i.bce = zext nneg i32 %i.bcb to i64
  %wide.trip.count1620 = zext nneg i32 %i.bcb to i64 ; 3 uses
  %.pre1668 = load i32, ptr %i.bcd, align 8, !tbaa !86
  %i.bcf = sext i32 %.pre1668 to i64
  %invariant.gep1784 = getelementptr [4 x i8], ptr %i.dx, i64 %i.bcf ; 5 uses
  %xtraiter1923 = and i64 %wide.trip.count1620, 3 ; 3 uses
  %i.bcg = icmp ult i32 %i.bcb, 4
  %unroll_iter1927 = and i64 %wide.trip.count1620, 2147483644
  %lcmp.mod1924.not = icmp eq i64 %xtraiter1923, 0
  %lcmp.mod1926 = icmp ne i64 %xtraiter1923, 0
  br label %.lr.ph1497

bb.ar:                                            ; preds = %.lr.ph1487, %bb.ar
  %indvars.iv1607 = phi i64 [ 0, %.lr.ph1487 ], [ %indvars.iv.next1608, %bb.ar ] ; 3 uses
  %i.bch = phi float [ %.promoted1493, %.lr.ph1487 ], [ %i.bhl, %bb.ar ]
  %i.bci = phi float [ %.promoted1491, %.lr.ph1487 ], [ %i.bhf, %bb.ar ]
  %i.bcj = phi float [ %.promoted1489, %.lr.ph1487 ], [ %i.bgz, %bb.ar ]
  %i.bck = phi float [ %.promoted1468, %.lr.ph1487 ], [ %i.bhb, %bb.ar ]
  %i.bcl = phi float [ %.promoted1470, %.lr.ph1487 ], [ %i.bhd, %bb.ar ]
  %i.bcm = phi float [ %.promoted1475, %.lr.ph1487 ], [ %i.bhh, %bb.ar ]
  %i.bcn = phi float [ %.promoted1477, %.lr.ph1487 ], [ %i.bhj, %bb.ar ]
  %i.bco = phi float [ %.promoted1482, %.lr.ph1487 ], [ %i.bhn, %bb.ar ]
  %i.bcp = phi float [ %.promoted1484, %.lr.ph1487 ], [ %i.bhp, %bb.ar ]
  %i.bcq = phi <2 x float> [ %i.bbq, %.lr.ph1487 ], [ %i.bgy, %bb.ar ]
  %i.bcr = phi <2 x float> [ %i.bbp, %.lr.ph1487 ], [ %i.bha, %bb.ar ]
  %i.bcs = phi <2 x float> [ %i.bbr, %.lr.ph1487 ], [ %i.bhc, %bb.ar ]
  %i.bct = phi <2 x float> [ %i.bbo, %.lr.ph1487 ], [ %i.bhe, %bb.ar ]
  %i.bcu = phi <2 x float> [ %i.bbn, %.lr.ph1487 ], [ %i.bhg, %bb.ar ]
  %i.bcv = phi <2 x float> [ %i.bbs, %.lr.ph1487 ], [ %i.bhi, %bb.ar ]
  %i.bcw = phi <2 x float> [ %i.bbm, %.lr.ph1487 ], [ %i.bhk, %bb.ar ]
  %i.bcx = phi <2 x float> [ %i.bbl, %.lr.ph1487 ], [ %i.bhm, %bb.ar ]
  %i.bcy = phi <2 x float> [ %i.bbt, %.lr.ph1487 ], [ %i.bho, %bb.ar ]
  %gep1781 = getelementptr [32 x i8], ptr %invariant.gep1780, i64 %indvars.iv1607 ; 6 uses
  %i.bcz = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %indvars.iv1607 ; 6 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16
  %i.bdb = load float, ptr %gep1781, align 4, !tbaa !20, !noalias !239
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcz, i64 20
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcz, i64 24
  %i.bde = getelementptr inbounds nuw i8, ptr %gep1781, i64 4
  %i.bdf = load float, ptr %i.bde, align 4, !tbaa !20, !noalias !239
  %i.bdg = getelementptr inbounds nuw i8, ptr %gep1781, i64 8
  %i.bdh = load float, ptr %i.bdg, align 4, !tbaa !20, !noalias !239 ; 3 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bcz, i64 4
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  %i.bdk = getelementptr inbounds nuw i8, ptr %gep1781, i64 16
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !20, !noalias !240 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %gep1781, i64 20
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !20, !noalias !240 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %gep1781, i64 24
  %i.bdp = load float, ptr %i.bdo, align 4, !tbaa !20, !noalias !240 ; 2 uses
  %i.bdq = load <2 x float>, ptr %i.bda, align 16, !tbaa !20, !noalias !239 ; 2 uses
  %i.bdr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdb, i64 0
  %i.bds = shufflevector <4 x float> %i.bdr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.bdt = shufflevector <2 x float> %i.bdq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bdu = insertelement <4 x float> %i.bdt, float 1.000000e+00, i64 3
  %i.bdv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcj, i64 2
  %i.bdw = shufflevector <2 x float> %i.bcq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bdx = shufflevector <4 x float> %i.bdw, <4 x float> %i.bdv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bdy = load <2 x float>, ptr %i.bdc, align 4, !tbaa !20, !noalias !239 ; 2 uses
  %i.bdz = load float, ptr %i.bdd, align 8, !tbaa !20, !noalias !239 ; 4 uses
  %i.bea = shufflevector <2 x float> %i.bdy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.beb = shufflevector <4 x float> %i.bdu, <4 x float> %i.bea, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bec = fmul <4 x float> %i.bds, %i.beb
  %i.bed = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdf, i64 0
  %i.bee = shufflevector <4 x float> %i.bed, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.bef = shufflevector <2 x float> %i.bdq, <2 x float> %i.bdy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.beg = insertelement <4 x float> %i.bef, float 1.000000e+00, i64 3 ; 5 uses
  %i.beh = fmul <4 x float> %i.bee, %i.beg
  %i.bei = fsub <4 x float> %i.bdx, %i.bec        ; 3 uses
  %i.bej = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bck, i64 2
  %i.bek = shufflevector <2 x float> %i.bcr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bel = shufflevector <4 x float> %i.bek, <4 x float> %i.bej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bem = fsub <4 x float> %i.bel, %i.beh        ; 3 uses
  store <4 x float> %i.bei, ptr %11, align 16, !tbaa !20
  store <4 x float> %i.bem, ptr %i.pj, align 16, !tbaa !20
  %i.ben = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdh, i64 0
  %i.beo = insertelement <4 x float> %i.ben, float %i.bdz, i64 2
  %i.bep = shufflevector <4 x float> %i.beo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.beq = insertelement <4 x float> %i.beg, float %i.bdh, i64 2
  %i.ber = fmul <4 x float> %i.bep, %i.beq
  %i.bes = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcl, i64 2
  %i.bet = shufflevector <2 x float> %i.bcs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.beu = shufflevector <4 x float> %i.bet, <4 x float> %i.bes, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bev = fsub <4 x float> %i.beu, %i.ber        ; 3 uses
  store <4 x float> %i.bev, ptr %i.pk, align 16, !tbaa !20
  %i.bew = load <2 x float>, ptr %i.bcz, align 16, !tbaa !20, !noalias !241 ; 2 uses
  %i.bex = shufflevector <2 x float> %i.bew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bey = insertelement <4 x float> %i.bex, float 1.000000e+00, i64 3
  %i.bez = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bci, i64 2
  %i.bfa = shufflevector <2 x float> %i.bct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfb = shufflevector <4 x float> %i.bfa, <4 x float> %i.bez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfc = load <2 x float>, ptr %i.bdi, align 4, !tbaa !20, !noalias !241 ; 2 uses
  %i.bfd = load float, ptr %i.bdj, align 8, !tbaa !20, !noalias !241
  %i.bfe = shufflevector <2 x float> %i.bfc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bff = shufflevector <4 x float> %i.bey, <4 x float> %i.bfe, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bfg = fmul <4 x float> %i.bds, %i.bff
  %i.bfh = shufflevector <2 x float> %i.bew, <2 x float> %i.bfc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bfi = insertelement <4 x float> %i.bfh, float 1.000000e+00, i64 3 ; 2 uses
  %i.bfj = fmul <4 x float> %i.bee, %i.bfi
  %i.bfk = fsub <4 x float> %i.bfb, %i.bfg        ; 3 uses
  %i.bfl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcm, i64 2
  %i.bfm = shufflevector <2 x float> %i.bcu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfn = shufflevector <4 x float> %i.bfm, <4 x float> %i.bfl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfo = fsub <4 x float> %i.bfn, %i.bfj        ; 3 uses
  store <4 x float> %i.bfk, ptr %i.fd, align 16, !tbaa !20
  store <4 x float> %i.bfo, ptr %i.pl, align 16, !tbaa !20
  %i.bfp = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdh, i64 0
  %i.bfq = shufflevector <4 x float> %i.bfp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bfr = insertelement <4 x float> %i.bfi, float %i.bfd, i64 2
  %i.bfs = fmul <4 x float> %i.bfq, %i.bfr
  %i.bft = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcn, i64 2
  %i.bfu = shufflevector <2 x float> %i.bcv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfv = shufflevector <4 x float> %i.bfu, <4 x float> %i.bft, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfw = fsub <4 x float> %i.bfv, %i.bfs        ; 3 uses
  store <4 x float> %i.bfw, ptr %i.pm, align 16, !tbaa !20
  %i.bfx = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdl, i64 0
  %i.bfy = insertelement <4 x float> %i.bfx, float %i.bdz, i64 2
  %i.bfz = shufflevector <4 x float> %i.bfy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bga = insertelement <4 x float> %i.beg, float %i.bdl, i64 2
  %i.bgb = fmul <4 x float> %i.bfz, %i.bga
  %i.bgc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bch, i64 2
  %i.bgd = shufflevector <2 x float> %i.bcw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bge = shufflevector <4 x float> %i.bgd, <4 x float> %i.bgc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bgf = fsub <4 x float> %i.bge, %i.bgb        ; 3 uses
  store <4 x float> %i.bgf, ptr %i.fi, align 16, !tbaa !20
  %i.bgg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdn, i64 0
  %i.bgh = insertelement <4 x float> %i.bgg, float %i.bdz, i64 2
  %i.bgi = shufflevector <4 x float> %i.bgh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bgj = insertelement <4 x float> %i.beg, float %i.bdn, i64 2
  %i.bgk = fmul <4 x float> %i.bgi, %i.bgj
  %i.bgl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bco, i64 2
  %i.bgm = shufflevector <2 x float> %i.bcx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgn = shufflevector <4 x float> %i.bgm, <4 x float> %i.bgl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bgo = fsub <4 x float> %i.bgn, %i.bgk        ; 3 uses
  store <4 x float> %i.bgo, ptr %i.pn, align 16, !tbaa !20
  %i.bgp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdp, i64 0
  %i.bgq = insertelement <4 x float> %i.bgp, float %i.bdz, i64 2
  %i.bgr = shufflevector <4 x float> %i.bgq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bgs = insertelement <4 x float> %i.beg, float %i.bdp, i64 2
  %i.bgt = fmul <4 x float> %i.bgr, %i.bgs
  %i.bgu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcp, i64 2
  %i.bgv = shufflevector <2 x float> %i.bcy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgw = shufflevector <4 x float> %i.bgv, <4 x float> %i.bgu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bgx = fsub <4 x float> %i.bgw, %i.bgt        ; 3 uses
  store <4 x float> %i.bgx, ptr %i.po, align 16, !tbaa !20
  %indvars.iv.next1608 = add nuw nsw i64 %indvars.iv1607, 1 ; 2 uses
  %exitcond1611.not = icmp eq i64 %indvars.iv.next1608, %wide.trip.count1610
  %i.bgy = shufflevector <4 x float> %i.bei, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bgz = extractelement <4 x float> %i.bei, i64 2
  %i.bha = shufflevector <4 x float> %i.bem, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhb = extractelement <4 x float> %i.bem, i64 2
  %i.bhc = shufflevector <4 x float> %i.bev, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhd = extractelement <4 x float> %i.bev, i64 2
  %i.bhe = shufflevector <4 x float> %i.bfk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhf = extractelement <4 x float> %i.bfk, i64 2
  %i.bhg = shufflevector <4 x float> %i.bfo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhh = extractelement <4 x float> %i.bfo, i64 2
  %i.bhi = shufflevector <4 x float> %i.bfw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhj = extractelement <4 x float> %i.bfw, i64 2
  %i.bhk = shufflevector <4 x float> %i.bgf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhl = extractelement <4 x float> %i.bgf, i64 2
  %i.bhm = shufflevector <4 x float> %i.bgo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhn = extractelement <4 x float> %i.bgo, i64 2
  %i.bho = shufflevector <4 x float> %i.bgx, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhp = extractelement <4 x float> %i.bgx, i64 2
  br i1 %exitcond1611.not, label %._crit_edge1488, label %bb.ar, !llvm.loop !186

._crit_edge1504:                                  ; preds = %._crit_edge1498, %._crit_edge1488
  %i.bhq = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %indvars.iv1627 ; 2 uses
  %i.bhr = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %indvars.iv.next1628 ; 6 uses
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !20, !noalias !242
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  %i.bhu = load float, ptr %i.bht, align 4, !tbaa !20, !noalias !242
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bbc, i64 104
  %i.bhw = load float, ptr %i.bhv, align 4, !tbaa !20, !noalias !242
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bhy = load float, ptr %i.bhx, align 4, !tbaa !20, !noalias !242
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bbc, i64 120
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !20, !noalias !242
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bbc, i64 136
  %i.bic = load float, ptr %i.bib, align 4, !tbaa !20, !noalias !242
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bbc, i64 4
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bbc, i64 20
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bbc, i64 36
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  %i.bih = load float, ptr %i.big, align 4, !tbaa !20, !noalias !242
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhr, i64 20
  %i.bij = load float, ptr %i.bii, align 4, !tbaa !20, !noalias !242
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bhr, i64 24
  %i.bil = load float, ptr %i.bik, align 4, !tbaa !20, !noalias !242
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bbc, i64 56
  %i.bin = load float, ptr %i.bim, align 4, !tbaa !20, !noalias !242
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bbc, i64 72
end_hunk_3
begin_hunk_4_@_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E:bb.a
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54 ; 3 uses
  %i.cr = shl nsw i32 %i.e, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [16 x i8], ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %i.cw = icmp sgt i32 %i.cf, 0
  br i1 %i.cw, label %bb.m, label %.thread358

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50
  %i.db = zext nneg i32 %i.cf to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.thread358

.thread358:                                       ; preds = %.thread, %bb.l, %bb.m
  %i.de = phi ptr [ %i.cy, %bb.m ], [ null, %bb.l ], [ null, %.thread ] ; 6 uses
  %i.df = phi ptr [ %i.co, %bb.m ], [ %i.co, %bb.l ], [ null, %.thread ] ; 4 uses
  %i.dg = phi ptr [ %i.cq, %bb.m ], [ %i.cq, %bb.l ], [ %i.ch, %.thread ] ; 10 uses
  %.pn = phi ptr [ %i.ct, %bb.m ], [ %i.ct, %bb.l ], [ %i.ck, %.thread ] ; 11 uses
  %i.dh = phi ptr [ %i.cv, %bb.m ], [ %i.cv, %bb.l ], [ %i.cm, %.thread ] ; 30 uses
  %i.di = phi ptr [ %i.dd, %bb.m ], [ null, %bb.l ], [ null, %.thread ] ; 2 uses
  %i.dj = ptrtoaddr ptr %i.dh to i64              ; 2 uses
  %.pn557 = ptrtoaddr ptr %.pn to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.dk = getelementptr i8, ptr %.pn, i64 32      ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 561 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !61, !range !68, !noundef !69
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread358
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !89 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread359, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit: ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !97
  %i.ds = and i32 %i.dr, 3
  %.not363 = icmp eq i32 %i.ds, 0
  br i1 %.not363, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread359, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread: ; preds = %.thread358, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dg, i8 0, i64 32, i1 false)
  br label %bb.o

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread359: ; preds = %bb.n, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  %.sroa.11259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.32.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.44312.32.copyload = load float, ptr %i.du, align 4 ; 2 uses
  %.sroa.53.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %.sroa.53.32.copyload = load float, ptr %.sroa.53.32..sroa_idx, align 4 ; 2 uses
  %.sroa.59.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %.sroa.59.32.copyload = load float, ptr %.sroa.59.32..sroa_idx, align 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ea = load <2 x float>, ptr %i.dh, align 4    ; 2 uses
  %i.eb = load <2 x float>, ptr %i.dt, align 4    ; 2 uses
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !20
  %i.ed = load float, ptr %i.dx, align 4, !tbaa !20
  %i.ee = load float, ptr %i.dz, align 4, !tbaa !20
  %i.ef = fneg float %i.ec                        ; 2 uses
  %i.eg = fneg float %i.ed                        ; 2 uses
  %i.eh = fneg float %i.ee                        ; 2 uses
  %i.ei = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <2 x i32> <i32 1, i32 3>
  %i.ej = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.ei, %i.ek
  %i.em = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.en = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.eo, <2 x float> %i.el)
  %i.eq = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul float %.sroa.53.32.copyload, %i.ef
  %i.et = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload, float %i.eg, float %i.es)
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload, float %i.eh, float %i.et)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.ev = load float, ptr %i.dv, align 4, !tbaa !20
  %i.ew = load float, ptr %1, align 4, !tbaa !20
  %i.ex = load float, ptr %i.dw, align 4, !tbaa !20
  %i.ey = fneg float %i.ev                        ; 2 uses
  %i.ez = fneg float %i.ew                        ; 2 uses
  %i.fa = fneg float %i.ex                        ; 2 uses
  %i.fb = load <2 x float>, ptr %.sroa.11259.0..sroa_idx, align 4 ; 2 uses
  %i.fc = load <2 x float>, ptr %.sroa.32.16..sroa_idx, align 4 ; 2 uses
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.er, <2 x float> %i.ep)
  store <2 x float> %i.fe, ptr %i.dg, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !21
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.fg = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.ff, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = fmul float %.sroa.53.32.copyload, %i.ey
  %i.fq = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload, float %i.ez, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload, float %i.fa, float %i.fq)
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x float> %i.fo, ptr %i.fs, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread359, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread
  %i.ft = icmp sgt i32 %i.e, 0                    ; 2 uses
  br i1 %i.ft, label %.lr.ph.i164.lr.ph, label %._crit_edge400

.lr.ph.i164.lr.ph:                                ; preds = %bb.o
  %scevgep421 = getelementptr i8, ptr %i.dg, i64 32
  %i.fu = zext nneg i32 %i.e to i64
  %i.fv = shl nuw nsw i64 %i.fu, 5
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep421, i8 0, i64 %i.fv, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !47 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = zext nneg i32 %i.e to i64
  br label %.lr.ph.i164

._crit_edge400:                                   ; preds = %bb.v, %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gb = load i8, ptr %i.dl, align 1, !tbaa !61, !range !68, !noundef !69
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge400
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 2 uses
  %.not.i162 = icmp eq ptr %i.ge, null
  br i1 %.not.i162, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163: ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 224
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !97
  %i.gh = and i32 %i.gg, 3
  %.not364 = icmp eq i32 %i.gh, 0
  br i1 %.not364, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.lr.ph, %bb.v
  %indvars.iv439 = phi i64 [ %i.fz, %.lr.ph.i164.lr.ph ], [ %indvars.iv.next440, %bb.v ] ; 5 uses
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, -1 ; 3 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv.next440 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i164
  %.010.i = phi i32 [ %i.gi, %.lr.ph.i164 ], [ %i.gr, %bb.r ]
  %i.gj = sext i32 %.010.i to i64
  %i.gk = getelementptr inbounds [688 x i8], ptr %i.fx, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 544
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !98 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i

_ZNK11btMultiBody15isLinkKinematicEi.exit.i:      ; preds = %bb.q
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 224
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !97
  %i.gp = and i32 %i.go, 2
  %.not8.i = icmp eq i32 %i.gp, 0
  br i1 %.not8.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !77 ; 2 uses
  %.not.i165 = icmp eq i32 %i.gr, -1
  br i1 %.not.i165, label %._crit_edge.i, label %bb.q, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.r
  %i.gs = load ptr, ptr %i.fy, align 8, !tbaa !89 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.gs, null
  br i1 %.not.i6.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit: ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 224
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !97
  %i.gv = and i32 %i.gu, 2
  %.not366 = icmp eq i32 %i.gv, 0
  br i1 %.not366, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %bb.v

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread: ; preds = %bb.q, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i, %._crit_edge.i, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit
  %i.gw = getelementptr inbounds [688 x i8], ptr %i.fx, i64 %indvars.iv.next440 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !77
  %i.gz = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %indvars.iv439 ; 6 uses
  %.sroa.17.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.sroa.17.0.copyload270 = load float, ptr %.sroa.17.0..sroa_idx269, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %.sroa.38.16..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %.sroa.38.16.copyload300 = load float, ptr %.sroa.38.16..sroa_idx299, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.hc = load <2 x float>, ptr %i.gz, align 4    ; 2 uses
  %i.hd = load <2 x float>, ptr %i.ha, align 4    ; 2 uses
  %i.he = load <2 x float>, ptr %i.hb, align 4    ; 2 uses
  %.sroa.59.32..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %.sroa.59.32.copyload330 = load float, ptr %.sroa.59.32..sroa_idx329, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 352
  %i.hg = load <3 x float>, ptr %i.hf, align 8    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 556
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !79 ; 8 uses
  %i.hj = icmp sgt i32 %i.hi, 0                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 328
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !86 ; 6 uses
  br i1 %i.hj, label %.lr.ph371, label %._crit_edge380.split.us

.lr.ph371:                                        ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %invariant.op = add i32 %i.hl, 6
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv439 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hr = sext i32 %i.hl to i64
  %wide.trip.count = zext nneg i32 %i.hi to i64   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.df, i64 %i.hr
  br label %bb.t

.lr.ph374.us.preheader:                           ; preds = %bb.t
  %i.hs = mul nsw i32 %i.hl, %i.hl
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ht
  %i.hv = sext i32 %i.hl to i64
  %i.hw = zext nneg i32 %i.hi to i64
  %wide.trip.count432 = zext nneg i32 %i.hi to i64
  %invariant.gep509 = getelementptr [4 x i8], ptr %i.df, i64 %i.hv ; 5 uses
  %xtraiter567 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.hx = icmp ult i32 %i.hi, 4
  %unroll_iter571 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod568.not = icmp eq i64 %xtraiter567, 0
  %lcmp.mod570 = icmp ne i64 %xtraiter567, 0
  br label %.lr.ph374.us

.lr.ph374.us:                                     ; preds = %.lr.ph374.us.preheader, %._crit_edge375.us
  %indvars.iv429 = phi i64 [ 0, %.lr.ph374.us.preheader ], [ %indvars.iv.next430, %._crit_edge375.us ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv429
  %i.hz = mul nuw nsw i64 %indvars.iv429, %i.hw
  %invariant.gep507 = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hz ; 5 uses
  br i1 %i.hx, label %.epil.preheader566, label %.lr.ph374.us.new

.lr.ph374.us.new:                                 ; preds = %.lr.ph374.us, %.lr.ph374.us.new
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.3, %.lr.ph374.us.new ], [ 0, %.lr.ph374.us ] ; 6 uses
  %i.ia = phi float [ %i.im, %.lr.ph374.us.new ], [ 0.000000e+00, %.lr.ph374.us ]
  %niter572 = phi i64 [ %niter572.next.3, %.lr.ph374.us.new ], [ 0, %.lr.ph374.us ]
  %gep508 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv424
  %i.ib = load float, ptr %gep508, align 4, !tbaa !20
  %gep510 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv424
  %i.ic = load float, ptr %gep510, align 4, !tbaa !20
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.ic, float %i.ia)
  %indvars.iv.next425 = or disjoint i64 %indvars.iv424, 1 ; 2 uses
  %gep508.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425
  %i.ie = load float, ptr %gep508.1, align 4, !tbaa !20
  %gep510.1 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425
  %i.if = load float, ptr %gep510.1, align 4, !tbaa !20
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.if, float %i.id)
  %indvars.iv.next425.1 = or disjoint i64 %indvars.iv424, 2 ; 2 uses
  %gep508.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425.1
  %i.ih = load float, ptr %gep508.2, align 4, !tbaa !20
  %gep510.2 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425.1
  %i.ii = load float, ptr %gep510.2, align 4, !tbaa !20
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ii, float %i.ig)
  %indvars.iv.next425.2 = or disjoint i64 %indvars.iv424, 3 ; 2 uses
  %gep508.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425.2
  %i.ik = load float, ptr %gep508.3, align 4, !tbaa !20
  %gep510.3 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425.2
  %i.il = load float, ptr %gep510.3, align 4, !tbaa !20
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %i.ij) ; 3 uses
  %indvars.iv.next425.3 = add nuw nsw i64 %indvars.iv424, 4 ; 2 uses
  %niter572.next.3 = add i64 %niter572, 4         ; 2 uses
  %niter572.ncmp.3 = icmp eq i64 %niter572.next.3, %unroll_iter571
  br i1 %niter572.ncmp.3, label %._crit_edge375.us.unr-lcssa, label %.lr.ph374.us.new, !llvm.loop !371

._crit_edge375.us.unr-lcssa:                      ; preds = %.lr.ph374.us.new
  br i1 %lcmp.mod568.not, label %._crit_edge375.us, label %.epil.preheader566

.epil.preheader566:                               ; preds = %._crit_edge375.us.unr-lcssa, %.lr.ph374.us
  %indvars.iv424.epil.init = phi i64 [ 0, %.lr.ph374.us ], [ %indvars.iv.next425.3, %._crit_edge375.us.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph374.us ], [ %i.im, %._crit_edge375.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod570)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader566
  %indvars.iv424.epil = phi i64 [ %indvars.iv424.epil.init, %.epil.preheader566 ], [ %indvars.iv.next425.epil, %bb.s ] ; 3 uses
  %i.in = phi float [ %.epil.init, %.epil.preheader566 ], [ %i.iq, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader566 ], [ %epil.iter.next, %bb.s ]
  %gep508.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv424.epil
  %i.io = load float, ptr %gep508.epil, align 4, !tbaa !20
  %gep510.epil = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv424.epil
  %i.ip = load float, ptr %gep510.epil, align 4, !tbaa !20
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.io, float %i.ip, float %i.in) ; 2 uses
  %indvars.iv.next425.epil = add nuw nsw i64 %indvars.iv424.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter567
  br i1 %epil.iter.cmp.not, label %._crit_edge375.us, label %bb.s, !llvm.loop !372

._crit_edge375.us:                                ; preds = %bb.s, %._crit_edge375.us.unr-lcssa
  %.lcssa = phi float [ %i.im, %._crit_edge375.us.unr-lcssa ], [ %i.iq, %bb.s ]
  store float %.lcssa, ptr %i.hy, align 4, !tbaa !20
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge380.split.us, label %.lr.ph374.us, !llvm.loop !373

bb.t:                                             ; preds = %.lr.ph371, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.ir
  %i.is = sext i32 %.reass to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %1, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !20
  %i.iv = getelementptr inbounds nuw [32 x i8], ptr %i.hm, i64 %indvars.iv ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !20
  %i.iz = load float, ptr %i.ho, align 4, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !20
  %i.jc = load float, ptr %i.hq, align 4, !tbaa !20
  %i.jd = load <2 x float>, ptr %i.iw, align 4, !tbaa !20 ; 2 uses
  %i.je = load <2 x float>, ptr %i.hn, align 4, !tbaa !20 ; 2 uses
  %i.jf = load <2 x float>, ptr %i.iv, align 4, !tbaa !20 ; 2 uses
  %i.jg = load <2 x float>, ptr %i.hp, align 4, !tbaa !20 ; 2 uses
  %i.jh = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.ji = shufflevector <2 x float> %i.je, <2 x float> %i.jg, <2 x i32> <i32 1, i32 3>
  %i.jj = fmul <2 x float> %i.jh, %i.ji
  %i.jk = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.jl = shufflevector <2 x float> %i.je, <2 x float> %i.jg, <2 x i32> <i32 0, i32 2>
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jl, <2 x float> %i.jj)
  %i.jn = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.jb, i64 1
  %i.jp = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.jc, i64 1
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jq, <2 x float> %i.jm)
  %i.js = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jr)
  %i.jt = fsub float %i.iu, %i.js
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.jt, ptr %gep, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph374.us.preheader, label %bb.t, !llvm.loop !374

._crit_edge380.split.us:                          ; preds = %._crit_edge375.us, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv439 ; 2 uses
  %i.jv = load <3 x float>, ptr %i.ju, align 4
  %i.jw = shufflevector <3 x float> %i.jv, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 3 uses
  %.sroa.12457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load <3 x float>, ptr %.sroa.12457.0..sroa_idx, align 4
  %i.jy = shufflevector <3 x float> %i.jx, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 3 uses
  br i1 %i.hj, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge380.split.us
  %i.jz = sext i32 %i.hl to i64
  %wide.trip.count437 = zext nneg i32 %i.hi to i64 ; 2 uses
  %invariant.gep511 = getelementptr [32 x i8], ptr %i.de, i64 %i.jz ; 3 uses
  %xtraiter574 = and i64 %wide.trip.count437, 1
  %i.ka = icmp eq i32 %i.hi, 1
  br i1 %i.ka, label %.epil.preheader573, label %.lr.ph384.new

.lr.ph384.new:                                    ; preds = %.lr.ph384
  %unroll_iter584 = and i64 %wide.trip.count437, 2147483646
  br label %bb.u

._crit_edge385.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod580.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod580.not, label %._crit_edge385, label %.epil.preheader573

.epil.preheader573:                               ; preds = %._crit_edge385.loopexit.unr-lcssa, %.lr.ph384
  %indvars.iv434.epil.init = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next435.1, %._crit_edge385.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init577 = phi <3 x float> [ %i.jw, %.lr.ph384 ], [ %i.nl, %._crit_edge385.loopexit.unr-lcssa ]
  %.epil.init579 = phi <3 x float> [ %i.jy, %.lr.ph384 ], [ %i.nm, %._crit_edge385.loopexit.unr-lcssa ]
  %lcmp.mod583 = trunc i32 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod583)
  %gep512.epil = getelementptr [32 x i8], ptr %invariant.gep511, i64 %indvars.iv434.epil.init ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv434.epil.init
  %i.kc = getelementptr inbounds nuw i8, ptr %gep512.epil, i64 16
  %i.kd = load float, ptr %i.kb, align 4, !tbaa !20, !noalias !391
  %i.ke = load <3 x float>, ptr %i.kc, align 4, !tbaa !20, !noalias !391
  %i.kf = insertelement <3 x float> poison, float %i.kd, i64 0
  %i.kg = shufflevector <3 x float> %i.kf, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.kh = fmul <3 x float> %i.kg, %i.ke
  %i.ki = shufflevector <3 x float> %i.kh, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.kj = load <3 x float>, ptr %gep512.epil, align 4, !tbaa !20, !noalias !391
  %i.kk = fmul <3 x float> %i.kg, %i.kj
  %i.kl = shufflevector <3 x float> %i.kk, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
end_hunk_4
