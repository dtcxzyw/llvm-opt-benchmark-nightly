inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6detail24qfind_first_byte_of_sve2ENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, %2
  %i.b = icmp eq ptr %1, %0
  %or.cond.i = select i1 %i.a, i1 true, i1 %i.b, !prof !11
  br i1 %or.cond.i, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp ugt i64 %i.e, 3
  br i1 %i.f, label %bb.c, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.e, %bb.d, %bb.b
  br label %.preheader.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.i, 11
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.e, 15
  br i1 %i.k, label %bb.e, label %.preheader.i.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult i64 %i.i, 65
  %i.m = icmp ugt i64 %i.e, 31
  %or.cond19.i = or i1 %i.l, %i.m
  br i1 %or.cond19.i, label %bb.f, label %.preheader.i.i.i.preheader

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = tail call noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr %0, ptr %1, ptr %2, ptr %3)
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %._crit_edge.i.i.i
  %.01425.i.i.i = phi ptr [ %i.s, %._crit_edge.i.i.i ], [ %0, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.o = load i8, ptr %.01425.i.i.i, align 1, !tbaa !12
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.01223.i.i.i, i64 1 ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.p, %3
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %bb.h, !llvm.loop !13

bb.h:                                             ; preds = %bb.g, %.preheader.i.i.i
  %.01223.i.i.i = phi ptr [ %2, %.preheader.i.i.i ], [ %i.p, %bb.g ] ; 2 uses
  %i.q = load i8, ptr %.01223.i.i.i, align 1, !tbaa !12
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i, label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.01425.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %1
  br i1 %.not.i.i.i, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %.preheader.i.i.i, !llvm.loop !15

_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i: ; preds = %bb.h
  %i.t = icmp eq ptr %.01425.i.i.i, %1
  br i1 %i.t, label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i
  %i.u = ptrtoint ptr %.01425.i.i.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit

_ZN5folly6detail26qfind_first_byte_of_nosimdENS0_15StringPieceLiteES1_.exit: ; preds = %._crit_edge.i.i.i, %bb.a, %bb.f, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.n, %bb.f ], [ -1, %_ZSt13find_first_ofIPKcS1_ZN5folly6detail23qfind_first_byte_of_stdENS3_15StringPieceLiteES4_EUlccE_ET_S6_S6_T0_S7_T1_.exit.i.i ], [ %i.w, %bb.i ], [ -1, %._crit_edge.i.i.i ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN5folly6detail27qfind_first_byte_of_bytesetENS0_15StringPieceLiteES1_(ptr, ptr, ptr, ptr) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"branch_weights", i32 4001, i32 4000000}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
end_hunk_0
