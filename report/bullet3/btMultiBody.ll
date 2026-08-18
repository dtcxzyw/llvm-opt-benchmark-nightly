inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11btMultiBody22addJointTorqueMultiDofEiPKf:bb.a
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.prol
  store float %i.u, ptr %i.v, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !128

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
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store float %i.z, ptr %i.aa, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store float %i.ac, ptr %i.ad, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store float %i.af, ptr %i.ag, align 4, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store float %i.ai, ptr %i.aj, align 4, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody12getLinkForceEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11btMultiBody13getLinkTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZNK11btMultiBody14getJointTorqueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load float, ptr %i.e, align 8, !tbaa !9
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN11btMultiBody22getJointTorqueMultiDofEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [688 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11btMultiBody12hasFixedBaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !131
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
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53, !range !67, !noundef !68
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !131
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = and i32 %i.d, -4
  %i.f = or i32 %i.e, %1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr nofree noundef nonnull align 8 dereferenceable(640) initializes((638, 639)) %0, float noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [36 x float], align 16            ; 10 uses
  %i.b = alloca [6 x float], align 16             ; 4 uses
  %8 = alloca %struct.btSpatialMotionVector, align 8 ; 8 uses
  %i.c = alloca [6 x float], align 16             ; 7 uses
  %9 = alloca [6 x %struct.btSpatialForceVector], align 16 ; 16 uses
  %10 = alloca %struct.btSpatialTransformationMatrix, align 8 ; 48 uses
  %11 = alloca %struct.btSymmetricSpatialDyad, align 16 ; 30 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 638 ; 2 uses
  store i8 0, ptr %i.d, align 2, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !9 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load float, ptr %i.k, align 4, !tbaa !9  ; 2 uses
  %i.o = load float, ptr %i.l, align 4, !tbaa !9  ; 2 uses
  %i.p = load float, ptr %i.m, align 4, !tbaa !9  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load float, ptr %i.j, align 4, !tbaa !9  ; 2 uses
  %i.t = load float, ptr %i.q, align 4, !tbaa !9  ; 2 uses
  %i.u = load float, ptr %i.r, align 4, !tbaa !9  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !96
  %i.x = shl nsw i32 %i.w, 1                      ; 2 uses
  %i.y = add nsw i32 %i.x, 7                      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %i.ab = icmp sgt i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !44
  %i.ae = icmp slt i32 %i.ad, %i.y
  br i1 %i.ae, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.y to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ag, i32 noundef 16) ; 9 uses
  %.pre.i = load i32, ptr %i.z, align 4, !tbaa !43 ; 3 uses
  %i.ai = icmp sgt i32 %.pre.i, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 9 uses
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = ptrtoaddr ptr %i.ah to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre.i, 8
  %i.an = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond1888 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1888, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !tbaa !9
  %wide.load1817 = load <4 x float>, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %wide.load, ptr %i.ao, align 4, !tbaa !9
  store <4 x float> %wide.load1817, ptr %i.ar, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !140

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
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.prol
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i.prol
  %i.av = load float, ptr %i.au, align 4, !tbaa !9
  store float %i.av, ptr %i.at, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !141

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !9
  store float %i.ba, ptr %i.ay, align 4, !tbaa !9
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !9
  store float %i.bd, ptr %i.bb, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.1
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.1
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  store float %i.bg, ptr %i.be, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.2
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i.2
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  store float %i.bj, ptr %i.bh, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !142

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !41, !range !67, !noundef !68
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.d, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bn, align 8, !tbaa !41
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !42
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !44
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.bo = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %i.ah, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.bp = sext i32 %i.aa to i64                   ; 2 uses
  %i.bq = shl nsw i64 %i.bp, 2
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.br = sext i32 %i.x to i64
  %i.bs = add nsw i64 %i.br, 7
  %i.bt = sub nsw i64 %i.bs, %i.bp
  %i.bu = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bu, i1 false), !tbaa !9
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.y, ptr %i.z, align 4, !tbaa !43
  %i.bv = shl nsw i32 %i.f, 3
  %i.bw = or disjoint i32 %i.bv, 6                ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47
  %i.bz = icmp sgt i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !48
  %i.cc = icmp slt i32 %i.cb, %i.bw
  br i1 %i.cc, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.cd = sext i32 %i.bw to i64
  %i.ce = shl nsw i64 %i.cd, 4
  %i.cf = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ce, i32 noundef 16) ; 4 uses
  %.pre.i438 = load i32, ptr %i.bx, align 4, !tbaa !47 ; 4 uses
  %i.cg = icmp sgt i32 %.pre.i438, 0
  br i1 %i.cg, label %.lr.ph.i.i.i440, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i440:                                  ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count.i.i.i441 = zext nneg i32 %.pre.i438 to i64 ; 2 uses
  %xtraiter1931 = and i64 %wide.trip.count.i.i.i441, 1
  %i.ci = icmp eq i32 %.pre.i438, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.i.i440.new

.lr.ph.i.i.i440.new:                              ; preds = %.lr.ph.i.i.i440
  %unroll_iter = and i64 %wide.trip.count.i.i.i441, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i440.new
  %indvars.iv.i.i.i442 = phi i64 [ 0, %.lr.ph.i.i.i440.new ], [ %indvars.iv.next.i.i.i443.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i440.new ], [ %niter.next.1, %bb.g ]
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i442
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i442
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i443 = or disjoint i64 %indvars.iv.i.i.i442, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i443
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i443.1 = add nuw nsw i64 %indvars.iv.i.i.i442, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !108

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod1932.not = icmp eq i64 %xtraiter1931, 0
  br i1 %lcmp.mod1932.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i440
  %indvars.iv.i.i.i442.epil.init = phi i64 [ 0, %.lr.ph.i.i.i440 ], [ %indvars.iv.next.i.i.i443.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1933 = trunc i32 %.pre.i438 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1933)
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv.i.i.i442.epil.init
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.i.i.i442.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %i.cr, i64 16, i1 false), !tbaa.struct !36
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46 ; 2 uses
  %.not.i5.i.i439 = icmp eq ptr %i.ct, null
  br i1 %.not.i5.i.i439, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !45, !range !67, !noundef !68
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.i, %bb.h, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.cx, align 8, !tbaa !45
  store ptr %i.cf, ptr %i.cs, align 8, !tbaa !46
  store i32 %i.bw, ptr %i.ca, align 8, !tbaa !48
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.e, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !47
  %i.cy = shl nsw i32 %i.f, 2
  %i.cz = add nsw i32 %i.cy, 4                    ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !51 ; 2 uses
  %i.dc = icmp sgt i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.j, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !52
  %i.df = icmp slt i32 %i.de, %i.cz
  br i1 %i.df, label %bb.k, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = sext i32 %i.cz to i64
  %i.dh = mul nsw i64 %i.dg, 48
  %i.di = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dh, i32 noundef 16)
  %.pre.i450 = load i32, ptr %i.da, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i: ; preds = %bb.l, %bb.k
  %i.dj = phi i32 [ %.pre.i450, %bb.l ], [ %i.db, %bb.k ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.di, %bb.l ], [ null, %bb.k ] ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i.i452, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i452:                                  ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count.i.i.i453 = zext nneg i32 %i.dj to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i452
  %indvars.iv.i.i.i454 = phi i64 [ 0, %.lr.ph.i.i.i452 ], [ %indvars.iv.next.i.i.i455, %bb.m ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i454 ; 3 uses
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %indvars.iv.i.i.i454 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.do, i64 16, i1 false), !tbaa.struct !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !36
  %indvars.iv.next.i.i.i455 = add nuw nsw i64 %indvars.iv.i.i.i454, 1 ; 2 uses
  %exitcond.not.i.i.i456 = icmp eq i64 %indvars.iv.next.i.i.i455, %wide.trip.count.i.i.i453
  br i1 %exitcond.not.i.i.i456, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i, label %bb.m, !llvm.loop !70

_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !50 ; 2 uses
  %.not.i5.i.i451 = icmp eq ptr %i.du, null
  br i1 %.not.i5.i.i451, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !49, !range !67, !noundef !68
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.o, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.du)
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i: ; preds = %bb.o, %bb.n, %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.dy, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.dt, align 8, !tbaa !50
  store i32 %i.cz, ptr %i.dd, align 8, !tbaa !52
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit: ; preds = %bb.j, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !51
  %i.dz = load i32, ptr %i.v, align 4, !tbaa !96  ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !42 ; 6 uses
  %i.ec = sext i32 %i.dz to i64                   ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.eb, i64 %i.ec ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46 ; 16 uses
  %i.eg = shl nsw i32 %i.f, 1                     ; 2 uses
  %i.eh = add nsw i32 %i.eg, 2
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ef, i64 %i.ei ; 15 uses
  %i.ek = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.ei ; 5 uses
  %i.el = sext i32 %i.eg to i64
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.el ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !50 ; 7 uses
  %i.ep = sext i32 %i.f to i64                    ; 2 uses
  %i.eq = getelementptr [48 x i8], ptr %i.eo, i64 %i.ep ; 25 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 48     ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !50 ; 20 uses
  %i.eu = icmp sgt i32 %i.dz, 0
  br i1 %i.eu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !46
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.ey = zext nneg i32 %i.dz to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  br label %bb.q

bb.q:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit, %bb.p
  %i.fb = phi ptr [ %i.ew, %bb.p ], [ null, %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit ] ; 10 uses
  %i.fc = phi ptr [ %i.fa, %bb.p ], [ null, %_ZN20btAlignedObjectArrayI11btMatrix3x3E6resizeEiRKS0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %9, i8 0, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store float 1.000000e+00, ptr %11, align 16, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fe, align 4, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fg, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  store float 1.000000e+00, ptr %i.fh, align 16, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fj, align 4, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fl, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 4 uses
  store float 1.000000e+00, ptr %i.fm, align 16, !tbaa !9
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 100
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fo, align 4, !tbaa !9
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 120 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.fq, align 8, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !9 ; 5 uses
  %.sroa.41182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %.sroa.51183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %.sroa.61184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 5 uses
  %.sroa.91186.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 20 ; 2 uses
  %.sroa.101187.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  %.sroa.111188.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.fy = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 5 uses
  %.sroa.141190.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 36 ; 2 uses
  %.sroa.151191.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 4 uses
  %.sroa.161192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 44
  %i.fz = load float, ptr %i.fs, align 8, !tbaa !9 ; 6 uses
  %i.ga = load float, ptr %i.fu, align 8, !tbaa !9 ; 4 uses
  %i.gb = load float, ptr %i.ft, align 4, !tbaa !9 ; 5 uses
  %i.gc = fmul float %i.gb, %i.gb
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.gc)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gd)
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.ge)
  %i.gg = fdiv float 2.000000e+00, %i.gf          ; 3 uses
  %i.gh = fmul float %i.fz, %i.gg                 ; 2 uses
  %i.gi = fmul float %i.gb, %i.gg                 ; 3 uses
  %i.gj = fmul float %i.fw, %i.gh                 ; 2 uses
  %i.gk = fmul float %i.fw, %i.gi                 ; 2 uses
  %i.gl = fmul float %i.fz, %i.gh                 ; 2 uses
  %i.gm = fmul float %i.fz, %i.gi                 ; 2 uses
  %i.gn = fmul float %i.ga, %i.gg                 ; 4 uses
  %i.go = fmul float %i.gb, %i.gi                 ; 2 uses
  %i.gp = fmul float %i.gb, %i.gn                 ; 2 uses
  %i.gq = fmul float %i.fz, %i.gn                 ; 2 uses
  %i.gr = fmul float %i.ga, %i.gn                 ; 2 uses
  %i.gs = fmul float %i.fw, %i.gn                 ; 2 uses
  %i.gt = fadd float %i.go, %i.gr
  %i.gu = fadd float %i.gm, %i.gs                 ; 2 uses
  %i.gv = fsub float 1.000000e+00, %i.gt          ; 2 uses
  %i.gw = fadd float %i.gl, %i.gr
  %i.gx = fsub float 1.000000e+00, %i.gw          ; 2 uses
  %i.gy = fsub float %i.gm, %i.gs                 ; 2 uses
  %i.gz = fsub float %i.gp, %i.gj                 ; 2 uses
  %i.ha = fadd float %i.gq, %i.gk                 ; 2 uses
  %i.hb = fsub float %i.gq, %i.gk                 ; 3 uses
  %i.hc = fadd float %i.gp, %i.gj                 ; 3 uses
  %i.hd = fadd float %i.gl, %i.go
  %i.he = fsub float 1.000000e+00, %i.hd          ; 3 uses
  store float %i.gv, ptr %i.et, align 4
  store float %i.gy, ptr %.sroa.41182.0..sroa_idx, align 4
  store float %i.ha, ptr %.sroa.51183.0..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.61184.0..sroa_idx, align 4, !tbaa !11
  store float %i.gu, ptr %i.fx, align 4
  store float %i.gx, ptr %.sroa.91186.16..sroa_idx, align 4
  store float %i.gz, ptr %.sroa.101187.16..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.111188.16..sroa_idx, align 4, !tbaa !11
  store float %i.hb, ptr %i.fy, align 4
  store float %i.hc, ptr %.sroa.141190.32..sroa_idx, align 4
  store float %i.he, ptr %.sroa.151191.32..sroa_idx, align 4
  store float 0.000000e+00, ptr %.sroa.161192.32..sroa_idx, align 4, !tbaa !11
  %i.hf = insertelement <2 x float> poison, float %i.t, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.gx, i64 1 ; 2 uses
  %i.hj = fmul <2 x float> %i.hg, %i.hi
  %i.hk = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.gu, i64 1 ; 2 uses
  %i.hm = insertelement <2 x float> poison, float %i.s, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hn, <2 x float> %i.hj)
  %i.hp = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.gz, i64 1 ; 2 uses
  %i.hr = insertelement <2 x float> poison, float %i.u, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hs, <2 x float> %i.ho)
  %i.hu = fmul float %i.t, %i.hc
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.s, float %i.hu)
  %i.hw = tail call noundef float @llvm.fmuladd.f32(float %i.he, float %i.u, float %i.hv)
  %.sroa.3.12.vec.insert.i459 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hw, i64 0
  %i.hx = insertelement <2 x float> poison, float %i.o, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hy, %i.hi
  %i.ia = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.ib, <2 x float> %i.hz)
  %i.id = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.ie, <2 x float> %i.ic)
  %i.ig = fmul float %i.o, %i.hc
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.n, float %i.ig)
  %i.ii = tail call noundef float @llvm.fmuladd.f32(float %i.he, float %i.p, float %i.ih)
  %.sroa.3.12.vec.insert.i464 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ii, i64 0
  store <2 x float> %i.ht, ptr %i.ef, align 4
  %.sroa.41180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i459, ptr %.sroa.41180.0..sroa_idx, align 4, !tbaa !11
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 4 uses
  store <2 x float> %i.if, ptr %i.ij, align 4
  %.sroa.41178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i464, ptr %.sroa.41178.0..sroa_idx, align 4, !tbaa !11
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 561 ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !53, !range !67, !noundef !68
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !130 ; 2 uses
  %.not.i = icmp eq ptr %i.io, null
  br i1 %.not.i, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit: ; preds = %bb.r
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 224
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !131
  %i.ir = and i32 %i.iq, 3
  %.not1401 = icmp eq i32 %i.ir, 0
  br i1 %.not1401, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread: ; preds = %bb.q, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ej, i8 0, i64 32, i1 false)
  br label %bb.u

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384: ; preds = %bb.r, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit
  %.v = select i1 %5, i64 140, i64 108
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  %.v426 = select i1 %5, i64 156, i64 124
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 %.v426 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !9 ; 2 uses
  %i.iw = load float, ptr %i.fy, align 4, !tbaa !9
  %i.ix = load float, ptr %.sroa.141190.32..sroa_idx, align 4, !tbaa !9
  %i.iy = load float, ptr %.sroa.151191.32..sroa_idx, align 4, !tbaa !9
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !9
  %.sroa.41172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 3 uses
  %.sroa.41176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.je = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 612
