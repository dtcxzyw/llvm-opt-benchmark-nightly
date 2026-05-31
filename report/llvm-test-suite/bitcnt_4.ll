begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @ntbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi i64 [ %0, %bb.a ], [ %i.e, %tailrecurse ] ; 2 uses
  %i.a = and i64 %.tr, 15
  %i.b = getelementptr inbounds nuw i8, ptr @bits, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = sext i8 %i.c to i32
  %i.e = ashr i64 %.tr, 4                         ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  %i.f = add nsw i32 %accumulator.tr, %i.d        ; 2 uses
  br i1 %.not, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @btbl_bitcnt(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.f, %tailrecurse ]
  %.tr = phi i64 [ %0, %bb.a ], [ %i.e, %tailrecurse ] ; 2 uses
  %i.a = and i64 %.tr, 255
  %i.b = getelementptr inbounds nuw i8, ptr @bits, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8
  %i.d = sext i8 %i.c to i32
  %i.e = ashr i64 %.tr, 8                         ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  %i.f = add nsw i32 %accumulator.tr, %i.d        ; 2 uses
  br i1 %.not, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %tailrecurse
  ret i32 %i.f
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!6, !6, i64 0}
end_hunk_0
