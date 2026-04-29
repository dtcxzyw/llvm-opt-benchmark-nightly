begin_hunk_0_@hypre_SMG3RAPPeriodicSym:bb.a

.preheader704.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader708.us.us.us.us.us
  %.1578721.us.us.us.us.us.us = phi i32 [ 0, %.preheader708.us.us.us.us.us ], [ %i.ez, %._crit_edge.us.us.us.us.us.us ]
  %.1624720.us.us.us.us.us.us = phi i32 [ %.0623724.us.us.us.us.us, %.preheader708.us.us.us.us.us ], [ %i.ey, %._crit_edge.us.us.us.us.us.us ] ; 4 uses
  %i.cx = sext i32 %.1624720.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1160, label %scalar.ph1159.preheader, label %vector.scevcheck1054

end_hunk_0
begin_hunk_1_@hypre_SMG3RAPPeriodicSym:bb.a

vector.ph1161:                                    ; preds = %vector.memcheck1055
  %i.df = add nsw i64 %n.vec1163, %i.cx           ; 2 uses
  %invariant.op = add i32 %.1624720.us.us.us.us.us.us, %.neg
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %vector.ph1161
  %index1165 = phi i64 [ 0, %vector.ph1161 ], [ %index.next1176, %vector.body1164 ] ; 3 uses
  %offset.idx1166 = add i64 %index1165, %i.cx     ; 7 uses
  %i.dg = trunc i64 %index1165 to i32
  %.reass.a = add i32 %i.dg, %invariant.op
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %offset.idx1166
  %wide.load1168.a = load <2 x double>, ptr %i.dh, align 8, !tbaa !35, !alias.scope !64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.au, i64 %offset.idx1166 ; 2 uses
end_hunk_1
begin_hunk_2_@hypre_SMG3RAPPeriodicSym:bb.a

.preheader702.us.us.us.us.us.us:                  ; preds = %._crit_edge774.us.us.us.us.us.us, %.preheader706.us.us.us.us.us
  %.5582776.us.us.us.us.us.us = phi i32 [ 0, %.preheader706.us.us.us.us.us ], [ %i.lc, %._crit_edge774.us.us.us.us.us.us ]
  %.7630775.us.us.us.us.us.us = phi i32 [ %.6629779.us.us.us.us.us, %.preheader706.us.us.us.us.us ], [ %i.lb, %._crit_edge774.us.us.us.us.us.us ] ; 6 uses
  %i.jc = sext i32 %.7630775.us.us.us.us.us.us to i64 ; 6 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.scevcheck

end_hunk_2
begin_hunk_3_@hypre_SMG3RAPPeriodicSym:bb.a

vector.ph1004:                                    ; preds = %vector.memcheck946
  %i.jp = add nsw i64 %n.vec1006, %i.jc           ; 2 uses
  %invariant.op1198 = sub i32 %.7630775.us.us.us.us.us.us, %i.ai
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1004
  %index1008 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1016, %vector.body1007 ] ; 3 uses
  %offset.idx1009 = add i64 %index1008, %i.jc     ; 4 uses
  %i.jq = trunc i64 %index1008 to i32
  %.reass1199 = add i32 %i.jq, %invariant.op1198  ; 2 uses
  %i.jr = add i32 %.reass1199, -2
  %i.js = getelementptr inbounds [8 x i8], ptr %.1597, i64 %offset.idx1009
  %wide.load = load <2 x double>, ptr %i.js, align 8, !tbaa !35, !alias.scope !94
  %i.jt = sext i32 %i.jr to i64
end_hunk_3
begin_hunk_4_@hypre_SMG3RAPPeriodicSym:bb.a
  store <2 x double> %i.jx, ptr %i.jw, align 8, !tbaa !35, !alias.scope !99, !noalias !101
  %i.jy = getelementptr inbounds [8 x i8], ptr %.1599, i64 %offset.idx1009
  %wide.load1013.a = load <2 x double>, ptr %i.jy, align 8, !tbaa !35, !alias.scope !105
  %i.jz = sext i32 %.reass1199 to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %.1601, i64 %i.jz
  %wide.load1014 = load <2 x double>, ptr %i.ka, align 8, !tbaa !35, !alias.scope !106
  %i.kb = fadd <2 x double> %wide.load1013.a, %wide.load1014
end_hunk_4
