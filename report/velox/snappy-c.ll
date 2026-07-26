inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @snappy_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !8
  %i.b = tail call noundef i64 @_ZN6snappy19MaxCompressedLengthEm(i64 noundef %1) #3
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6snappy11RawCompressEPKcmPcPm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @snappy_max_compressed_length(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN6snappy19MaxCompressedLengthEm(i64 noundef %0) #3
  ret i64 %i.a
}

declare void @_ZN6snappy11RawCompressEPKcmPcPm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 3) i32 @snappy_uncompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a) #3
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !8
  %i.d = load i64, ptr %i.a, align 8, !tbaa !8
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef zeroext i1 @_ZN6snappy13RawUncompressEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) #3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.g, ptr %3, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.d ], [ 2, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPKcmPm(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6snappy13RawUncompressEPKcmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i64 @_ZN6snappy19MaxCompressedLengthEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @snappy_uncompressed_length(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) #3
  %not. = xor i1 %i.a, true
  %. = zext i1 %not. to i32
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @snappy_validate_compressed_buffer(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6snappy23IsValidCompressedBufferEPKcm(ptr noundef %0, i64 noundef %1) #3
  %not. = xor i1 %i.a, true
  %. = zext i1 %not. to i32
  ret i32 %.
}

declare noundef zeroext i1 @_ZN6snappy23IsValidCompressedBufferEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
end_hunk_0
