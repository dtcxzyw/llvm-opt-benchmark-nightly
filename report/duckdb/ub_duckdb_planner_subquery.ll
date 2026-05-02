inline.NumInlined: 3363
inline.NumDeleted: 1557
begin_hunk_0_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a

bb.ce:                                            ; preds = %bb.cd
  %i.mp = load i8, ptr %i.mk, align 1, !tbaa !40, !range !101, !noundef !50
  %197 = trunc nuw i8 %i.mp to i1
  %198 = or i1 %i.mo, %197
  %199 = zext i1 %198 to i8
  store i8 %199, ptr %i.mk, align 1, !tbaa !40
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.02887.03558, i64 8 ; 2 uses
  %.not3052 = icmp eq ptr %i.mq, %i.mj
  br i1 %.not3052, label %._crit_edge3561, label %bb.cc
end_hunk_0
begin_hunk_1_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a

bb.cy:                                            ; preds = %bb.cx
  %i.oo = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %200 = select i1 %i.on, i8 %i.oo, i8 0
  store i8 %200, ptr %3, align 1, !tbaa !340
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.02883.03550, i64 8 ; 2 uses
  %.not3050 = icmp eq ptr %i.op, %i.og
  br i1 %.not3050, label %._crit_edge3553, label %.lr.ph3552
end_hunk_1
begin_hunk_2_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a
bb.dc:                                            ; preds = %bb.db
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !75
  %.not840.not = icmp eq i8 %i.ov, 57
  %i.ow = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %201 = select i1 %.not840.not, i8 0, i8 %i.ow
  store i8 %201, ptr %3, align 1, !tbaa !340
  br i1 %i.at, label %bb.dp, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
end_hunk_2
begin_hunk_3_@_ZN6duckdb21FlattenDependentJoins29PushDownDependentJoinInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERbm:bb.a

bb.ey:                                            ; preds = %bb.ex
  %i.wt = load i8, ptr %3, align 1, !tbaa !340, !range !101, !noundef !50
  %202 = select i1 %i.ws, i8 %i.wt, i8 0
  store i8 %202, ptr %3, align 1, !tbaa !340
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.02873.03520, i64 8 ; 2 uses
  %.not3046 = icmp eq ptr %i.wu, %i.wk
  br i1 %.not3046, label %._crit_edge3523, label %.lr.ph3522
end_hunk_3
begin_hunk_4_@_ZN6duckdb24HasCorrelatedExpressions12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
  %.lcssa = phi i8 [ 0, %.preheader ], [ 1, %_ZNK6duckdb17CorrelatedColumnsixERKm.exit ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !367, !range !101, !noundef !50
  %i.ar = or i8 %.lcssa, %i.aq
  store i8 %i.ar, ptr %i.ap, align 8, !tbaa !367
  br label %bb.m

end_hunk_4
