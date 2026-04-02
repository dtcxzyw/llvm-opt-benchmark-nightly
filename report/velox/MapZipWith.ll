begin_hunk_0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %8 = call i32 @memcmp(ptr noundef nonnull dereferenceable(4) %i.r, ptr noundef nonnull dereferenceable(4) %i.t, i64 noundef 4) #31
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1
  br label %_ZNK8facebook5velox10StringViewssERKS1_.exit

_ZNK8facebook5velox10StringViewssERKS1_.exit:     ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.1.i.i = phi i32 [ %8, %bb.d ], [ %i.aa, %bb.f ], [ %i.ai, %bb.h ], [ %i.ap, %bb.i ]
  %i.aq = icmp slt i32 %.1.i.i, 0
  br i1 %i.aq, label %_ZN8facebook5velox12SimpleVectorINS0_10StringViewEE19comparePrimitiveAscERKS2_S5_.exit, label %bb.j

end_hunk_1
begin_hunk_2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
end_hunk_2
