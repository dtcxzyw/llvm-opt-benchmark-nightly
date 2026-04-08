inline.NumInlined: 2100
inline.NumDeleted: 1255
begin_hunk_0_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader: ; preds = %.lr.ph451
  %.pre524 = load i64, ptr %i.hm, align 8, !tbaa !86 ; 6 uses
  %.pre525 = load ptr, ptr %i.he, align 8, !tbaa !382 ; 5 uses
  %i.hn = sub nuw nsw i64 %i.di, %i.fn            ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.hn, 6
  br i1 %min.iters.check, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader679, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
  br i1 %diff.check, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader679, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hn, 4092                    ; 4 uses
  %i.hu = add i64 %.pre524, %n.vec
  %i.hv = add nuw nsw i64 %i.fn, %n.vec
  %i.hw = add i64 %.pre524, 1
  %i.hx = getelementptr [4 x i8], ptr %.pre525, i64 %.pre524
  br label %vector.body
end_hunk_1
begin_hunk_2_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader679: ; preds = %vector.memcheck, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader, %middle.block
  %.ph = phi i64 [ %.pre524, %vector.memcheck ], [ %.pre524, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader ], [ %i.hu, %middle.block ] ; 3 uses
  %.0156450.us.ph = phi i64 [ %i.fn, %vector.memcheck ], [ %i.fn, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader ], [ %i.hv, %middle.block ] ; 5 uses
  %i.in = sub nsw i64 %i.di, %.0156450.us.ph
  %.neg = add nsw i64 %.0156450.us.ph, 1
  %xtraiter704 = and i64 %i.in, 1
  %lcmp.mod705.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol
end_hunk_2
begin_hunk_3_@_ZN6duckdb14PhysicalUnnest15ExecuteInternalERNS_16ExecutionContextERNS_9DataChunkES4_RNS_13OperatorStateERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEEb:bb.a
  %i.ir = trunc i64 %i.io to i32
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.pre525, i64 %.ph
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !3
  %i.it = add nuw nsw i64 %.0156450.us.ph, 1
  br label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol.loopexit: ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.prol, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit200.us.preheader679
end_hunk_3
