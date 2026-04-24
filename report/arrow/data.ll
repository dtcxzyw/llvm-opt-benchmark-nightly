inline.NumInlined: 1754
inline.NumDeleted: 723
begin_hunk_0_@_ZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanE:bb.a
  %i.f = phi i1 [ false, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit71 ], [ true, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit ], [ true, %tailrecurse.i ]
  %exitcond.not = phi i1 [ false, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit71 ], [ true, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit ], [ false, %tailrecurse.i ]
  %exitcond.not.1 = phi i1 [ false, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit71 ], [ false, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit ], [ true, %tailrecurse.i ]
  %.0.i = phi i32 [ 3, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit71 ], [ 1, %_ZN5arrow12_GLOBAL__N_113GetNumBuffersERKNS_8DataTypeE.exit.loopexit ], [ 2, %tailrecurse.i ] ; 2 uses
  %i.g = getelementptr i8, ptr %.tr39, i64 32     ; 3 uses
  store ptr @_ZZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanEE6kZeros, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr i8, ptr %.tr39, i64 40
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal19FillZeroLengthArrayEPKNS_8DataTypeEPNS_9ArraySpanE:bb.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit.thread
  %narrow75 = mul nuw nsw i32 %.0.i, 24
  %2 = zext nneg i32 %narrow75 to i64
  %scevgep = getelementptr i8, ptr %i.g, i64 %2
  %3 = tail call i32 @llvm.usub.sat.i32(i32 2, i32 %.0.i)
  %narrow = mul nuw nsw i32 %3, 24
  %narrow64 = add nuw nsw i32 %narrow, 24
  %4 = zext nneg i32 %narrow64 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %4, i1 false), !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5arrow8internal24may_have_validity_bitmapENS_4Type4typeE.exit.thread
end_hunk_1
begin_hunk_2_@llvm.umin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_2
