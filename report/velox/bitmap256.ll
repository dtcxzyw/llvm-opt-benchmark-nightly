inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 64                          ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = srem i32 %1, 64
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nsw i64 -1, %i.f
  %i.h = and i64 %i.d, %i.g                       ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i32 %i.a, 6
  %i.j = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.h, i1 true)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = or disjoint i32 %i.i, %i.k
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.j [
    i32 0, label %bb.d
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.n, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.p, 64
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %.not14 = icmp eq i64 %i.s, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.s, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %i.u, 128
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %.not15 = icmp eq i64 %i.x, 0
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.x, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = or disjoint i32 %i.z, 192
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.h, %bb.i, %bb.g, %bb.e, %bb.b
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.aa, %bb.i ], [ %i.q, %bb.e ], [ %i.v, %bb.g ], [ -1, %bb.h ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
end_hunk_0
