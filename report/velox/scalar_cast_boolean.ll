inline.NumInlined: 711
inline.NumDeleted: 384
begin_hunk_0_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_:bb.a
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ae, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273, !nonnull !236, !align !237 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !194 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !194
  %4 = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !100 ; 2 uses
  %5 = icmp ne <8 x i64> %4, zeroinitializer
  %6 = icmp eq <8 x i64> %4, zeroinitializer
  %7 = shufflevector <8 x i1> %5, <8 x i1> %6, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = select <8 x i1> %7, <8 x i8> <i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> <i8 0, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %9 = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %8)
  %i.ae = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store i8 %9, ptr %.14156, align 1, !tbaa !26
  %i.af = icmp samesign ugt i64 %.in, 1
  br i1 %i.af, label %.preheader48, label %._crit_edge57, !llvm.loop !276

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_:bb.a
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ae, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !279, !nonnull !236, !align !237 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !205 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !205
  %4 = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !100 ; 2 uses
  %5 = icmp ne <8 x i64> %4, zeroinitializer
  %6 = icmp eq <8 x i64> %4, zeroinitializer
  %7 = shufflevector <8 x i1> %5, <8 x i1> %6, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = select <8 x i1> %7, <8 x i8> <i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> <i8 0, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>
  %9 = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %8)
  %i.ae = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store i8 %9, ptr %.14156, align 1, !tbaa !26
  %i.af = icmp samesign ugt i64 %.in, 1
  br i1 %i.af, label %.preheader48, label %._crit_edge57, !llvm.loop !282

end_hunk_1
begin_hunk_2_@llvm.fshr.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v8i8(<8 x i8>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
