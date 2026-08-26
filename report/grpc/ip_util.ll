Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ip_util?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4bssl14IsValidNetmaskENS_3der5InputE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %.thread [
    i64 4, label %_ZNK4bssl3der5InputixEm.exit.preheader
    i64 16, label %_ZNK4bssl3der5InputixEm.exit.preheader
  ]

_ZNK4bssl3der5InputixEm.exit.preheader:           ; preds = %bb.a, %bb.a
  br label %_ZNK4bssl3der5InputixEm.exit

_ZNK4bssl3der5InputixEm.exit:                     ; preds = %_ZNK4bssl3der5InputixEm.exit.preheader, %bb.c
  %.01641 = phi i64 [ %i.g, %bb.c ], [ 0, %_ZNK4bssl3der5InputixEm.exit.preheader ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.01641
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11    ; 3 uses
  %.not23 = icmp eq i8 %i.b, -1
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4bssl3der5InputixEm.exit
  %i.c = add i8 %i.b, -1
  %i.d = or i8 %i.c, %i.b
  %.not24 = icmp eq i8 %i.d, -1
  br i1 %.not24, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.b
  %2 = add i64 %1, -1                             ; 2 uses
  %.054 = add nuw i64 %.01641, 1                  ; 2 uses
  %exitcond4455 = icmp eq i64 %.01641, %2
  br i1 %exitcond4455, label %.thread.loopexit, label %_ZNK4bssl3der5InputixEm.exit30

.preheader:                                       ; preds = %_ZNK4bssl3der5InputixEm.exit30
  %.0 = add nuw i64 %.056, 1                      ; 2 uses
  %exitcond44 = icmp eq i64 %.056, %2
  br i1 %exitcond44, label %.thread.loopexit, label %_ZNK4bssl3der5InputixEm.exit30, !llvm.loop !12

_ZNK4bssl3der5InputixEm.exit30:                   ; preds = %.preheader.preheader, %.preheader
  %.056 = phi i64 [ %.0, %.preheader ], [ %.054, %.preheader.preheader ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.056
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %.not25 = icmp eq i8 %i.f, 0
  br i1 %.not25, label %.preheader, label %_ZNK4bssl3der5InputixEm.exit30..thread.loopexit_crit_edge, !llvm.loop !12

bb.c:                                             ; preds = %_ZNK4bssl3der5InputixEm.exit
  %i.g = add nuw i64 %.01641, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %.thread, label %_ZNK4bssl3der5InputixEm.exit, !llvm.loop !14

_ZNK4bssl3der5InputixEm.exit30..thread.loopexit_crit_edge: ; preds = %_ZNK4bssl3der5InputixEm.exit30
  br label %.thread.loopexit, !llvm.loop !12

.thread.loopexit:                                 ; preds = %.preheader, %_ZNK4bssl3der5InputixEm.exit30..thread.loopexit_crit_edge, %.preheader.preheader
  %.0.lcssa = phi i64 [ %.056, %_ZNK4bssl3der5InputixEm.exit30..thread.loopexit_crit_edge ], [ %.054, %.preheader.preheader ], [ %.0, %.preheader ]
  %.not26.not.le = icmp uge i64 %.0.lcssa, %1
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.loopexit, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ %.not26.not.le, %.thread.loopexit ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4bssl27IPAddressMatchesWithNetmaskENS_3der5InputES1_S1_(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  %.not9 = icmp eq i64 %1, %5
  %or.cond = select i1 %.not, i1 %.not9, i1 false
  br i1 %or.cond, label %.preheader.split, label %.loopexit

.preheader.split:                                 ; preds = %bb.a
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %_ZNK4bssl3der5InputixEm.exit

_ZNK4bssl3der5InputixEm.exit:                     ; preds = %.preheader.split, %_ZNK4bssl3der5InputixEm.exit
  %.0727 = phi i64 [ %i.j, %_ZNK4bssl3der5InputixEm.exit ], [ 0, %.preheader.split ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0727
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %.0727
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.0727
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = xor i8 %i.g, %i.c
  %i.i = and i8 %i.h, %i.e
  %.not10 = icmp eq i8 %i.i, 0                    ; 2 uses
  %i.j = add nuw i64 %.0727, 1                    ; 2 uses
  %exitcond.not = icmp ne i64 %i.j, %1
  %or.cond31.not = select i1 %.not10, i1 %exitcond.not, i1 false
  br i1 %or.cond31.not, label %_ZNK4bssl3der5InputixEm.exit, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %_ZNK4bssl3der5InputixEm.exit, %.preheader.split, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader.split ], [ %.not10, %_ZNK4bssl3der5InputixEm.exit ]
  ret i1 %.1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