end_hunk_0
begin_hunk_1_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.lb = load float, ptr %.sroa.41180.0..sroa_idx, align 4, !tbaa !9
  %i.lc = load float, ptr %i.jf, align 8, !tbaa !14
  %i.ld = load <2 x float>, ptr %i.ij, align 4, !tbaa !9 ; 3 uses
  %i.le = insertelement <2 x float> poison, float %i.lc, i64 0 ; 2 uses
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul <2 x float> %i.lf, %i.ld
  %i.lh = load float, ptr %.sroa.41178.0..sroa_idx, align 4, !tbaa !9
  %i.li = insertelement <2 x float> %i.le, float %i.ky, i64 1
  %i.lj = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lk = insertelement <2 x float> %i.lj, float %i.lb, i64 1 ; 3 uses
  %i.ll = fmul <2 x float> %i.li, %i.lk
  %i.lm = shufflevector <2 x float> %i.ld, <2 x float> %i.kz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ln = fmul <2 x float> %i.lm, %i.lm
  %i.lo = shufflevector <2 x float> %i.ld, <2 x float> %i.kz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lo, <2 x float> %i.ln)
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.lk, <2 x float> %i.lp) ; 2 uses
  %i.lr = fcmp ogt <2 x float> %i.lq, splat (float f0x34000000)
  %i.ls = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lq)
  %i.lt = select <2 x i1> %i.lr, <2 x float> %i.ls, <2 x float> zeroinitializer
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.lt, <2 x float> %i.h) ; 3 uses
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lw = fmul <2 x float> %i.la, %i.lv
  %i.lx = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = fmul <2 x float> %i.lg, %i.lx
  %i.lz = fmul <2 x float> %i.ll, %i.lu
  %i.ma = fsub <2 x float> %i.ly, %i.kv           ; 2 uses
  store <2 x float> %i.ma, ptr %i.ej, align 4, !tbaa !9
  %i.mb = fsub <2 x float> %i.lz, %i.kh           ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 0 ; 2 uses
  store float %i.mc, ptr %.sroa.41172.0..sroa_idx, align 4, !tbaa !9
  %i.md = fsub <2 x float> %i.lw, %i.kt           ; 2 uses
  store <2 x float> %i.md, ptr %i.jb, align 4, !tbaa !9
  %i.me = extractelement <2 x float> %i.mb, i64 1 ; 2 uses
  store float %i.me, ptr %.sroa.41176.0..sroa_idx, align 4, !tbaa !9
  %i.mf = load i8, ptr %i.jh, align 4, !tbaa !62, !range !67, !noundef !68
  %i.mg = trunc nuw i8 %i.mf to i1
  %i.mh = load <2 x float>, ptr %i.je, align 4, !tbaa !9 ; 7 uses
  %.pre1658 = load float, ptr %i.ef, align 4, !tbaa !9 ; 4 uses
  br i1 %i.mg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mj = load float, ptr %i.jc, align 4, !tbaa !9
  %i.mk = extractelement <2 x float> %i.mh, i64 0
  %i.ml = load <2 x float>, ptr %i.mi, align 8, !tbaa !9 ; 2 uses
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mn = insertelement <2 x float> %i.mm, float %i.mj, i64 1
  %i.mo = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mp = insertelement <2 x float> %i.mo, float %.pre1658, i64 1 ; 2 uses
  %i.mq = fmul <2 x float> %i.mn, %i.mp           ; 2 uses
  %i.mr = fmul <2 x float> %i.ml, %i.mh           ; 2 uses
  %i.ms = fneg <2 x float> %i.mr
  %i.mt = fmul <2 x float> %i.mp, %i.ms
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %i.mq, <2 x float> %i.mt)
  %i.mv = extractelement <2 x float> %i.mq, i64 1
  %i.mw = fneg float %i.mv
  %i.mx = fmul float %i.mk, %i.mw
  %i.my = extractelement <2 x float> %i.mr, i64 0
  %i.mz = tail call float @llvm.fmuladd.f32(float %.pre1658, float %i.my, float %i.mx)
  %i.na = fadd <2 x float> %i.md, %i.mu
  store <2 x float> %i.na, ptr %i.jb, align 4, !tbaa !9
  %i.nb = fadd float %i.me, %i.mz
  store float %i.nb, ptr %.sroa.41176.0..sroa_idx, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread1384
  %i.nc = load float, ptr %i.ij, align 4, !tbaa !9 ; 2 uses
  %i.nd = fneg float %i.nc
  %i.ne = extractelement <2 x float> %i.mh, i64 0
  %i.nf = fmul float %i.ne, %i.nd
  %i.ng = load float, ptr %i.jf, align 8, !tbaa !9 ; 2 uses
  %i.nh = load <2 x float>, ptr %i.jg, align 4, !tbaa !9 ; 3 uses
  %i.ni = fneg <2 x float> %i.nh
  %i.nj = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nk = insertelement <2 x float> %i.nj, float %.pre1658, i64 1
  %i.nl = fmul <2 x float> %i.nk, %i.ni
  %i.nm = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nn = insertelement <2 x float> %i.nm, float %i.nc, i64 1
  %i.no = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %i.nn, <2 x float> %i.nl)
  %i.np = extractelement <2 x float> %i.nh, i64 0
  %i.nq = tail call float @llvm.fmuladd.f32(float %.pre1658, float %i.np, float %i.nf)
  %i.nr = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x float> %i.no, %i.ns
  %i.nu = fmul float %i.ng, %i.nq
  %i.nv = fadd <2 x float> %i.nt, %i.ma
  store <2 x float> %i.nv, ptr %i.ej, align 4, !tbaa !9
  %i.nw = fadd float %i.nu, %i.mc
  store float %i.nw, ptr %.sroa.41172.0..sroa_idx, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ny = load float, ptr %i.nx, align 8, !tbaa !9 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.oc = load float, ptr %i.nz, align 4, !tbaa !9
  %i.od = load float, ptr %i.oa, align 8, !tbaa !9
  %i.oe = load float, ptr %i.ob, align 4, !tbaa !9
  %.sroa.41136.0..sroa_idx = getelementptr i8, ptr %i.eq, i64 52
  %.sroa.51137.0..sroa_idx = getelementptr i8, ptr %i.eq, i64 56
  %i.of = getelementptr i8, ptr %i.eq, i64 64     ; 2 uses
  %.sroa.91140.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 68
  %.sroa.101141.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 72
  %i.og = getelementptr i8, ptr %i.eq, i64 80     ; 2 uses
  %.sroa.141144.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 84
  %.sroa.151145.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 88
  %i.oh = getelementptr i8, ptr %i.eq, i64 96     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.er, i8 0, i64 48, i1 false)
  store float %i.ny, ptr %i.oh, align 4
  %.sroa.41115.0..sroa_idx = getelementptr i8, ptr %i.eq, i64 100
  %i.oi = getelementptr i8, ptr %i.eq, i64 112
  %.sroa.91119.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.41115.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.ny, ptr %.sroa.91119.16..sroa_idx, align 4
  %.sroa.101120.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 120
  %i.oj = getelementptr i8, ptr %i.eq, i64 128
  %.sroa.151124.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.101120.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.ny, ptr %.sroa.151124.32..sroa_idx, align 4
  %.sroa.161125.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 140
  store float 0.000000e+00, ptr %.sroa.161125.32..sroa_idx, align 4, !tbaa !11
  %i.ok = getelementptr i8, ptr %i.eq, i64 144    ; 2 uses
  store float %i.oc, ptr %i.ok, align 4
  %.sroa.41097.0..sroa_idx = getelementptr i8, ptr %i.eq, i64 148
  %i.ol = getelementptr i8, ptr %i.eq, i64 160
  %.sroa.91101.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.41097.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.od, ptr %.sroa.91101.16..sroa_idx, align 4
  %.sroa.101102.16..sroa_idx = getelementptr i8, ptr %i.eq, i64 168
  %i.om = getelementptr i8, ptr %i.eq, i64 176
  %.sroa.151106.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.101102.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.oe, ptr %.sroa.151106.32..sroa_idx, align 4
  %.sroa.161107.32..sroa_idx = getelementptr i8, ptr %i.eq, i64 188
  store float 0.000000e+00, ptr %.sroa.161107.32..sroa_idx, align 4, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.eo, ptr noundef nonnull align 4 dereferenceable(48) %i.et, i64 16, i1 false), !tbaa.struct !36
  %i.on = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.on, ptr noundef nonnull align 4 dereferenceable(16) %i.fx, i64 16, i1 false), !tbaa.struct !36
  %i.oo = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oo, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !tbaa.struct !36
  %i.op = icmp sgt i32 %i.f, 0                    ; 4 uses
  br i1 %i.op, label %.lr.ph1430, label %._crit_edge1527

.lr.ph1430:                                       ; preds = %bb.u
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.or = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.oy = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 637
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 612
  %wide.trip.count1576 = zext nneg i32 %i.f to i64
  %. = select i1 %5, i64 432, i64 400
  %.1794 = select i1 %5, i64 436, i64 404
  %.1795 = select i1 %5, i64 440, i64 408
  %.1796 = select i1 %5, i64 448, i64 416
  br label %bb.v

.lr.ph.i624.lr.ph:                                ; preds = %bb.af
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 104
  %.sroa.4933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.5934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.6935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.pz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 40
  %.sroa.42.0..sroa_idx.i659 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.qc = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.qd = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.qe = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.4.0..sroa_idx.i660 = getelementptr inbounds nuw i8, ptr %9, i64 56
  br label %.lr.ph.i624

bb.v:                                             ; preds = %.lr.ph1430, %bb.af
  %indvars.iv1573 = phi i64 [ 0, %.lr.ph1430 ], [ %indvars.iv.next1574, %bb.af ] ; 11 uses
  %i.qf = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.qg = getelementptr inbounds nuw [688 x i8], ptr %i.qf, i64 %indvars.iv1573 ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 20
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !84
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 336
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !9 ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 340
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !9 ; 5 uses
  %i.qn = fmul float %i.qm, %i.qm
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qn)
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 344
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !9 ; 4 uses
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.qq, float %i.qo)
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qg, i64 348
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !9 ; 5 uses
  %i.qu = tail call noundef float @llvm.fmuladd.f32(float %i.qt, float %i.qt, float %i.qr)
  %i.qv = fdiv float 2.000000e+00, %i.qu          ; 3 uses
  %i.qw = fmul float %i.qk, %i.qv                 ; 2 uses
  %i.qx = fmul float %i.qm, %i.qv                 ; 3 uses
  %i.qy = fmul float %i.qq, %i.qv                 ; 4 uses
  %i.qz = fmul float %i.qt, %i.qw                 ; 2 uses
  %i.ra = fmul float %i.qt, %i.qx                 ; 2 uses
  %i.rb = fmul float %i.qt, %i.qy                 ; 2 uses
  %i.rc = fmul float %i.qk, %i.qw                 ; 2 uses
  %i.rd = fmul float %i.qk, %i.qx                 ; 2 uses
  %i.re = fmul float %i.qk, %i.qy                 ; 2 uses
  %i.rf = fmul float %i.qm, %i.qx                 ; 2 uses
  %i.rg = fmul float %i.qm, %i.qy                 ; 2 uses
  %i.rh = fmul float %i.qq, %i.qy                 ; 2 uses
  %i.ri = fadd float %i.rf, %i.rh
  %i.rj = fadd float %i.rc, %i.rh
  %i.rk = fadd float %i.rc, %i.rf
  %indvars.iv.next1574 = add nuw nsw i64 %indvars.iv1573, 1 ; 7 uses
  %i.rl = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv.next1574 ; 13 uses
  %.sroa.41079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %.sroa.51080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.61081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store float 0.000000e+00, ptr %.sroa.61081.0..sroa_idx, align 4, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %.sroa.91083.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 20
  %.sroa.101084.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %.sroa.111085.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 28
  store float 0.000000e+00, ptr %.sroa.111085.16..sroa_idx, align 4, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 32 ; 2 uses
  %.sroa.141087.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 36
  %.sroa.151088.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 40
  %.sroa.161089.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rl, i64 44
  store float 0.000000e+00, ptr %.sroa.161089.32..sroa_idx, align 4, !tbaa !11
  %i.ro = add nsw i32 %i.qi, 1
  %i.rp = sext i32 %i.ro to i64                   ; 2 uses
  %i.rq = getelementptr inbounds [48 x i8], ptr %i.eo, i64 %i.rp ; 9 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 20
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 36
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.rz = getelementptr inbounds nuw [48 x i8], ptr %i.eo, i64 %indvars.iv.next1574 ; 11 uses
  %.sroa.41067.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 4 ; 2 uses
  %.sroa.51068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %.scalar = fsub float 1.000000e+00, %i.ri       ; 2 uses
  %i.sa = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1889 = fsub float %i.rd, %i.rb          ; 2 uses
  %i.sc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1889, i64 0
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1890 = fadd float %i.re, %i.ra          ; 2 uses
  %i.se = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1890, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store float %.scalar, ptr %i.rl, align 4
  store float %.scalar1889, ptr %.sroa.41079.0..sroa_idx, align 4
  store float %.scalar1890, ptr %.sroa.51080.0..sroa_idx, align 4
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 3 uses
  %.sroa.91071.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 20 ; 2 uses
  %.sroa.101072.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sh = fadd float %i.rd, %i.rb                 ; 2 uses
  %.scalar1891 = fsub float 1.000000e+00, %i.rj   ; 2 uses
  %i.si = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1891, i64 0
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sk = fsub float %i.rg, %i.qz                 ; 2 uses
  store float %i.sh, ptr %i.rm, align 4
  store float %.scalar1891, ptr %.sroa.91083.16..sroa_idx, align 4
  store float %i.sk, ptr %.sroa.101084.16..sroa_idx, align 4
  %i.sl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sh, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.sk, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rz, i64 32 ; 3 uses
  %.sroa.141075.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 36 ; 2 uses
  %.sroa.151076.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 40 ; 2 uses
  %.scalar1892 = fsub float %i.re, %i.ra          ; 2 uses
  %i.sq = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1892, i64 0
  %i.sr = shufflevector <2 x float> %i.sq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1893 = fadd float %i.rg, %i.qz          ; 2 uses
  %i.ss = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar1893, i64 0
  %i.st = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar1894 = fsub float 1.000000e+00, %i.rk   ; 2 uses
  %i.su = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar1894, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store float %.scalar1892, ptr %i.rn, align 4
  store float %.scalar1893, ptr %.sroa.141087.32..sroa_idx, align 4
  store float %.scalar1894, ptr %.sroa.151088.32..sroa_idx, align 4
  %i.sw = load <2 x float>, ptr %i.rq, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sx = load <2 x float>, ptr %i.rr, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sy = load <2 x float>, ptr %i.rs, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.sz = load <2 x float>, ptr %i.rt, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.ta = load float, ptr %i.rw, align 4, !tbaa !9, !noalias !143
  %i.tb = load <2 x float>, ptr %i.ru, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.tc = load float, ptr %i.rx, align 4, !tbaa !9, !noalias !143
  %i.td = shufflevector <2 x float> %i.sx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.te = insertelement <4 x float> %i.td, float 0.000000e+00, i64 3
  %i.tf = shufflevector <2 x float> %i.tb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tg = shufflevector <4 x float> %i.te, <4 x float> %i.tf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.th = fmul <4 x float> %i.tg, %i.sd
  %i.ti = shufflevector <2 x float> %i.sw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tj = insertelement <4 x float> %i.ti, float 0.000000e+00, i64 3
  %i.tk = shufflevector <2 x float> %i.sz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tl = shufflevector <4 x float> %i.tj, <4 x float> %i.tk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tl, <4 x float> %i.sb, <4 x float> %i.th)
  %i.tn = load <2 x float>, ptr %i.rv, align 4, !tbaa !9, !noalias !143 ; 2 uses
  %i.to = load float, ptr %i.ry, align 4, !tbaa !9, !noalias !143
  %i.tp = shufflevector <2 x float> %i.sy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.tq = insertelement <4 x float> %i.tp, float 0.000000e+00, i64 3
  %i.tr = shufflevector <2 x float> %i.tn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tq, <4 x float> %i.tr, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.tt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ts, <4 x float> %i.sf, <4 x float> %i.tm)
  %i.tu = shufflevector <2 x float> %i.sx, <2 x float> %i.tb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.tv = insertelement <4 x float> %i.tu, float 0.000000e+00, i64 3 ; 2 uses
  %i.tw = fmul <4 x float> %i.tv, %i.sj
  %i.tx = shufflevector <2 x float> %i.sw, <2 x float> %i.sz, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ty = insertelement <4 x float> %i.tx, float 0.000000e+00, i64 3 ; 2 uses
  %i.tz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ty, <4 x float> %i.sm, <4 x float> %i.tw)
  %i.ua = shufflevector <2 x float> %i.sy, <2 x float> %i.tn, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ub = insertelement <4 x float> %i.ua, float 0.000000e+00, i64 3 ; 2 uses
  %i.uc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ub, <4 x float> %i.so, <4 x float> %i.tz)
  %i.ud = insertelement <4 x float> %i.tv, float %i.tc, i64 2
  %i.ue = fmul <4 x float> %i.ud, %i.st
  %i.uf = insertelement <4 x float> %i.ty, float %i.ta, i64 2
  %i.ug = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uf, <4 x float> %i.sr, <4 x float> %i.ue)
  %i.uh = insertelement <4 x float> %i.ub, float %i.to, i64 2
  %i.ui = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uh, <4 x float> %i.sv, <4 x float> %i.ug)
  store <4 x float> %i.tt, ptr %i.rz, align 4
  store <4 x float> %i.uc, ptr %i.sg, align 4
  store <4 x float> %i.ui, ptr %i.sp, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.rl, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.or, ptr noundef nonnull align 4 dereferenceable(16) %i.rm, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.os, ptr noundef nonnull align 4 dereferenceable(16) %i.rn, i64 16, i1 false), !tbaa.struct !36
  %i.uj = load ptr, ptr %i.oq, align 8, !tbaa !38
  %i.uk = getelementptr inbounds nuw [688 x i8], ptr %i.uj, i64 %indvars.iv1573
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ot, ptr noundef nonnull align 8 dereferenceable(16) %i.ul, i64 16, i1 false), !tbaa.struct !36
  %i.um = load <2 x float>, ptr %i.rz, align 4    ; 4 uses
  %i.un = load <2 x float>, ptr %i.sg, align 4    ; 5 uses
  %i.uo = load <2 x float>, ptr %i.sp, align 4    ; 3 uses
  %i.up = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %i.rp ; 6 uses
  %i.uq = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %indvars.iv.next1574 ; 12 uses
  %i.ur = load float, ptr %i.up, align 4, !tbaa !9 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.ut = load float, ptr %i.us, align 4, !tbaa !9 ; 2 uses
  %i.uu = load float, ptr %i.ov, align 8, !tbaa !9
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !9 ; 2 uses
  %i.ux = load <4 x float>, ptr %i.ow, align 8
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.uz = load float, ptr %i.oy, align 8, !tbaa !9
  %.sroa.201212.0.copyload = load float, ptr %.sroa.51068.0..sroa_idx, align 4 ; 3 uses
  %.sroa.121202.0.copyload = load float, ptr %.sroa.41067.0..sroa_idx, align 4 ; 2 uses
  %i.va = load <2 x float>, ptr %.sroa.91071.16..sroa_idx, align 4 ; 4 uses
  %.sroa.461242.16.copyload = load float, ptr %.sroa.101072.16..sroa_idx, align 4 ; 2 uses
  %i.vb = load <2 x float>, ptr %.sroa.141075.32..sroa_idx, align 4 ; 4 uses
  %.sroa.72.32.copyload = load float, ptr %.sroa.151076.32..sroa_idx, align 4 ; 2 uses
  %i.vc = load float, ptr %i.ou, align 4, !tbaa !9
  %i.vd = load float, ptr %10, align 8, !tbaa !9
  %i.ve = load <2 x float>, ptr %i.or, align 8, !tbaa !9 ; 2 uses
  %i.vf = load <2 x float>, ptr %i.os, align 8, !tbaa !9 ; 2 uses
  %i.vg = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vi = shufflevector <2 x float> %i.ve, <2 x float> %i.vf, <2 x i32> <i32 1, i32 3>
  %i.vj = fmul <2 x float> %i.vh, %i.vi
  %i.vk = fmul float %i.vc, %i.ut
  %i.vl = shufflevector <2 x float> %i.ve, <2 x float> %i.vf, <2 x i32> <i32 0, i32 2>
  %i.vm = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.vn, <2 x float> %i.vj)
  %i.vp = insertelement <2 x float> %i.uy, float %i.uz, i64 1
  %i.vq = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> %i.vr, <2 x float> %i.vo) ; 6 uses
  %i.vt = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.vs, <2 x i32> <i32 3, i32 1>
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8 ; 3 uses
  store <2 x float> %i.vt, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.vu = extractelement <2 x float> %i.vs, i64 0
  %i.vv = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !9 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.afz = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aga = load <2 x float>, ptr %.sroa.41067.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.agb = load <2 x float>, ptr %.sroa.91071.16..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.agc = shufflevector <2 x float> %i.aga, <2 x float> %i.agb, <2 x i32> <i32 0, i32 2>
  %i.agd = shufflevector <2 x float> %i.aga, <2 x float> %i.agb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.age = insertelement <2 x float> poison, float %.sroa.51056.0.copyload, i64 0
  %i.agf = shufflevector <2 x float> %i.age, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %i.afz, <2 x float> %i.afx) ; 2 uses
  %i.agh = fneg <2 x float> %i.agg
  %i.agi = load <2 x float>, ptr %i.afi, align 8  ; 4 uses
  %i.agj = insertelement <2 x float> %i.agi, float %.sroa.41059.0.copyload1395, i64 0
  %i.agk = insertelement <2 x float> poison, float %i.afl, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = fmul <2 x float> %i.agj, %i.agl
  %i.agn = insertelement <2 x float> poison, float %i.afk, i64 0
  %i.ago = shufflevector <2 x float> %i.agn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agp = shufflevector <2 x float> %i.agi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.agq = insertelement <2 x float> %i.agp, float %.sroa.01058.0.copyload1393, i64 0
  %i.agr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ago, <2 x float> %i.agq, <2 x float> %i.agm)
  %i.ags = insertelement <2 x float> poison, float %i.afm, i64 0
  %i.agt = shufflevector <2 x float> %i.ags, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agu = insertelement <2 x float> %i.afy, float %.sroa.51056.0.copyload, i64 1
  %i.agv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agt, <2 x float> %i.agu, <2 x float> %i.agr) ; 3 uses
  %i.agw = fneg <2 x float> %i.agv
  %.sroa.3.12.vec.insert.i560 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.agw, <2 x i32> <i32 3, i32 1>
  %i.agx = extractelement <2 x float> %i.agv, i64 0
  %i.agy = fneg float %i.agx
  %.sroa.3.12.vec.insert.i570 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agy, i64 0
  %i.agz = shufflevector <2 x float> %i.agi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aha = fmul <2 x float> %i.agz, %i.agc
  %i.ahb = shufflevector <2 x float> %i.agi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afu, <2 x float> %i.ahb, <2 x float> %i.aha)
  %i.ahd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agd, <2 x float> %i.agf, <2 x float> %i.ahc) ; 2 uses
  %i.ahe = fneg <2 x float> %i.ahd
  store <2 x float> %i.agh, ptr %i.afj, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i570, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !11
  store <2 x float> %i.ahe, ptr %i.afn, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i560, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !11
  %i.ahf = load ptr, ptr %i.oq, align 8, !tbaa !38 ; 3 uses
  %i.ahg = getelementptr inbounds nuw [688 x i8], ptr %i.ahf, i64 %indvars.iv1573 ; 5 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4 ; 2 uses
  %i.ahi = load <2 x float>, ptr %i.ahh, align 4, !tbaa !9
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 12
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !9
  %i.ahl = load <2 x float>, ptr %i.uq, align 4, !tbaa !9 ; 3 uses
  %i.ahm = fmul <2 x float> %i.ahi, %i.ahl
  %i.ahn = load float, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !9
  %i.aho = load float, ptr %i.ahg, align 8, !tbaa !78
  %i.ahp = load <2 x float>, ptr %i.xq, align 4, !tbaa !9 ; 3 uses
  %i.ahq = insertelement <2 x float> poison, float %i.aho, i64 0 ; 2 uses
  %i.ahr = shufflevector <2 x float> %i.ahq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahs = fmul <2 x float> %i.ahr, %i.ahp
  %i.aht = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.ahu = insertelement <2 x float> %i.ahq, float %i.ahk, i64 1
  %i.ahv = insertelement <2 x float> poison, float %i.aht, i64 0
  %i.ahw = insertelement <2 x float> %i.ahv, float %i.ahn, i64 1 ; 3 uses
  %i.ahx = fmul <2 x float> %i.ahu, %i.ahw
  %i.ahy = shufflevector <2 x float> %i.ahp, <2 x float> %i.ahl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ahz = fmul <2 x float> %i.ahy, %i.ahy
  %i.aia = shufflevector <2 x float> %i.ahp, <2 x float> %i.ahl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aia, <2 x float> %i.aia, <2 x float> %i.ahz)
  %i.aic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahw, <2 x float> %i.ahw, <2 x float> %i.aib) ; 2 uses
  %i.aid = fcmp ogt <2 x float> %i.aic, splat (float f0x34000000)
  %i.aie = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aic)
  %i.aif = select <2 x i1> %i.aid, <2 x float> %i.aie, <2 x float> zeroinitializer
  %i.aig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.aif, <2 x float> %i.h) ; 3 uses
  %i.aih = shufflevector <2 x float> %i.aig, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aii = fmul <2 x float> %i.ahm, %i.aih
  %i.aij = shufflevector <2 x float> %i.aig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aik = fmul <2 x float> %i.ahs, %i.aij
  %i.ail = fmul <2 x float> %i.ahx, %i.aig
  %i.aim = fsub <2 x float> %i.aik, %i.agg        ; 2 uses
  store <2 x float> %i.aim, ptr %i.afj, align 4, !tbaa !9
  %i.ain = fsub <2 x float> %i.ail, %i.agv        ; 2 uses
  %i.aio = extractelement <2 x float> %i.ain, i64 0 ; 2 uses
  store float %i.aio, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !9
  %i.aip = fsub <2 x float> %i.aii, %i.ahd        ; 2 uses
  store <2 x float> %i.aip, ptr %i.afn, align 4, !tbaa !9
  %i.aiq = extractelement <2 x float> %i.ain, i64 1 ; 2 uses
  store float %i.aiq, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !9
  %i.air = load i8, ptr %i.pc, align 4, !tbaa !62, !range !67, !noundef !68
  %i.ais = trunc nuw i8 %i.air to i1
  br i1 %i.ais, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahg, i64 8
  %i.aiu = load float, ptr %i.ahh, align 4, !tbaa !9
  %i.aiv = load float, ptr %i.uq, align 4, !tbaa !9 ; 2 uses
  %i.aiw = load <2 x float>, ptr %i.ait, align 8, !tbaa !9 ; 2 uses
  %i.aix = load <2 x float>, ptr %i.adf, align 4, !tbaa !9 ; 4 uses
  %i.aiy = shufflevector <2 x float> %i.aiw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aiz = insertelement <2 x float> %i.aiy, float %i.aiu, i64 1
  %i.aja = shufflevector <2 x float> %i.aix, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajb = insertelement <2 x float> %i.aja, float %i.aiv, i64 1 ; 2 uses
  %i.ajc = fmul <2 x float> %i.aiz, %i.ajb        ; 2 uses
  %i.ajd = fmul <2 x float> %i.aiw, %i.aix        ; 2 uses
  %i.aje = fneg <2 x float> %i.ajd
  %i.ajf = fmul <2 x float> %i.ajb, %i.aje
  %i.ajg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aix, <2 x float> %i.ajc, <2 x float> %i.ajf)
  %i.ajh = extractelement <2 x float> %i.ajc, i64 1
  %i.aji = fneg float %i.ajh
  %i.ajj = extractelement <2 x float> %i.aix, i64 0
  %i.ajk = fmul float %i.ajj, %i.aji
  %i.ajl = extractelement <2 x float> %i.ajd, i64 0
  %i.ajm = tail call float @llvm.fmuladd.f32(float %i.aiv, float %i.ajl, float %i.ajk)
  %i.ajn = fadd <2 x float> %i.aip, %i.ajg
  store <2 x float> %i.ajn, ptr %i.afn, align 4, !tbaa !9
  %i.ajo = fadd float %i.aiq, %i.ajm
  store float %i.ajo, ptr %.sroa.41053.0..sroa_idx, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  br i1 %5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ajp = load float, ptr %i.xq, align 4, !tbaa !9 ; 2 uses
  %i.ajq = load float, ptr %i.uq, align 4, !tbaa !9 ; 2 uses
  %i.ajr = fneg float %i.ajp
  %i.ajs = load float, ptr %i.ahg, align 8, !tbaa !9 ; 2 uses
  %i.ajt = load <2 x float>, ptr %i.adf, align 4, !tbaa !9 ; 3 uses
  %i.aju = load <2 x float>, ptr %i.adt, align 4, !tbaa !9 ; 3 uses
  %i.ajv = fneg <2 x float> %i.aju
  %i.ajw = shufflevector <2 x float> %i.ajt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajx = insertelement <2 x float> %i.ajw, float %i.ajq, i64 1
  %i.ajy = fmul <2 x float> %i.ajx, %i.ajv
  %i.ajz = shufflevector <2 x float> %i.aju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajp, i64 1
  %i.akb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajt, <2 x float> %i.aka, <2 x float> %i.ajy)
  %i.akc = extractelement <2 x float> %i.ajt, i64 0
  %i.akd = fmul float %i.akc, %i.ajr
  %i.ake = extractelement <2 x float> %i.aju, i64 0
  %i.akf = tail call float @llvm.fmuladd.f32(float %i.ajq, float %i.ake, float %i.akd)
  %i.akg = insertelement <2 x float> poison, float %i.ajs, i64 0
  %i.akh = shufflevector <2 x float> %i.akg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aki = fmul <2 x float> %i.akb, %i.akh
  %i.akj = fmul float %i.ajs, %i.akf
  %i.akk = fadd <2 x float> %i.aki, %i.aim
  store <2 x float> %i.akk, ptr %i.afj, align 4, !tbaa !9
  %i.akl = fadd float %i.akj, %i.aio
  store float %i.akl, ptr %.sroa.41049.0..sroa_idx, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %i.akm = phi ptr [ %i.ahf, %bb.ad ], [ %i.ahf, %bb.ae ], [ %.pre1659, %bb.ab ]
  %i.akn = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %indvars.iv.next1574 ; 13 uses
  %i.ako = getelementptr inbounds nuw [688 x i8], ptr %i.akm, i64 %indvars.iv1573 ; 4 uses
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !9 ; 3 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ako, i64 12
  %i.akt = load float, ptr %i.akq, align 4, !tbaa !9
  %i.aku = load float, ptr %i.akr, align 4, !tbaa !9
  %i.akv = load float, ptr %i.aks, align 4, !tbaa !9
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akn, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.akn, i8 0, i64 48, i1 false)
  store float %i.akp, ptr %i.akw, align 4
  %.sroa.4992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 52
  %.sroa.9996.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4992.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akp, ptr %.sroa.9996.16..sroa_idx, align 4
  %.sroa.10997.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 72
  %.sroa.151001.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10997.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akp, ptr %.sroa.151001.32..sroa_idx, align 4
  %.sroa.161002.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 92
  store float 0.000000e+00, ptr %.sroa.161002.32..sroa_idx, align 4, !tbaa !11
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akn, i64 96
  store float %i.akt, ptr %i.akx, align 4
  %.sroa.4974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 100
  %.sroa.9978.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4974.0..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.aku, ptr %.sroa.9978.16..sroa_idx, align 4
  %.sroa.10979.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 120
  %.sroa.15983.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10979.16..sroa_idx, i8 0, i64 16, i1 false)
  store float %i.akv, ptr %.sroa.15983.32..sroa_idx, align 4
  %.sroa.16984.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akn, i64 140
  store float 0.000000e+00, ptr %.sroa.16984.32..sroa_idx, align 4, !tbaa !11
  %exitcond1577.not = icmp eq i64 %indvars.iv.next1574, %wide.trip.count1576
  br i1 %exitcond1577.not, label %.lr.ph.i624.lr.ph, label %bb.v, !llvm.loop !153

