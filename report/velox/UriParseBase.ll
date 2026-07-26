begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @uriWriteQuadToDoubleByte(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !8
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !8
  %i.b = load i8, ptr %0, align 1, !tbaa !8
  %i.c = shl i8 %i.b, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = add i8 %i.c, %i.e
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !8
  store i8 %i.g, ptr %2, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = shl i8 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = add i8 %i.j, %i.l
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.n = load i8, ptr %0, align 1, !tbaa !8
  %i.o = shl i8 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = add i8 %i.o, %i.q
  store i8 %i.r, ptr %2, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = shl i8 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = add i8 %i.u, %i.w
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sink = phi i8 [ %i.x, %bb.e ], [ %i.m, %bb.d ], [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %.sink, ptr %i.y, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @uriGetOctetValue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  switch i32 %1, label %bb.c [
    i32 1, label %bb.d
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = mul i8 %i.a, 10
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = mul i8 %i.a, 100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = mul i8 %i.e, 10
  %i.g = add i8 %i.f, %i.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink9 = phi i64 [ 2, %bb.c ], [ 1, %bb.b ]
  %.sink = phi i8 [ %i.g, %bb.c ], [ %i.b, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = add i8 %.sink, %i.i
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ %i.a, %bb.a ], [ %i.j, %.sink.split ]
  ret i8 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
end_hunk_0
