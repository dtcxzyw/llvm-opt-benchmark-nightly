Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_float16?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN6duckdb16Float16ToFloat32ERKt(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %0) local_unnamed_addr #0 !guid !8 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = zext i16 %i.a to i32                     ; 4 uses
  %i.c = lshr i32 %i.b, 15                        ; 4 uses
  %i.d = lshr i32 %i.b, 10
  %i.e = and i32 %i.d, 31                         ; 2 uses
  %i.f = and i32 %i.b, 1023                       ; 3 uses
  switch i32 %i.e, label %bb.f [
    i32 0, label %bb.b
    i32 31, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i32 %i.c, 31
  br label %bb.g

.preheader:                                       ; preds = %bb.b, %.preheader
  %.023 = phi i32 [ %i.j, %.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %.01822 = phi i32 [ %i.i, %.preheader ], [ 113, %bb.b ]
  %i.i = add i32 %.01822, -1                      ; 2 uses
  %i.j = shl i32 %.023, 1
  %i.k = and i32 %.023, 512
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.d, !llvm.loop !7

bb.d:                                             ; preds = %.preheader
  %i.m = shl nuw i32 %i.c, 31
  %i.n = shl i32 %i.i, 23
  %i.o = or i32 %i.n, %i.m
  %i.p = shl i32 %.023, 14
  %i.q = and i32 %i.p, 8372224
  %i.r = or disjoint i32 %i.o, %i.q
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = shl nuw i32 %i.c, 31
  %i.t = shl nuw nsw i32 %i.b, 13
  %i.u = or disjoint i32 %i.s, %i.t
  %i.v = or i32 %i.u, 2139095040
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.w = shl nuw i32 %i.c, 31
  %i.x = shl nuw nsw i32 %i.e, 23
  %i.y = add nuw nsw i32 %i.x, 939524096
  %i.z = or disjoint i32 %i.y, %i.w
  %i.aa = shl nuw nsw i32 %i.f, 13
  %i.ab = or disjoint i32 %i.z, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.021 = phi i32 [ %i.ab, %bb.f ], [ %i.h, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ]
  %i.ac = bitcast i32 %.021 to float
  ret float %i.ac
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = distinct !{!7, !11}
!8 = !{i64 3987093849295536613}
!9 = !{!"short", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