._crit_edge1527:                                  ; preds = %bb.av, %bb.u
  %i.aky = load i8, ptr %i.ik, align 1, !tbaa !53, !range !67, !noundef !68
  %i.akz = trunc nuw i8 %i.aky to i1
  br i1 %i.akz, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1527
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !130 ; 2 uses
  %.not.i622 = icmp eq ptr %i.alb, null
  br i1 %.not.i622, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623: ; preds = %bb.ag
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 224
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !131
  %i.ale = and i32 %i.ald, 3
  %.not1402 = icmp eq i32 %i.ale, 0
  br i1 %.not1402, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread1399, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit623.thread

.lr.ph.i624:                                      ; preds = %.lr.ph.i624.lr.ph, %bb.av
  %indvars.iv1628 = phi i64 [ %i.ep, %.lr.ph.i624.lr.ph ], [ %indvars.iv.next1629, %bb.av ] ; 7 uses
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1 ; 9 uses
  %i.alf = load ptr, ptr %i.pd, align 8, !tbaa !38 ; 3 uses
  %i.alg = trunc nuw nsw i64 %indvars.iv.next1629 to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i624
  %.010.i625 = phi i32 [ %i.alg, %.lr.ph.i624 ], [ %i.alp, %bb.ai ]
  %i.alh = sext i32 %.010.i625 to i64
  %i.ali = getelementptr inbounds [688 x i8], ptr %i.alf, i64 %i.alh ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 544
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !151 ; 2 uses
  %.not.i.i626 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i626, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627

_ZNK11btMultiBody15isLinkKinematicEi.exit.i627:   ; preds = %bb.ah
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 224
  %i.alm = load i32, ptr %i.all, align 8, !tbaa !131
  %i.aln = and i32 %i.alm, 2
  %.not8.i628 = icmp eq i32 %i.aln, 0
  br i1 %.not8.i628, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ali, i64 20
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !84 ; 2 uses
  %.not.i629 = icmp eq i32 %i.alp, -1
  br i1 %.not.i629, label %._crit_edge.i630, label %bb.ah, !llvm.loop !152

._crit_edge.i630:                                 ; preds = %bb.ai
  %i.alq = load ptr, ptr %i.pe, align 8, !tbaa !130 ; 2 uses
  %.not.i6.i631 = icmp eq ptr %i.alq, null
  br i1 %.not.i6.i631, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633: ; preds = %._crit_edge.i630
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 224
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !131
  %i.alt = and i32 %i.als, 2
  %.not1405 = icmp eq i32 %i.alt, 0
  br i1 %.not1405, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, label %bb.av

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread: ; preds = %bb.ah, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i627, %._crit_edge.i630, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633
  %i.alu = getelementptr inbounds [688 x i8], ptr %i.alf, i64 %indvars.iv.next1629 ; 5 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 20
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !84
  %i.alx = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %indvars.iv1628 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(48) %i.alx, i64 16, i1 false), !tbaa.struct !36
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pf, ptr noundef nonnull align 4 dereferenceable(16) %i.aly, i64 16, i1 false), !tbaa.struct !36
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, ptr noundef nonnull align 4 dereferenceable(16) %i.alz, i64 16, i1 false), !tbaa.struct !36
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alu, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.ama, i64 16, i1 false), !tbaa.struct !36
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 556
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !86 ; 2 uses
  %i.amd = icmp sgt i32 %i.amc, 0
  br i1 %i.amd, label %.lr.ph1433, label %.preheader1410.._crit_edge1443_crit_edge

.lr.ph1433:                                       ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread
  %i.ame = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %indvars.iv1628 ; 22 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 96
  %i.amg = getelementptr inbounds nuw i8, ptr %i.ame, i64 104
  %i.amh = getelementptr inbounds nuw i8, ptr %i.ame, i64 112
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ame, i64 120
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ame, i64 128
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ame, i64 132
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ame, i64 136
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ame, i64 32
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ame, i64 4
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ame, i64 20
  %i.amq = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ame, i64 24
  %i.ams = getelementptr inbounds nuw i8, ptr %i.ame, i64 40
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ame, i64 48
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ame, i64 56
  %i.amv = getelementptr inbounds nuw i8, ptr %i.ame, i64 64
  %i.amw = getelementptr inbounds nuw i8, ptr %i.ame, i64 72
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ame, i64 80
  %i.amy = getelementptr inbounds nuw i8, ptr %i.ame, i64 84
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ame, i64 88
  %i.ana = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %indvars.iv1628 ; 4 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %i.and = getelementptr inbounds nuw i8, ptr %i.ana, i64 24
  %i.ane = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %indvars.iv.next1629 ; 4 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 24
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %.phi.trans.insert1685 = getelementptr inbounds nuw i8, ptr %i.alu, i64 328
  %.pre1686 = load i32, ptr %.phi.trans.insert1685, align 8, !tbaa !110
  br label %bb.aj

.preheader1410:                                   ; preds = %bb.al
  %i.ani = icmp sgt i32 %i.atp, 0
  br i1 %i.ani, label %.lr.ph1442, label %.preheader1410.._crit_edge1443_crit_edge

.preheader1410.._crit_edge1443_crit_edge:         ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread, %.preheader1410
  %i.anj = phi i32 [ %i.atp, %.preheader1410 ], [ %i.amc, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ]
  %.lcssa14311753 = phi ptr [ %i.arq, %.preheader1410 ], [ %i.alu, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit633.thread ] ; 2 uses
  %.phi.trans.insert1667 = getelementptr inbounds nuw i8, ptr %.lcssa14311753, i64 328
  %.pre1668 = load i32, ptr %.phi.trans.insert1667, align 8, !tbaa !110
  br label %._crit_edge1443

.lr.ph1442:                                       ; preds = %.preheader1410
  %i.ank = getelementptr inbounds nuw i8, ptr %i.arq, i64 328
  %i.anl = getelementptr inbounds nuw i8, ptr %i.arq, i64 136
  %i.anm = load i32, ptr %i.ank, align 8, !tbaa !110 ; 2 uses
  %i.ann = sext i32 %i.anm to i64
  %i.ano = zext nneg i32 %i.atp to i64            ; 5 uses
  %invariant.gep = getelementptr [32 x i8], ptr %i.fb, i64 %i.ann ; 5 uses
  %min.iters.check1819 = icmp ult i32 %i.atp, 5
  %i.anp = and i64 %i.ano, 3                      ; 2 uses
  %i.anq = icmp eq i64 %i.anp, 0
  %i.anr = select i1 %i.anq, i64 4, i64 %i.anp
  %n.vec1821 = sub nsw i64 %i.ano, %i.anr         ; 2 uses
  br label %.lr.ph1439

