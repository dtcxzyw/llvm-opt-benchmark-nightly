Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_divide?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stb_div_trunc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = icmp slt i32 %1, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.nonneg = sub i32 0, %1
  %i.c = udiv i32 %0, %.nonneg
  %.neg = sub nsw i32 0, %i.c
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %0, 1
  %i.e = icmp sgt i32 %1, -1
  %or.cond3 = and i1 %i.d, %i.e
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %0, -2147483648
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.nonneg23 = sub nsw i32 0, %0
  %i.f = udiv i32 %.nonneg23, %1
  %i.g = sub nsw i32 0, %i.f
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.nonneg21 = sub nuw i32 -2147483648, %1
  %i.h = udiv i32 %.nonneg21, %1
  %i.i = xor i32 %i.h, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = sdiv i32 %0, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %.neg, %bb.b ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stb_div_floor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  %i.b = icmp slt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = or disjoint i32 %0, -2147483648
  %.not43 = icmp slt i32 %i.c, %i.d
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg56 = sub i32 %0, %i.c
  %.nonneg49 = sub i32 0, %1
  %i.e = udiv i32 %.neg56, %.nonneg49
  %i.f = sub nsw i32 0, %i.e
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %.nonneg45 = sub i32 0, %1                      ; 2 uses
  %i.g = udiv i32 %0, %.nonneg45
  %i.h = urem i32 %0, %.nonneg45
  %.not44 = icmp ne i32 %i.h, 0
  %i.i = sext i1 %.not44 to i32
  %i.j = sub nsw i32 %i.i, %i.g
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %0, 0
  %i.l = icmp sgt i32 %1, -1
  %or.cond3 = and i1 %i.k, %i.l
  br i1 %or.cond3, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %0, -2147483648
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %0, 1                        ; 2 uses
  %i.n = or disjoint i32 %1, -2147483648
  %.not41 = icmp slt i32 %i.m, %i.n
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg55 = sub i32 %1, %i.m
  %i.o = udiv i32 %.neg55, %1
  %i.p = sub nsw i32 0, %i.o
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = sub nsw i32 0, %0                        ; 2 uses
  %i.r = udiv i32 %i.q, %1
  %i.s = urem i32 %i.q, %1
  %.not42 = icmp ne i32 %i.s, 0
  %i.t = sext i1 %.not42 to i32
  %i.u = sub nsw i32 %i.t, %i.r
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.v = sub nuw i32 -2147483648, %1              ; 2 uses
  %i.w = udiv i32 %i.v, %1
  %i.x = urem i32 %i.v, %1
  %.not40 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not40, i32 -1, i32 -2
  %i.z = sub nuw nsw i32 %i.y, %i.w
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aa = sdiv i32 %0, %1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %i.p, %bb.h ], [ %i.u, %bb.i ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stb_div_eucl(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = udiv i32 %0, %1
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %.not50 = icmp eq i32 %1, -2147483648
  br i1 %.not50, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = sub nsw i32 0, %1                        ; 2 uses
  %i.e = udiv i32 %0, %i.d
  %i.f = sub nsw i32 0, %i.e
  %2 = urem i32 %0, %i.d
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %0, -2147483648
  %i.g = icmp sgt i32 %1, -1                      ; 2 uses
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = sub nsw i32 0, %0                        ; 2 uses
  %i.i = udiv i32 %i.h, %1
  %i.j = sub nsw i32 0, %i.i
  %i.k = urem i32 %i.h, %1
  %3 = sub nsw i32 0, %i.k
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %.not49 = icmp eq i32 %1, -2147483648
  br i1 %.not49, label %5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = sub nsw i32 0, %0                        ; 2 uses
  %i.m = sub nsw i32 0, %1                        ; 2 uses
  %i.n = udiv i32 %i.l, %i.m
  %i.o = urem i32 %i.l, %i.m
  %4 = sub nsw i32 0, %i.o
  br label %bb.o

5:                                                ; preds = %bb.i
  %6 = and i32 %0, 2147483647
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = sub nuw i32 -2147483648, %1              ; 2 uses
  %i.q = udiv i32 %i.p, %1
  %i.r = xor i32 %i.q, -1
  %i.s = urem i32 %i.p, %1
  %7 = sub nsw i32 0, %i.s
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.not48 = icmp eq i32 %1, -2147483648
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg = and i32 %1, 2147483647                  ; 2 uses
  %i.t = sub nsw i32 0, %1                        ; 2 uses
  %i.u = udiv i32 %.neg, %i.t
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = urem i32 %.neg, %i.t
  %8 = sub nsw i32 0, %i.w
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.d, %bb.j, %5, %bb.h, %bb.n, %bb.l, %bb.e
  %.043 = phi i32 [ %i.f, %bb.e ], [ 0, %bb.d ], [ %i.j, %bb.h ], [ %i.n, %bb.j ], [ 1, %5 ], [ %i.r, %bb.l ], [ %i.v, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.0 = phi i32 [ %2, %bb.e ], [ %0, %bb.d ], [ %3, %bb.h ], [ %4, %bb.j ], [ %6, %5 ], [ %7, %bb.l ], [ %8, %bb.n ], [ 0, %bb.m ]
  %9 = icmp sgt i32 %.0, -1
  br i1 %9, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv = icmp slt i32 %1, 1
  %i.x = select i1 %.inv, i32 1, i32 -1
  %i.y = add nsw i32 %.043, %i.x
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p, %bb.c
  %.044 = phi i32 [ %i.c, %bb.c ], [ %i.y, %bb.p ], [ %.043, %bb.o ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483647, -2147483648) i32 @stb_mod_trunc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.2 = srem i32 %0, %1
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -2147483647, 2147483647) i32 @stb_mod_floor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %0, %1                          ; 3 uses
  %.inv = icmp sgt i32 %i.a, 0
  %i.b = icmp slt i32 %i.a, 0
  %i.c = icmp slt i32 %1, 0
  %.inv.sink = select i1 %i.c, i1 %.inv, i1 %i.b
  %i.d = select i1 %.inv.sink, i32 %1, i32 0
  %.1 = add nsw i32 %i.d, %i.a
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @stb_mod_eucl(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %0, %1                          ; 2 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.c = icmp slt i32 %i.a, 0
  %i.d = select i1 %i.c, i32 %i.b, i32 0
  %.0 = add i32 %i.d, %i.a
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
end_hunk_0
