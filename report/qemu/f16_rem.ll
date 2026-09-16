Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/f16_rem?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i16 @f16_rem(i16 %0, i16 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i64                       ; 2 uses
  %i.b = lshr i16 %0, 10
  %i.c = trunc nuw nsw i16 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 3 uses
  %i.e = and i64 %i.a, 1023                       ; 4 uses
  %i.f = zext i16 %1 to i64                       ; 2 uses
  %i.g = lshr i16 %1, 10
  %i.h = trunc nuw nsw i16 %i.g to i8
  %i.i = and i8 %i.h, 31                          ; 3 uses
  %i.j = and i64 %i.f, 1023                       ; 5 uses
  %i.k = icmp eq i8 %i.d, 31
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not117 = icmp eq i64 %i.e, 0
  br i1 %.not117, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i8 %i.i, 31
  %i.m = icmp ne i64 %i.j, 0
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.x, label %bb.y

bb.d:                                             ; preds = %bb.a
  switch i8 %i.i, label %bb.h [
    i8 31, label %bb.e
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.not116 = icmp eq i64 %i.j, 0
  br i1 %.not116, label %bb.z, label %bb.x

bb.f:                                             ; preds = %bb.d
  %.not108 = icmp eq i64 %i.j, 0
  br i1 %.not108, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call { i8, i64 } @softfloat_normSubnormalF16Sig(i64 noundef %i.j) #3 ; 2 uses
  %i.o = extractvalue { i8, i64 } %i.n, 0
  %i.p = extractvalue { i8, i64 } %i.n, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.093 = phi i8 [ %i.i, %bb.d ], [ %i.o, %bb.g ] ; 3 uses
  %.091 = phi i64 [ %i.j, %bb.d ], [ %i.p, %bb.g ]
  %.not109 = icmp eq i8 %i.d, 0
  br i1 %.not109, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not110 = icmp eq i64 %i.e, 0
  br i1 %.not110, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call { i8, i64 } @softfloat_normSubnormalF16Sig(i64 noundef %i.e) #3 ; 2 uses
  %i.r = extractvalue { i8, i64 } %i.q, 0
  %i.s = extractvalue { i8, i64 } %i.q, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.095 = phi i8 [ %i.d, %bb.h ], [ %i.r, %bb.j ] ; 2 uses
  %.094 = phi i64 [ %i.e, %bb.h ], [ %i.s, %bb.j ]
  %i.t = trunc i64 %.094 to i16
  %i.u = or i16 %i.t, 1024                        ; 3 uses
  %i.v = or i64 %.091, 1024                       ; 3 uses
  %i.w = sub i8 %.095, %.093                      ; 6 uses
  %i.x = icmp slt i8 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.y = icmp slt i8 %i.w, -1
  br i1 %i.y, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = shl i64 %i.v, 3                          ; 5 uses
  %.not111 = icmp eq i8 %.095, %.093
  br i1 %.not111, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = shl i16 %i.u, 2
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ab = shl i16 %i.u, 3                         ; 3 uses
  %i.ac = zext i16 %i.ab to i64
  %.not = icmp ugt i64 %i.z, %i.ac
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = trunc nuw i64 %i.z to i16
  %i.ae = sub nuw i16 %i.ab, %i.ad
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.af = shl i64 %i.v, 21
  %i.ag = and i64 %i.af, 4292870144
  %i.ah = udiv i64 9223372036854775807, %i.ag     ; 5 uses
  %i.ai = shl i16 %i.u, 4                         ; 2 uses
  %i.aj = add nsw i8 %i.w, -31                    ; 2 uses
  %i.ak = shl i64 %i.v, 3                         ; 6 uses
  %i.al = sext i8 %i.aj to i32                    ; 5 uses
  %i.am = zext i16 %i.ai to i64
  %i.an = mul nuw nsw i64 %i.ah, %i.am
  %i.ao = lshr i64 %i.an, 16                      ; 2 uses
  %i.ap = icmp samesign ult i8 %i.w, 31
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.aq = mul i64 %i.ao, %i.ak                    ; 2 uses
  %i.ar = add nsw i32 %i.al, -29
  %i.as = sub i64 0, %i.aq
  %i.at = and i64 %i.as, 65528
  %i.au = mul nuw nsw i64 %i.at, %i.ah
  %i.av = lshr i64 %i.au, 16                      ; 2 uses
  %i.aw = icmp ult i8 %i.aj, 29
  br i1 %i.aw, label %._crit_edge.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %2 = mul i64 %i.av, %i.ak                       ; 2 uses
  %3 = add nsw i32 %i.al, -58
  %4 = sub i64 0, %2
  %5 = and i64 %4, 65528
  %6 = mul nuw nsw i64 %5, %i.ah
  %7 = lshr i64 %6, 16                            ; 2 uses
  %8 = icmp slt i8 %i.w, 89
  br i1 %8, label %._crit_edge.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %9 = mul i64 %7, %i.ak                          ; 2 uses
  %10 = add nsw i32 %i.al, -87
  %11 = sub i64 0, %9
  %12 = and i64 %11, 65528
  %13 = mul nuw nsw i64 %12, %i.ah
  %14 = lshr i64 %13, 16                          ; 2 uses
  %15 = icmp slt i8 %i.w, 118
  br i1 %15, label %._crit_edge.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %16 = mul i64 %14, %i.ak                        ; 2 uses
  %17 = add nsw i32 %i.al, -116
  %18 = sub i64 0, %16
  %19 = and i64 %18, 65528
  %20 = mul nuw nsw i64 %19, %i.ah
  %21 = lshr i64 %20, 16
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa143 = phi i64 [ %i.aq, %.lr.ph ], [ %2, %.lr.ph.1 ], [ %9, %.lr.ph.2 ], [ %16, %.lr.ph.3 ]
  %.lcssa142 = phi i32 [ %i.ar, %.lr.ph ], [ %3, %.lr.ph.1 ], [ %10, %.lr.ph.2 ], [ %17, %.lr.ph.3 ]
  %.lcssa141 = phi i64 [ %i.av, %.lr.ph ], [ %7, %.lr.ph.1 ], [ %14, %.lr.ph.2 ], [ %21, %.lr.ph.3 ]
  %i.ax = trunc i64 %.lcssa143 to i16
  %i.ay = sub i16 0, %i.ax
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.089.lcssa = phi i16 [ %i.ai, %bb.q ], [ %i.ay, %._crit_edge.loopexit ]
  %.088.lcssa = phi i32 [ %i.al, %bb.q ], [ %.lcssa142, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa120 = phi i64 [ %i.ao, %bb.q ], [ %.lcssa141, %._crit_edge.loopexit ]
  %i.az = trunc nuw i64 %.lcssa120 to i32
  %i.ba = xor i32 %.088.lcssa, -1
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = zext i16 %.089.lcssa to i32
  %i.be = add nsw i32 %.088.lcssa, 30
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.ak, %i.bc
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i16
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.o, %._crit_edge
  %.192 = phi i64 [ %i.z, %bb.n ], [ %i.z, %bb.p ], [ %i.z, %bb.o ], [ %i.ak, %._crit_edge ]
  %.190 = phi i16 [ %i.aa, %bb.n ], [ %i.ae, %bb.p ], [ %i.ab, %bb.o ], [ %i.bj, %._crit_edge ]
  %.087 = phi i64 [ 0, %bb.n ], [ 1, %bb.p ], [ 0, %bb.o ], [ %i.bc, %._crit_edge ]
  %i.bk = trunc i64 %.192 to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.2 = phi i16 [ %.190, %bb.r ], [ %i.bm, %bb.s ] ; 3 uses
  %.1 = phi i64 [ %.087, %bb.r ], [ %i.bl, %bb.s ] ; 2 uses
  %i.bl = add i64 %.1, 1
  %i.bm = sub i16 %.2, %i.bk                      ; 4 uses
  %.not112 = icmp sgt i16 %i.bm, -1
  br i1 %.not112, label %bb.s, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = add i16 %i.bm, %.2                      ; 2 uses
  %.not113 = icmp sgt i16 %i.bn, -1
  br i1 %.not113, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not114 = icmp eq i16 %i.bn, 0
  %i.bo = and i64 %.1, 1
  %.not115.not = icmp eq i64 %i.bo, 0
  %or.cond118 = select i1 %.not114, i1 %.not115.not, i1 false
  br i1 %or.cond118, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3 = phi i16 [ %.2, %bb.v ], [ %i.bm, %bb.u ]  ; 2 uses
  %spec.select = tail call i16 @llvm.abs.i16(i16 %.3, i1 false)
  %i.bp = xor i16 %.3, %0
  %spec.select119 = icmp slt i16 %i.bp, 0
  %i.bq = sext i8 %.093 to i64
  %i.br = zext i16 %spec.select to i64
  %i.bs = tail call i16 @softfloat_normRoundPackToF16(i1 noundef zeroext %spec.select119, i64 noundef %i.bq, i64 noundef %i.br) #3
  br label %bb.z

bb.x:                                             ; preds = %bb.e, %bb.b, %bb.c
  %i.bt = tail call i64 @softfloat_propagateNaNF16UI(i64 noundef %i.a, i64 noundef %i.f) #3
  %i.bu = trunc i64 %i.bt to i16
  br label %bb.z

bb.y:                                             ; preds = %bb.f, %bb.c
  tail call void @softfloat_raiseFlags(i8 noundef zeroext 16) #3
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.l, %bb.i, %bb.e, %bb.w
  %.sroa.085.0 = phi i16 [ %0, %bb.l ], [ %0, %bb.e ], [ %0, %bb.i ], [ %i.bs, %bb.w ], [ %i.bu, %bb.x ], [ -512, %bb.y ]
  ret i16 %.sroa.085.0
}

declare { i8, i64 } @softfloat_normSubnormalF16Sig(i64 noundef) local_unnamed_addr #1

declare i16 @softfloat_normRoundPackToF16(i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @softfloat_propagateNaNF16UI(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @softfloat_raiseFlags(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
end_hunk_0