bb.aj:                                            ; preds = %.lr.ph1433, %bb.al
  %i.ans = phi i32 [ %.pre1686, %.lr.ph1433 ], [ %i.atk, %bb.al ]
  %indvars.iv1578 = phi i64 [ 0, %.lr.ph1433 ], [ %indvars.iv.next1579, %bb.al ] ; 5 uses
  %i.ant = phi ptr [ %i.alf, %.lr.ph1433 ], [ %.pre1660, %bb.al ]
  %i.anu = getelementptr inbounds [688 x i8], ptr %i.ant, i64 %indvars.iv.next1629
  %i.anv = trunc nuw nsw i64 %indvars.iv1578 to i32 ; 2 uses
  %i.anw = add nsw i32 %i.ans, %i.anv
  %i.anx = sext i32 %i.anw to i64
  %i.any = getelementptr inbounds [32 x i8], ptr %i.fb, i64 %i.anx ; 4 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anu, i64 136
  %i.aoa = getelementptr inbounds nuw [32 x i8], ptr %i.anz, i64 %indvars.iv1578 ; 6 uses
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aoa, i64 4
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoe = load float, ptr %i.amg, align 4, !tbaa !9, !noalias !154
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aoh = load float, ptr %i.ami, align 4, !tbaa !9, !noalias !154
  %i.aoi = load float, ptr %i.amj, align 4, !tbaa !9, !noalias !154
  %i.aoj = load float, ptr %i.amk, align 4, !tbaa !9, !noalias !154
  %i.aok = fmul float %i.aod, %i.aoj
  %i.aol = call float @llvm.fmuladd.f32(float %i.aoi, float %i.aob, float %i.aok)
  %i.aom = load float, ptr %i.aml, align 4, !tbaa !9, !noalias !154
  %i.aon = call noundef float @llvm.fmuladd.f32(float %i.aom, float %i.aog, float %i.aol)
  %i.aoo = load float, ptr %i.amq, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aop = load float, ptr %i.amr, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aoq = load float, ptr %i.ams, align 4, !tbaa !9, !noalias !157 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoa, i64 20
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !9, !noalias !154 ; 3 uses
  %i.aox = fmul float %i.aop, %i.aou
  %i.aoy = call float @llvm.fmuladd.f32(float %i.aoo, float %i.aos, float %i.aox)
  %i.aoz = call noundef float @llvm.fmuladd.f32(float %i.aoq, float %i.aow, float %i.aoy)
  %i.apa = fadd float %i.aon, %i.aoz              ; 2 uses
  %.sroa.3.12.vec.insert.i12.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apa, i64 0
  %i.apb = load float, ptr %i.amu, align 4, !tbaa !9, !noalias !154
  %i.apc = load float, ptr %i.amw, align 4, !tbaa !9, !noalias !154
  %i.apd = load float, ptr %i.amx, align 4, !tbaa !9, !noalias !154
  %i.ape = load float, ptr %i.amy, align 4, !tbaa !9, !noalias !154
  %i.apf = fmul float %i.aou, %i.ape
  %i.apg = call float @llvm.fmuladd.f32(float %i.apd, float %i.aos, float %i.apf)
  %i.aph = load float, ptr %i.amz, align 4, !tbaa !9, !noalias !154
  %i.api = call noundef float @llvm.fmuladd.f32(float %i.aph, float %i.aow, float %i.apg)
  %i.apj = load <2 x float>, ptr %i.ame, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.apk = load float, ptr %i.amo, align 4, !tbaa !9, !noalias !157
  %i.apl = load <2 x float>, ptr %i.amm, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.apm = load float, ptr %i.amp, align 4, !tbaa !9, !noalias !157
  %i.apn = load <2 x float>, ptr %i.amf, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.apo = load <2 x float>, ptr %i.amh, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.app = insertelement <2 x float> poison, float %i.aod, i64 0
  %i.apq = shufflevector <2 x float> %i.app, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apr = shufflevector <2 x float> %i.apn, <2 x float> %i.apo, <2 x i32> <i32 1, i32 3>
  %i.aps = fmul <2 x float> %i.apq, %i.apr
  %i.apt = shufflevector <2 x float> %i.apn, <2 x float> %i.apo, <2 x i32> <i32 0, i32 2>
  %i.apu = insertelement <2 x float> poison, float %i.aob, i64 0
  %i.apv = shufflevector <2 x float> %i.apu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.apw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apt, <2 x float> %i.apv, <2 x float> %i.aps)
  %i.apx = insertelement <2 x float> poison, float %i.aoe, i64 0
  %i.apy = insertelement <2 x float> %i.apx, float %i.aoh, i64 1
  %i.apz = insertelement <2 x float> poison, float %i.aog, i64 0
  %i.aqa = shufflevector <2 x float> %i.apz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apy, <2 x float> %i.aqa, <2 x float> %i.apw)
  %i.aqc = load <2 x float>, ptr %i.amn, align 4, !tbaa !9, !noalias !157 ; 3 uses
  %i.aqd = extractelement <2 x float> %i.aqc, i64 1
  %i.aqe = fmul float %i.aod, %i.aqd
  %i.aqf = extractelement <2 x float> %i.aqc, i64 0
  %i.aqg = call float @llvm.fmuladd.f32(float %i.aqf, float %i.aob, float %i.aqe)
  %i.aqh = call noundef float @llvm.fmuladd.f32(float %i.aoq, float %i.aog, float %i.aqg)
  %i.aqi = insertelement <2 x float> %i.apl, float %i.apm, i64 1
  %i.aqj = insertelement <2 x float> poison, float %i.aou, i64 0
  %i.aqk = shufflevector <2 x float> %i.aqj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aql = fmul <2 x float> %i.aqi, %i.aqk
  %i.aqm = insertelement <2 x float> %i.apj, float %i.apk, i64 1
  %i.aqn = insertelement <2 x float> poison, float %i.aos, i64 0
  %i.aqo = shufflevector <2 x float> %i.aqn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqm, <2 x float> %i.aqo, <2 x float> %i.aql)
  %i.aqq = insertelement <2 x float> poison, float %i.aow, i64 0
  %i.aqr = shufflevector <2 x float> %i.aqq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqc, <2 x float> %i.aqr, <2 x float> %i.aqp)
  %i.aqt = fadd <2 x float> %i.aqb, %i.aqs        ; 3 uses
  %i.aqu = shufflevector <2 x float> %i.apj, <2 x float> %i.apl, <2 x i32> <i32 1, i32 3>
  %i.aqv = fmul <2 x float> %i.apq, %i.aqu
  %i.aqw = shufflevector <2 x float> %i.apj, <2 x float> %i.apl, <2 x i32> <i32 0, i32 2>
  %i.aqx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqw, <2 x float> %i.apv, <2 x float> %i.aqv)
  %i.aqy = insertelement <2 x float> poison, float %i.aoo, i64 0
  %i.aqz = insertelement <2 x float> %i.aqy, float %i.aop, i64 1
  %i.ara = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqz, <2 x float> %i.aqa, <2 x float> %i.aqx)
  %i.arb = load <2 x float>, ptr %i.amt, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.arc = load <2 x float>, ptr %i.amv, align 4, !tbaa !9, !noalias !154 ; 2 uses
  %i.ard = shufflevector <2 x float> %i.arb, <2 x float> %i.arc, <2 x i32> <i32 1, i32 3>
  %i.are = fmul <2 x float> %i.aqk, %i.ard
  %i.arf = shufflevector <2 x float> %i.arb, <2 x float> %i.arc, <2 x i32> <i32 0, i32 2>
  %i.arg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arf, <2 x float> %i.aqo, <2 x float> %i.are)
  %i.arh = insertelement <2 x float> poison, float %i.apb, i64 0
  %i.ari = insertelement <2 x float> %i.arh, float %i.apc, i64 1
  %i.arj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ari, <2 x float> %i.aqr, <2 x float> %i.arg)
  %i.ark = fadd <2 x float> %i.ara, %i.arj        ; 3 uses
  %i.arl = fadd float %i.aqh, %i.api              ; 2 uses
  %.sroa.3.12.vec.insert.i27.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arl, i64 0
  store <2 x float> %i.ark, ptr %i.any, align 4
  %.sroa.4965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i, ptr %.sroa.4965.0..sroa_idx, align 4, !tbaa !11
  %.sroa.5966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 16
  store <2 x float> %i.aqt, ptr %.sroa.5966.0..sroa_idx, align 4
  %.sroa.6967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.any, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i12.i, ptr %.sroa.6967.0..sroa_idx, align 4, !tbaa !11
  %.pre1660 = load ptr, ptr %i.pd, align 8, !tbaa !38 ; 3 uses
  br i1 %5, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.arm = getelementptr inbounds [688 x i8], ptr %.pre1660, i64 %indvars.iv.next1629
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 520
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.arn, i64 %indvars.iv1578
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.0417 = phi float [ %i.arp, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.arq = getelementptr inbounds [688 x i8], ptr %.pre1660, i64 %indvars.iv.next1629 ; 7 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 136
  %i.ars = getelementptr inbounds nuw [32 x i8], ptr %i.arr, i64 %indvars.iv1578 ; 4 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ars, i64 24
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !9
  %i.arw = load float, ptr %i.anb, align 4, !tbaa !9
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ars, i64 8
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !9
  %i.arz = load float, ptr %i.and, align 4, !tbaa !9
  %i.asa = load float, ptr %i.ang, align 4, !tbaa !9
  %i.asb = load float, ptr %i.anh, align 4, !tbaa !9
  %i.asc = load <2 x float>, ptr %i.art, align 4, !tbaa !9 ; 2 uses
  %i.asd = load <2 x float>, ptr %i.ana, align 4, !tbaa !9 ; 2 uses
  %i.ase = load <2 x float>, ptr %i.ars, align 4, !tbaa !9 ; 2 uses
  %i.asf = load <2 x float>, ptr %i.anc, align 4, !tbaa !9 ; 2 uses
  %i.asg = load <2 x float>, ptr %i.anf, align 4, !tbaa !9 ; 2 uses
  %i.ash = shufflevector <2 x float> %i.asc, <2 x float> %i.asg, <2 x i32> <i32 1, i32 3>
  %i.asi = shufflevector <2 x float> %i.asd, <2 x float> %i.ark, <2 x i32> <i32 1, i32 3>
  %i.asj = fmul <2 x float> %i.ash, %i.asi
  %i.ask = shufflevector <2 x float> %i.asc, <2 x float> %i.asg, <2 x i32> <i32 0, i32 2>
  %i.asl = shufflevector <2 x float> %i.asd, <2 x float> %i.ark, <2 x i32> <i32 0, i32 2>
  %i.asm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ask, <2 x float> %i.asl, <2 x float> %i.asj)
  %i.asn = insertelement <2 x float> poison, float %i.arv, i64 0
  %i.aso = insertelement <2 x float> %i.asn, float %i.asa, i64 1
  %i.asp = insertelement <2 x float> poison, float %i.arw, i64 0
  %i.asq = insertelement <2 x float> %i.asp, float %i.arl, i64 1
  %i.asr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aso, <2 x float> %i.asq, <2 x float> %i.asm)
  %i.ass = load <2 x float>, ptr %i.ane, align 4, !tbaa !9 ; 2 uses
  %i.ast = shufflevector <2 x float> %i.ase, <2 x float> %i.ass, <2 x i32> <i32 1, i32 3>
  %i.asu = shufflevector <2 x float> %i.asf, <2 x float> %i.aqt, <2 x i32> <i32 1, i32 3>
  %i.asv = fmul <2 x float> %i.ast, %i.asu
  %i.asw = shufflevector <2 x float> %i.ase, <2 x float> %i.ass, <2 x i32> <i32 0, i32 2>
  %i.asx = shufflevector <2 x float> %i.asf, <2 x float> %i.aqt, <2 x i32> <i32 0, i32 2>
  %i.asy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asw, <2 x float> %i.asx, <2 x float> %i.asv)
  %i.asz = insertelement <2 x float> poison, float %i.ary, i64 0
  %i.ata = insertelement <2 x float> %i.asz, float %i.asb, i64 1
  %i.atb = insertelement <2 x float> poison, float %i.arz, i64 0
  %i.atc = insertelement <2 x float> %i.atb, float %i.apa, i64 1
  %i.atd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ata, <2 x float> %i.atc, <2 x float> %i.asy)
  %i.ate = fadd <2 x float> %i.asr, %i.atd        ; 2 uses
  %i.atf = extractelement <2 x float> %i.ate, i64 0
  %i.atg = fsub float %.0417, %i.atf
  %i.ath = extractelement <2 x float> %i.ate, i64 1
  %i.ati = fsub float %i.atg, %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.arq, i64 328
  %i.atk = load i32, ptr %i.atj, align 8, !tbaa !110 ; 2 uses
  %i.atl = add nsw i32 %i.atk, %i.anv
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.atm
  store float %i.ati, ptr %i.atn, align 4, !tbaa !9
  %indvars.iv.next1579 = add nuw nsw i64 %indvars.iv1578, 1 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.arq, i64 556
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !86 ; 6 uses
  %i.atq = sext i32 %i.atp to i64
  %i.atr = icmp slt i64 %indvars.iv.next1579, %i.atq
  br i1 %i.atr, label %bb.aj, label %.preheader1410, !llvm.loop !160

._crit_edge1443:                                  ; preds = %._crit_edge1440, %.preheader1410.._crit_edge1443_crit_edge
  %i.ats = phi i1 [ false, %.preheader1410.._crit_edge1443_crit_edge ], [ true, %._crit_edge1440 ] ; 2 uses
  %i.att = phi i32 [ %i.anj, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.atp, %._crit_edge1440 ] ; 3 uses
  %.lcssa14311752 = phi ptr [ %.lcssa14311753, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.arq, %._crit_edge1440 ]
  %i.atu = phi i32 [ %.pre1668, %.preheader1410.._crit_edge1443_crit_edge ], [ %i.anm, %._crit_edge1440 ] ; 4 uses
  %i.atv = mul i32 %i.atu, %i.atu
  %i.atw = zext i32 %i.atv to i64                 ; 2 uses
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.atw ; 4 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.lcssa14311752, i64 564
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !85
  switch i32 %i.atz, label %bb.ap [
    i32 1, label %bb.am
    i32 0, label %bb.am
    i32 2, label %.preheader1409
    i32 3, label %.preheader1409
  ]

.lr.ph1439:                                       ; preds = %.lr.ph1442, %._crit_edge1440
  %indvars.iv1586 = phi i64 [ 0, %.lr.ph1442 ], [ %indvars.iv.next1587, %._crit_edge1440 ] ; 3 uses
  %i.aua = mul nuw nsw i64 %indvars.iv1586, %i.ano
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aua ; 2 uses
  %i.auc = getelementptr inbounds nuw [32 x i8], ptr %i.anl, i64 %indvars.iv1586 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 16
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 24
  %i.auf = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  %.pre1663 = load float, ptr %i.aue, align 4, !tbaa !9 ; 2 uses
  %i.aug = load <2 x float>, ptr %i.aud, align 4, !tbaa !9 ; 4 uses
  %i.auh = load <2 x float>, ptr %i.auc, align 4, !tbaa !9 ; 4 uses
  %.pre1666 = load float, ptr %i.auf, align 4, !tbaa !9 ; 2 uses
  br i1 %min.iters.check1819, label %scalar.ph1818.preheader, label %vector.ph1820

scalar.ph1818.preheader:                          ; preds = %vector.body1832, %.lr.ph1439
  %indvars.iv1581.ph = phi i64 [ 0, %.lr.ph1439 ], [ %n.vec1821, %vector.body1832 ]
  %i.aui = shufflevector <2 x float> %i.aug, <2 x float> %i.auh, <2 x i32> <i32 1, i32 3>
  %i.auj = shufflevector <2 x float> %i.aug, <2 x float> %i.auh, <2 x i32> <i32 0, i32 2>
  %i.auk = insertelement <2 x float> poison, float %.pre1663, i64 0
  %i.aul = insertelement <2 x float> %i.auk, float %.pre1666, i64 1
  br label %scalar.ph1818

vector.ph1820:                                    ; preds = %.lr.ph1439
  %broadcast.splat = shufflevector <2 x float> %i.aug, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1823 = shufflevector <2 x float> %i.aug, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1824 = insertelement <4 x float> poison, float %.pre1663, i64 0
  %broadcast.splat1825 = shufflevector <4 x float> %broadcast.splatinsert1824, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1827 = shufflevector <2 x float> %i.auh, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat1829 = shufflevector <2 x float> %i.auh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert1830 = insertelement <4 x float> poison, float %.pre1666, i64 0
  %broadcast.splat1831 = shufflevector <4 x float> %broadcast.splatinsert1830, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1832

vector.body1832:                                  ; preds = %vector.body1832, %vector.ph1820
  %index1833 = phi i64 [ 0, %vector.ph1820 ], [ %index.next1834, %vector.body1832 ] ; 6 uses
  %i.aum = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1833 ; 6 uses
  %i.aun = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1833 ; 6 uses
  %i.auo = getelementptr i8, ptr %i.aun, i64 32
  %i.aup = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1833 ; 6 uses
  %i.auq = getelementptr i8, ptr %i.aup, i64 64
  %i.aur = getelementptr [32 x i8], ptr %invariant.gep, i64 %index1833 ; 6 uses
  %i.aus = getelementptr i8, ptr %i.aur, i64 96
  %i.aut = load float, ptr %i.aum, align 4, !tbaa !9
  %i.auu = load float, ptr %i.auo, align 4, !tbaa !9
  %i.auv = load float, ptr %i.auq, align 4, !tbaa !9
  %i.auw = load float, ptr %i.aus, align 4, !tbaa !9
  %i.aux = insertelement <4 x float> poison, float %i.aut, i64 0
  %i.auy = insertelement <4 x float> %i.aux, float %i.auu, i64 1
  %i.auz = insertelement <4 x float> %i.auy, float %i.auv, i64 2
  %i.ava = insertelement <4 x float> %i.auz, float %i.auw, i64 3
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aum, i64 4
  %i.avc = getelementptr i8, ptr %i.aun, i64 36
  %i.avd = getelementptr i8, ptr %i.aup, i64 68
  %i.ave = getelementptr i8, ptr %i.aur, i64 100
  %i.avf = load float, ptr %i.avb, align 4, !tbaa !9
  %i.avg = load float, ptr %i.avc, align 4, !tbaa !9
  %i.avh = load float, ptr %i.avd, align 4, !tbaa !9
  %i.avi = load float, ptr %i.ave, align 4, !tbaa !9
  %i.avj = insertelement <4 x float> poison, float %i.avf, i64 0
  %i.avk = insertelement <4 x float> %i.avj, float %i.avg, i64 1
  %i.avl = insertelement <4 x float> %i.avk, float %i.avh, i64 2
  %i.avm = insertelement <4 x float> %i.avl, float %i.avi, i64 3
  %i.avn = fmul <4 x float> %broadcast.splat1823, %i.avm
  %i.avo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ava, <4 x float> %i.avn)
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aum, i64 8
  %i.avq = getelementptr i8, ptr %i.aun, i64 40
  %i.avr = getelementptr i8, ptr %i.aup, i64 72
  %i.avs = getelementptr i8, ptr %i.aur, i64 104
  %i.avt = load float, ptr %i.avp, align 4, !tbaa !9
  %i.avu = load float, ptr %i.avq, align 4, !tbaa !9
  %i.avv = load float, ptr %i.avr, align 4, !tbaa !9
  %i.avw = load float, ptr %i.avs, align 4, !tbaa !9
  %i.avx = insertelement <4 x float> poison, float %i.avt, i64 0
  %i.avy = insertelement <4 x float> %i.avx, float %i.avu, i64 1
  %i.avz = insertelement <4 x float> %i.avy, float %i.avv, i64 2
  %i.awa = insertelement <4 x float> %i.avz, float %i.avw, i64 3
  %i.awb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1825, <4 x float> %i.awa, <4 x float> %i.avo)
  %i.awc = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %i.awd = getelementptr i8, ptr %i.aun, i64 48
  %i.awe = getelementptr i8, ptr %i.aup, i64 80
  %i.awf = getelementptr i8, ptr %i.aur, i64 112
  %i.awg = load float, ptr %i.awc, align 4, !tbaa !9
  %i.awh = load float, ptr %i.awd, align 4, !tbaa !9
  %i.awi = load float, ptr %i.awe, align 4, !tbaa !9
  %i.awj = load float, ptr %i.awf, align 4, !tbaa !9
  %i.awk = insertelement <4 x float> poison, float %i.awg, i64 0
  %i.awl = insertelement <4 x float> %i.awk, float %i.awh, i64 1
  %i.awm = insertelement <4 x float> %i.awl, float %i.awi, i64 2
  %i.awn = insertelement <4 x float> %i.awm, float %i.awj, i64 3
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aum, i64 20
  %i.awp = getelementptr i8, ptr %i.aun, i64 52
  %i.awq = getelementptr i8, ptr %i.aup, i64 84
  %i.awr = getelementptr i8, ptr %i.aur, i64 116
  %i.aws = load float, ptr %i.awo, align 4, !tbaa !9
  %i.awt = load float, ptr %i.awp, align 4, !tbaa !9
  %i.awu = load float, ptr %i.awq, align 4, !tbaa !9
  %i.awv = load float, ptr %i.awr, align 4, !tbaa !9
  %i.aww = insertelement <4 x float> poison, float %i.aws, i64 0
  %i.awx = insertelement <4 x float> %i.aww, float %i.awt, i64 1
  %i.awy = insertelement <4 x float> %i.awx, float %i.awu, i64 2
  %i.awz = insertelement <4 x float> %i.awy, float %i.awv, i64 3
  %i.axa = fmul <4 x float> %broadcast.splat1829, %i.awz
  %i.axb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1827, <4 x float> %i.awn, <4 x float> %i.axa)
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aum, i64 24
  %i.axd = getelementptr i8, ptr %i.aun, i64 56
  %i.axe = getelementptr i8, ptr %i.aup, i64 88
  %i.axf = getelementptr i8, ptr %i.aur, i64 120
  %i.axg = load float, ptr %i.axc, align 4, !tbaa !9
  %i.axh = load float, ptr %i.axd, align 4, !tbaa !9
  %i.axi = load float, ptr %i.axe, align 4, !tbaa !9
  %i.axj = load float, ptr %i.axf, align 4, !tbaa !9
  %i.axk = insertelement <4 x float> poison, float %i.axg, i64 0
  %i.axl = insertelement <4 x float> %i.axk, float %i.axh, i64 1
  %i.axm = insertelement <4 x float> %i.axl, float %i.axi, i64 2
  %i.axn = insertelement <4 x float> %i.axm, float %i.axj, i64 3
  %i.axo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1831, <4 x float> %i.axn, <4 x float> %i.axb)
  %i.axp = fadd <4 x float> %i.awb, %i.axo
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index1833
  store <4 x float> %i.axp, ptr %i.axq, align 4, !tbaa !9
  %index.next1834 = add nuw i64 %index1833, 4     ; 2 uses
  %i.axr = icmp eq i64 %index.next1834, %n.vec1821
  br i1 %i.axr, label %scalar.ph1818.preheader, label %vector.body1832, !llvm.loop !161

