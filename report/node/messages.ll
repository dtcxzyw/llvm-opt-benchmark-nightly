inline.NumInlined: 1641
inline.NumDeleted: 719
begin_hunk_0_@_ZN2v88internal16MessageFormatter9TryFormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6StringEEEEE:bb.a
  %i.f = insertelement <32 x i32> poison, i32 %1, i64 0
  %i.g = shufflevector <32 x i32> %i.f, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.h = icmp eq <32 x i32> %i.g, <i32 50, i32 55, i32 464, i32 463, i32 80, i32 82, i32 238, i32 239, i32 244, i32 247, i32 313, i32 316, i32 317, i32 318, i32 325, i32 326, i32 329, i32 87, i32 253, i32 249, i32 250, i32 91, i32 352, i32 336, i32 355, i32 353, i32 356, i32 354, i32 278, i32 128, i32 132, i32 172>
  %5 = insertelement <10 x i32> poison, i32 %1, i64 0
  %6 = shufflevector <10 x i32> %5, <10 x i32> poison, <10 x i32> zeroinitializer ; 2 uses
  %7 = icmp eq <10 x i32> %6, <i32 177, i32 178, i32 183, i32 186, i32 93, i32 206, i32 214, i32 215, i32 407, i32 413>
  %8 = shufflevector <10 x i1> %7, <10 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op88 = shufflevector <32 x i1> %i.h, <32 x i1> %8, <42 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41>
  %9 = bitcast <42 x i1> %rdx.op88 to i42
  %10 = call range(i42 0, 43) i42 @llvm.ctpop.i42(i42 %9)
  %i.i = icmp eq i32 %1, 475
  %11 = zext i1 %i.i to i42
  %12 = or i42 %10, %11
  %.not16 = icmp eq i42 %12, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17, %bb.a
end_hunk_0
begin_hunk_1_@_ZN2v88internal16MessageFormatter9TryFormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6StringEEEEE:bb.a

.preheader.preheader:                             ; preds = %bb.c
  %i.l = icmp eq <32 x i32> %i.g, <i32 50, i32 55, i32 464, i32 463, i32 80, i32 82, i32 238, i32 239, i32 244, i32 247, i32 313, i32 316, i32 317, i32 318, i32 325, i32 326, i32 329, i32 87, i32 253, i32 249, i32 250, i32 91, i32 352, i32 336, i32 355, i32 353, i32 356, i32 354, i32 278, i32 128, i32 132, i32 172>
  %13 = icmp eq <10 x i32> %6, <i32 177, i32 178, i32 183, i32 186, i32 93, i32 206, i32 214, i32 215, i32 407, i32 413>
  %14 = shufflevector <10 x i1> %13, <10 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op = shufflevector <32 x i1> %i.l, <32 x i1> %14, <42 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41>
  %15 = bitcast <42 x i1> %rdx.op to i42
  %16 = call range(i42 0, 43) i42 @llvm.ctpop.i42(i42 %15)
  %i.m = icmp eq i32 %1, 475
  %17 = zext i1 %i.m to i42
  %18 = or i42 %16, %17
  %i.n = icmp eq i42 %18, 0
  br i1 %i.n, label %bb.ak, label %bb.al

bb.d:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_
declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i42 @llvm.ctpop.i42(i42) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
