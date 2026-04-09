inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@decode_mcu_AC_refine:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 360
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 1384
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ai
  %.0129237 = phi i32 [ 0, %.lr.ph ], [ %.1130, %bb.ai ] ; 10 uses
  %.0133236 = phi i32 [ %i.bg, %.lr.ph ], [ %i.em, %bb.ai ] ; 5 uses
  %.0138235 = phi i32 [ %i.ax, %.lr.ph ], [ %.11, %bb.ai ] ; 3 uses
  %.0143234 = phi i64 [ %i.av, %.lr.ph ], [ %.11154, %bb.ai ] ; 2 uses
  %i.bm = icmp slt i32 %.0138235, 8
end_hunk_0
begin_hunk_1_@decode_mcu_AC_refine:bb.a
  %i.df = sext i32 %.0133236 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.0133236, i32 %i.e)
  %i.dg = add i32 %smax, 1
  %3 = call i32 @llvm.smax.i32(i32 %.0133236, i32 %i.e)
  %smax267 = sext i32 %3 to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ag, %bb.y
end_hunk_1
begin_hunk_2_@decode_mcu_AC_refine:bb.a
  %.10153 = phi i64 [ %.9152, %bb.ad ], [ %.8151, %bb.af ], [ %.9152, %bb.ae ], [ %.9152, %.sink.split ] ; 2 uses
  %.10 = phi i32 [ %i.dq, %bb.ad ], [ %.8, %bb.af ], [ %i.dq, %bb.ae ], [ %i.dq, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %smax267
  br i1 %exitcond.not, label %.split.loop.exit316, label %bb.z, !llvm.loop !102

.split.loop.exit:                                 ; preds = %bb.af
  %i.ec = trunc nsw i64 %indvars.iv to i32
end_hunk_2
