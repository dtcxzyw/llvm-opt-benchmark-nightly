inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0INtNtB29_3vec3VecBZ_EEB17_:bb.a
; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainxNvYxNtNtB8_3cmp10PartialOrd2ltINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainxNvYxNtNtB8_3cmp10PartialOrd2ltINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCs6Po7BT7Nknu_5alloc5sliceINtNtB7_3vec3VecxEINtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable8BufGuardxE13with_capacityCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCs6Po7BT7Nknu_5alloc5sliceINtNtB7_3vec3VecxEINtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable8BufGuardxE19as_uninit_slice_mutCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

end_hunk_1
