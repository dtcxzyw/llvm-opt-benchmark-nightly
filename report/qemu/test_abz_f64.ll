Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test_abz_f64?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.float64_t = type { i64 }

@testLoops_forever = external local_unnamed_addr global i8, align 1
@verCases_errorCount = external local_unnamed_addr global i64, align 8
@verCases_tenThousandsCount = external local_unnamed_addr global i64, align 8
@genCases_done = external local_unnamed_addr global i8, align 1
@testLoops_trueFlagsFunction = external local_unnamed_addr global ptr, align 8
@genCases_f64_a = external local_unnamed_addr global %struct.float64_t, align 8
@genCases_f64_b = external local_unnamed_addr global %struct.float64_t, align 8
@testLoops_subjFlagsFunction = external local_unnamed_addr global ptr, align 8
@verCases_checkNaNs = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@verCases_maxErrorCount = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind strictfp uwtable
define dso_local void @test_abz_f64(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @genCases_f64_ab_init() #2
  %i.a = load i8, ptr @testLoops_forever, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @genCases_writeTestsTotal(i1 noundef zeroext %i.b) #2
  store i64 0, ptr @verCases_errorCount, align 8, !tbaa !17
  store i64 0, ptr @verCases_tenThousandsCount, align 8, !tbaa !17
  %i.c = load i8, ptr @genCases_done, align 1, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @testLoops_forever, align 1, !range !14
  %i.f = trunc nuw i8 %i.e to i1
  %not.31 = xor i1 %i.d, true
  %i.g = select i1 %not.31, i1 true, i1 %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.032 = phi i32 [ %.1, %bb.k ], [ 10000, %bb.a ]
  tail call void @genCases_f64_ab_next() #2
  %i.h = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.i = tail call zeroext i8 %i.h() #2           ; 0 uses
  %i.j = load i64, ptr @genCases_f64_a, align 8
  %i.k = load i64, ptr @genCases_f64_b, align 8
  %i.l = tail call i64 %0(i64 %i.j, i64 %i.k) #2  ; 3 uses
  %i.m = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.n = tail call zeroext i8 %i.m() #2           ; 4 uses
  %i.o = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.p = tail call zeroext i8 %i.o() #2           ; 0 uses
  %i.q = load i64, ptr @genCases_f64_a, align 8
  %i.r = load i64, ptr @genCases_f64_b, align 8
  %i.s = tail call i64 %1(i64 %i.q, i64 %i.r) #2  ; 4 uses
  %i.t = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.u = tail call zeroext i8 %i.t() #2           ; 3 uses
  %i.v = add nsw i32 %.032, -1                    ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @verCases_perTenThousand() #2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.v, %.lr.ph ], [ 10000, %bb.b ] ; 3 uses
  %i.w = icmp eq i64 %i.l, %i.s
  %.not22 = icmp eq i8 %i.n, %i.u
  %or.cond = select i1 %i.w, i1 %.not22, i1 false
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13, !range !14, !noundef !15
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr @genCases_f64_a, align 8
  %i.aa = tail call zeroext i1 @f64_isSignalingNaN(i64 %i.z) #2
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr @genCases_f64_b, align 8
  %i.ac = tail call zeroext i1 @f64_isSignalingNaN(i64 %i.ab) #2
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = or i8 %i.n, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.020 = phi i8 [ %i.n, %bb.d ], [ %i.ad, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.ae = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13, !range !14, !noundef !15
  %i.af = trunc nuw i8 %i.ae to i1
  %.not26 = xor i1 %i.af, true
  %i.ag = and i64 %i.l, 9223372036854775807
  %i.ah = icmp samesign ugt i64 %i.ag, 9218868437227405312
  %or.cond28 = select i1 %.not26, i1 %i.ah, i1 false
  %i.ai = and i64 %i.s, 9223372036854775807
  %i.aj = icmp samesign ugt i64 %i.ai, 9218868437227405312
  %or.cond30 = select i1 %or.cond28, i1 %i.aj, i1 false
  br i1 %or.cond30, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call zeroext i1 @f64_isSignalingNaN(i64 %i.s) #2
  %.not23 = icmp ne i8 %.020, %i.u
  %or.cond25.not = select i1 %i.ak, i1 true, i1 %.not23
  br i1 %or.cond25.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.an = sub nsw i32 10000, %.1
  tail call void @verCases_writeErrorFound(i32 noundef %i.an) #2
  %i.ao = load i64, ptr @genCases_f64_a, align 8
  %i.ap = load i64, ptr @genCases_f64_b, align 8
  tail call void @writeCase_ab_f64(i64 %i.ao, i64 %i.ap, ptr noundef nonnull @.str) #2
  tail call void @writeCase_z_f64(i64 %i.l, i8 noundef zeroext %.020, i64 %i.s, i8 noundef zeroext %i.u) #2
  %i.aq = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.ar = load i64, ptr @verCases_maxErrorCount, align 8, !tbaa !17
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %._crit_edge.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.c, %bb.j
  %i.at = load i8, ptr @genCases_done, align 1, !tbaa !13, !range !14, !noundef !15
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i8, ptr @testLoops_forever, align 1, !range !14
  %i.aw = trunc nuw i8 %i.av to i1
  %not. = xor i1 %i.au, true
  %i.ax = select i1 %not., i1 true, i1 %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.j, %bb.k
  %i.ay = sub nsw i32 10000, %.1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.ay, %._crit_edge.loopexit ]
  tail call void @verCases_writeTestsPerformed(i32 noundef %.2) #2
  ret void
}

declare void @genCases_f64_ab_init() local_unnamed_addr #1

declare void @genCases_writeTestsTotal(i1 noundef zeroext) local_unnamed_addr #1

declare void @genCases_f64_ab_next() local_unnamed_addr #1

declare void @verCases_perTenThousand() local_unnamed_addr #1

declare zeroext i1 @f64_isSignalingNaN(i64) local_unnamed_addr #1

declare void @verCases_writeErrorFound(i32 noundef) local_unnamed_addr #1

declare void @writeCase_ab_f64(i64, i64, ptr noundef) local_unnamed_addr #1

declare void @writeCase_z_f64(i64, i8 noundef zeroext, i64, i8 noundef zeroext) local_unnamed_addr #1

declare void @verCases_writeTestsPerformed(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind strictfp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind strictfp }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!18, !18, i64 0}
end_hunk_0
