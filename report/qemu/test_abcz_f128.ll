Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test_abcz_f128?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.float128_t = type { [2 x i64] }

@testLoops_forever = external local_unnamed_addr global i8, align 1
@verCases_errorCount = external local_unnamed_addr global i64, align 8
@verCases_tenThousandsCount = external local_unnamed_addr global i64, align 8
@genCases_done = external local_unnamed_addr global i8, align 1
@testLoops_trueFlagsFunction = external local_unnamed_addr global ptr, align 8
@genCases_f128_a = external global %struct.float128_t, align 8
@genCases_f128_b = external global %struct.float128_t, align 8
@genCases_f128_c = external global %struct.float128_t, align 8
@testLoops_subjFlagsFunction = external local_unnamed_addr global ptr, align 8
@verCases_checkNaNs = external local_unnamed_addr global i8, align 1
@verCases_maxErrorCount = external local_unnamed_addr global i64, align 8

; Function Attrs: nounwind strictfp uwtable
define dso_local void @test_abcz_f128(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.float128_t, align 8         ; 7 uses
  %3 = alloca %struct.float128_t, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  tail call void @genCases_f128_abc_init() #3
  %i.a = load i8, ptr @testLoops_forever, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @genCases_writeTestsTotal(i1 noundef zeroext %i.b) #3
  store i64 0, ptr @verCases_errorCount, align 8, !tbaa !17
  store i64 0, ptr @verCases_tenThousandsCount, align 8, !tbaa !17
  %i.c = load i8, ptr @genCases_done, align 1, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @testLoops_forever, align 1, !range !14
  %i.f = trunc nuw i8 %i.e to i1
  %not.28 = xor i1 %i.d, true
  %i.g = select i1 %not.28, i1 true, i1 %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.01229 = phi i32 [ 10000, %.lr.ph ], [ %.1, %bb.m ]
  call void @genCases_f128_abc_next() #3
  %i.j = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.k = call zeroext i8 %i.j() #3                ; 0 uses
  call void %0(ptr noundef nonnull @genCases_f128_a, ptr noundef nonnull @genCases_f128_b, ptr noundef nonnull @genCases_f128_c, ptr noundef nonnull %2) #3
  %i.l = load ptr, ptr @testLoops_trueFlagsFunction, align 8, !tbaa !19
  %i.m = call zeroext i8 %i.l() #3                ; 4 uses
  %i.n = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.o = call zeroext i8 %i.n() #3                ; 0 uses
  call void %1(ptr noundef nonnull @genCases_f128_a, ptr noundef nonnull @genCases_f128_b, ptr noundef nonnull @genCases_f128_c, ptr noundef nonnull %3) #3
  %i.p = load ptr, ptr @testLoops_subjFlagsFunction, align 8, !tbaa !19
  %i.q = call zeroext i8 %i.p() #3                ; 3 uses
  %i.r = add nsw i32 %.01229, -1                  ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @verCases_perTenThousand() #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.r, %bb.b ], [ 10000, %bb.c ] ; 3 uses
  %.val = load i64, ptr %2, align 8
  %.val18 = load i64, ptr %i.h, align 8, !tbaa !21
  %.val19 = load i64, ptr %3, align 8
  %.val20 = load i64, ptr %i.i, align 8, !tbaa !21
  %i.s = icmp eq i64 %.val18, %.val20
  %i.t = icmp eq i64 %.val, %.val19
  %spec.select.i = select i1 %i.s, i1 %i.t, i1 false
  %.not14 = icmp eq i8 %i.m, %i.q
  %or.cond = select i1 %spec.select.i, i1 %.not14, i1 false
  br i1 %or.cond, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call zeroext i1 @f128M_isSignalingNaN(ptr noundef nonnull @genCases_f128_a) #3
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call zeroext i1 @f128M_isSignalingNaN(ptr noundef nonnull @genCases_f128_b) #3
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call zeroext i1 @f128M_isSignalingNaN(ptr noundef nonnull @genCases_f128_c) #3
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.z = or i8 %i.m, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i8 [ %i.m, %bb.e ], [ %i.z, %bb.i ], [ %i.m, %bb.h ] ; 2 uses
  %i.aa = load i8, ptr @verCases_checkNaNs, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val24 = load i64, ptr %i.h, align 8, !tbaa !21
  %i.ac = and i64 %.val24, 9223372036854775807    ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.ac, 9223090561878065152
  br i1 %i.ad, label %f128M_isNaN.exit.thread, label %f128M_isNaN.exit

f128M_isNaN.exit:                                 ; preds = %bb.k
  %.val23 = load i64, ptr %2, align 8
  %i.ae = icmp eq i64 %i.ac, 9223090561878065152
  %i.af = icmp ne i64 %.val23, 0
  %spec.select.i25 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %spec.select.i25, label %f128M_isNaN.exit.thread, label %bb.l

f128M_isNaN.exit.thread:                          ; preds = %bb.k, %f128M_isNaN.exit
  %.val22 = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ag = and i64 %.val22, 9223372036854775807    ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 9223090561878065152
  br i1 %i.ah, label %f128M_isNaN.exit27.thread, label %f128M_isNaN.exit27

f128M_isNaN.exit27:                               ; preds = %f128M_isNaN.exit.thread
  %.val21 = load i64, ptr %3, align 8
  %i.ai = icmp eq i64 %i.ag, 9223090561878065152
  %i.aj = icmp ne i64 %.val21, 0
  %spec.select.i26 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %spec.select.i26, label %f128M_isNaN.exit27.thread, label %bb.l

f128M_isNaN.exit27.thread:                        ; preds = %f128M_isNaN.exit.thread, %f128M_isNaN.exit27
  %i.ak = call zeroext i1 @f128M_isSignalingNaN(ptr noundef nonnull %3) #3
  %.not15 = icmp ne i8 %.0, %i.q
  %or.cond17.not = select i1 %i.ak, i1 true, i1 %.not15
  br i1 %or.cond17.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %f128M_isNaN.exit27.thread, %f128M_isNaN.exit27, %f128M_isNaN.exit, %bb.j
  %i.al = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.an = sub nsw i32 10000, %.1
  call void @verCases_writeErrorFound(i32 noundef %i.an) #3
  call void @writeCase_abc_f128M(ptr noundef nonnull @genCases_f128_a, ptr noundef nonnull @genCases_f128_b, ptr noundef nonnull @genCases_f128_c) #3
  call void @writeCase_z_f128M(ptr noundef nonnull %2, i8 noundef zeroext %.0, ptr noundef nonnull %3, i8 noundef zeroext %i.q) #3
  %i.ao = load i64, ptr @verCases_errorCount, align 8, !tbaa !17
  %i.ap = load i64, ptr @verCases_maxErrorCount, align 8, !tbaa !17
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %._crit_edge.loopexit, label %bb.m

bb.m:                                             ; preds = %f128M_isNaN.exit27.thread, %bb.d, %bb.l
  %i.ar = load i8, ptr @genCases_done, align 1, !tbaa !13, !range !14, !noundef !15
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr @testLoops_forever, align 1, !range !14
  %i.au = trunc nuw i8 %i.at to i1
  %not. = xor i1 %i.as, true
  %i.av = select i1 %not., i1 true, i1 %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.l, %bb.m
  %i.aw = sub nsw i32 10000, %.1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.aw, %._crit_edge.loopexit ]
  call void @verCases_writeTestsPerformed(i32 noundef %.2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @genCases_f128_abc_init() local_unnamed_addr #2

declare void @genCases_writeTestsTotal(i1 noundef zeroext) local_unnamed_addr #2

declare void @genCases_f128_abc_next() local_unnamed_addr #2

declare void @verCases_perTenThousand() local_unnamed_addr #2

declare zeroext i1 @f128M_isSignalingNaN(ptr noundef) local_unnamed_addr #2

declare void @verCases_writeErrorFound(i32 noundef) local_unnamed_addr #2

declare void @writeCase_abc_f128M(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @writeCase_z_f128M(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @verCases_writeTestsPerformed(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind strictfp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind strictfp }

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
!20 = !{!"uint128", !16, i64 0, !16, i64 8}
!21 = !{!20, !16, i64 8}
end_hunk_0
