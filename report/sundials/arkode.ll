inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@arkYddNorm:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  tail call void @N_VLinearSum(double noundef %1, ptr noundef %i.b, double noundef 1.000000e+00, ptr noundef %i.d, ptr noundef %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.j = load double, ptr %i.i, align 8, !tbaa !21
  %i.k = fadd double %1, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.o = tail call i32 %i.h(ptr noundef %0, double noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 2) #15
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = insertelement <2 x double> poison, double %1, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.q ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.u = extractelement <2 x double> %i.r, i64 0
  %i.v = extractelement <2 x double> %i.r, i64 1
  tail call void @N_VLinearSum(double noundef %i.u, ptr noundef %i.s, double noundef %i.v, ptr noundef %i.t, ptr noundef %i.s) #15
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !20
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.x) #15
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %i.ab = tail call double @N_VWrmsNorm(ptr noundef %i.y, ptr noundef %i.aa) #15
  store double %i.ab, ptr %2, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -8, %bb.a ]
  ret i32 %.0
}

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #3

declare i32 @arkInterpUpdate(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @SUNAdaptController_UpdateH(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @arkEwtSetSmallReal(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @N_VConst(double noundef f0x0010000000000000, ptr noundef %1) #15
  ret i32 0
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @arkPredict_MaximumOrder(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3136, ptr noundef nonnull @__func__.arkPredict_MaximumOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.147)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3142, ptr noundef nonnull @__func__.arkPredict_MaximumOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.148)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @arkInterpEvaluate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, double noundef %1, i32 noundef 0, i32 noundef 5, ptr noundef %2) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ %i.e, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @arkPredict_VariableOrder(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3169, ptr noundef nonnull @__func__.arkPredict_VariableOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.147)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3175, ptr noundef nonnull @__func__.arkPredict_VariableOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.148)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = fcmp ugt double %1, 5.000000e-01
  %i.f = fcmp ugt double %1, 7.500000e-01
  %. = select i1 %i.f, i32 1, i32 2
  %.012 = select i1 %i.e, i32 %., i32 3
  %i.g = tail call i32 @arkInterpEvaluate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, double noundef %1, i32 noundef 0, i32 noundef %.012, ptr noundef %2) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ %i.g, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @arkPredict_CutoffOrder(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3206, ptr noundef nonnull @__func__.arkPredict_CutoffOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.147)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3212, ptr noundef nonnull @__func__.arkPredict_CutoffOrder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.148)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = fcmp ugt double %1, 5.000000e-01
  %. = select i1 %i.e, i32 1, i32 5
  %i.f = tail call i32 @arkInterpEvaluate(ptr noundef nonnull %0, ptr noundef nonnull %i.c, double noundef %1, i32 noundef 0, i32 noundef %., ptr noundef %2) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ %i.f, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @arkPredict_Bootstrap(ptr nofree noundef readonly captures(address_is_null) %0, double noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3247, ptr noundef nonnull @__func__.arkPredict_Bootstrap, ptr noundef nonnull @.str, ptr noundef nonnull @.str.147)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3253, ptr noundef nonnull @__func__.arkPredict_Bootstrap, ptr noundef nonnull @.str, ptr noundef nonnull @.str.148)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = fmul double %2, %2
  %i.f = fmul double %i.e, 5.000000e-01
  %i.g = fdiv double %i.f, %1                     ; 3 uses
  %i.h = fsub double %2, %i.g
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %3, 1
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %load_initial = load <2 x ptr>, ptr %5, align 8
  %load_initial41 = load <2 x double>, ptr %4, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded42 = phi <2 x double> [ %load_initial41, %vector.ph ], [ %8, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index
  %8 = fmul <2 x double> %broadcast.splat, %store_forwarded42 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x double> %8, ptr %9, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %10 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x ptr> %load_initial, ptr %10, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !80
  %i.n = fmul double %i.g, %i.m
  %11 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %i.n, ptr %12, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %13 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %13, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  store double 1.000000e+00, ptr %4, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  store ptr %i.s, ptr %5, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.h, ptr %i.t, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !37
  %i.x = add nsw i32 %3, 2
  %i.y = tail call i32 @N_VLinearCombination(i32 noundef %i.x, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6) #15
  %.not = icmp eq i32 %i.y, 0
  %. = select i1 %.not, i32 0, i32 -28
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ %., %._crit_edge ]
  ret i32 %.0
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @arkAdapt(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @arkAllocVecArray(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !172
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @N_VCloneVectorArray(i32 noundef %0, ptr noundef %1) #15 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !172
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = mul nsw i64 %3, %i.e
  %i.g = load i64, ptr %4, align 8, !tbaa !29
  %i.h = add nsw i64 %i.g, %i.f
  store i64 %i.h, ptr %4, align 8, !tbaa !29
  %i.i = mul nsw i64 %5, %i.e
  %i.j = load i64, ptr %6, align 8, !tbaa !29
  %i.k = add nsw i64 %i.j, %i.i
  store i64 %i.k, ptr %6, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @arkFreeVecArray(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !172    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.a, i32 noundef %0) #15
  store ptr null, ptr %1, align 8, !tbaa !172
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = mul nsw i64 %2, %i.b
  %i.d = load i64, ptr %3, align 8, !tbaa !29
  %i.e = sub nsw i64 %i.d, %i.c
  store i64 %i.e, ptr %3, align 8, !tbaa !29
  %i.f = mul nsw i64 %4, %i.b
  %i.g = load i64, ptr %5, align 8, !tbaa !29
  %i.h = sub nsw i64 %i.g, %i.f
  store i64 %i.h, ptr %5, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @arkResizeVec(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !37     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.a) #15
  store ptr null, ptr %6, align 8, !tbaa !37
  %i.c = tail call ptr @N_VClone(ptr noundef %5) #15 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !37
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -20, i32 noundef 3610, ptr noundef nonnull @__func__.arkResizeVec, ptr noundef nonnull @.str, ptr noundef nonnull @.str.150)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.e = tail call i32 %1(ptr noundef nonnull %i.a, ptr noundef %5, ptr noundef %2) #15
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -20, i32 noundef 3619, ptr noundef nonnull @__func__.arkResizeVec, ptr noundef nonnull @.str, ptr noundef nonnull @.str.151)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58
  %i.h = add nsw i64 %i.g, %3
  store i64 %i.h, ptr %i.f, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59
  %i.k = add nsw i64 %i.j, %4
  store i64 %i.k, ptr %i.i, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @arkResizeVecArray(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !172    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.a, i32 noundef %2) #15
  store ptr null, ptr %4, align 8, !tbaa !172
  %i.d = tail call ptr @N_VCloneVectorArray(i32 noundef %2, ptr noundef %3) #15 ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !172
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit27, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = tail call i32 %0(ptr noundef %i.h, ptr noundef %3, ptr noundef %1) #15
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %bb.d, label %.loopexit27

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = mul nsw i64 %5, %i.j
  %i.l = load i64, ptr %6, align 8, !tbaa !29
  %i.m = add nsw i64 %i.l, %i.k
  store i64 %i.m, ptr %6, align 8, !tbaa !29
  %i.n = mul nsw i64 %7, %i.j
  %i.o = load i64, ptr %8, align 8, !tbaa !29
  %i.p = add nsw i64 %i.o, %i.n
  store i64 %i.p, ptr %8, align 8, !tbaa !29
  br label %.loopexit27

.loopexit27:                                      ; preds = %.lr.ph, %bb.a, %.loopexit, %bb.c
  %.023 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %.loopexit ], [ 0, %.lr.ph ]
end_hunk_0
