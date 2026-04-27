inline.NumInlined: 40819
inline.NumDeleted: 11673
begin_hunk_0_@_ZN6duckdb13ClientContext5QueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15QueryParametersE:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %bb.e, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12SQLStatementESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %.pre = load ptr, ptr %5, align 16, !tbaa !1268
  %.pre198 = load ptr, ptr %i.i, align 8, !tbaa !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.t = icmp eq ptr %.pre, %.pre198
  br i1 %i.t, label %bb.m, label %.lr.ph

bb.f:                                             ; preds = %.noexc, %bb.d, %_ZN6duckdb13ClientContext11LockContextEv.exit
end_hunk_0
