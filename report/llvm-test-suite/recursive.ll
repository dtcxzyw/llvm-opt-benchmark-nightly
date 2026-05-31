begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fib(%.1f): %.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Tak(%d,%d,%d): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Fib(3): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Tak(3.0,2.0,1.0): %.1f\0A\00", align 1

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @ack(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr9.lcssa = phi i32 [ %1, %bb.a ], [ %i.f, %tailrecurse ]
  %i.b = add nsw i32 %.tr9.lcssa, 1
  ret i32 %i.b

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr911 = phi i32 [ %i.f, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %.tr10 = phi i32 [ %i.c, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %i.c = add nsw i32 %.tr10, -1                   ; 2 uses
  %.not = icmp eq i32 %.tr911, 0
  br i1 %.not, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %.tr911, -1
  %i.e = tail call i32 @ack(i32 noundef %.tr10, i32 noundef %i.d)
  br label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 1, %.lr.ph ]  ; 2 uses
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %tailrecurse._crit_edge, label %.lr.ph
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @fib(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr6 = phi i32 [ %i.d, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %accumulator.tr5 = phi i32 [ %i.e, %tailrecurse ], [ 0, %bb.a ]
  %i.b = add nsw i32 %.tr6, -2
  %i.c = tail call i32 @fib(i32 noundef %i.b)
  %i.d = add nsw i32 %.tr6, -1
  %i.e = add nsw i32 %i.c, %accumulator.tr5       ; 2 uses
  %i.f = icmp samesign ult i32 %.tr6, 3
  br i1 %i.f, label %tailrecurse._crit_edge.loopexit, label %tailrecurse

tailrecurse._crit_edge.loopexit:                  ; preds = %tailrecurse
  %i.g = add nsw i32 %i.e, 1
  br label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse._crit_edge.loopexit, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 1, %bb.a ], [ %i.g, %tailrecurse._crit_edge.loopexit ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local double @fibFP(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 2.000000e+00
  br i1 %i.a, label %common.ret5, label %bb.b

common.ret5:                                      ; preds = %bb.a, %bb.b
  %common.ret5.op = phi double [ %i.f, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret double %common.ret5.op

bb.b:                                             ; preds = %bb.a
  %i.b = fadd double %0, -2.000000e+00
  %i.c = tail call double @fibFP(double noundef %i.b)
  %i.d = fadd double %0, -1.000000e+00
  %i.e = tail call double @fibFP(double noundef %i.d)
  %i.f = fadd double %i.c, %i.e
  br label %common.ret5
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @tak(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, %0
  br i1 %i.a, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr1619 = phi i32 [ %i.g, %tailrecurse ], [ %2, %bb.a ] ; 3 uses
  %.tr1518 = phi i32 [ %i.e, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr17 = phi i32 [ %i.c, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.b = add nsw i32 %.tr17, -1
  %i.c = tail call i32 @tak(i32 noundef %i.b, i32 noundef %.tr1518, i32 noundef %.tr1619) ; 2 uses
  %i.d = add nsw i32 %.tr1518, -1
  %i.e = tail call i32 @tak(i32 noundef %i.d, i32 noundef %.tr1619, i32 noundef %.tr17) ; 2 uses
  %i.f = add nsw i32 %.tr1619, -1
  %i.g = tail call i32 @tak(i32 noundef %i.f, i32 noundef %.tr17, i32 noundef %.tr1518) ; 2 uses
  %i.h = icmp slt i32 %i.e, %i.c
  br i1 %i.h, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr16.lcssa = phi i32 [ %2, %bb.a ], [ %i.g, %tailrecurse ]
  ret i32 %.tr16.lcssa
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local double @takFP(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %1, %0
  br i1 %i.a, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr1619 = phi double [ %i.g, %tailrecurse ], [ %2, %bb.a ] ; 3 uses
  %.tr1518 = phi double [ %i.e, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr17 = phi double [ %i.c, %tailrecurse ], [ %0, %bb.a ] ; 3 uses
  %i.b = fadd double %.tr17, -1.000000e+00
  %i.c = tail call double @takFP(double noundef %i.b, double noundef %.tr1518, double noundef %.tr1619) ; 2 uses
  %i.d = fadd double %.tr1518, -1.000000e+00
  %i.e = tail call double @takFP(double noundef %i.d, double noundef %.tr1619, double noundef %.tr17) ; 2 uses
  %i.f = fadd double %.tr1619, -1.000000e+00
  %i.g = tail call double @takFP(double noundef %i.f, double noundef %.tr17, double noundef %.tr1518) ; 2 uses
  %i.h = fcmp olt double %i.e, %i.c
  br i1 %i.h, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr16.lcssa = phi double [ %2, %bb.a ], [ %i.g, %tailrecurse ]
  ret double %.tr16.lcssa
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @ack(i32 noundef 3, i32 noundef 11)
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 11, i32 noundef %i.a) ; 0 uses
  %i.c = tail call double @fibFP(double noundef 3.800000e+01)
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef 3.800000e+01, double noundef %i.c) ; 0 uses
  %i.e = tail call i32 @tak(i32 noundef 30, i32 noundef 20, i32 noundef 10)
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 30, i32 noundef 20, i32 noundef 10, i32 noundef %i.e) ; 0 uses
  %i.g = tail call i32 @fib(i32 noundef 3)
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.g) ; 0 uses
  %i.i = tail call double @takFP(double noundef 3.000000e+00, double noundef 2.000000e+00, double noundef 1.000000e+00)
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.i) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
end_hunk_0
