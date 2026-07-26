begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext range(i16 0, 29) i16 @uvwasi__get_rights(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  switch i8 %2, label %bb.f [
    i8 0, label %bb.i
    i8 4, label %bb.g
    i8 3, label %bb.b
    i8 6, label %bb.c
    i8 5, label %bb.c
    i8 2, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.a = tail call i32 @uv_guess_handle(i32 noundef %0) #2
  %i.b = icmp eq i32 %i.a, 14                     ; 2 uses
  %. = select i1 %i.b, i64 136314954, i64 1073741823
  %.28 = select i1 %i.b, i64 0, i64 1073741823
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e, %bb.c, %bb.b
  %.sink24 = phi i64 [ %., %bb.d ], [ 148898303, %bb.a ], [ 0, %bb.f ], [ 1073741823, %bb.e ], [ 941621322, %bb.c ], [ 264240792, %bb.b ]
  %.sink = phi i64 [ %.28, %bb.d ], [ 0, %bb.a ], [ 0, %bb.f ], [ 1073741823, %bb.e ], [ 1073741823, %bb.c ], [ 268435455, %bb.b ]
  store i64 %.sink24, ptr %3, align 8, !tbaa !9
  store i64 %.sink, ptr %4, align 8, !tbaa !9
  %i.c = and i32 %1, 3
  switch i32 %i.c, label %bb.i [
    i32 0, label %.sink.split
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink27 = phi i64 [ -3, %bb.h ], [ -65, %bb.g ]
  %i.d = load i64, ptr %3, align 8, !tbaa !9
  %i.e = and i64 %i.d, %.sink27
  store i64 %i.e, ptr %3, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.a
  %.0 = phi i16 [ 28, %bb.a ], [ 0, %bb.g ], [ 0, %.sink.split ]
  ret i16 %.0
}

declare i32 @uv_guess_handle(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
end_hunk_0
