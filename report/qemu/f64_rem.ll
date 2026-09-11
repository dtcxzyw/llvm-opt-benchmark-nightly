Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/f64_rem?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i64 @f64_rem(i64 %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %0, 52
  %i.b = and i64 %i.a, 2047                       ; 4 uses
  %i.c = and i64 %0, 4503599627370495             ; 4 uses
  %i.d = lshr i64 %1, 52
  %i.e = and i64 %i.d, 2047                       ; 5 uses
  %i.f = and i64 %1, 4503599627370495             ; 5 uses
  %i.g = icmp eq i64 %i.b, 2047
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not129 = icmp eq i64 %i.c, 0
  br i1 %.not129, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.e, 2047
  %i.i = icmp ne i64 %i.f, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.y, label %bb.z

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.e, 2047
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not128 = icmp eq i64 %i.f, 0
  br i1 %.not128, label %bb.aa, label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.k = add nsw i64 %i.e, -1
  %i.l = icmp slt i64 %i.b, %i.k
  br i1 %i.l, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not117 = icmp eq i64 %i.f, 0
  br i1 %.not117, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call { i64, i64 } @softfloat_normSubnormalF64Sig(i64 noundef %i.f) #3 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0104 = phi i64 [ %i.e, %bb.g ], [ %i.n, %bb.i ] ; 3 uses
  %.0102 = phi i64 [ %i.f, %bb.g ], [ %i.o, %bb.i ]
  %.not118 = icmp eq i64 %i.b, 0
  br i1 %.not118, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not119 = icmp eq i64 %i.c, 0
  br i1 %.not119, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = tail call { i64, i64 } @softfloat_normSubnormalF64Sig(i64 noundef %i.c) #3 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0106 = phi i64 [ %i.b, %bb.j ], [ %i.q, %bb.l ] ; 2 uses
  %.0105 = phi i64 [ %i.c, %bb.j ], [ %i.r, %bb.l ] ; 2 uses
  %i.s = or i64 %.0105, 4503599627370496          ; 3 uses
  %i.t = or i64 %.0102, 4503599627370496          ; 3 uses
  %i.u = sub nsw i64 %.0106, %.0104               ; 5 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.w = icmp slt i64 %i.u, -1
  br i1 %i.w, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = shl i64 %i.t, 9                          ; 4 uses
  %.not122 = icmp eq i64 %.0106, %.0104
  br i1 %.not122, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = shl i64 %i.s, 8
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.z = shl i64 %i.s, 9                          ; 2 uses
  %i.aa = icmp ule i64 %i.x, %i.z                 ; 2 uses
  %i.ab = zext i1 %i.aa to i32
  %i.ac = select i1 %i.aa, i64 %i.x, i64 0
  %spec.select = sub nuw i64 %i.z, %i.ac
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.ad = lshr i64 %i.t, 21
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = udiv i64 9223372036854775807, %i.ae     ; 4 uses
  %i.ag = shl i64 %i.s, 9                         ; 3 uses
  %i.ah = add nsw i64 %i.u, -30                   ; 4 uses
  %i.ai = shl i64 %i.t, 9                         ; 9 uses
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = mul nuw i64 %i.aj, %i.af                ; 3 uses
  %i.al = icmp samesign ult i64 %i.u, 30
  br i1 %i.al, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %2 = udiv i64 %i.ah, 29
  %3 = and i64 %2, 1
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %4 = add nuw i64 %i.ak, 2147483648
  %5 = lshr i64 %4, 32
  %6 = shl i64 %.0105, 38
  %7 = mul i64 %5, %i.ai
  %8 = sub i64 %6, %7                             ; 2 uses
  %.not120134.prol = icmp slt i64 %8, 0
  %9 = select i1 %.not120134.prol, i64 %i.ai, i64 0
  %spec.select130.prol = add i64 %9, %8           ; 3 uses
  %10 = add nsw i64 %i.u, -59                     ; 2 uses
  %11 = lshr i64 %spec.select130.prol, 32
  %12 = mul nuw i64 %11, %i.af                    ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select130.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %spec.select130.prol, %.lr.ph.prol ]
  %.lcssa162.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %10, %.lr.ph.prol ]
  %.lcssa161.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %12, %.lr.ph.prol ]
  %.unr = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %12, %.lr.ph.prol ]
  %.098139.unr = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %10, %.lr.ph.prol ]
  %.099138.unr = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %spec.select130.prol, %.lr.ph.prol ]
  %13 = icmp ult i64 %i.ah, 29
  br i1 %13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.am = phi i64 [ %i.av, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.098139 = phi i64 [ %i.at, %.lr.ph ], [ %.098139.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.099138 = phi i64 [ %spec.select130.1, %.lr.ph ], [ %.099138.unr, %.lr.ph.prol.loopexit ]
  %14 = add nuw i64 %i.am, 2147483648
  %15 = lshr i64 %14, 32
  %16 = shl i64 %.099138, 29
  %17 = mul i64 %15, %i.ai
  %18 = sub i64 %16, %17                          ; 2 uses
  %.not120134 = icmp slt i64 %18, 0
  %19 = select i1 %.not120134, i64 %i.ai, i64 0
  %spec.select130 = add i64 %19, %18              ; 2 uses
  %20 = lshr i64 %spec.select130, 32
  %21 = mul nuw i64 %20, %i.af
  %i.an = add nuw i64 %21, 2147483648
  %i.ao = lshr i64 %i.an, 32
  %i.ap = shl i64 %spec.select130, 29
  %i.aq = mul i64 %i.ao, %i.ai
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %.not120134.1 = icmp slt i64 %i.ar, 0
  %i.as = select i1 %.not120134.1, i64 %i.ai, i64 0
  %spec.select130.1 = add i64 %i.as, %i.ar        ; 3 uses
  %i.at = add nsw i64 %.098139, -58               ; 2 uses
  %i.au = lshr i64 %spec.select130.1, 32
  %i.av = mul nuw i64 %i.au, %i.af                ; 2 uses
  %22 = icmp slt i64 %.098139, 58
  br i1 %22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.r
  %.099.lcssa = phi i64 [ %i.ag, %bb.r ], [ %spec.select130.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select130.1, %.lr.ph ]
  %.098.lcssa = phi i64 [ %i.ah, %bb.r ], [ %.lcssa162.unr, %.lr.ph.prol.loopexit ], [ %i.at, %.lr.ph ] ; 2 uses
  %.lcssa137 = phi i64 [ %i.ak, %bb.r ], [ %.lcssa161.unr, %.lr.ph.prol.loopexit ], [ %i.av, %.lr.ph ]
  %i.aw = lshr i64 %.lcssa137, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = trunc nsw i64 %.098.lcssa to i32
  %i.az = xor i32 %i.ay, -1
  %i.ba = lshr i32 %i.ax, %i.az                   ; 3 uses
  %i.bb = add nsw i64 %.098.lcssa, 30
  %i.bc = shl i64 %.099.lcssa, %i.bb
  %i.bd = zext i32 %i.ba to i64
  %i.be = mul i64 %i.ai, %i.bd
  %i.bf = sub i64 %i.bc, %i.be                    ; 4 uses
  %.not121 = icmp sgt i64 %i.bf, -1
  br i1 %.not121, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bg = add i64 %i.bf, %i.ai
  br label %.loopexit

bb.t:                                             ; preds = %bb.q, %._crit_edge, %bb.p
  %.1103 = phi i64 [ %i.x, %bb.p ], [ %i.ai, %._crit_edge ], [ %i.x, %bb.q ]
  %.2101 = phi i64 [ %i.y, %bb.p ], [ %i.bf, %._crit_edge ], [ %spec.select, %bb.q ]
  %.097 = phi i32 [ 0, %bb.p ], [ %i.ba, %._crit_edge ], [ %i.ab, %bb.q ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.3 = phi i64 [ %.2101, %bb.t ], [ %i.bi, %bb.u ] ; 2 uses
  %.1 = phi i32 [ %.097, %bb.t ], [ %i.bh, %bb.u ]
  %i.bh = add i32 %.1, 1                          ; 2 uses
  %i.bi = sub i64 %.3, %.1103                     ; 3 uses
  %.not123 = icmp sgt i64 %i.bi, -1
  br i1 %.not123, label %bb.u, label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.s
  %.4 = phi i64 [ %i.bf, %bb.s ], [ %i.bi, %bb.u ] ; 2 uses
  %.2 = phi i32 [ %i.ba, %bb.s ], [ %i.bh, %bb.u ]
  %.096 = phi i64 [ %i.bg, %bb.s ], [ %.3, %bb.u ] ; 2 uses
  %i.bj = add i64 %.096, %.4                      ; 2 uses
  %.not124 = icmp sgt i64 %i.bj, -1
  br i1 %.not124, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %.not125 = icmp ne i64 %i.bj, 0
  %i.bk = and i32 %.2, 1
  %.not126 = icmp eq i32 %i.bk, 0
  %or.cond131 = select i1 %.not125, i1 true, i1 %.not126
  br i1 %or.cond131, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5 = phi i64 [ %.096, %bb.w ], [ %.4, %bb.v ]  ; 2 uses
  %spec.select132 = tail call i64 @llvm.abs.i64(i64 %.5, i1 false)
  %i.bl = xor i64 %.5, %0
  %spec.select133 = icmp slt i64 %i.bl, 0
  %i.bm = tail call i64 @softfloat_normRoundPackToF64(i1 noundef zeroext %spec.select133, i64 noundef %.0104, i64 noundef %spec.select132) #3
  br label %bb.aa

bb.y:                                             ; preds = %bb.e, %bb.b, %bb.c
  %i.bn = tail call i64 @softfloat_propagateNaNF64UI(i64 noundef %0, i64 noundef %1) #3
  br label %bb.aa

bb.z:                                             ; preds = %bb.h, %bb.c
  tail call void @softfloat_raiseFlags(i8 noundef zeroext 16) #3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.n, %bb.k, %bb.f, %bb.e, %bb.x
  %.sroa.094.0 = phi i64 [ %0, %bb.n ], [ %0, %bb.f ], [ %0, %bb.e ], [ %0, %bb.k ], [ %i.bm, %bb.x ], [ %i.bn, %bb.y ], [ -2251799813685248, %bb.z ]
  ret i64 %.sroa.094.0
}

declare { i64, i64 } @softfloat_normSubnormalF64Sig(i64 noundef) local_unnamed_addr #1

declare i64 @softfloat_normRoundPackToF64(i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @softfloat_propagateNaNF64UI(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @softfloat_raiseFlags(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

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
