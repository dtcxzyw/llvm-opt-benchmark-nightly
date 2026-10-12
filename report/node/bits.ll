Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bits?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN2v84base4bits15SignedMulHigh32Eii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = tail call i32 @llvm.smulh.i32(i32 %0, i32 %1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -4611686020574871552, 4611686022722355199) i64 @_ZN2v84base4bits15SignedMulHigh64Ell(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, 4294967295                   ; 2 uses
  %i.b = ashr i64 %0, 32                          ; 2 uses
  %i.c = and i64 %1, 4294967295                   ; 2 uses
  %i.d = ashr i64 %1, 32                          ; 2 uses
  %i.e = mul nuw i64 %i.c, %i.a
  %i.f = mul nsw i64 %i.c, %i.b
  %i.g = lshr i64 %i.e, 32
  %i.h = add nsw i64 %i.g, %i.f                   ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = ashr i64 %i.h, 32
  %i.k = mul nsw i64 %i.d, %i.a
  %i.l = add nsw i64 %i.i, %i.k
  %i.m = mul nsw i64 %i.d, %i.b
  %i.n = add nsw i64 %i.j, %i.m
  %i.o = ashr i64 %i.l, 32
  %i.p = add nsw i64 %i.n, %i.o
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 0, -1) i64 @_ZN2v84base4bits17UnsignedMulHigh64Emm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = tail call i64 @llvm.umulh.i64(i64 %1, i64 %0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, -1) i32 @_ZN2v84base4bits17UnsignedMulHigh32Ejj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = tail call i32 @llvm.umulh.i32(i32 %0, i32 %1)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN2v84base4bits21SignedMulHighAndAdd32Eiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = tail call noundef i32 @llvm.smulh.i32(i32 %0, i32 %1)
  %i.a = add i32 %2, %3
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN2v84base4bits11SignedDiv32Eii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.d
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sub i32 0, %0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = sdiv i32 %0, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN2v84base4bits11SignedDiv64Ell(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sub i64 0, %0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = sdiv i64 %0, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.c ], [ %i.a, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN2v84base4bits11SignedMod32Eii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 1
  %or.cond = icmp ult i32 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = srem i32 %0, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN2v84base4bits11SignedMod64Ell(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = srem i64 %0, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN2v84base4bits20SignedSaturatedAdd64Ell(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i64 -9223372036854775808, %1
  %i.c = icmp slt i64 %0, %i.b
  br i1 %i.c, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 9223372036854775807, %1
  %i.e = icmp sgt i64 %0, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = add nsw i64 %1, %0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ -9223372036854775808, %bb.b ], [ 9223372036854775807, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN2v84base4bits20SignedSaturatedSub64Ell(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i64 %1, -9223372036854775808
  %i.c = icmp slt i64 %0, %i.b
  br i1 %i.c, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i64 %1, 9223372036854775807
  %i.e = icmp sgt i64 %0, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = sub nsw i64 %0, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ -9223372036854775808, %bb.b ], [ 9223372036854775807, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smulh.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
end_hunk_0
