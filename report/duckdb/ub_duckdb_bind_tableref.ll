inline.NumInlined: 9358
inline.NumDeleted: 4125
begin_hunk_0_@_ZN6duckdb24ConstructPivotExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEE:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.a) #27, !noalias !910
  br label %common.resume

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder9BindPivotERNS_8PivotRefENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE:bb.a
  br label %bb.rz

.loopexit.i503:                                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i199.i
  %.sroa.0375.2.ph.i = phi ptr [ %.sroa.0375.1526.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i199.i ], [ null, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i241.i ]
  %lpad.loopexit.i504 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ry
end_hunk_1
