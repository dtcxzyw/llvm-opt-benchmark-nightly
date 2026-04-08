inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@compress_first_pass:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51 ; 2 uses
  %i.cb = mul i32 %i.ca, %i.by
  %i.cc = tail call ptr %i.bu(ptr noundef nonnull %0, ptr noundef %i.bx, i32 noundef %i.cb, i32 noundef %i.ca, i32 noundef 0) #6, !inline_history !90
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bv
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = load i32, ptr %i.bh, align 8, !tbaa !66
  %i.cf = sext i32 %i.ce to i64
  %i.cg = icmp slt i64 %indvars.iv.next.i, %i.cf
  br i1 %i.cg, label %bb.g, label %compress_output.exit, !llvm.loop !91

compress_output.exit:                             ; preds = %bb.g, %._crit_edge41
  %i.ch = call range(i32 0, 2) i32 @compress_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
end_hunk_0
begin_hunk_1_@compress_output:bb.a
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !66
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = call i32 @compress_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
end_hunk_1
begin_hunk_2_@llvm.assume
!87 = !{!36, !10, i64 56}
!88 = distinct !{!88, !50}
!89 = distinct !{!89, !50}
!90 = !{ptr @compress_output}
!91 = distinct !{!91, !50}
end_hunk_2