._crit_edge1440:                                  ; preds = %scalar.ph1818
  %indvars.iv.next1587 = add nuw nsw i64 %indvars.iv1586, 1 ; 2 uses
  %exitcond1590.not = icmp eq i64 %indvars.iv.next1587, %i.ano
end_hunk_2
begin_hunk_3_@_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb:bb.a
  %i.axz = shufflevector <2 x float> %i.axx, <2 x float> %i.axy, <2 x i32> <i32 1, i32 3>
  %i.aya = fmul <2 x float> %i.aui, %i.axz
  %i.ayb = shufflevector <2 x float> %i.axx, <2 x float> %i.axy, <2 x i32> <i32 0, i32 2>
  %i.ayc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.auj, <2 x float> %i.ayb, <2 x float> %i.aya)
  %i.ayd = insertelement <2 x float> poison, float %i.axt, i64 0
  %i.aye = insertelement <2 x float> %i.ayd, float %i.axw, i64 1
  %i.ayf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aul, <2 x float> %i.aye, <2 x float> %i.ayc) ; 2 uses
  %shift = shufflevector <2 x float> %i.ayf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ayf, %shift
  %i.ayg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv1581
  store float %i.ayg, ptr %i.ayh, align 4, !tbaa !9
  %indvars.iv.next1582 = add nuw nsw i64 %indvars.iv1581, 1 ; 2 uses
  %exitcond1585.not = icmp eq i64 %indvars.iv.next1582, %i.ano
  br i1 %exitcond1585.not, label %._crit_edge1440, label %scalar.ph1818, !llvm.loop !163

bb.am:                                            ; preds = %._crit_edge1443, %._crit_edge1443
  %i.ayi = load float, ptr %i.a, align 16, !tbaa !9 ; 2 uses
  %i.ayj = fcmp ult float %i.ayi, f0x34000000
  br i1 %i.ayj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ayk = fdiv float 1.000000e+00, %i.ayi
  store float %i.ayk, ptr %i.atx, align 4, !tbaa !9
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store float 0.000000e+00, ptr %i.atx, align 4, !tbaa !9
  br label %bb.ap

.preheader1409:                                   ; preds = %._crit_edge1443, %._crit_edge1443
  %i.ayl = load float, ptr %i.a, align 16, !tbaa !9 ; 4 uses
  %i.aym = shl nuw nsw i64 %i.atw, 2              ; 3 uses
  %scevgep1591 = getelementptr i8, ptr %i.fc, i64 %i.aym
  %i.ayn = getelementptr i8, ptr %i.fc, i64 %i.aym
  %i.ayo = load <4 x float>, ptr %i.pi, align 4, !tbaa !9 ; 6 uses
  %i.ayp = load float, ptr %i.pl, align 16, !tbaa !9 ; 2 uses
  %i.ayq = load <4 x float>, ptr %i.pm, align 4, !tbaa !9 ; 6 uses
  %i.ayr = shufflevector <4 x float> %i.ayq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 2 uses
  %i.ays = shufflevector <4 x float> %i.ayq, <4 x float> %i.ayo, <4 x i32> <i32 2, i32 3, i32 7, i32 3>
  %i.ayt = fneg <4 x float> %i.ays                ; 2 uses
  %i.ayu = shufflevector <4 x float> %i.ayq, <4 x float> %i.ayo, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ayv = fmul <4 x float> %i.ayu, %i.ayt
  %i.ayw = shufflevector <4 x float> %i.ayo, <4 x float> %i.ayq, <4 x i32> <i32 3, i32 1, i32 0, i32 4>
  %i.ayx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayw, <4 x float> %i.ayr, <4 x float> %i.ayv) ; 3 uses
  %i.ayy = extractelement <4 x float> %i.ayo, i64 0
  %shift1896 = shufflevector <4 x float> %i.ayx, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1897 = fmul <4 x float> %i.ayo, %shift1896
  %i.ayz = extractelement <4 x float> %foldExtExtBinop1897, i64 0
  %i.aza = extractelement <4 x float> %i.ayx, i64 0
  %i.azb = call float @llvm.fmuladd.f32(float %i.ayl, float %i.aza, float %i.ayz)
  %i.azc = fneg <4 x float> %i.ayq
  %.sroa.9.16.scevgep1591.1.sroa_idx = getelementptr i8, ptr %i.ayn, i64 16
  %i.azd = getelementptr i8, ptr %i.fc, i64 %i.aym
  %i.aze = load <2 x float>, ptr %i.pj, align 8, !tbaa !9 ; 4 uses
  %i.azf = load float, ptr %i.pk, align 4, !tbaa !9
  %i.azg = shufflevector <2 x float> %i.aze, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.azh = insertelement <3 x float> %i.azg, float %i.ayl, i64 1
  %i.azi = insertelement <3 x float> %i.azh, float %i.ayp, i64 2
  %i.azj = shufflevector <3 x float> %i.azi, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.azk = shufflevector <4 x float> %i.ayt, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.azl = shufflevector <4 x float> %i.azc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.azm = shufflevector <4 x float> %i.azl, <4 x float> %i.azk, <4 x i32> <i32 0, i32 1, i32 0, i32 7>
  %i.azn = fmul <4 x float> %i.azj, %i.azm
  %i.azo = shufflevector <4 x float> %i.ayq, <4 x float> %i.ayo, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.azp = insertelement <4 x float> %i.azo, float %i.ayl, i64 0
  %i.azq = shufflevector <2 x float> %i.aze, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.azr = shufflevector <4 x float> %i.azp, <4 x float> %i.azq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.azs = shufflevector <2 x float> %i.aze, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.azt = shufflevector <4 x float> %i.ayr, <4 x float> %i.azs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.azu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azr, <4 x float> %i.azt, <4 x float> %i.azn) ; 2 uses
  %i.azv = extractelement <4 x float> %i.azu, i64 2
  %i.azw = extractelement <2 x float> %i.aze, i64 0
  %i.azx = call noundef float @llvm.fmuladd.f32(float %i.azw, float %i.azv, float %i.azb)
  %i.azy = fdiv float 1.000000e+00, %i.azx        ; 2 uses
  %i.azz = insertelement <4 x float> poison, float %i.azy, i64 0
  %i.baa = shufflevector <4 x float> %i.azz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bab = fmul <4 x float> %i.ayx, %i.baa
  %i.bac = fmul <4 x float> %i.azu, %i.baa
  %i.bad = fneg float %i.azf
  %i.bae = fmul float %i.ayy, %i.bad
  %i.baf = call noundef float @llvm.fmuladd.f32(float %i.ayl, float %i.ayp, float %i.bae)
  %i.bag = fmul float %i.baf, %i.azy
  store <4 x float> %i.bab, ptr %scevgep1591, align 4, !tbaa !9
  store <4 x float> %i.bac, ptr %.sroa.9.16.scevgep1591.1.sroa_idx, align 4, !tbaa !9
  %.sroa.15.32.scevgep1591.2.sroa_idx = getelementptr i8, ptr %i.azd, i64 32
  store float %i.bag, ptr %.sroa.15.32.scevgep1591.2.sroa_idx, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge1443, %bb.an, %bb.ao, %.preheader1409
  br i1 %i.ats, label %.lr.ph1448.us.preheader, label %._crit_edge1464.split.us

.lr.ph1448.us.preheader:                          ; preds = %bb.ap
  %i.bah = sext i32 %i.atu to i64
  %i.bai = zext nneg i32 %i.att to i64
  %wide.trip.count1606 = zext nneg i32 %i.att to i64 ; 2 uses
  %invariant.gep1777 = getelementptr [32 x i8], ptr %i.fb, i64 %i.bah
  br label %.lr.ph1448.us

.lr.ph1448.us:                                    ; preds = %.lr.ph1448.us.preheader, %._crit_edge1449.us
  %indvars.iv1603 = phi i64 [ 0, %.lr.ph1448.us.preheader ], [ %indvars.iv.next1604, %._crit_edge1449.us ] ; 3 uses
  %i.baj = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %indvars.iv1603 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.baj, i8 0, i64 32, i1 false)
  %invariant.gep1779 = getelementptr inbounds nuw [4 x i8], ptr %i.atx, i64 %indvars.iv1603
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph1448.us, %bb.aq
  %indvars.iv1598 = phi i64 [ 0, %.lr.ph1448.us ], [ %indvars.iv.next1599, %bb.aq ] ; 3 uses
  %i.bak = phi float [ 0.000000e+00, %.lr.ph1448.us ], [ %i.bbg, %bb.aq ]
  %i.bal = phi float [ 0.000000e+00, %.lr.ph1448.us ], [ %i.bbe, %bb.aq ]
  %i.bam = phi <2 x float> [ zeroinitializer, %.lr.ph1448.us ], [ %i.bbd, %bb.aq ]
  %i.ban = phi <2 x float> [ zeroinitializer, %.lr.ph1448.us ], [ %i.bbf, %bb.aq ]
  %gep1778 = getelementptr [32 x i8], ptr %invariant.gep1777, i64 %indvars.iv1598 ; 4 uses
  %i.bao = mul nuw nsw i64 %indvars.iv1598, %i.bai
  %gep1780 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1779, i64 %i.bao
  %i.bap = getelementptr inbounds nuw i8, ptr %gep1778, i64 16
  %i.baq = load float, ptr %gep1780, align 4, !tbaa !9, !noalias !164 ; 3 uses
  %i.bar = load <2 x float>, ptr %i.bap, align 4, !tbaa !9, !noalias !164
  %i.bas = insertelement <2 x float> poison, float %i.baq, i64 0
  %i.bat = shufflevector <2 x float> %i.bas, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bau = fmul <2 x float> %i.bat, %i.bar
  %i.bav = getelementptr inbounds nuw i8, ptr %gep1778, i64 24
  %i.baw = load float, ptr %i.bav, align 4, !tbaa !9, !noalias !164
  %i.bax = fmul float %i.baq, %i.baw
  %i.bay = load <2 x float>, ptr %gep1778, align 4, !tbaa !9, !noalias !164
  %i.baz = fmul <2 x float> %i.bat, %i.bay
  %i.bba = getelementptr inbounds nuw i8, ptr %gep1778, i64 8
  %i.bbb = load float, ptr %i.bba, align 4, !tbaa !9, !noalias !164
  %i.bbc = fmul float %i.baq, %i.bbb
  %i.bbd = fadd <2 x float> %i.baz, %i.bam        ; 2 uses
  %i.bbe = fadd float %i.bbc, %i.bal              ; 2 uses
  %i.bbf = fadd <2 x float> %i.bau, %i.ban        ; 2 uses
  %i.bbg = fadd float %i.bax, %i.bak              ; 2 uses
  %indvars.iv.next1599 = add nuw nsw i64 %indvars.iv1598, 1 ; 2 uses
  %exitcond1602.not = icmp eq i64 %indvars.iv.next1599, %wide.trip.count1606
  br i1 %exitcond1602.not, label %._crit_edge1449.us, label %bb.aq, !llvm.loop !167

._crit_edge1449.us:                               ; preds = %bb.aq
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.baj, i64 8
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.baj, i64 16
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.baj, i64 24
  store <2 x float> %i.bbd, ptr %i.baj, align 16, !tbaa !9
  store float %i.bbe, ptr %i.bbh, align 8, !tbaa !9
  store <2 x float> %i.bbf, ptr %i.bbi, align 16, !tbaa !9
  store float %i.bbg, ptr %i.bbj, align 8, !tbaa !9
  %indvars.iv.next1604 = add nuw nsw i64 %indvars.iv1603, 1 ; 2 uses
  %exitcond1607.not = icmp eq i64 %indvars.iv.next1604, %wide.trip.count1606
  br i1 %exitcond1607.not, label %._crit_edge1464.split.us, label %.lr.ph1448.us, !llvm.loop !168

._crit_edge1464.split.us:                         ; preds = %._crit_edge1449.us, %bb.ap
  %i.bbk = getelementptr inbounds nuw [144 x i8], ptr %i.er, i64 %indvars.iv1628 ; 19 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %11, ptr noundef nonnull align 4 dereferenceable(144) %i.bbk, i64 16, i1 false), !tbaa.struct !36
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pn, ptr noundef nonnull align 4 dereferenceable(16) %i.bbl, i64 16, i1 false), !tbaa.struct !36
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.po, ptr noundef nonnull align 4 dereferenceable(16) %i.bbm, i64 16, i1 false), !tbaa.struct !36
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbk, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fh, ptr noundef nonnull align 4 dereferenceable(48) %i.bbn, i64 16, i1 false), !tbaa.struct !36
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbk, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pp, ptr noundef nonnull align 4 dereferenceable(16) %i.bbo, i64 16, i1 false), !tbaa.struct !36
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbk, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pq, ptr noundef nonnull align 4 dereferenceable(16) %i.bbp, i64 16, i1 false), !tbaa.struct !36
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbk, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fm, ptr noundef nonnull align 4 dereferenceable(48) %i.bbq, i64 16, i1 false), !tbaa.struct !36
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbk, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pr, ptr noundef nonnull align 4 dereferenceable(16) %i.bbr, i64 16, i1 false), !tbaa.struct !36
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbk, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ps, ptr noundef nonnull align 4 dereferenceable(16) %i.bbs, i64 16, i1 false), !tbaa.struct !36
  br i1 %i.ats, label %.lr.ph1487, label %._crit_edge1488

.lr.ph1487:                                       ; preds = %._crit_edge1464.split.us
  %.promoted1484 = load float, ptr %i.fq, align 8
  %.promoted1482 = load float, ptr %i.fp, align 8
  %i.bbt = load <2 x float>, ptr %i.pr, align 16
  %i.bbu = load <2 x float>, ptr %i.fm, align 16
  %.promoted1477 = load float, ptr %i.fl, align 8
  %.promoted1475 = load float, ptr %i.fk, align 8
  %i.bbv = load <2 x float>, ptr %i.pp, align 16
  %i.bbw = load <2 x float>, ptr %i.fh, align 16
  %.promoted1470 = load float, ptr %i.fg, align 8
  %.promoted1468 = load float, ptr %i.ff, align 8
  %i.bbx = load <2 x float>, ptr %i.pn, align 16
  %i.bby = load <2 x float>, ptr %11, align 16
  %.promoted1489 = load float, ptr %i.pt, align 8, !tbaa !9
  %i.bbz = load <2 x float>, ptr %i.po, align 16
  %.promoted1491 = load float, ptr %i.pu, align 8, !tbaa !9
  %i.bca = load <2 x float>, ptr %i.pq, align 16
  %.promoted1493 = load float, ptr %i.pv, align 8, !tbaa !9
  %i.bcb = load <2 x float>, ptr %i.ps, align 16
  %i.bcc = sext i32 %i.atu to i64
  %wide.trip.count1611 = zext nneg i32 %i.att to i64
  %invariant.gep1781 = getelementptr [32 x i8], ptr %i.fb, i64 %i.bcc
  br label %bb.ar

._crit_edge1488:                                  ; preds = %bb.ar, %._crit_edge1464.split.us
  %i.bcd = add nsw i32 %i.alw, 1
  %i.bce = sext i32 %i.bcd to i64                 ; 2 uses
  %i.bcf = getelementptr inbounds [144 x i8], ptr %i.er, i64 %i.bce
  call void @_ZN29btSpatialTransformationMatrix16transformInverseERK22btSymmetricSpatialDyadRS0_NS_16eOutputOperationE(ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(144) %11, ptr noundef nonnull align 4 dereferenceable(144) %i.bcf, i32 noundef 1)
  %i.bcg = load ptr, ptr %i.pd, align 8, !tbaa !38
  %i.bch = getelementptr inbounds [688 x i8], ptr %i.bcg, i64 %indvars.iv.next1629 ; 3 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 556
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !86 ; 5 uses
  %i.bck = icmp sgt i32 %i.bcj, 0                 ; 2 uses
  br i1 %i.bck, label %.lr.ph1503, label %._crit_edge1504

.lr.ph1503:                                       ; preds = %._crit_edge1488
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bch, i64 328
  %i.bcm = zext nneg i32 %i.bcj to i64
  %wide.trip.count1621 = zext nneg i32 %i.bcj to i64 ; 3 uses
  %.pre1669 = load i32, ptr %i.bcl, align 8, !tbaa !110
  %i.bcn = sext i32 %.pre1669 to i64
  %invariant.gep1785 = getelementptr [4 x i8], ptr %i.eb, i64 %i.bcn ; 5 uses
  %xtraiter1935 = and i64 %wide.trip.count1621, 3 ; 3 uses
  %i.bco = icmp ult i32 %i.bcj, 4
  %unroll_iter1939 = and i64 %wide.trip.count1621, 2147483644
  %lcmp.mod1936.not = icmp eq i64 %xtraiter1935, 0
  %lcmp.mod1938 = icmp ne i64 %xtraiter1935, 0
  br label %.lr.ph1497

