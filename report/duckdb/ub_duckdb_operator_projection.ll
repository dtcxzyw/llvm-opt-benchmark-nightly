inline.NumInlined: 2100
inline.NumDeleted: 1255
begin_hunk_0_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a

bb.j:                                             ; preds = %.preheader385, %bb.an
  %.pre527529 = phi i64 [ %.pre, %.preheader385 ], [ %.pre527530, %bb.an ] ; 5 uses
  %.0144476 = phi i64 [ 0, %.preheader385 ], [ %.1572, %bb.an ] ; 14 uses
  %.0151475 = phi i64 [ 0, %.preheader385 ], [ %i.ke, %bb.an ] ; 3 uses
  %i.da = load i64, ptr %i.aq, align 8, !tbaa !236
  %i.db = icmp ult i64 %.pre527529, %i.da
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 80                ; 2 uses
  %23 = insertelement <2 x i64> poison, i64 %.0144476, i64 0
  %invariant.op731 = add i64 %.0144476, 1
  %invariant.op734 = add i64 %.0144476, 1
  br label %bb.m

._crit_edge474.loopexit:                          ; preds = %._crit_edge452.split.us
end_hunk_1
begin_hunk_2_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hy = phi i64 [ %i.hw, %vector.ph ], [ %i.ik, %vector.body ] ; 2 uses
  %offset.idx625 = add i64 %i.fn, %index          ; 3 uses
  %i.hz = add i64 %offset.idx625, %.0144476       ; 2 uses
  %.reass728 = add i64 %offset.idx625, %invariant.op731
  %i.ia = insertelement <2 x i64> poison, i64 %i.hz, i64 0
  %i.ib = insertelement <2 x i64> %i.ia, i64 %.reass728, i64 1
  %i.ic = insertelement <2 x i64> poison, i64 %offset.idx625, i64 0
  %24 = add <2 x i64> %i.ic, %23
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.pre523, i64 %i.hz ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store <2 x i32> zeroinitializer, ptr %i.id, align 4, !tbaa !3
  store <2 x i32> zeroinitializer, ptr %i.ie, align 4, !tbaa !3
  %i.if = add i64 %i.hy, 3
  %i.ig = trunc <2 x i64> %i.ib to <2 x i32>
  %i.ih = trunc <2 x i64> %24 to <2 x i32>
  %25 = shufflevector <2 x i32> %i.ih, <2 x i32> poison, <2 x i32> zeroinitializer
  %26 = add <2 x i32> %25, <i32 2, i32 3>
  %i.ii = getelementptr [4 x i8], ptr %i.hx, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store <2 x i32> %i.ig, ptr %i.ii, align 4, !tbaa !3
  store <2 x i32> %26, ptr %i.ij, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ik = add i64 %i.hy, 4
  %i.il = icmp eq i64 %index.next, %n.vec
end_hunk_2
