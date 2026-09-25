Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ByteOrderValues?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos2io15ByteOrderValues6getIntEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos2io15ByteOrderValues11getUnsignedEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %bb.a, label %10

bb.a:                                             ; preds = %3
  %5 = insertelement <4 x i32> poison, i32 %0, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i32> %6, <i32 24, i32 16, i32 8, i32 0>
  %8 = trunc <4 x i32> %7 to <4 x i8>
  %9 = bitcast <4 x i8> %8 to i32
  br label %10

10:                                               ; preds = %3, %bb.a
  %storemerge = phi i32 [ %9, %bb.a ], [ %0, %3 ]
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues11putUnsignedEjPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %bb.a, label %10

bb.a:                                             ; preds = %3
  %5 = insertelement <4 x i32> poison, i32 %0, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i32> %6, <i32 24, i32 16, i32 8, i32 0>
  %8 = trunc <4 x i32> %7 to <4 x i8>
  %9 = bitcast <4 x i8> %8 to i32
  br label %10

10:                                               ; preds = %3, %bb.a
  %storemerge = phi i32 [ %9, %bb.a ], [ %0, %3 ]
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4geos2io15ByteOrderValues7getLongEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 1, !tbaa !8
  %i.c = tail call i64 @llvm.bswap.i64(i64 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues7putLongElPhi(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %bb.a, label %27

bb.a:                                             ; preds = %3
  %5 = lshr i64 %0, 56
  %6 = trunc nuw i64 %5 to i8
  store i8 %6, ptr %1, align 1, !tbaa !8
  %7 = lshr i64 %0, 48
  %8 = trunc i64 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !8
  %10 = lshr i64 %0, 40
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !8
  %13 = lshr i64 %0, 32
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %14, ptr %15, align 1, !tbaa !8
  %16 = lshr i64 %0, 24
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %17, ptr %18, align 1, !tbaa !8
  %19 = lshr i64 %0, 16
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %20, ptr %21, align 1, !tbaa !8
  %22 = lshr i64 %0, 8
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %23, ptr %24, align 1, !tbaa !8
  %25 = trunc i64 %0 to i8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %25, ptr %26, align 1, !tbaa !8
  br label %28

27:                                               ; preds = %3
  store i64 %0, ptr %1, align 1
  br label %28

28:                                               ; preds = %27, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos2io15ByteOrderValues9getDoubleEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 1, !tbaa !8
  %i.c = tail call i64 @llvm.bswap.i64(i64 %i.b)
  br label %_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  br label %_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit

_ZN4geos2io15ByteOrderValues7getLongEPKhi.exit:   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = bitcast i64 %.0.i to double
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %bb.a, label %28

bb.a:                                             ; preds = %3
  %5 = bitcast double %0 to i64                   ; 8 uses
  %6 = lshr i64 %5, 56
  %7 = trunc nuw i64 %6 to i8
  store i8 %7, ptr %1, align 1, !tbaa !8
  %8 = lshr i64 %5, 48
  %9 = trunc i64 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %9, ptr %10, align 1, !tbaa !8
  %11 = lshr i64 %5, 40
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %12, ptr %13, align 1, !tbaa !8
  %14 = lshr i64 %5, 32
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %15, ptr %16, align 1, !tbaa !8
  %17 = lshr i64 %5, 24
  %18 = trunc i64 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %18, ptr %19, align 1, !tbaa !8
  %20 = lshr i64 %5, 16
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %21, ptr %22, align 1, !tbaa !8
  %23 = lshr i64 %5, 8
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %24, ptr %25, align 1, !tbaa !8
  %26 = trunc i64 %5 to i8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %26, ptr %27, align 1, !tbaa !8
  br label %_ZN4geos2io15ByteOrderValues7putLongElPhi.exit

28:                                               ; preds = %3
  store double %0, ptr %1, align 1
  br label %_ZN4geos2io15ByteOrderValues7putLongElPhi.exit

_ZN4geos2io15ByteOrderValues7putLongElPhi.exit:   ; preds = %bb.a, %28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
end_hunk_0
