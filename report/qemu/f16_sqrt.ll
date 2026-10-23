Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/f16_sqrt?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@softfloat_approxRecipSqrt_1k0s = external local_unnamed_addr constant [16 x i16], align 16
@softfloat_approxRecipSqrt_1k1s = external local_unnamed_addr constant [16 x i16], align 16

; Function Attrs: nounwind uwtable
define dso_local i16 @f16_sqrt(i16 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %.not = icmp sgt i16 %0, -1                     ; 2 uses
  %i.b = lshr i16 %0, 10
  %i.c = trunc nuw nsw i16 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 4 uses
  %i.e = and i64 %i.a, 1023                       ; 5 uses
  %i.f = icmp eq i8 %i.d, 31
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not71 = icmp eq i64 %i.e, 0
  br i1 %.not71, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @softfloat_propagateNaNF16UI(i64 noundef %i.a, i64 noundef 0) #2
  %i.h = trunc i64 %i.g to i16
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.p, label %bb.o

bb.e:                                             ; preds = %bb.a
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = zext nneg i8 %i.d to i64
  %i.j = or i64 %i.e, %i.i
  %.not70 = icmp eq i64 %i.j, 0
  br i1 %.not70, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.e
  %.not63 = icmp eq i8 %i.d, 0
  br i1 %.not63, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not64 = icmp eq i64 %i.e, 0
  br i1 %.not64, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call { i8, i64 } @softfloat_normSubnormalF16Sig(i64 noundef %i.e) #2 ; 2 uses
  %i.l = extractvalue { i8, i64 } %i.k, 0
  %i.m = extractvalue { i8, i64 } %i.k, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.060 = phi i8 [ %i.d, %bb.g ], [ %i.l, %bb.i ] ; 2 uses
  %.059 = phi i64 [ %i.e, %bb.g ], [ %i.m, %bb.i ] ; 3 uses
  %i.n = sext i8 %.060 to i64
  %i.o = and i8 %.060, 1                          ; 2 uses
  %i.p = or i64 %.059, 1024                       ; 2 uses
  %i.q = lshr i64 %.059, 6
  %i.r = and i64 %i.q, 14
  %i.s = zext nneg i8 %i.o to i64
  %i.t = or disjoint i64 %i.r, %i.s               ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @softfloat_approxRecipSqrt_1k0s, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !13
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @softfloat_approxRecipSqrt_1k1s, i64 %i.t
  %i.y = load i16, ptr %i.x, align 2, !tbaa !13
  %i.z = zext i16 %i.y to i64
  %i.aa = and i64 %.059, 127
  %i.ab = mul nuw nsw i64 %i.aa, %i.z
  %i.ac = lshr i64 %i.ab, 11
  %i.ad = sub nsw i64 %i.w, %i.ac                 ; 4 uses
  %i.ae = mul nsw i64 %i.ad, %i.ad
  %.not65 = icmp eq i8 %i.o, 0                    ; 2 uses
  %spec.select.v = select i1 %.not65, i64 1, i64 2
  %spec.select = lshr i64 %i.ae, %spec.select.v
  %i.af = mul i64 %spec.select, %i.p
  %i.ag = lshr i64 %i.af, 16
  %i.ah = and i64 %i.ag, 65535
  %i.ai = xor i64 %i.ah, 65535
  %i.aj = mul nsw i64 %i.ai, %i.ad
  %i.ak = lshr i64 %i.aj, 25
  %i.al = add nsw i64 %i.ak, %i.ad                ; 2 uses
  %i.am = and i64 %i.al, 32768
  %.not66 = icmp eq i64 %i.am, 0
  %spec.store.select = select i1 %.not66, i64 32768, i64 %i.al
  %i.an = shl i64 %i.p, 5
  %i.ao = mul i64 %i.an, %spec.store.select
  %.0.v = select i1 %.not65, i64 16, i64 17
  %.0 = lshr i64 %i.ao, %.0.v                     ; 3 uses
  %i.ap = add nuw nsw i64 %.0, 1                  ; 4 uses
  %i.aq = and i64 %i.ap, 7
  %.not67 = icmp eq i64 %i.aq, 0
  br i1 %.not67, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ar = lshr exact i64 %i.ap, 1                 ; 2 uses
  %i.as = mul i64 %i.ar, %i.ar                    ; 2 uses
  %i.at = and i64 %i.as, 32768
  %.not68 = icmp eq i64 %i.at, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %1 = add nuw nsw i64 %.0, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.au = and i64 %i.as, 32752
  %.not69 = icmp eq i64 %i.au, 0
  %spec.select72 = select i1 %.not69, i64 %i.ap, i64 %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.1 = phi i64 [ %i.ap, %bb.j ], [ %1, %bb.l ], [ %spec.select72, %bb.m ]
  %i.av = shl nsw i64 %i.n, 55
  %sext = add nsw i64 %i.av, 468374361246531584
  %i.aw = ashr i64 %sext, 56
  %i.ax = tail call i16 @softfloat_roundPackToF16(i1 noundef zeroext false, i64 noundef %i.aw, i64 noundef %.1) #2
  br label %bb.p

bb.o:                                             ; preds = %bb.f, %bb.d
  tail call void @softfloat_raiseFlags(i8 noundef zeroext 16) #2
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o, %bb.h, %bb.f, %bb.d, %bb.n
  %.sroa.056.0 = phi i16 [ %0, %bb.h ], [ %0, %bb.f ], [ %0, %bb.d ], [ %i.ax, %bb.n ], [ %i.h, %bb.c ], [ -512, %bb.o ]
  ret i16 %.sroa.056.0
}

declare i64 @softfloat_propagateNaNF16UI(i64 noundef, i64 noundef) local_unnamed_addr #1

declare { i8, i64 } @softfloat_normSubnormalF16Sig(i64 noundef) local_unnamed_addr #1

declare i16 @softfloat_roundPackToF16(i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @softfloat_raiseFlags(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!12 = !{!"short", !8, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
