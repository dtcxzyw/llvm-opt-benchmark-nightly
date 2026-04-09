inline.NumInlined: 2160
inline.NumDeleted: 1234
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_123SortedAggregateFunction8FinalizeERNS_6VectorERNS_18AggregateInputDataES3_mm:bb.a
.outer:                                           ; preds = %.preheader478, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.0158.ph = phi i64 [ 0, %.preheader478 ], [ %.2160, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ]
  %.0151.ph = phi i64 [ 0, %.preheader478 ], [ %i.pr, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.0149.ph = phi i64 [ 0, %.preheader478 ], [ %.1150, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.0149.ph, i64 %3)
  br label %bb.al

bb.al:                                            ; preds = %.outer, %bb.cr
  %.0158 = phi i64 [ %i.jh, %bb.cr ], [ %.0158.ph, %.outer ] ; 3 uses
  %.0149 = phi i64 [ %i.ji, %bb.cr ], [ %.0149.ph, %.outer ] ; 6 uses
  %exitcond609.not = icmp eq i64 %.0149, %umax
  br i1 %exitcond609.not, label %.loopexit479, label %bb.as

bb.am:                                            ; preds = %._crit_edge
  %i.dp = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_123SortedAggregateFunction8FinalizeERNS_6VectorERNS_18AggregateInputDataES3_mm:bb.a
bb.cr:                                            ; preds = %bb.cq
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !216
  %i.jh = add i64 %i.jg, %.0158                   ; 2 uses
  %i.ji = add i64 %.0149, 1                       ; 3 uses
  %i.jj = icmp ult i64 %i.ji, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br i1 %i.jj, label %bb.al, label %bb.cx
end_hunk_1
