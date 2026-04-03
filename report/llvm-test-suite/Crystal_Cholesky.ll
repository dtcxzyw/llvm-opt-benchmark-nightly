begin_hunk_0
define dso_local void @Crystal_Cholesky(i32 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge172.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %3 to i64
end_hunk_0
begin_hunk_1

.preheader146:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %._crit_edge172.critedge, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader146
  %i.o = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
end_hunk_1
begin_hunk_2
  %indvar.next277 = add i64 %indvar276, 1
  br i1 %exitcond217.not, label %._crit_edge, label %.preheader141, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.g
  %i.ep = add nsw i32 %0, -1                      ; 2 uses
  %i.eq = sext i32 %i.ep to i64                   ; 3 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %3, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
end_hunk_2
begin_hunk_3
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = fdiv double %i.es, %i.ev
  store double %i.ew, ptr %i.er, align 8, !tbaa !8
  %4 = add nsw i32 %0, -2
  %5 = zext i32 %i.ep to i64
  %6 = zext i32 %4 to i64
  %7 = zext nneg i32 %0 to i64
  %invariant.op = add nsw i64 %7, -1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %._crit_edge169
  %indvars.iv223 = phi i64 [ %6, %._crit_edge ], [ %indvars.iv.next224, %._crit_edge169 ] ; 8 uses
  %indvars.iv218 = phi i64 [ %5, %._crit_edge ], [ %indvars.iv.next219, %._crit_edge169 ] ; 2 uses
  %i.ex = icmp slt i64 %indvars.iv223, %invariant.op
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv223 ; 3 uses
  br i1 %i.ex, label %.lr.ph168, label %.preheader.._crit_edge169_crit_edge
end_hunk_3
begin_hunk_4
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, -1
  br i1 %i.fp, label %.preheader, label %._crit_edge172, !llvm.loop !30

._crit_edge172.critedge:                          ; preds = %bb.a, %.preheader146
  %8 = add i32 %0, -1
  %9 = sext i32 %8 to i64                         ; 3 uses
  %10 = getelementptr inbounds [8 x i8], ptr %3, i64 %9 ; 2 uses
  %11 = load double, ptr %10, align 8, !tbaa !8
  %.idx.c = mul nsw i64 %9, 96
  %12 = getelementptr inbounds i8, ptr %1, i64 %.idx.c
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 %9
  %14 = load double, ptr %13, align 8, !tbaa !8
  %15 = fdiv double %11, %14
  store double %15, ptr %10, align 8, !tbaa !8
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge169, %._crit_edge172.critedge
  ret void
}

end_hunk_4
