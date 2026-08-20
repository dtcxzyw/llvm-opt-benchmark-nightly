inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"../hw/riscv/aia.c\00", align 1
@__func__.riscv_create_aia = private unnamed_addr constant [17 x i8] c"riscv_create_aia\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"num_sources <= 1023\00", align 1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(none) uwtable
define dso_local i32 @imsic_num_bits(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]     ; 3 uses
  %i.b = zext nneg i32 %.0 to i64
  %i.c = shl nuw i64 1, %i.b
  %i.d = icmp ult i64 %i.c, %i.a
  %i.e = add i32 %.0, 1
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @riscv_create_aia(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i16 %3, 1023
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__func__.riscv_create_aia, ptr noundef nonnull @.str.1) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %0, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.b = load i64, ptr %6, align 8
  %i.c = shl i32 %8, 24
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add i64 %i.b, %i.d
  %i.f = icmp sgt i32 %10, 0                      ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %10 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = mul i32 %2, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %i.e, %i.i
  %13 = trunc i64 %indvars.iv to i32
  %i.k = add i32 %9, %13
  %i.l = tail call ptr @riscv_imsic_create(i64 noundef %i.j, i32 noundef %i.k, i1 noundef zeroext true, i32 noundef 1, i32 noundef %11) #5 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.m = add i32 %1, 1                            ; 2 uses
  %i.n = zext i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge
  %.0.i = phi i32 [ 0, %._crit_edge ], [ %i.r, %bb.e ] ; 2 uses
  %i.o = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = add i32 %.0.i, 1
  br i1 %i.q, label %bb.e, label %imsic_num_bits.exit, !llvm.loop !7

imsic_num_bits.exit:                              ; preds = %bb.e
  %i.s = load i64, ptr %7, align 8
  %i.t = add i64 %i.s, %i.d
  br i1 %i.f, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %imsic_num_bits.exit
  %i.u = add nuw nsw i64 %i.o, 12
  %wide.trip.count60 = zext nneg i32 %10 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph55, %bb.f
  %indvars.iv57 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next58, %bb.f ] ; 3 uses
  %i.v = shl i64 %indvars.iv57, %i.u
  %i.w = add i64 %i.t, %i.v
  %i.x = trunc i64 %indvars.iv57 to i32
  %i.y = add i32 %9, %i.x
  %i.z = tail call ptr @riscv_imsic_create(i64 noundef %i.w, i32 noundef %i.y, i1 noundef zeroext false, i32 noundef %i.m, i32 noundef %11) #5 ; 0 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %bb.f, !llvm.loop !11

.loopexit:                                        ; preds = %bb.f, %imsic_num_bits.exit, %bb.c
  %i.aa = phi i32 [ %10, %bb.c ], [ 0, %imsic_num_bits.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ab = phi i32 [ %9, %bb.c ], [ 0, %imsic_num_bits.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ac = zext nneg i16 %3 to i32                 ; 2 uses
  %i.ad = load i64, ptr %4, align 8
  %i.ae = sext i32 %8 to i64                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = mul i64 %i.ag, %i.ae
  %i.ai = add i64 %i.ah, %i.ad
  %i.aj = tail call ptr @riscv_aplic_create(i64 noundef %i.ai, i64 noundef %i.ag, i32 noundef %i.ab, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %12, i1 noundef zeroext %0, i1 noundef zeroext true, ptr noundef null) #5 ; 2 uses
  %i.ak = load i64, ptr %5, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = add i64 %i.an, %i.ak
  %i.ap = tail call ptr @riscv_aplic_create(i64 noundef %i.ao, i64 noundef %i.am, i32 noundef %i.ab, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %12, i1 noundef zeroext %0, i1 noundef zeroext false, ptr noundef %i.aj) #5 ; 0 uses
  ret ptr %i.aj
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @riscv_imsic_create(i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @riscv_aplic_create(i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
end_hunk_0
