begin_hunk_0_@ParseMatrix:bb.a
.tail:                                            ; preds = %sub_0, %sub_1
  %i.as = phi i32 [ %i.an, %sub_0 ], [ %i.ar, %sub_1 ]
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %2, label %bb.p

bb.p:                                             ; preds = %.tail
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.2, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %2

2:                                                ; preds = %bb.p, %.tail
  %3 = load i32, ptr %i.c, align 4, !tbaa !4
  %.not72 = icmp eq i32 %3, 0
  %4 = sext i32 %i.ag to i64                      ; 3 uses
  br i1 %.not72, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds [32 x i8], ptr @ScalingList4x4input, i64 %4
  br label %bb.q

7:                                                ; preds = %2
  %8 = getelementptr inbounds [128 x i8], ptr @ScalingList8x8input, i64 %4
  br label %bb.q

bb.q:                                             ; preds = %7, %5
  %matrix8x8_check.sink = phi ptr [ @matrix8x8_check, %7 ], [ @matrix4x4_check, %5 ]
  %.058 = phi i64 [ 64, %7 ], [ 16, %5 ]
  %9 = phi i32 [ 64, %7 ], [ 16, %5 ]
  %.0 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %i.at = getelementptr inbounds [4 x i8], ptr %matrix8x8_check.sink, i64 %4
  store i32 1, ptr %i.at, align 4, !tbaa !4
  %i.au = add nuw nsw i32 %.06082, 2              ; 2 uses
  %wide.trip.count = zext i32 %i.au to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %wide.trip.count
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.t
end_hunk_0
begin_hunk_1_@ParseMatrix:bb.a
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %indvars.iv
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.058
  br i1 %exitcond.not, label %bb.u, label %bb.r, !llvm.loop !17

bb.u:                                             ; preds = %bb.t
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  %i.bb = add nuw nsw i32 %i.au, %9               ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.ab
  br i1 %i.bc, label %.lr.ph84, label %._crit_edge85, !llvm.loop !18

end_hunk_1
