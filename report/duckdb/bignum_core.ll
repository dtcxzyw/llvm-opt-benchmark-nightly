inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@_Z34mbedtls_mpi_core_bigendian_to_hostPmm:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define hidden noundef i64 @_Z28mbedtls_mpi_core_uint_le_mpimPKmm(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_Z28mbedtls_mpi_core_uint_le_mpimPKmm:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define hidden noundef i64 @_Z22mbedtls_mpi_core_lt_ctPKmS0_m(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z22mbedtls_mpi_core_lt_ctPKmS0_m:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z28mbedtls_mpi_core_cond_assignPmPKmmm(ptr noundef captures(address) %0, ptr noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, %1
end_hunk_2
begin_hunk_3_@_Z28mbedtls_mpi_core_cond_assignPmPKmmm:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z26mbedtls_mpi_core_cond_swapPmS_mm(ptr noundef captures(address) %0, ptr noundef captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, %1
end_hunk_3
begin_hunk_4_@_Z20mbedtls_mpi_core_addPmPKmS1_m:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i64 0, 3) i64 @_Z23mbedtls_mpi_core_add_ifPmPKmmj(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
end_hunk_4
begin_hunk_5_@_Z24mbedtls_mpi_core_sub_intPmPKmmm:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef range(i64 -1, 1) i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
end_hunk_5
begin_hunk_6_@llvm.assume
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
