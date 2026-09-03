Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/f32_rem?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f32_rem(i32 %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64                       ; 3 uses
  %i.b = lshr i64 %i.a, 23
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = and i64 %i.a, 8388607                    ; 4 uses
  %i.e = zext i32 %1 to i64                       ; 3 uses
  %i.f = lshr i64 %i.e, 23                        ; 2 uses
  %i.g = and i64 %i.f, 255                        ; 2 uses
  %i.h = and i64 %i.e, 8388607                    ; 5 uses
  %i.i = icmp eq i64 %i.c, 255
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not111 = icmp eq i64 %i.d, 0
  br i1 %.not111, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.g, 255
  %i.k = icmp ne i64 %i.h, 0
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.x, label %bb.y

bb.d:                                             ; preds = %bb.a
  %trunc = trunc i64 %i.f to i8
  switch i8 %trunc, label %bb.h [
    i8 -1, label %bb.e
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.not110 = icmp eq i64 %i.h, 0
  br i1 %.not110, label %bb.z, label %bb.x

bb.f:                                             ; preds = %bb.d
  %.not102 = icmp eq i64 %i.h, 0
  br i1 %.not102, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call { i64, i64 } @softfloat_normSubnormalF32Sig(i64 noundef %i.h) #3 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.090 = phi i64 [ %i.g, %bb.d ], [ %i.m, %bb.g ] ; 3 uses
  %.088 = phi i64 [ %i.h, %bb.d ], [ %i.n, %bb.g ]
  %.not103 = icmp eq i64 %i.c, 0
  br i1 %.not103, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not104 = icmp eq i64 %i.d, 0
  br i1 %.not104, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call { i64, i64 } @softfloat_normSubnormalF32Sig(i64 noundef %i.d) #3 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.092 = phi i64 [ %i.c, %bb.h ], [ %i.p, %bb.j ] ; 2 uses
  %.091 = phi i64 [ %i.d, %bb.h ], [ %i.q, %bb.j ]
  %i.r = trunc i64 %.091 to i32
  %i.s = or i32 %i.r, 8388608                     ; 3 uses
  %i.t = or i64 %.088, 8388608                    ; 3 uses
  %i.u = sub nsw i64 %.092, %.090                 ; 4 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.w = icmp slt i64 %i.u, -1
  br i1 %i.w, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = shl i64 %i.t, 6                          ; 5 uses
  %.not105 = icmp eq i64 %.092, %.090
  br i1 %.not105, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = shl i32 %i.s, 5
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.z = shl i32 %i.s, 6                          ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %.not = icmp ugt i64 %i.x, %i.aa
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = trunc nuw i64 %i.x to i32
  %i.ac = sub nuw i32 %i.z, %i.ab
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.ad = shl i64 %i.t, 8
  %i.ae = and i64 %i.ad, 4294967040
  %i.af = udiv i64 9223372036854775807, %i.ae     ; 2 uses
  %i.ag = shl i32 %i.s, 7                         ; 2 uses
  %i.ah = add nsw i64 %i.u, -31                   ; 2 uses
  %i.ai = shl i64 %i.t, 6                         ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = mul nuw i64 %i.af, %i.aj
  %i.al = lshr i64 %i.ak, 32
  %i.am = trunc nuw i64 %i.al to i32              ; 2 uses
  %i.an = icmp samesign ult i64 %i.u, 31
  %.pre = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.an, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.q, %.lr.ph.prol
  %i.ao = phi i32 [ %i.av, %.lr.ph.prol ], [ %i.am, %bb.q ]
  %prol.iter = phi i64 [ %i.ar, %.lr.ph.prol ], [ %i.ah, %bb.q ] ; 2 uses
  %i.ap = mul i32 %i.ao, %.pre
  %i.aq = sub i32 0, %i.ap                        ; 2 uses
  %i.ar = add nsw i64 %prol.iter, -29             ; 2 uses
  %i.as = zext i32 %i.aq to i64
  %i.at = mul nuw i64 %i.af, %i.as
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %2 = icmp samesign ult i64 %prol.iter, 29
  br i1 %2, label %._crit_edge, label %.lr.ph.prol

._crit_edge:                                      ; preds = %.lr.ph.prol, %bb.q
  %.086.lcssa = phi i32 [ %i.ag, %bb.q ], [ %i.aq, %.lr.ph.prol ]
  %.085.lcssa = phi i64 [ %i.ah, %bb.q ], [ %i.ar, %.lr.ph.prol ]
  %.lcssa114 = phi i32 [ %i.am, %bb.q ], [ %i.av, %.lr.ph.prol ]
  %i.aw = trunc nsw i64 %.085.lcssa to i32        ; 2 uses
  %i.ax = xor i32 %i.aw, -1
  %i.ay = lshr i32 %.lcssa114, %i.ax              ; 2 uses
  %i.az = add nsw i32 %i.aw, 30
  %i.ba = shl i32 %.086.lcssa, %i.az
  %i.bb = mul i32 %i.ay, %.pre
  %i.bc = sub i32 %i.ba, %i.bb
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.o, %._crit_edge
  %.189 = phi i64 [ %i.x, %bb.n ], [ %i.x, %bb.p ], [ %i.x, %bb.o ], [ %i.ai, %._crit_edge ]
  %.187 = phi i32 [ %i.y, %bb.n ], [ %i.ac, %bb.p ], [ %i.z, %bb.o ], [ %i.bc, %._crit_edge ]
  %.084 = phi i32 [ 0, %bb.n ], [ 1, %bb.p ], [ 0, %bb.o ], [ %i.ay, %._crit_edge ]
  %i.bd = trunc i64 %.189 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.2 = phi i32 [ %.187, %bb.r ], [ %i.bf, %bb.s ] ; 3 uses
  %.1 = phi i32 [ %.084, %bb.r ], [ %i.be, %bb.s ] ; 2 uses
  %i.be = add i32 %.1, 1
  %i.bf = sub i32 %.2, %i.bd                      ; 4 uses
  %.not106 = icmp sgt i32 %i.bf, -1
  br i1 %.not106, label %bb.s, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add i32 %i.bf, %.2                      ; 2 uses
  %.not107 = icmp sgt i32 %i.bg, -1
  br i1 %.not107, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not108 = icmp eq i32 %i.bg, 0
  %i.bh = and i32 %.1, 1
  %.not109.not = icmp eq i32 %i.bh, 0
  %or.cond112 = select i1 %.not108, i1 %.not109.not, i1 false
  br i1 %or.cond112, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3 = phi i32 [ %.2, %bb.v ], [ %i.bf, %bb.u ]  ; 2 uses
  %spec.select = tail call i32 @llvm.abs.i32(i32 %.3, i1 false)
  %i.bi = xor i32 %.3, %0
  %spec.select113 = icmp slt i32 %i.bi, 0
  %i.bj = zext i32 %spec.select to i64
  %i.bk = tail call i32 @softfloat_normRoundPackToF32(i1 noundef zeroext %spec.select113, i64 noundef %.090, i64 noundef %i.bj) #3
  br label %bb.z

bb.x:                                             ; preds = %bb.e, %bb.b, %bb.c
  %i.bl = tail call i64 @softfloat_propagateNaNF32UI(i64 noundef %i.a, i64 noundef %i.e) #3
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.f, %bb.c
  tail call void @softfloat_raiseFlags(i8 noundef zeroext 16) #3
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.l, %bb.i, %bb.e, %bb.w
  %.sroa.082.0 = phi i32 [ %0, %bb.l ], [ %0, %bb.e ], [ %0, %bb.i ], [ %i.bk, %bb.w ], [ %i.bm, %bb.x ], [ -4194304, %bb.y ]
  ret i32 %.sroa.082.0
}

declare { i64, i64 } @softfloat_normSubnormalF32Sig(i64 noundef) local_unnamed_addr #1

declare i32 @softfloat_normRoundPackToF32(i1 noundef zeroext, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @softfloat_propagateNaNF32UI(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @softfloat_raiseFlags(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

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
