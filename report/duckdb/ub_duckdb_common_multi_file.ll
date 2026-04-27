inline.NumInlined: 8566
inline.NumDeleted: 3991
begin_hunk_0_@_ZN6duckdb22ConstructMapExpressionERNS_13ClientContextEmRNS_15ColumnMapResultERKNS_25MultiFileColumnDefinitionEb:.noexc
  store i64 %i.ab, ptr %0, align 8, !tbaa !222
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit205

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 13 uses
end_hunk_0
