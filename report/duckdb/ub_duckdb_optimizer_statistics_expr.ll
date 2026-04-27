inline.NumInlined: 927
inline.NumDeleted: 464
begin_hunk_0_@_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_24BoundAggregateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
  br label %bb.aj

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.sroa.032.038 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.032.038)
          to label %bb.f unwind label %bb.m
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_19BoundCaseExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit15
  %.sroa.016.023 = phi ptr [ %i.p, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit15 ], [ %i.c, %bb.a ] ; 3 uses
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.016.023)
          to label %bb.b unwind label %bb.e

end_hunk_1
begin_hunk_2_@_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_2
begin_hunk_3_@_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_23BoundOperatorExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE:bb.a

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %.042186 = phi i1 [ true, %.lr.ph ], [ %spec.select, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ]
  %.sroa.0173.0185 = phi ptr [ %i.d, %.lr.ph ], [ %i.bb, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZN6duckdb20StatisticsPropagator19PropagateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0173.0185)
          to label %bb.f unwind label %bb.j
end_hunk_3
begin_hunk_4_@_ZN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
_ZN6duckdb6vectorINS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_4
begin_hunk_5_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_5