bb.ar:                                            ; preds = %.lr.ph1487, %bb.ar
  %indvars.iv1608 = phi i64 [ 0, %.lr.ph1487 ], [ %indvars.iv.next1609, %bb.ar ] ; 3 uses
  %i.bcp = phi float [ %.promoted1493, %.lr.ph1487 ], [ %i.bht, %bb.ar ]
  %i.bcq = phi float [ %.promoted1491, %.lr.ph1487 ], [ %i.bhn, %bb.ar ]
  %i.bcr = phi float [ %.promoted1489, %.lr.ph1487 ], [ %i.bhh, %bb.ar ]
  %i.bcs = phi float [ %.promoted1468, %.lr.ph1487 ], [ %i.bhj, %bb.ar ]
  %i.bct = phi float [ %.promoted1470, %.lr.ph1487 ], [ %i.bhl, %bb.ar ]
  %i.bcu = phi float [ %.promoted1475, %.lr.ph1487 ], [ %i.bhp, %bb.ar ]
  %i.bcv = phi float [ %.promoted1477, %.lr.ph1487 ], [ %i.bhr, %bb.ar ]
  %i.bcw = phi float [ %.promoted1482, %.lr.ph1487 ], [ %i.bhv, %bb.ar ]
  %i.bcx = phi float [ %.promoted1484, %.lr.ph1487 ], [ %i.bhx, %bb.ar ]
  %i.bcy = phi <2 x float> [ %i.bby, %.lr.ph1487 ], [ %i.bhg, %bb.ar ]
  %i.bcz = phi <2 x float> [ %i.bbx, %.lr.ph1487 ], [ %i.bhi, %bb.ar ]
  %i.bda = phi <2 x float> [ %i.bbz, %.lr.ph1487 ], [ %i.bhk, %bb.ar ]
  %i.bdb = phi <2 x float> [ %i.bbw, %.lr.ph1487 ], [ %i.bhm, %bb.ar ]
  %i.bdc = phi <2 x float> [ %i.bbv, %.lr.ph1487 ], [ %i.bho, %bb.ar ]
  %i.bdd = phi <2 x float> [ %i.bca, %.lr.ph1487 ], [ %i.bhq, %bb.ar ]
  %i.bde = phi <2 x float> [ %i.bbu, %.lr.ph1487 ], [ %i.bhs, %bb.ar ]
  %i.bdf = phi <2 x float> [ %i.bbt, %.lr.ph1487 ], [ %i.bhu, %bb.ar ]
  %i.bdg = phi <2 x float> [ %i.bcb, %.lr.ph1487 ], [ %i.bhw, %bb.ar ]
  %gep1782 = getelementptr [32 x i8], ptr %invariant.gep1781, i64 %indvars.iv1608 ; 6 uses
  %i.bdh = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %indvars.iv1608 ; 6 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16
  %i.bdj = load float, ptr %gep1782, align 4, !tbaa !9, !noalias !169
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdh, i64 20
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  %i.bdm = getelementptr inbounds nuw i8, ptr %gep1782, i64 4
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !9, !noalias !169
  %i.bdo = getelementptr inbounds nuw i8, ptr %gep1782, i64 8
  %i.bdp = load float, ptr %i.bdo, align 4, !tbaa !9, !noalias !169 ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdh, i64 4
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  %i.bds = getelementptr inbounds nuw i8, ptr %gep1782, i64 16
  %i.bdt = load float, ptr %i.bds, align 4, !tbaa !9, !noalias !174 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %gep1782, i64 20
  %i.bdv = load float, ptr %i.bdu, align 4, !tbaa !9, !noalias !174 ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %gep1782, i64 24
  %i.bdx = load float, ptr %i.bdw, align 4, !tbaa !9, !noalias !174 ; 2 uses
  %i.bdy = load <2 x float>, ptr %i.bdi, align 16, !tbaa !9, !noalias !169 ; 2 uses
  %i.bdz = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdj, i64 0
  %i.bea = shufflevector <4 x float> %i.bdz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.beb = shufflevector <2 x float> %i.bdy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bec = insertelement <4 x float> %i.beb, float 1.000000e+00, i64 3
  %i.bed = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcr, i64 2
  %i.bee = shufflevector <2 x float> %i.bcy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bef = shufflevector <4 x float> %i.bee, <4 x float> %i.bed, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.beg = load <2 x float>, ptr %i.bdk, align 4, !tbaa !9, !noalias !169 ; 2 uses
  %i.beh = load float, ptr %i.bdl, align 8, !tbaa !9, !noalias !169 ; 4 uses
  %i.bei = shufflevector <2 x float> %i.beg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bej = shufflevector <4 x float> %i.bec, <4 x float> %i.bei, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bek = fmul <4 x float> %i.bea, %i.bej
  %i.bel = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdn, i64 0
  %i.bem = shufflevector <4 x float> %i.bel, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ben = shufflevector <2 x float> %i.bdy, <2 x float> %i.beg, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.beo = insertelement <4 x float> %i.ben, float 1.000000e+00, i64 3 ; 5 uses
  %i.bep = fmul <4 x float> %i.bem, %i.beo
  %i.beq = fsub <4 x float> %i.bef, %i.bek        ; 3 uses
  %i.ber = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcs, i64 2
  %i.bes = shufflevector <2 x float> %i.bcz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bet = shufflevector <4 x float> %i.bes, <4 x float> %i.ber, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.beu = fsub <4 x float> %i.bet, %i.bep        ; 3 uses
  store <4 x float> %i.beq, ptr %11, align 16, !tbaa !9
  store <4 x float> %i.beu, ptr %i.pn, align 16, !tbaa !9
  %i.bev = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdp, i64 0
  %i.bew = insertelement <4 x float> %i.bev, float %i.beh, i64 2
  %i.bex = shufflevector <4 x float> %i.bew, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bey = insertelement <4 x float> %i.beo, float %i.bdp, i64 2
  %i.bez = fmul <4 x float> %i.bex, %i.bey
  %i.bfa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bct, i64 2
  %i.bfb = shufflevector <2 x float> %i.bda, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfc = shufflevector <4 x float> %i.bfb, <4 x float> %i.bfa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfd = fsub <4 x float> %i.bfc, %i.bez        ; 3 uses
  store <4 x float> %i.bfd, ptr %i.po, align 16, !tbaa !9
  %i.bfe = load <2 x float>, ptr %i.bdh, align 16, !tbaa !9, !noalias !177 ; 2 uses
  %i.bff = shufflevector <2 x float> %i.bfe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfg = insertelement <4 x float> %i.bff, float 1.000000e+00, i64 3
  %i.bfh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcq, i64 2
  %i.bfi = shufflevector <2 x float> %i.bdb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfj = shufflevector <4 x float> %i.bfi, <4 x float> %i.bfh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfk = load <2 x float>, ptr %i.bdq, align 4, !tbaa !9, !noalias !177 ; 2 uses
  %i.bfl = load float, ptr %i.bdr, align 8, !tbaa !9, !noalias !177
  %i.bfm = shufflevector <2 x float> %i.bfk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bfn = shufflevector <4 x float> %i.bfg, <4 x float> %i.bfm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bfo = fmul <4 x float> %i.bea, %i.bfn
  %i.bfp = shufflevector <2 x float> %i.bfe, <2 x float> %i.bfk, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bfq = insertelement <4 x float> %i.bfp, float 1.000000e+00, i64 3 ; 2 uses
  %i.bfr = fmul <4 x float> %i.bem, %i.bfq
  %i.bfs = fsub <4 x float> %i.bfj, %i.bfo        ; 3 uses
  %i.bft = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcu, i64 2
  %i.bfu = shufflevector <2 x float> %i.bdc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bfv = shufflevector <4 x float> %i.bfu, <4 x float> %i.bft, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bfw = fsub <4 x float> %i.bfv, %i.bfr        ; 3 uses
  store <4 x float> %i.bfs, ptr %i.fh, align 16, !tbaa !9
  store <4 x float> %i.bfw, ptr %i.pp, align 16, !tbaa !9
  %i.bfx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bdp, i64 0
  %i.bfy = shufflevector <4 x float> %i.bfx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bfz = insertelement <4 x float> %i.bfq, float %i.bfl, i64 2
  %i.bga = fmul <4 x float> %i.bfy, %i.bfz
  %i.bgb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcv, i64 2
  %i.bgc = shufflevector <2 x float> %i.bdd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgd = shufflevector <4 x float> %i.bgc, <4 x float> %i.bgb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bge = fsub <4 x float> %i.bgd, %i.bga        ; 3 uses
  store <4 x float> %i.bge, ptr %i.pq, align 16, !tbaa !9
  %i.bgf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdt, i64 0
  %i.bgg = insertelement <4 x float> %i.bgf, float %i.beh, i64 2
  %i.bgh = shufflevector <4 x float> %i.bgg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bgi = insertelement <4 x float> %i.beo, float %i.bdt, i64 2
  %i.bgj = fmul <4 x float> %i.bgh, %i.bgi
  %i.bgk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcp, i64 2
  %i.bgl = shufflevector <2 x float> %i.bde, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgm = shufflevector <4 x float> %i.bgl, <4 x float> %i.bgk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bgn = fsub <4 x float> %i.bgm, %i.bgj        ; 3 uses
  store <4 x float> %i.bgn, ptr %i.fm, align 16, !tbaa !9
  %i.bgo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdv, i64 0
  %i.bgp = insertelement <4 x float> %i.bgo, float %i.beh, i64 2
  %i.bgq = shufflevector <4 x float> %i.bgp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bgr = insertelement <4 x float> %i.beo, float %i.bdv, i64 2
  %i.bgs = fmul <4 x float> %i.bgq, %i.bgr
  %i.bgt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcw, i64 2
  %i.bgu = shufflevector <2 x float> %i.bdf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bgv = shufflevector <4 x float> %i.bgu, <4 x float> %i.bgt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bgw = fsub <4 x float> %i.bgv, %i.bgs        ; 3 uses
  store <4 x float> %i.bgw, ptr %i.pr, align 16, !tbaa !9
  %i.bgx = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdx, i64 0
  %i.bgy = insertelement <4 x float> %i.bgx, float %i.beh, i64 2
  %i.bgz = shufflevector <4 x float> %i.bgy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bha = insertelement <4 x float> %i.beo, float %i.bdx, i64 2
  %i.bhb = fmul <4 x float> %i.bgz, %i.bha
  %i.bhc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bcx, i64 2
  %i.bhd = shufflevector <2 x float> %i.bdg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bhe = shufflevector <4 x float> %i.bhd, <4 x float> %i.bhc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bhf = fsub <4 x float> %i.bhe, %i.bhb        ; 3 uses
  store <4 x float> %i.bhf, ptr %i.ps, align 16, !tbaa !9
  %indvars.iv.next1609 = add nuw nsw i64 %indvars.iv1608, 1 ; 2 uses
  %exitcond1612.not = icmp eq i64 %indvars.iv.next1609, %wide.trip.count1611
  %i.bhg = shufflevector <4 x float> %i.beq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhh = extractelement <4 x float> %i.beq, i64 2
  %i.bhi = shufflevector <4 x float> %i.beu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhj = extractelement <4 x float> %i.beu, i64 2
  %i.bhk = shufflevector <4 x float> %i.bfd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhl = extractelement <4 x float> %i.bfd, i64 2
  %i.bhm = shufflevector <4 x float> %i.bfs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhn = extractelement <4 x float> %i.bfs, i64 2
  %i.bho = shufflevector <4 x float> %i.bfw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhp = extractelement <4 x float> %i.bfw, i64 2
  %i.bhq = shufflevector <4 x float> %i.bge, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhr = extractelement <4 x float> %i.bge, i64 2
  %i.bhs = shufflevector <4 x float> %i.bgn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bht = extractelement <4 x float> %i.bgn, i64 2
  %i.bhu = shufflevector <4 x float> %i.bgw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhv = extractelement <4 x float> %i.bgw, i64 2
  %i.bhw = shufflevector <4 x float> %i.bhf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bhx = extractelement <4 x float> %i.bhf, i64 2
  br i1 %exitcond1612.not, label %._crit_edge1488, label %bb.ar, !llvm.loop !180

._crit_edge1504:                                  ; preds = %._crit_edge1498, %._crit_edge1488
  %i.bhy = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %indvars.iv1628 ; 5 uses
  %i.bhz = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %indvars.iv.next1629 ; 4 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 4
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bbk, i64 104
  %i.bic = load float, ptr %i.bib, align 4, !tbaa !9, !noalias !181
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bbk, i64 120
  %i.bie = load float, ptr %i.bid, align 4, !tbaa !9, !noalias !181
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bbk, i64 136
  %i.big = load float, ptr %i.bif, align 4, !tbaa !9, !noalias !181
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bbk, i64 4
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bbk, i64 20
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bbk, i64 36
  %i.bik = load float, ptr %i.bbl, align 4, !tbaa !9, !noalias !184 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bhz, i64 16
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bhz, i64 20
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bbk, i64 56
  %i.bio = load float, ptr %i.bin, align 4, !tbaa !9, !noalias !181
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bbk, i64 72
  %i.biq = load float, ptr %i.bip, align 4, !tbaa !9, !noalias !181
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bbk, i64 88
  %i.bis = load float, ptr %i.bir, align 4, !tbaa !9, !noalias !181
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhy, i64 16
  %i.biu = load float, ptr %i.bit, align 4, !tbaa !9, !noalias !187
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bhy, i64 20
  %i.biw = load float, ptr %i.bhy, align 4, !tbaa !9, !noalias !187
end_hunk_3
begin_hunk_4_@_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E:bb.a
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 3 uses
  %i.cr = shl nsw i32 %i.e, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [16 x i8], ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50 ; 2 uses
  %i.cw = icmp sgt i32 %i.cf, 0
  br i1 %i.cw, label %bb.m, label %.thread358

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !42
  %i.db = zext nneg i32 %i.cf to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.thread358

.thread358:                                       ; preds = %.thread, %bb.l, %bb.m
  %i.de = phi ptr [ %i.cy, %bb.m ], [ null, %bb.l ], [ null, %.thread ] ; 6 uses
  %i.df = phi ptr [ %i.co, %bb.m ], [ %i.co, %bb.l ], [ null, %.thread ] ; 4 uses
  %i.dg = phi ptr [ %i.cq, %bb.m ], [ %i.cq, %bb.l ], [ %i.ch, %.thread ] ; 10 uses
  %.pn = phi ptr [ %i.ct, %bb.m ], [ %i.ct, %bb.l ], [ %i.ck, %.thread ] ; 12 uses
  %i.dh = phi ptr [ %i.cv, %bb.m ], [ %i.cv, %bb.l ], [ %i.cm, %.thread ] ; 30 uses
  %i.di = phi ptr [ %i.dd, %bb.m ], [ null, %bb.l ], [ null, %.thread ] ; 2 uses
  %i.dj = ptrtoaddr ptr %i.dh to i64              ; 2 uses
  %.pn558 = ptrtoaddr ptr %.pn to i64             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.dk = getelementptr i8, ptr %.pn, i64 32      ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 561 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !53, !range !67, !noundef !68
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread358
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !130 ; 2 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit.thread359, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit: ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 224
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !131
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
  %i.dv = load float, ptr %1, align 4, !tbaa !9
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !9
  %i.dz = fneg float %i.dy                        ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !9
  %i.ec = fneg float %i.eb                        ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9
  %i.ef = fneg float %i.ee                        ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9
  %i.ei = fneg float %i.eh                        ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !9
  %i.el = fneg float %i.ek                        ; 2 uses
  %i.em = load <2 x float>, ptr %i.dh, align 4    ; 2 uses
  %i.en = load <2 x float>, ptr %i.dt, align 4    ; 2 uses
  %i.eo = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 1, i32 3>
  %i.ep = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eo, %i.eq
  %i.es = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.eu, <2 x float> %i.er)
  %i.ew = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul float %.sroa.53.32.copyload, %i.ei
  %i.ez = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload, float %i.ef, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload, float %i.el, float %i.ez)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fa, i64 0
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.fb = load <2 x float>, ptr %.sroa.11259.0..sroa_idx, align 4 ; 2 uses
  %i.fc = load <2 x float>, ptr %.sroa.32.16..sroa_idx, align 4 ; 2 uses
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ex, <2 x float> %i.ev)
  store <2 x float> %i.fe, ptr %i.dg, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !11
  %i.ff = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.fg = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.ff, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = fmul float %.sroa.53.32.copyload, %i.dz
  %i.fq = tail call float @llvm.fmuladd.f32(float %.sroa.44312.32.copyload, float %i.dw, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %.sroa.59.32.copyload, float %i.ec, float %i.fq)
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fr, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x float> %i.fo, ptr %i.fs, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !11
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
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !38 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = zext nneg i32 %i.e to i64
  br label %.lr.ph.i164

._crit_edge400:                                   ; preds = %bb.v, %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.gb = load i8, ptr %i.dl, align 1, !tbaa !53, !range !67, !noundef !68
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge400
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !130 ; 2 uses
  %.not.i162 = icmp eq ptr %i.ge, null
  br i1 %.not.i162, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163.thread360, label %_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163

_ZNK11btMultiBody23isBaseStaticOrKinematicEv.exit163: ; preds = %bb.p
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 224
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !131
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
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %_ZNK11btMultiBody15isLinkKinematicEi.exit.i

_ZNK11btMultiBody15isLinkKinematicEi.exit.i:      ; preds = %bb.q
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 224
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !131
  %i.gp = and i32 %i.go, 2
  %.not8.i = icmp eq i32 %i.gp, 0
  br i1 %.not8.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK11btMultiBody15isLinkKinematicEi.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !84 ; 2 uses
  %.not.i165 = icmp eq i32 %i.gr, -1
  br i1 %.not.i165, label %._crit_edge.i, label %bb.q, !llvm.loop !152

._crit_edge.i:                                    ; preds = %bb.r
  %i.gs = load ptr, ptr %i.fy, align 8, !tbaa !130 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.gs, null
  br i1 %.not.i6.i, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit: ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 224
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !131
  %i.gv = and i32 %i.gu, 2
  %.not366 = icmp eq i32 %i.gv, 0
  br i1 %.not366, label %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread, label %bb.v

_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread: ; preds = %bb.q, %_ZNK11btMultiBody15isLinkKinematicEi.exit.i, %._crit_edge.i, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit
  %i.gw = getelementptr inbounds [688 x i8], ptr %i.fx, i64 %indvars.iv.next440 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !84
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
  %.sroa.65342.48.copyload344 = load float, ptr %i.hf, align 8 ; 2 uses
  %.sroa.69.48..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.gw, i64 356
  %.sroa.69.48.copyload346 = load float, ptr %.sroa.69.48..sroa_idx345, align 4 ; 2 uses
  %.sroa.71.48..sroa_idx348 = getelementptr inbounds nuw i8, ptr %i.gw, i64 360
  %.sroa.71.48.copyload349 = load float, ptr %.sroa.71.48..sroa_idx348, align 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 556
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !86 ; 6 uses
  %i.hi = icmp sgt i32 %i.hh, 0                   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 328
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !110 ; 6 uses
  br i1 %i.hi, label %.lr.ph371, label %._crit_edge380.split.us

.lr.ph371:                                        ; preds = %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %invariant.op = add i32 %i.hk, 6
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv439 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hq = sext i32 %i.hk to i64
  %wide.trip.count = zext nneg i32 %i.hh to i64   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.df, i64 %i.hq
  br label %bb.t

.lr.ph374.us.preheader:                           ; preds = %bb.t
  %i.hr = mul nsw i32 %i.hk, %i.hk
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hs
  %i.hu = sext i32 %i.hk to i64
  %i.hv = zext nneg i32 %i.hh to i64
  %wide.trip.count432 = zext nneg i32 %i.hh to i64
  %invariant.gep509 = getelementptr [4 x i8], ptr %i.df, i64 %i.hu ; 5 uses
  %xtraiter573 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.hw = icmp ult i32 %i.hh, 4
  %unroll_iter577 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod574.not = icmp eq i64 %xtraiter573, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter573, 0
  br label %.lr.ph374.us

