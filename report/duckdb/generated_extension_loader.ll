inline.NumInlined: 229
inline.NumDeleted: 111
begin_hunk_0_@_ZN6duckdb15ExtensionHelper17LoadAllExtensionsERNS_6DuckDBE:bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.05.09 = phi ptr [ %i.i, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.09) ]
  %i.h = invoke noundef zeroext i8 @_ZN6duckdb15ExtensionHelper13LoadExtensionERNS_6DuckDBERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09)
          to label %bb.c unwind label %bb.d       ; 0 uses

end_hunk_0
