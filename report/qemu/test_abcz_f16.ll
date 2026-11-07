Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test_abcz_f16?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.float16_t = type { i16 }

@testLoops_forever = external local_unnamed_addr global i8, align 1
@verCases_errorCount = external local_unnamed_addr global i64, align 8
@verCases_tenThousandsCount = external local_unnamed_addr global i64, align 8
@genCases_done = external local_unnamed_addr global i8, align 1
@testLoops_trueFlagsFunction = external local_unnamed_addr global ptr, align 8
@genCases_f16_a = external local_unnamed_addr global %struct.float16_t, align 2
@genCases_f16_b = external local_unnamed_addr global %struct.float16_t, align 2
@genCases_f16_c = external local_unnamed_addr global %struct.float16_t, align 2
@testLoops_subjFlagsFunction = external local_unnamed_addr global ptr, align 8
@verCases_checkNaNs = external local_unnamed_addr global i8, align 1
@verCases_maxErrorCount = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind strictfp uwtable
define dso_local void @test_abcz_f16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @genCases_f16_abc_init() #2
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

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.032 = phi i32 [ %.1, %bb.l ], [ 10000, %bb.a ]
  tail call void @genCases_f16_abc_next() #2
  %i.h = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.i = tail call zeroext i8 %i.h() #2           ; 0 uses
  %i.j = load i16, ptr @genCases_f16_a, align 2
  %i.k = load i16, ptr @genCases_f16_b, align 2
  %i.l = load i16, ptr @genCases_f16_c, align 2
  %i.m = tail call i16 %0(i16 %i.j, i16 %i.k, i16 %i.l) #2 ; 3 uses
  %i.n = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.o = tail call zeroext i8 %i.n() #2           ; 4 uses
  %i.p = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.q = tail call zeroext i8 %i.p() #2           ; 0 uses
  %i.r = load i16, ptr @genCases_f16_a, align 2
  %i.s = load i16, ptr @genCases_f16_b, align 2
  %i.t = load i16, ptr @genCases_f16_c, align 2
  %i.u = tail call i16 %1(i16 %i.r, i16 %i.s, i16 %i.t) #2 ; 4 uses
  %i.v = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.w = tail call zeroext i8 %i.v() #2           ; 3 uses
  %i.x = add nsw i32 %.032, -1                    ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @verCases_perTenThousand() #2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i32 [ %i.x, %.lr.ph ], [ 10000, %bb.b ] ; 3 uses
  %i.y = icmp eq i16 %i.m, %i.u
  %.not22 = icmp eq i8 %i.o, %i.w
  %or.cond = select i1 %i.y, i1 %.not22, i1 false
  br i1 %or.cond, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i16, ptr @genCases_f16_a, align 2
  %i.ac = tail call zeroext i1 @f16_isSignalingNaN(i16 %i.ab) #2
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i16, ptr @genCases_f16_b, align 2
  %i.ae = tail call zeroext i1 @f16_isSignalingNaN(i16 %i.ad) #2
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i16, ptr @genCases_f16_c, align 2
  %i.ag = tail call zeroext i1 @f16_isSignalingNaN(i16 %i.af) #2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = or i8 %i.o, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.020.ph = phi i8 [ %i.o, %bb.g ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13
  %i.aj = trunc nuw i8 %i.ai to i1
  %.not26 = xor i1 %i.aj, true
  %i.ak = and i16 %i.m, 32767
  %i.al = icmp samesign ugt i16 %i.ak, 31744
  %or.cond28 = select i1 %.not26, i1 %i.al, i1 false
  %i.am = and i16 %i.u, 32767
  %i.an = icmp samesign ugt i16 %i.am, 31744
  %or.cond30 = select i1 %or.cond28, i1 %i.an, i1 false
  br i1 %or.cond30, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call zeroext i1 @f16_isSignalingNaN(i16 %i.u) #2
  %.not23 = icmp ne i8 %.020.ph, %i.w
  %or.cond25.not = select i1 %i.ao, i1 true, i1 %.not23
  br i1 %or.cond25.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.i
  %.02027 = phi i8 [ %.020.ph, %bb.i ], [ %.020.ph, %bb.j ], [ %i.o, %bb.d ]
  %i.ap = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.ar = sub nsw i32 10000, %.1
  tail call void @verCases_writeErrorFound(i32 noundef %i.ar) #2
  %i.as = load i16, ptr @genCases_f16_a, align 2
  %i.at = load i16, ptr @genCases_f16_b, align 2
  %i.au = load i16, ptr @genCases_f16_c, align 2
  tail call void @writeCase_abc_f16(i16 %i.as, i16 %i.at, i16 %i.au) #2
  tail call void @writeCase_z_f16(i16 %i.m, i8 noundef zeroext %.02027, i16 %i.u, i8 noundef zeroext %i.w) #2
  %i.av = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.aw = load i64, ptr @verCases_maxErrorCount, align 8, !tbaa !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.c, %bb.k
  %i.ay = load i8, ptr @genCases_done, align 1, !tbaa !13, !range !14, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i8, ptr @testLoops_forever, align 1, !range !14
  %i.bb = trunc nuw i8 %i.ba to i1
  %not. = xor i1 %i.az, true
  %i.bc = select i1 %not., i1 true, i1 %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.l
  %i.bd = sub nsw i32 10000, %.1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.bd, %._crit_edge.loopexit ]
  tail call void @verCases_writeTestsPerformed(i32 noundef %.2) #2
  ret void
}

declare void @genCases_f16_abc_init() local_unnamed_addr #1

declare void @genCases_writeTestsTotal(i1 noundef zeroext) local_unnamed_addr #1

declare void @genCases_f16_abc_next() local_unnamed_addr #1

declare void @verCases_perTenThousand() local_unnamed_addr #1

declare zeroext i1 @f16_isSignalingNaN(i16) local_unnamed_addr #1

declare void @verCases_writeErrorFound(i32 noundef) local_unnamed_addr #1

declare void @writeCase_abc_f16(i16, i16, i16) local_unnamed_addr #1

declare void @writeCase_z_f16(i16, i8 noundef zeroext, i16, i8 noundef zeroext) local_unnamed_addr #1

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