.lr.ph374.us:                                     ; preds = %.lr.ph374.us.preheader, %._crit_edge375.us
  %indvars.iv429 = phi i64 [ 0, %.lr.ph374.us.preheader ], [ %indvars.iv.next430, %._crit_edge375.us ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv429
  %i.hy = mul nuw nsw i64 %indvars.iv429, %i.hv
  %invariant.gep507 = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hy ; 5 uses
  br i1 %i.hw, label %.epil.preheader572, label %.lr.ph374.us.new

.lr.ph374.us.new:                                 ; preds = %.lr.ph374.us, %.lr.ph374.us.new
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.3, %.lr.ph374.us.new ], [ 0, %.lr.ph374.us ] ; 6 uses
  %i.hz = phi float [ %i.il, %.lr.ph374.us.new ], [ 0.000000e+00, %.lr.ph374.us ]
  %niter578 = phi i64 [ %niter578.next.3, %.lr.ph374.us.new ], [ 0, %.lr.ph374.us ]
  %gep508 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv424
  %i.ia = load float, ptr %gep508, align 4, !tbaa !9
  %gep510 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv424
  %i.ib = load float, ptr %gep510, align 4, !tbaa !9
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ib, float %i.hz)
  %indvars.iv.next425 = or disjoint i64 %indvars.iv424, 1 ; 2 uses
  %gep508.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425
  %i.id = load float, ptr %gep508.1, align 4, !tbaa !9
  %gep510.1 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425
  %i.ie = load float, ptr %gep510.1, align 4, !tbaa !9
  %i.if = tail call float @llvm.fmuladd.f32(float %i.id, float %i.ie, float %i.ic)
  %indvars.iv.next425.1 = or disjoint i64 %indvars.iv424, 2 ; 2 uses
  %gep508.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425.1
  %i.ig = load float, ptr %gep508.2, align 4, !tbaa !9
  %gep510.2 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425.1
  %i.ih = load float, ptr %gep510.2, align 4, !tbaa !9
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.ih, float %i.if)
  %indvars.iv.next425.2 = or disjoint i64 %indvars.iv424, 3 ; 2 uses
  %gep508.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv.next425.2
  %i.ij = load float, ptr %gep508.3, align 4, !tbaa !9
  %gep510.3 = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv.next425.2
  %i.ik = load float, ptr %gep510.3, align 4, !tbaa !9
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.ik, float %i.ii) ; 3 uses
  %indvars.iv.next425.3 = add nuw nsw i64 %indvars.iv424, 4 ; 2 uses
  %niter578.next.3 = add i64 %niter578, 4         ; 2 uses
  %niter578.ncmp.3 = icmp eq i64 %niter578.next.3, %unroll_iter577
  br i1 %niter578.ncmp.3, label %._crit_edge375.us.unr-lcssa, label %.lr.ph374.us.new, !llvm.loop !358

._crit_edge375.us.unr-lcssa:                      ; preds = %.lr.ph374.us.new
  br i1 %lcmp.mod574.not, label %._crit_edge375.us, label %.epil.preheader572

.epil.preheader572:                               ; preds = %._crit_edge375.us.unr-lcssa, %.lr.ph374.us
  %indvars.iv424.epil.init = phi i64 [ 0, %.lr.ph374.us ], [ %indvars.iv.next425.3, %._crit_edge375.us.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph374.us ], [ %i.il, %._crit_edge375.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod576)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader572
  %indvars.iv424.epil = phi i64 [ %indvars.iv424.epil.init, %.epil.preheader572 ], [ %indvars.iv.next425.epil, %bb.s ] ; 3 uses
  %i.im = phi float [ %.epil.init, %.epil.preheader572 ], [ %i.ip, %bb.s ]
  %epil.iter = phi i64 [ 0, %.epil.preheader572 ], [ %epil.iter.next, %bb.s ]
  %gep508.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep507, i64 %indvars.iv424.epil
  %i.in = load float, ptr %gep508.epil, align 4, !tbaa !9
  %gep510.epil = getelementptr [4 x i8], ptr %invariant.gep509, i64 %indvars.iv424.epil
  %i.io = load float, ptr %gep510.epil, align 4, !tbaa !9
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.in, float %i.io, float %i.im) ; 2 uses
  %indvars.iv.next425.epil = add nuw nsw i64 %indvars.iv424.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter573
  br i1 %epil.iter.cmp.not, label %._crit_edge375.us, label %bb.s, !llvm.loop !359

._crit_edge375.us:                                ; preds = %bb.s, %._crit_edge375.us.unr-lcssa
  %.lcssa = phi float [ %i.il, %._crit_edge375.us.unr-lcssa ], [ %i.ip, %bb.s ]
  store float %.lcssa, ptr %i.hx, align 4, !tbaa !9
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %._crit_edge380.split.us, label %.lr.ph374.us, !llvm.loop !360

bb.t:                                             ; preds = %.lr.ph371, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.iq
  %i.ir = sext i32 %.reass to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !9
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %indvars.iv ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !9
  %i.iy = load float, ptr %i.hn, align 4, !tbaa !9
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !9
  %i.jb = load float, ptr %i.hp, align 4, !tbaa !9
  %i.jc = load <2 x float>, ptr %i.iv, align 4, !tbaa !9 ; 2 uses
  %i.jd = load <2 x float>, ptr %i.hm, align 4, !tbaa !9 ; 2 uses
  %i.je = load <2 x float>, ptr %i.iu, align 4, !tbaa !9 ; 2 uses
  %i.jf = load <2 x float>, ptr %i.ho, align 4, !tbaa !9 ; 2 uses
  %i.jg = shufflevector <2 x float> %i.jc, <2 x float> %i.je, <2 x i32> <i32 1, i32 3>
  %i.jh = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.ji = fmul <2 x float> %i.jg, %i.jh
  %i.jj = shufflevector <2 x float> %i.jc, <2 x float> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jk = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 0, i32 2>
  %i.jl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jj, <2 x float> %i.jk, <2 x float> %i.ji)
  %i.jm = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jn = insertelement <2 x float> %i.jm, float %i.ja, i64 1
  %i.jo = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.jb, i64 1
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jp, <2 x float> %i.jl) ; 2 uses
  %shift = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.jq, %shift
  %i.jr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.js = fsub float %i.it, %i.jr
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.js, ptr %gep, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph374.us.preheader, label %bb.t, !llvm.loop !361

._crit_edge380.split.us:                          ; preds = %._crit_edge375.us, %_ZNK11btMultiBody30isLinkAndAllAncestorsKinematicEi.exit.thread
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.dg, i64 %indvars.iv439 ; 4 uses
  %.sroa.0.0.copyload = load float, ptr %i.jt, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %.sroa.12457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ju = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.jv = load <2 x float>, ptr %.sroa.12457.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %.sroa.18.0.copyload = load float, ptr %.sroa.18.0..sroa_idx, align 4 ; 2 uses
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.hi, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge380.split.us
  %i.jx = sext i32 %i.hk to i64
  %wide.trip.count437 = zext nneg i32 %i.hh to i64
  %invariant.gep511 = getelementptr [32 x i8], ptr %i.de, i64 %i.jx
  br label %bb.u

._crit_edge385:                                   ; preds = %bb.u, %._crit_edge380.split.us
  %.sroa.18.0 = phi float [ %.sroa.18.0.copyload, %._crit_edge380.split.us ], [ %i.ne, %bb.u ]
  %.lcssa381 = phi float [ %.sroa.0.0.copyload, %._crit_edge380.split.us ], [ %i.nc, %bb.u ] ; 3 uses
  %i.jy = phi <4 x float> [ %i.jw, %._crit_edge380.split.us ], [ %i.nd, %bb.u ] ; 8 uses
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ka = shufflevector <4 x float> %i.jy, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kb = fmul <2 x float> %i.hd, %i.ka
  %i.kc = extractelement <4 x float> %i.jy, i64 2 ; 2 uses
  %i.kd = extractelement <4 x float> %i.jy, i64 3 ; 2 uses
  %i.ke = fneg float %i.kc
  %i.kf = fmul float %.sroa.71.48.copyload349, %i.ke
  %i.kg = tail call float @llvm.fmuladd.f32(float %.sroa.69.48.copyload346, float %i.kd, float %i.kf)
  %i.kh = fneg float %i.kd
  %i.ki = fmul float %.sroa.65342.48.copyload344, %i.kh
  %i.kj = tail call float @llvm.fmuladd.f32(float %.sroa.71.48.copyload349, float %.lcssa381, float %i.ki)
  %i.kk = fneg float %.lcssa381
  %i.kl = fmul float %.sroa.69.48.copyload346, %i.kk
  %i.km = tail call float @llvm.fmuladd.f32(float %.sroa.65342.48.copyload344, float %i.kc, float %i.kl)
  %i.kn = extractelement <4 x float> %i.jy, i64 0
end_hunk_4
begin_hunk_5_@_ZNK11btMultiBody30fillConstraintJacobianMultiDofEiRK9btVector3S2_S2_PfR20btAlignedObjectArrayIfERS4_IS0_ERS4_I11btMatrix3x3E:bb.a
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !9 ; 4 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.ev)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !9 ; 5 uses
  %i.fb = tail call noundef float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.ey)
  %i.fc = fdiv float 2.000000e+00, %i.fb          ; 3 uses
  %i.fd = fmul float %i.er, %i.fc                 ; 2 uses
  %i.fe = fmul float %i.et, %i.fc                 ; 3 uses
  %i.ff = fmul float %i.ex, %i.fc                 ; 4 uses
  %i.fg = fmul float %i.fa, %i.fd                 ; 2 uses
  %i.fh = fmul float %i.fa, %i.fe                 ; 2 uses
  %i.fi = fmul float %i.fa, %i.ff                 ; 2 uses
  %i.fj = fmul float %i.er, %i.fd                 ; 2 uses
  %i.fk = fmul float %i.er, %i.fe                 ; 2 uses
  %i.fl = fmul float %i.er, %i.ff                 ; 2 uses
  %i.fm = fmul float %i.et, %i.fe                 ; 2 uses
  %i.fn = fmul float %i.et, %i.ff                 ; 2 uses
  %i.fo = fmul float %i.ex, %i.ff                 ; 2 uses
  %i.fp = fadd float %i.fm, %i.fo
  %i.fq = fsub float 1.000000e+00, %i.fp
  %i.fr = fsub float %i.fk, %i.fi
  %i.fs = fadd float %i.fl, %i.fh
  %i.ft = fadd float %i.fk, %i.fi
  %i.fu = fadd float %i.fj, %i.fo
  %i.fv = fsub float 1.000000e+00, %i.fu
  %i.fw = fsub float %i.fn, %i.fg
  %i.fx = fsub float %i.fl, %i.fh
  %i.fy = fadd float %i.fn, %i.fg
  %i.fz = fadd float %i.fj, %i.fm
  %i.ga = fsub float 1.000000e+00, %i.fz
  store float %i.fq, ptr %i.eb, align 4
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.fr, ptr %.sroa.4360.0..sroa_idx, align 4
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  store float %i.fs, ptr %.sroa.5361.0..sroa_idx, align 4
  %.sroa.6362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store float 0.000000e+00, ptr %.sroa.6362.0..sroa_idx, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 4 uses
  store float %i.ft, ptr %i.gb, align 4
  %.sroa.9364.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store float %i.fv, ptr %.sroa.9364.16..sroa_idx, align 4
  %.sroa.10365.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 4 uses
  store float %i.fw, ptr %.sroa.10365.16..sroa_idx, align 4
  %.sroa.11366.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 28
  store float 0.000000e+00, ptr %.sroa.11366.16..sroa_idx, align 4, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 4 uses
  store float %i.fx, ptr %i.gc, align 4
  %.sroa.14368.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 36 ; 4 uses
  store float %i.fy, ptr %.sroa.14368.32..sroa_idx, align 4
  %.sroa.15369.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 4 uses
  store float %i.ga, ptr %.sroa.15369.32..sroa_idx, align 4
  %.sroa.16370.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 44
  store float 0.000000e+00, ptr %.sroa.16370.32..sroa_idx, align 4, !tbaa !11
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !9 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !9 ; 2 uses
  %i.gh = fneg float %i.gg
  %i.gi = fmul float %i.ep, %i.gh
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ge, float %i.gi)
  %i.gk = load float, ptr %4, align 4, !tbaa !9   ; 2 uses
  %i.gl = fneg float %i.ge
  %i.gm = fmul float %i.ef, %i.gl
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.gk, float %i.gm)
  %i.go = fneg float %i.gk
  %i.gp = fmul float %i.ek, %i.go
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.gg, float %i.gp)
  %i.gr = load float, ptr %3, align 4, !tbaa !9
  %i.gs = fadd float %i.gj, %i.gr
  store float %i.gs, ptr %5, align 4, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !9
  %i.gv = fadd float %i.gn, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.gv, ptr %i.gw, align 4, !tbaa !9
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !9
  %i.gz = fadd float %i.gq, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.gz, ptr %i.ha, align 4, !tbaa !9
  %i.hb = load float, ptr %4, align 4, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.hb, ptr %i.hc, align 4, !tbaa !9
  %i.hd = load float, ptr %i.gf, align 4, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.hd, ptr %i.he, align 4, !tbaa !9
  %i.hf = load float, ptr %i.gd, align 4, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.hf, ptr %i.hg, align 4, !tbaa !9
  %i.hh = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !9
  %i.hi = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !9
  %i.hj = load <2 x float>, ptr %i.eb, align 4, !tbaa !9 ; 2 uses
  %i.hk = load <2 x float>, ptr %i.gb, align 4, !tbaa !9 ; 2 uses
  %i.hl = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 1, i32 3>
  %i.ho = fmul <2 x float> %i.hm, %i.hn
  %i.hp = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.hq = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hr, <2 x float> %i.ho)
  %i.ht = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hu = insertelement <2 x float> %i.ht, float %i.hi, i64 1
  %i.hv = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hw, <2 x float> %i.hs)
  %i.hy = load float, ptr %i.gc, align 4, !tbaa !9
  %i.hz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !9
  %i.ia = fmul float %i.ek, %i.hz
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.ef, float %i.ia)
  %i.ic = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !9
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.ic, float %i.ep, float %i.ib)
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.id, i64 0
  store <2 x float> %i.hx, ptr %i.bi, align 4
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %.sroa.477.0..sroa_idx, align 4, !tbaa !11
  %i.ie = load float, ptr %4, align 4, !tbaa !9   ; 2 uses
  %i.if = load float, ptr %i.gf, align 4, !tbaa !9 ; 2 uses
  %i.ig = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !9
  %i.ih = load float, ptr %i.gd, align 4, !tbaa !9 ; 2 uses
  %i.ii = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !9
  %i.ij = load <2 x float>, ptr %i.eb, align 4, !tbaa !9 ; 2 uses
  %i.ik = load <2 x float>, ptr %i.gb, align 4, !tbaa !9 ; 2 uses
  %i.il = insertelement <2 x float> poison, float %i.if, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ir, <2 x float> %i.io)
  %i.it = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ii, i64 1
  %i.iv = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.is)
  %i.iy = load float, ptr %i.gc, align 4, !tbaa !9
  %i.iz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !9
  %i.ja = fmul float %i.if, %i.iz
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.ie, float %i.ja)
  %i.jc = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !9
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %i.jc, float %i.ih, float %i.jb)
  %.sroa.3.12.vec.insert.i233 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  store <2 x float> %i.ix, ptr %i.bk, align 4
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i233, ptr %.sroa.475.0..sroa_idx, align 4, !tbaa !11
  %i.je = load float, ptr %3, align 4, !tbaa !9   ; 2 uses
  %i.jf = load float, ptr %i.gt, align 4, !tbaa !9 ; 2 uses
  %i.jg = load float, ptr %.sroa.5361.0..sroa_idx, align 4, !tbaa !9
  %i.jh = load float, ptr %i.gx, align 4, !tbaa !9 ; 2 uses
  %i.ji = load float, ptr %.sroa.10365.16..sroa_idx, align 4, !tbaa !9
  %i.jj = load <2 x float>, ptr %i.eb, align 4, !tbaa !9 ; 2 uses
  %i.jk = load <2 x float>, ptr %i.gb, align 4, !tbaa !9 ; 2 uses
  %i.jl = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = shufflevector <2 x float> %i.jj, <2 x float> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.jo = fmul <2 x float> %i.jm, %i.jn
  %i.jp = shufflevector <2 x float> %i.jj, <2 x float> %i.jk, <2 x i32> <i32 0, i32 2>
  %i.jq = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jr, <2 x float> %i.jo)
  %i.jt = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.ji, i64 1
  %i.jv = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ju, <2 x float> %i.jw, <2 x float> %i.js)
  %i.jy = load float, ptr %i.gc, align 4, !tbaa !9
  %i.jz = load float, ptr %.sroa.14368.32..sroa_idx, align 4, !tbaa !9
  %i.ka = fmul float %i.jf, %i.jz
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.je, float %i.ka)
  %i.kc = load float, ptr %.sroa.15369.32..sroa_idx, align 4, !tbaa !9
  %i.kd = tail call noundef float @llvm.fmuladd.f32(float %i.kc, float %i.jh, float %i.kb)
  %.sroa.3.12.vec.insert.i238 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kd, i64 0
  store <2 x float> %i.jx, ptr %i.bl, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i238, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !11
  br i1 %i.dh, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %._crit_edge
  %scevgep402 = getelementptr i8, ptr %5, i64 24
  %i.ke = add nuw i32 %i.e, 5
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ke, i32 6)
  %i.kf = zext nneg i32 %smax to i64
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %i.kh = add nsw i64 %i.kg, -20
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep402, i8 0, i64 %i.kh, i1 false), !tbaa !9
  br label %._crit_edge391

._crit_edge391:                                   ; preds = %.lr.ph390.preheader, %._crit_edge
  %i.ki = icmp sgt i32 %i.c, 0
  %i.kj = icmp sgt i32 %1, -1
  %or.cond = and i1 %i.kj, %i.ki
  br i1 %or.cond, label %.preheader384, label %.loopexit

.preheader384:                                    ; preds = %._crit_edge391
  %.not400 = icmp eq i32 %.0188.lcssa, 0
  br i1 %.not400, label %.preheader.lr.ph, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader384
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %9 = sext i32 %.0188.lcssa to i64
  %wide.trip.count = zext i32 %.0188.lcssa to i64
  %10 = getelementptr [4 x i8], ptr %i.dq, i64 %9
  br label %bb.w

.preheader.lr.ph:                                 ; preds = %bb.ab, %.preheader384
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !38
  br label %.preheader

