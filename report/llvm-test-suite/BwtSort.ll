inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@BlockSort:.preheader206
  br i1 %i.jo, label %.lr.ph232, label %.lr.ph228.us

.lr.ph232:                                        ; preds = %._crit_edge229.us, %.lr.ph232._crit_edge
  %.9231 = phi i32 [ %i.ke, %.lr.ph232._crit_edge ], [ 0, %._crit_edge229.us ] ; 2 uses
  %i.jq = zext i32 %.9231 to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !4  ; 3 uses
end_hunk_0
begin_hunk_1_@BlockSort:.preheader206
  %i.ju = and i32 %i.jt, 1023                     ; 2 uses
  %i.jv = and i32 %i.js, 1073741824
  %.not186 = icmp eq i32 %i.jv, 0
  %.pre = add nuw i32 %.9231, 1                   ; 2 uses
  br i1 %.not186, label %.lr.ph232._crit_edge, label %bb.q

bb.q:                                             ; preds = %.lr.ph232
  %i.jw = zext i32 %.pre to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4  ; 2 uses
  %i.jz = lshr i32 %i.jy, 10
end_hunk_1
begin_hunk_2_@BlockSort:.preheader206
  store i32 %i.kc, ptr %i.jx, align 4, !tbaa !4
  br label %.lr.ph232._crit_edge

.lr.ph232._crit_edge:                             ; preds = %.lr.ph232, %bb.q
  %.0 = phi i32 [ %i.kb, %bb.q ], [ %i.ju, %.lr.ph232 ]
  %i.kd = and i32 %i.js, 1048575
  store i32 %i.kd, ptr %i.jr, align 4, !tbaa !4
  %i.ke = add i32 %.pre, %.0                      ; 2 uses
  %i.kf = icmp ult i32 %i.ke, %2
  br i1 %i.kf, label %.lr.ph232, label %._crit_edge233, !llvm.loop !31

end_hunk_2
