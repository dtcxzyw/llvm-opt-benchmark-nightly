begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @uriStackToOctet(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !7
  switch i8 %i.a, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = mul i8 %i.e, 10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = add i8 %i.f, %i.h
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = mul i8 %i.k, 100
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = mul i8 %i.n, 10
  %i.p = add i8 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = add i8 %i.p, %i.r
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink = phi i8 [ %i.s, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.b ]
  store i8 %.sink, ptr %1, align 1, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  store i8 0, ptr %0, align 1, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @uriPushToStack(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !7       ; 3 uses
  %i.b = icmp ult i8 %i.a, 3
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.offset11 = add nuw nsw i8 %i.a, 1
  %i.c = zext nneg i8 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %1, ptr %i.e, align 1, !tbaa !12
  store i8 %switch.offset11, ptr %0, align 1, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !5, i64 0}
!8 = !{!"UriIp4ParserStruct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!9 = !{!8, !5, i64 1}
!10 = !{!8, !5, i64 2}
!11 = !{!8, !5, i64 3}
!12 = !{!5, !5, i64 0}
end_hunk_0
