Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ByteOrderValues?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN4geos2io15ByteOrderValues6getIntEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !9 {
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
define noundef i32 @_ZN4geos2io15ByteOrderValues11getUnsignedEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !10 {
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
define void @_ZN4geos2io15ByteOrderValues6putIntEiPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !11 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call i32 @llvm.bswap.i32(i32 %0)
  %storemerge = select i1 %i.a, i32 %i.b, i32 %0
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos2io15ByteOrderValues11putUnsignedEjPhi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !12 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call i32 @llvm.bswap.i32(i32 %0)
  %storemerge = select i1 %i.a, i32 %i.b, i32 %0
  store i32 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN4geos2io15ByteOrderValues7getLongEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !13 {
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
define void @_ZN4geos2io15ByteOrderValues7putLongElPhi(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !14 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call i64 @llvm.bswap.i64(i64 %0)
  %storemerge = select i1 %i.a, i64 %i.b, i64 %0
  store i64 %storemerge, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos2io15ByteOrderValues9getDoubleEPKhi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !15 {
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
define void @_ZN4geos2io15ByteOrderValues9putDoubleEdPhi(double noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2) local_unnamed_addr #1 align 2 !guid !16 {
_ZN4geos2io15ByteOrderValues7putLongElPhi.exit:
  %i.a = icmp eq i32 %2, 0
  %3 = bitcast double %0 to i64
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %i.b = bitcast i64 %4 to double
  %storemerge = select i1 %i.a, double %i.b, double %0
  store double %storemerge, ptr %1, align 1
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
!9 = !{i64 -2529714380114284616}
!10 = !{i64 -5193072633026683407}
!11 = !{i64 2822287396544812711}
!12 = !{i64 -4569226609205300402}
!13 = !{i64 -7441660564365032680}
!14 = !{i64 2940017762321000220}
!15 = !{i64 7618346877814361136}
!16 = !{i64 7215412273197213331}
end_hunk_0