bb.w:                                             ; preds = %.lr.ph393, %bb.ab
  %indvars.iv406 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next407, %bb.ab ] ; 2 uses
  %11 = xor i64 %indvars.iv406, -1
  %i.kn = getelementptr [4 x i8], ptr %10, i64 %11
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !9
  %i.kp = fptosi float %i.ko to i32               ; 2 uses
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !38
  %i.kr = sext i32 %i.kp to i64                   ; 3 uses
  %i.ks = getelementptr inbounds [688 x i8], ptr %i.kq, i64 %i.kr ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 20
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !84
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 336
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !9 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 340
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !9 ; 5 uses
  %i.kz = fmul float %i.ky, %i.ky
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kw, float %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 344
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !9 ; 4 uses
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lc, float %i.la)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 348
  %i.lf = load float, ptr %i.le, align 4, !tbaa !9 ; 5 uses
  %i.lg = tail call noundef float @llvm.fmuladd.f32(float %i.lf, float %i.lf, float %i.ld)
  %i.lh = fdiv float 2.000000e+00, %i.lg          ; 3 uses
  %i.li = fmul float %i.kw, %i.lh                 ; 2 uses
  %i.lj = fmul float %i.ky, %i.lh                 ; 3 uses
  %i.lk = fmul float %i.lc, %i.lh                 ; 4 uses
  %i.ll = fmul float %i.lf, %i.li                 ; 2 uses
  %i.lm = fmul float %i.lf, %i.lj                 ; 2 uses
  %i.ln = fmul float %i.lf, %i.lk                 ; 2 uses
  %i.lo = fmul float %i.kw, %i.li                 ; 2 uses
  %i.lp = fmul float %i.kw, %i.lj                 ; 2 uses
  %i.lq = fmul float %i.kw, %i.lk                 ; 2 uses
  %i.lr = fmul float %i.ky, %i.lj                 ; 2 uses
  %i.ls = fmul float %i.ky, %i.lk                 ; 2 uses
  %i.lt = fmul float %i.lc, %i.lk                 ; 2 uses
  %i.lu = fadd float %i.lr, %i.lt
  %i.lv = fadd float %i.lo, %i.lt
  %i.lw = fadd float %i.lo, %i.lr
  %i.lx = add nsw i32 %i.ku, 1
  %i.ly = sext i32 %i.lx to i64                   ; 4 uses
  %i.lz = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.ly ; 9 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 36
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mi = add nsw i32 %i.kp, 1
  %i.mj = sext i32 %i.mi to i64                   ; 4 uses
  %i.mk = getelementptr inbounds [48 x i8], ptr %i.eb, i64 %i.mj ; 3 uses
  %.scalar = fsub float 1.000000e+00, %i.lu
  %i.ml = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar446 = fsub float %i.lp, %i.ln
  %i.mn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar446, i64 0 ; 2 uses
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar447 = fadd float %i.lq, %i.lm
  %i.mp = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar447, i64 0 ; 2 uses
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mr = load <2 x float>, ptr %i.lz, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.ms = load <2 x float>, ptr %i.ma, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.mt = load <2 x float>, ptr %i.mb, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.mu = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mv = insertelement <4 x float> %i.mu, float 0.000000e+00, i64 3
  %i.mw = shufflevector <2 x float> %i.mr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mx = insertelement <4 x float> %i.mw, float 0.000000e+00, i64 3
  %i.my = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mz = insertelement <4 x float> %i.my, float 0.000000e+00, i64 3
  %i.na = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.nb = fadd float %i.lp, %i.ln                 ; 2 uses
  %.scalar448 = fsub float 1.000000e+00, %i.lv    ; 2 uses
  %i.nc = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar448, i64 0
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ne = fsub float %i.ls, %i.ll                 ; 2 uses
  %i.nf = load <2 x float>, ptr %i.md, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.ng = load float, ptr %i.mg, align 4, !tbaa !9, !noalias !389
  %i.nh = load <2 x float>, ptr %i.mc, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.ni = load float, ptr %i.mf, align 4, !tbaa !9, !noalias !389
  %i.nj = load <2 x float>, ptr %i.me, align 4, !tbaa !9, !noalias !389 ; 2 uses
  %i.nk = load float, ptr %i.mh, align 4, !tbaa !9, !noalias !389
  %i.nl = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.mv, <4 x float> %i.nl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nn = fmul <4 x float> %i.nm, %i.mo
  %i.no = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.np = shufflevector <4 x float> %i.mx, <4 x float> %i.no, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.np, <4 x float> %i.mm, <4 x float> %i.nn)
  %i.nr = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.mz, <4 x float> %i.nr, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ns, <4 x float> %i.mq, <4 x float> %i.nq)
  %i.nu = shufflevector <2 x float> %i.ms, <2 x float> %i.nf, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.nv = insertelement <4 x float> %i.nu, float 0.000000e+00, i64 3
  %i.nw = fmul <4 x float> %i.nv, %i.nd
  %i.nx = shufflevector <2 x float> %i.mr, <2 x float> %i.nh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ny = insertelement <4 x float> %i.nx, float 0.000000e+00, i64 3 ; 2 uses
  %i.nz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.nb, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ob = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ny, <4 x float> %i.oa, <4 x float> %i.nw)
  %i.oc = shufflevector <2 x float> %i.mt, <2 x float> %i.nj, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.od = insertelement <4 x float> %i.oc, float 0.000000e+00, i64 3 ; 2 uses
  %i.oe = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ne, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.og = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> %i.of, <4 x float> %i.ob)
  store <4 x float> %i.nt, ptr %i.mk, align 4
  store <4 x float> %i.og, ptr %i.na, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %.scalar449 = fsub float %i.lq, %i.lm           ; 4 uses
  %i.oi = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar449, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar450 = fadd float %i.ls, %i.ll           ; 4 uses
  %i.ok = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar450, i64 0
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar451 = fsub float 1.000000e+00, %i.lw    ; 4 uses
  %i.om = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar451, i64 0
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oo = insertelement <4 x float> %i.nu, float 1.000000e+00, i64 3
  %i.op = insertelement <4 x float> %i.oo, float %i.ng, i64 2
  %i.oq = fmul <4 x float> %i.ol, %i.op
  %i.or = insertelement <4 x float> %i.ny, float %i.ni, i64 2
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> %i.oj, <4 x float> %i.oq)
  %i.ot = insertelement <4 x float> %i.od, float %i.nk, i64 2
  %i.ou = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ot, <4 x float> %i.on, <4 x float> %i.os)
  store <4 x float> %i.ou, ptr %i.oh, align 4
  %i.ov = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.ly ; 3 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !9 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !9 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !9 ; 2 uses
  %i.pb = insertelement <2 x float> %i.mn, float %.scalar448, i64 1 ; 3 uses
  %i.pc = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = fmul <2 x float> %i.pb, %i.pd
  %i.pf = insertelement <2 x float> %i.ml, float %i.nb, i64 1 ; 3 uses
  %i.pg = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.ph, <2 x float> %i.pe)
  %i.pj = insertelement <2 x float> %i.mp, float %i.ne, i64 1 ; 3 uses
  %i.pk = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.pl, <2 x float> %i.pi)
  %i.pn = fmul float %.scalar450, %i.oy
  %i.po = tail call float @llvm.fmuladd.f32(float %.scalar449, float %i.ow, float %i.pn)
  %i.pp = tail call noundef float @llvm.fmuladd.f32(float %.scalar451, float %i.pa, float %i.po)
  %.sroa.3.12.vec.insert.i243 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pp, i64 0
  %i.pq = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.mj ; 14 uses
  store <2 x float> %i.pm, ptr %i.pq, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 9 uses
  store <2 x float> %.sroa.3.12.vec.insert.i243, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !11
  %i.pr = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.ly ; 3 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !9 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !9 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !9 ; 2 uses
  %i.px = insertelement <2 x float> poison, float %i.pu, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fmul <2 x float> %i.pb, %i.py
  %i.qa = insertelement <2 x float> poison, float %i.ps, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.qb, <2 x float> %i.pz)
  %i.qd = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.qe, <2 x float> %i.qc)
  %i.qg = fmul float %.scalar450, %i.pu
  %i.qh = tail call float @llvm.fmuladd.f32(float %.scalar449, float %i.ps, float %i.qg)
  %i.qi = tail call noundef float @llvm.fmuladd.f32(float %.scalar451, float %i.pw, float %i.qh)
  %.sroa.3.12.vec.insert.i248 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qi, i64 0
  %i.qj = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.mj ; 8 uses
  store <2 x float> %i.qf, ptr %i.qj, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i248, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !11
  %i.qk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.ly ; 3 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !9 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !9 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !9 ; 2 uses
  %i.qq = fmul float %.scalar450, %i.qn
  %i.qr = tail call float @llvm.fmuladd.f32(float %.scalar449, float %i.ql, float %i.qq)
  %i.qs = tail call noundef float @llvm.fmuladd.f32(float %.scalar451, float %i.qp, float %i.qr)
  %i.qt = load ptr, ptr %i.kk, align 8, !tbaa !38
  %i.qu = getelementptr inbounds [688 x i8], ptr %i.qt, i64 %i.kr ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 352
  %i.qw = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qy = fmul <2 x float> %i.pb, %i.qx
  %i.qz = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pf, <2 x float> %i.ra, <2 x float> %i.qy)
  %i.rc = insertelement <2 x float> poison, float %i.qp, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.rd, <2 x float> %i.rb)
  %i.rf = load <2 x float>, ptr %i.qv, align 4, !tbaa !9
  %i.rg = fsub <2 x float> %i.re, %i.rf           ; 7 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qu, i64 360
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !9
  %i.rj = fsub float %i.qs, %i.ri                 ; 7 uses
  %.sroa.3.12.vec.insert.i258 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rj, i64 0
  %i.rk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.mj ; 5 uses
  store <2 x float> %i.rg, ptr %i.rk, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf:bb.a
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2>
  %i.ai = fneg <2 x float> %i.ah                  ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ak = fmul <2 x float> %i.af, %i.ai
  %i.al = extractelement <2 x float> %i.af, i64 1
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.an = insertelement <4 x float> %i.am, float %i.ab, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ac, i64 1
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = fmul <4 x float> %i.ao, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.as, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> %i.v, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.av = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ax = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.z, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.az = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ar, <4 x i32> <i32 7, i32 6, i32 5, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.ay, <4 x float> %i.az) ; 2 uses
  %i.bb = extractelement <4 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.af, i64 0
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = shufflevector <2 x float> %i.ad, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.be, <2 x float> %i.ak)
  %i.bg = extractelement <2 x float> %i.aa, i64 0
  %i.bh = extractelement <4 x float> %i.ar, i64 0
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ae, float %i.bh) ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.t, float %i.bi, float %i.bd)
  %i.bk = fneg float %i.u
  %i.bl = shufflevector <2 x float> %i.q, <2 x float> %i.s, <4 x i32> <i32 1, i32 2, i32 3, i32 poison> ; 2 uses
  %i.bm = insertelement <4 x float> %i.bl, float 0.000000e+00, i64 3
  %i.bn = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bk, i64 2
  %i.bo = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = fmul <4 x float> %i.bm, %i.bp
  %i.br = shufflevector <4 x float> %i.ay, <4 x float> %i.bl, <4 x i32> <i32 2, i32 6, i32 5, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float 0.000000e+00, i64 3
  %i.bt = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.bu = insertelement <4 x float> %i.bt, float -0.000000e+00, i64 3
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bu, <4 x float> %i.bq) ; 2 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.bw, float %i.bj)
  %i.by = fdiv float 1.000000e+00, %i.bx
  %i.bz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bi, i64 0
  %i.ca = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cc = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.by, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.ce = fmul <4 x float> %i.cb, %i.cd           ; 2 uses
  %i.cf = fmul <4 x float> %i.ba, %i.cd           ; 2 uses
  %i.cg = fmul <4 x float> %i.bv, %i.cd           ; 2 uses
  %i.ch = load <2 x float>, ptr %1, align 4, !tbaa !9, !noalias !459 ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cj = fmul <4 x float> %i.ci, %i.cf
  %i.ck = shufflevector <2 x float> %i.ch, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.i, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cn, <4 x float> %i.cl)
  store <4 x float> %i.co, ptr %4, align 16, !tbaa !9, !alias.scope !459
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load <2 x float>, ptr %i.j, align 4, !tbaa !9, !noalias !459 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.cs = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3 ; 2 uses
  %i.ct = fmul <4 x float> %i.cr, %i.cs
  %i.cu = insertelement <4 x float> %i.ce, float 0.000000e+00, i64 3 ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cq, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cv, <4 x float> %i.ct)
  %i.cx = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 3 ; 2 uses
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.l, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.cz, <4 x float> %i.cw)
  store <4 x float> %i.da, ptr %i.cp, align 16, !tbaa !9, !alias.scope !459
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dc = load <2 x float>, ptr %i.m, align 4, !tbaa !9, !noalias !459 ; 2 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.de = fmul <4 x float> %i.dd, %i.cs
  %i.df = shufflevector <2 x float> %i.dc, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.df, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.o, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.di, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %i.db, align 16, !tbaa !9, !alias.scope !459
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.dk = load float, ptr %5, align 4, !tbaa !9   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !9 ; 3 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !9 ; 3 uses
  %i.dr = call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.do)
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !9 ; 3 uses
  %i.du = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dr)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.du)
  %i.dv = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.dw = fmul float %i.dk, %i.dv                 ; 3 uses
  %i.dx = fmul float %i.dm, %i.dv                 ; 3 uses
  %i.dy = fmul float %i.dq, %i.dv                 ; 3 uses
  %i.dz = fmul float %i.dt, %i.dv                 ; 2 uses
  %i.ea = fcmp olt float %i.dz, -1.000000e+00
  %.0.i.i = select i1 %i.ea, float -1.000000e+00, float %i.dz ; 2 uses
  %i.eb = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.eb, float 1.000000e+00, float %.0.i.i
  %i.ec = call noundef float @acosf(float noundef %.1.i.i) #26
  %i.ed = fmul float %i.ec, 2.000000e+00
  store float %i.ed, ptr %3, align 4, !tbaa !9
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !9
  %i.ee = fmul float %i.dx, %i.dx
  %i.ef = call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.ee)
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.ef) ; 2 uses
  %i.eh = fcmp olt float %i.eg, f0x28800000
  br i1 %i.eh, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ej = fmul float %i.dw, %i.ei
  %i.ek = fmul float %i.dx, %i.ei
  %i.el = fmul float %i.dy, %i.ei
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.ej, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.ek, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.el, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #26 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !9
  %i.t = load float, ptr %i.m, align 4, !tbaa !9
  %i.u = load float, ptr %i.j, align 4, !tbaa !9
  %i.v = load float, ptr %i.k, align 4, !tbaa !9
  %i.w = load float, ptr %i.o, align 4, !tbaa !9
  %i.x = load float, ptr %i.p, align 4, !tbaa !9
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !9
  %2 = sext i32 %i.aq to i64                      ; 5 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %2
  %i.az = load float, ptr %i.ay, align 4, !tbaa !9
  %i.ba = fsub float %i.aw, %i.az
  %i.bb = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bf = fsub float %i.ba, %i.be
  %i.bg = fadd float %i.bf, 1.000000e+00
  %i.bh = tail call noundef float @sqrtf(float noundef %i.bg) #26 ; 2 uses
  %i.bi = fmul float %i.bh, 5.000000e-01
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bi, ptr %i.bj, align 4, !tbaa !9
  %i.bk = fdiv float 5.000000e-01, %i.bh          ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %2
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.at
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %2
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = fmul float %i.bk, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %2
  store float %i.bx, ptr %i.by, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.at
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bb
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !9
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = fmul float %i.bk, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb
  store float %i.ce, ptr %i.cf, align 4, !tbaa !9
  %i.cg = load <4 x float>, ptr %i.a, align 16, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ch = phi <4 x float> [ %i.cg, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ch, ptr %1, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #22

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!15, !10, i64 88}
!15 = !{!"_ZTS11btMultiBody", !16, i64 8, !18, i64 16, !19, i64 24, !19, i64 40, !20, i64 56, !20, i64 72, !10, i64 88, !19, i64 92, !19, i64 108, !19, i64 124, !19, i64 140, !19, i64 156, !22, i64 176, !26, i64 208, !26, i64 240, !26, i64 272, !29, i64 304, !32, i64 336, !35, i64 368, !35, i64 416, !35, i64 464, !35, i64 512, !25, i64 560, !25, i64 561, !25, i64 562, !25, i64 563, !25, i64 564, !10, i64 568, !10, i64 572, !10, i64 576, !17, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !10, i64 604, !10, i64 608, !25, i64 612, !10, i64 616, !10, i64 620, !25, i64 624, !25, i64 625, !6, i64 628, !6, i64 632, !25, i64 636, !25, i64 637, !25, i64 638, !25, i64 639}
!16 = !{!"p1 _ZTS23btMultiBodyLinkCollider", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTS9btVector3", !7, i64 0}
!20 = !{!"_ZTS12btQuaternion", !21, i64 0}
!21 = !{!"_ZTS10btQuadWord", !7, i64 0}
!22 = !{!"_ZTS20btAlignedObjectArrayI15btMultibodyLinkE", !23, i64 0, !6, i64 4, !6, i64 8, !24, i64 16, !25, i64 24}
!23 = !{!"_ZTS18btAlignedAllocatorI15btMultibodyLinkLj16EE"}
!24 = !{!"p1 _ZTS15btMultibodyLink", !17, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTS20btAlignedObjectArrayIfE", !27, i64 0, !6, i64 4, !6, i64 8, !28, i64 16, !25, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!28 = !{!"p1 float", !17, i64 0}
!29 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !30, i64 0, !6, i64 4, !6, i64 8, !31, i64 16, !25, i64 24}
!30 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!31 = !{!"p1 _ZTS9btVector3", !17, i64 0}
!32 = !{!"_ZTS20btAlignedObjectArrayI11btMatrix3x3E", !33, i64 0, !6, i64 4, !6, i64 8, !34, i64 16, !25, i64 24}
!33 = !{!"_ZTS18btAlignedAllocatorI11btMatrix3x3Lj16EE"}
!34 = !{!"p1 _ZTS11btMatrix3x3", !17, i64 0}
!35 = !{!"_ZTS11btMatrix3x3", !7, i64 0}
!36 = !{i64 0, i64 16, !11}
!37 = !{!22, !25, i64 24}
!38 = !{!22, !24, i64 16}
!39 = !{!22, !6, i64 4}
!40 = !{!22, !6, i64 8}
!41 = !{!26, !25, i64 24}
!42 = !{!26, !28, i64 16}
!43 = !{!26, !6, i64 4}
!44 = !{!26, !6, i64 8}
!45 = !{!29, !25, i64 24}
!46 = !{!29, !31, i64 16}
!47 = !{!29, !6, i64 4}
!48 = !{!29, !6, i64 8}
!49 = !{!32, !25, i64 24}
!50 = !{!32, !34, i64 16}
!51 = !{!32, !6, i64 4}
!52 = !{!32, !6, i64 8}
!53 = !{!15, !25, i64 561}
!54 = !{!15, !25, i64 562}
!55 = !{!15, !25, i64 563}
!56 = !{!15, !25, i64 564}
!57 = !{!15, !10, i64 576}
!58 = !{!15, !17, i64 584}
!59 = !{!15, !6, i64 592}
!60 = !{!15, !6, i64 596}
!61 = !{!15, !6, i64 600}
!62 = !{!15, !25, i64 612}
!63 = !{!15, !25, i64 624}
!64 = !{!15, !25, i64 625}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !66}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !66}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !73}
!78 = !{!79, !10, i64 0}
!79 = !{!"_ZTS15btMultibodyLink", !10, i64 0, !19, i64 4, !6, i64 20, !20, i64 24, !19, i64 40, !19, i64 56, !80, i64 72, !80, i64 104, !7, i64 136, !6, i64 328, !6, i64 332, !20, i64 336, !19, i64 352, !20, i64 368, !19, i64 384, !19, i64 400, !19, i64 416, !19, i64 432, !19, i64 448, !7, i64 464, !7, i64 492, !7, i64 520, !16, i64 544, !6, i64 552, !6, i64 556, !6, i64 560, !81, i64 564, !82, i64 568, !83, i64 576, !18, i64 640, !18, i64 648, !17, i64 656, !10, i64 664, !10, i64 668, !10, i64 672, !10, i64 676, !10, i64 680, !10, i64 684}
!80 = !{!"_ZTS21btSpatialMotionVector", !19, i64 0, !19, i64 16}
!81 = !{!"_ZTSN15btMultibodyLink22eFeatherstoneJointTypeE", !7, i64 0}
!82 = !{!"p1 _ZTS24btMultiBodyJointFeedback", !17, i64 0}
!83 = !{!"_ZTS11btTransform", !35, i64 0, !19, i64 48}
!84 = !{!79, !6, i64 20}
!85 = !{!79, !81, i64 564}
!86 = !{!79, !6, i64 556}
!87 = !{!79, !6, i64 560}
!88 = !{!79, !6, i64 552}
end_hunk_6
