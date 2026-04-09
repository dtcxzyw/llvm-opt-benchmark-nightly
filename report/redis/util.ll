inline.NumInlined: 32
inline.NumDeleted: 8
begin_hunk_0_@fixedpoint_d2string:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.073 = phi i32 [ 1, %bb.z ], [ %i.at, %bb.y ]  ; 4 uses
  %i.av = zext nneg i32 %.073 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.068, i64 %i.av ; 2 uses
  store i8 46, ptr %i.aw, align 1, !tbaa !13
  %i.ax = add nuw nsw i32 %3, 1
  %i.ay = add nuw nsw i32 %i.ax, %.073            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 48, i64 %i.l, i1 false)
  %4 = add nuw nsw i32 %.073, %3                  ; 2 uses
  %i.ba = icmp ugt i64 %.175, 99
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.06992 = phi i32 [ %spec.select, %.lr.ph ], [ %4, %bb.aa ] ; 3 uses
  %.291 = phi i64 [ %i.bd, %.lr.ph ], [ %.175, %bb.aa ] ; 3 uses
  %i.bb = urem i64 %.291, 100
  %i.bc = shl nuw nsw i64 %i.bb, 1
end_hunk_0
begin_hunk_1_@fixedpoint_d2string:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.aa
  %.2.lcssa = phi i64 [ %.175, %bb.aa ], [ %i.bd, %.lr.ph ] ; 3 uses
  %.069.lcssa = phi i32 [ %4, %bb.aa ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.bp = icmp samesign ult i64 %.2.lcssa, 10
  br i1 %i.bp, label %bb.ab, label %bb.ac

end_hunk_1
