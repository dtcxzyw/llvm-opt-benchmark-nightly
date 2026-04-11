inline.NumInlined: 711
inline.NumDeleted: 384
begin_hunk_0_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_:bb.a
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ae, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !273, !nonnull !236, !align !237 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !194 ; 9 uses
  %4 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %5 = load i64, ptr %.promoted53, align 8, !tbaa !100
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  %9 = load i64, ptr %4, align 8, !tbaa !100
  %.not76 = icmp eq i64 %9, 0
  %10 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 24
  %11 = load i64, ptr %8, align 8, !tbaa !100
  %.not77 = icmp eq i64 %11, 0
  %12 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  %13 = load i64, ptr %10, align 8, !tbaa !100
  %.not78 = icmp eq i64 %13, 0
  %14 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 40
  %15 = load i64, ptr %12, align 8, !tbaa !100
  %.not79 = icmp eq i64 %15, 0
  %16 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 48
  %17 = load i64, ptr %14, align 8, !tbaa !100
  %.not80 = icmp eq i64 %17, 0
  %18 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 56
  %19 = load i64, ptr %16, align 8, !tbaa !100
  %.not81 = icmp eq i64 %19, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %20 = load i64, ptr %18, align 8, !tbaa !100
  %.not82 = icmp eq i64 %20, 0
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !194
  %21 = select i1 %.not76, i8 0, i8 2
  %22 = or disjoint i8 %21, %7
  %23 = select i1 %.not77, i8 0, i8 4
  %24 = or disjoint i8 %22, %23
  %25 = select i1 %.not78, i8 0, i8 8
  %26 = or disjoint i8 %24, %25
  %27 = select i1 %.not79, i8 0, i8 16
  %28 = or disjoint i8 %26, %27
  %29 = select i1 %.not80, i8 0, i8 32
  %30 = or disjoint i8 %28, %29
  %31 = select i1 %.not81, i8 0, i8 64
  %32 = or i8 %30, %31
  %33 = select i1 %.not82, i8 0, i8 -128
  %34 = or i8 %32, %33
  %i.ae = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store i8 %34, ptr %.14156, align 1, !tbaa !26
  %i.af = icmp samesign ugt i64 %.in, 1
  br i1 %i.af, label %.preheader48, label %._crit_edge57, !llvm.loop !276

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_:bb.a
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ad, %.preheader48 ] ; 2 uses
  %.14156 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.ae, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !279, !nonnull !236, !align !237 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !205 ; 9 uses
  %4 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %5 = load i64, ptr %.promoted53, align 8, !tbaa !100
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  %9 = load i64, ptr %4, align 8, !tbaa !100
  %.not76 = icmp eq i64 %9, 0
  %10 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 24
  %11 = load i64, ptr %8, align 8, !tbaa !100
  %.not77 = icmp eq i64 %11, 0
  %12 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  %13 = load i64, ptr %10, align 8, !tbaa !100
  %.not78 = icmp eq i64 %13, 0
  %14 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 40
  %15 = load i64, ptr %12, align 8, !tbaa !100
  %.not79 = icmp eq i64 %15, 0
  %16 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 48
  %17 = load i64, ptr %14, align 8, !tbaa !100
  %.not80 = icmp eq i64 %17, 0
  %18 = getelementptr inbounds nuw i8, ptr %.promoted53, i64 56
  %19 = load i64, ptr %16, align 8, !tbaa !100
  %.not81 = icmp eq i64 %19, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  %20 = load i64, ptr %18, align 8, !tbaa !100
  %.not82 = icmp eq i64 %20, 0
  %i.ad = add nsw i64 %.in, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !205
  %21 = select i1 %.not76, i8 0, i8 2
  %22 = or disjoint i8 %21, %7
  %23 = select i1 %.not77, i8 0, i8 4
  %24 = or disjoint i8 %22, %23
  %25 = select i1 %.not78, i8 0, i8 8
  %26 = or disjoint i8 %24, %25
  %27 = select i1 %.not79, i8 0, i8 16
  %28 = or disjoint i8 %26, %27
  %29 = select i1 %.not80, i8 0, i8 32
  %30 = or disjoint i8 %28, %29
  %31 = select i1 %.not81, i8 0, i8 64
  %32 = or i8 %30, %31
  %33 = select i1 %.not82, i8 0, i8 -128
  %34 = or i8 %32, %33
  %i.ae = getelementptr inbounds nuw i8, ptr %.14156, i64 1 ; 2 uses
  store i8 %34, ptr %.14156, align 1, !tbaa !26
  %i.af = icmp samesign ugt i64 %.in, 1
  br i1 %i.af, label %.preheader48, label %._crit_edge57, !llvm.loop !282

end_hunk_1
begin_hunk_2_@llvm.fshr.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
