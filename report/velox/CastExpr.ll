inline.NumInlined: 87492
inline.NumDeleted: 10545
begin_hunk_0_@_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIflEENS0_6StatusET_iiRT0_:bb.a

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.aj, %bb.n ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ], [ 1, %.preheader ], [ %i.al, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i
  %15 = tail call i32 @llvm.smin.i32(i32 %.012.i.fr, i32 7)
  %spec.select = sub nsw i32 7, %15
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.an = phi i32 [ 7, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  %i.ao = fpext nnan ninf float %1 to x86_fp80
  %16 = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %16
  %i.aq = load i128, ptr %i.ap, align 16, !tbaa !1071
  %i.ar = sitofp i128 %i.aq to x86_fp80
  %i.as = fmul nnan x86_fp80 %i.ao, %i.ar
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIdlEENS0_6StatusET_iiRT0_:bb.a

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.aj, %bb.n ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ], [ 1, %.preheader ], [ %i.al, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i
  %15 = tail call i32 @llvm.smin.i32(i32 %.012.i.fr, i32 15)
  %spec.select = sub nsw i32 15, %15
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.an = phi i32 [ 15, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  %i.ao = fpext nnan ninf double %1 to x86_fp80
  %16 = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %16
  %i.aq = load i128, ptr %i.ap, align 16, !tbaa !1071
  %i.ar = sitofp i128 %i.aq to x86_fp80
  %i.as = fmul nnan x86_fp80 %i.ao, %i.ar
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIfnEENS0_6StatusET_iiRT0_:bb.a

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ 1, %.preheader ], [ %i.am, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i
  %16 = tail call i32 @llvm.smin.i32(i32 %.012.i.fr, i32 7)
  %spec.select = sub nsw i32 7, %16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.ao = phi i32 [ 7, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ap = fpext nnan ninf float %1 to x86_fp80
  %17 = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %17
  %i.ar = load i128, ptr %i.aq, align 16, !tbaa !1071
  %i.as = sitofp i128 %i.ar to x86_fp80
  %i.at = fmul nnan x86_fp80 %i.ap, %i.as
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIdnEENS0_6StatusET_iiRT0_:bb.a

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ 1, %.preheader ], [ %i.am, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i
  %16 = tail call i32 @llvm.smin.i32(i32 %.012.i.fr, i32 15)
  %spec.select = sub nsw i32 15, %16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.ao = phi i32 [ 15, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ap = fpext nnan ninf double %1 to x86_fp80
  %17 = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %17
  %i.ar = load i128, ptr %i.aq, align 16, !tbaa !1071
  %i.as = sitofp i128 %i.ar to x86_fp80
  %i.at = fmul nnan x86_fp80 %i.ap, %i.as
end_hunk_3
