Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Sections?download=true
inline.NumInlined: 42
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN3lld5macho8sections13isCodeSectionEN4llvm9StringRefES3_j(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.fr23 = freeze i64 %1                          ; 2 uses
  %i.a = trunc i32 %4 to i8
  switch i8 %i.a, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21 [
    i8 11, label %bb.b
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp slt i32 %4, -2130706432
  br i1 %i.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %3, 6
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.a, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21

_ZN4llvmeqENS_9StringRefES0_.exit.a:              ; preds = %bb.c
  %i.c = load i32, ptr %2, align 1
  %i.d = xor i32 %i.c, 1163157343
  %i.e = getelementptr i8, ptr %2, i64 4
  %i.f = load i16, ptr %i.e, align 1
  %i.g = zext i16 %i.f to i32
  %i.h = xor i32 %i.g, 21592
  %i.i = or i32 %i.d, %i.h
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i32                      ; 0 uses
  %i.l = icmp eq i64 %.fr23, 0
  %or.cond = or i1 %i.j, %i.l
  br i1 %or.cond, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.a
  switch i64 %.fr23, label %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1 [
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %.lr.ph.split.i.preheader
  %i.m = load i64, ptr %0, align 1
  %i.n = xor i64 %i.m, 8026387021351378783
  %i.o = getelementptr i8, ptr %0, i64 5
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 8389748074933609332
  %i.r = or i64 %i.n, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21, label %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1

_ZN4llvmneENS_9StringRefES0_.exit.i.i.1:          ; preds = %.lr.ph.split.i.preheader
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 7163384644221755231
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 1
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.y, 1953066569
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.1, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21, label %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1

_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1: ; preds = %.lr.ph.split.i.preheader, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread21

_ZN4llvmeqENS_9StringRefES0_.exit.thread21:       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1, %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1, %bb.c, %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit.a, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit.a ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i.1 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ false, %_ZN4llvm12StringSwitchIbbE8CaseImplENS_13StringLiteralERb.exit.i.1 ]
  ret i1 %.1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
end_hunk_0
