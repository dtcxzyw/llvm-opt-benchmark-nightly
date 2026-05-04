inline.NumInlined: 19
inline.NumDeleted: 9
begin_hunk_0

@mbedtls_ct_zero = hidden global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden noundef range(i32 0, 256) i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
end_hunk_0
begin_hunk_1_@_Z17mbedtls_ct_memcmpPKvS0_m:bb.a
  ret i32 %.013.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z23mbedtls_ct_memmove_leftPvmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
end_hunk_1
begin_hunk_2_@_Z23mbedtls_ct_memmove_leftPvmm:bb.a
  br label %._crit_edge30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m(i64 noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
end_hunk_2
begin_hunk_3_@_Z20mbedtls_ct_memcpy_ifmPhPKhS1_m:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_Z24mbedtls_ct_memcpy_offsetPhPKhmmmm(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not10 = icmp ugt i64 %3, %4
end_hunk_3
begin_hunk_4_@_Z21mbedtls_ct_zeroize_ifmPvm:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

end_hunk_4
