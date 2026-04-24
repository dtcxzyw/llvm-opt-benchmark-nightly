inline.NumInlined: 2667
inline.NumDeleted: 1309
begin_hunk_0_@_RINvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB7_5table10DeltaTable5mergeReECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.g, %bb.h
  %.pn.ph = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.aw, %bb.t ], [ %i.z, %bb.h ], [ %i.aw, %bb.u ]
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
end_hunk_0
begin_hunk_1_@_RINvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB7_5table10DeltaTable5mergeReECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.v

.body7:                                           ; preds = %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.pn19 = phi { ptr, i32 } [ %.pn.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %i.af, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(120) %1) #26
          to label %bb.y unwind label %bb.v

end_hunk_1
