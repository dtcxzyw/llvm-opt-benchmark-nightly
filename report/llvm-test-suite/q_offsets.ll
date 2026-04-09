inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@ParseQOffsetMatrix:bb.a
  br i1 %i.ac, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %._crit_edge, %bb.u
  %.06082 = phi i32 [ %i.bf, %bb.u ], [ 0, %._crit_edge ] ; 2 uses
  %i.ad = zext nneg i32 %.06082 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 3 uses
end_hunk_0
begin_hunk_1_@ParseQOffsetMatrix:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = getelementptr inbounds [4 x i8], ptr %offset4x4_check.offset8x8_check, i64 %i.au
  store i32 1, ptr %i.ay, align 4, !tbaa !4
  %2 = add nuw nsw i32 %.06082, 2                 ; 2 uses
  %3 = zext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %. to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.t
  %indvars.iv = phi i64 [ 0, %bb.q ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.az = load ptr, ptr %gep, align 8, !tbaa !29  ; 2 uses
  %i.ba = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.az, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.b) #12
  %.not73 = icmp eq i32 %i.ba, 1
end_hunk_1
begin_hunk_2_@ParseQOffsetMatrix:bb.a

bb.u:                                             ; preds = %bb.t
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  %i.bf = add nuw nsw i32 %2, %.                  ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.ab
  br i1 %i.bg, label %.lr.ph84, label %._crit_edge85, !llvm.loop !36

end_hunk_2
