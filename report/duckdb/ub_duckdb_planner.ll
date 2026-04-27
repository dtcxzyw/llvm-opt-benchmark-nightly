inline.NumInlined: 13013
inline.NumDeleted: 6154
begin_hunk_0_@_ZN6duckdb20PushVarcharCollationERNS_13ClientContextERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEERKNS_11LogicalTypeENS_13CollationTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit, %bb.bu
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %bb.bu ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
end_hunk_0
