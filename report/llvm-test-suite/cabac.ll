inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@write_significance_map:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.058 = phi i64 [ 0, %.thread ], [ 1, %bb.d ]   ; 2 uses
  %.058.a = phi i32 [ 0, %.thread ], [ 1, %bb.d ]
  %.057 = phi i32 [ %i.d, %.thread ], [ %i.c, %bb.d ] ; 3 uses
  %.0 = phi ptr [ %3, %.thread ], [ %i.y, %bb.d ] ; 2 uses
  %i.z = icmp slt i32 %.058.a, %.057              ; 2 uses
end_hunk_0
begin_hunk_1_@write_significance_map:bb.a
  %i.aa = getelementptr inbounds [8 x i8], ptr @pos2ctx_map, i64 %i.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.ac = getelementptr inbounds [8 x i8], ptr @pos2ctx_last, i64 %i.a
  %wide.trip.count = zext nneg i32 %.057 to i64
  br label %bb.f

end_hunk_1
begin_hunk_2_@write_significance_map:bb.a
  %i.ad = getelementptr inbounds [8 x i8], ptr @pos2ctx_map_int, i64 %i.a
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.af = getelementptr inbounds [8 x i8], ptr @pos2ctx_last, i64 %i.a
  %wide.trip.count76 = zext nneg i32 %.057 to i64
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %.058, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.05465 = phi i32 [ %4, %.lr.ph ], [ %.1, %bb.h ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
end_hunk_2
begin_hunk_3_@write_significance_map:bb.a
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !95

bb.i:                                             ; preds = %.lr.ph69, %bb.k
  %indvars.iv73 = phi i64 [ %.058, %.lr.ph69 ], [ %indvars.iv.next74, %bb.k ] ; 4 uses
  %.268 = phi i32 [ %4, %.lr.ph69 ], [ %.3, %bb.k ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv73
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
end_hunk_3
