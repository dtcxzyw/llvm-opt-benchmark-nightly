inline.NumInlined: 12
inline.NumDeleted: 11
begin_hunk_0_@CompressAlphaJob:bb.a
  %.147.i.i = phi i32 [ %i.mh, %bb.u ], [ 1, %bb.p ] ; 2 uses
  %i.ml = add nuw nsw i32 %.04865.i.i, 1
  %i.mm = lshr i32 %.04566.i.i, 1                 ; 2 uses
  %4 = icmp ne i32 %.147.i.i, 0
  %i.mn = icmp ne i32 %i.mm, 0
  %i.mo = and i1 %i.mn, %4
  br i1 %i.mo, label %bb.p, label %bb.w, !llvm.loop !61
end_hunk_0
begin_hunk_1_@EncodeAlphaInternal:bb.a
  store i32 1, ptr %i.w, align 4, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.x, align 4, !tbaa !36
  %12 = icmp eq i32 %5, 0
  %13 = icmp eq i32 %6, 6
  %or.cond.i = and i1 %12, %13
  %i.y = sitofp i32 %6 to float
  %i.z = fmul nnan float %i.y, 8.000000e+00
  %i.aa = select i1 %or.cond.i, float 1.000000e+02, float %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !79
  %i.ac = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
end_hunk_1
