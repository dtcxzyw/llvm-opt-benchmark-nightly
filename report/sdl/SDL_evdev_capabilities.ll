Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_evdev_capabilities?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @SDL_EVDEV_GuessDeviceClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 64
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 32
  %.not77 = icmp eq i64 %i.c, 0
  br i1 %.not77, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.a, 28
  %or.cond118 = icmp eq i64 %i.d, 0
  br i1 %or.cond118, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %1, align 8                ; 4 uses
  %i.f = and i64 %i.e, 8
  %.not81 = icmp eq i64 %i.f, 0
  br i1 %.not81, label %.thread140, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %2, align 8                ; 4 uses
  %i.h = and i64 %i.g, 7
  %or.cond120.not145 = icmp eq i64 %i.h, 7
  %i.i = and i64 %i.e, 2
  %.not85 = icmp eq i64 %i.i, 0                   ; 2 uses
  %or.cond121 = and i1 %.not85, %or.cond120.not145
  br i1 %or.cond121, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i64 %i.g, 56
  %or.cond123.not146 = icmp eq i64 %i.j, 56
  %or.cond124 = and i1 %.not85, %or.cond123.not146
  br i1 %or.cond124, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.g, 3
  %or.cond125.not = icmp eq i64 %i.k, 3
  br i1 %or.cond125.not, label %bb.h, label %.thread140

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 2049
  %or.cond126 = icmp eq i64 %i.n, 0
  br i1 %or.cond126, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = and i64 %i.m, 32
  %.not96 = icmp eq i64 %i.o, 0
  br i1 %.not96, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 65536
  %.not97 = icmp eq i64 %i.r, 0
  br i1 %.not97, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = trunc i64 %i.m to i32
  %i.t = lshr i32 %i.s, 6
  %spec.select = and i32 %i.t, 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.070 = phi i32 [ 0, %bb.h ], [ %spec.select, %bb.k ], [ 64, %bb.i ], [ 1, %bb.j ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 281479271677954
  %i.x = and i64 %i.g, 2040
  %i.y = or disjoint i64 %i.x, %i.w
  %or.cond = icmp eq i64 %i.y, 0
  %i.z = or disjoint i32 %.070, 4
  %spec.select147 = select i1 %or.cond, i32 %.070, i32 %i.z
  br label %.thread140

.thread140:                                       ; preds = %bb.l, %bb.d, %bb.g
  %.171 = phi i32 [ 0, %bb.d ], [ %spec.select147, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.aa = and i64 %i.e, 4
  %.not110 = icmp eq i64 %i.aa, 0
  br i1 %.not110, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread140
  %i.ab = load i64, ptr %4, align 8
  %i.ac = and i64 %i.ab, 3
  %or.cond136.not = icmp eq i64 %i.ac, 3
  br i1 %or.cond136.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 16
  %i.ah = and i32 %i.ag, 1
  %spec.select137 = or i32 %i.ah, %.171
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.thread140
  %.272 = phi i32 [ %.171, %bb.m ], [ %spec.select137, %bb.n ], [ %.171, %.thread140 ] ; 5 uses
  %i.ai = and i64 %i.e, 2
  %.not114 = icmp eq i64 %i.ai, 0
  %.pre = load i64, ptr %3, align 8               ; 2 uses
  br i1 %.not114, label %bb.q, label %.preheader148.preheader

.preheader148.preheader:                          ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %i.an = or i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = or i64 %i.an, %i.ap
  %i.ar = or i64 %i.aq, %.pre
  %.not115 = icmp eq i64 %i.ar, 0
  br i1 %.not115, label %.lr.ph.a, label %.thread141

.thread141:                                       ; preds = %.preheader148.preheader
  %i.as = or i32 %.272, 128
  br label %bb.q

.lr.ph.a:                                         ; preds = %.preheader148.preheader, %.lr.ph.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.a ], [ 352, %.preheader148.preheader ] ; 3 uses
  %i.at = lshr i64 %indvars.iv, 6
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %indvars.iv, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  %.not116 = icmp ne i64 %i.ay, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 544
  %or.cond163 = select i1 %.not116, i1 true, i1 %exitcond.not
  br i1 %or.cond163, label %.lr.ph.1.a, label %.lr.ph.a, !llvm.loop !3

.lr.ph.1.a:                                       ; preds = %.lr.ph.a, %bb.p
  %indvars.iv.1.a = phi i64 [ %indvars.iv.next.1.2, %bb.p ], [ 560, %.lr.ph.a ] ; 5 uses
  %i.az = lshr i64 %indvars.iv.1.a, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %indvars.iv.1.a, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not116.1.a = icmp eq i64 %i.be, 0
  br i1 %.not116.1.a, label %.lr.ph.1.1, label %._crit_edge.1.thread

._crit_edge.1.thread:                             ; preds = %.lr.ph.1.2, %.lr.ph.1.1, %.lr.ph.1.a
  %5 = or i32 %.272, 128
  br label %bb.q

.lr.ph.1.1:                                       ; preds = %.lr.ph.1.a
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1.a, 1 ; 2 uses
  %i.bf = lshr i64 %indvars.iv.next.1, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %indvars.iv.next.1, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not116.1.1 = icmp eq i64 %i.bk, 0
  br i1 %.not116.1.1, label %.lr.ph.1.2, label %._crit_edge.1.thread

.lr.ph.1.2:                                       ; preds = %.lr.ph.1.1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.a, 2 ; 2 uses
  %i.bl = lshr i64 %indvars.iv.next.1.1, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %indvars.iv.next.1.1, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not116.1.2 = icmp eq i64 %i.bq, 0
  br i1 %.not116.1.2, label %bb.p, label %._crit_edge.1.thread

bb.p:                                             ; preds = %.lr.ph.1.2
  %indvars.iv.next.1.2 = add nuw nsw i64 %indvars.iv.1.a, 3 ; 2 uses
  %exitcond.1.not.2 = icmp eq i64 %indvars.iv.next.1.2, 704
  br i1 %exitcond.1.not.2, label %._crit_edge.1, label %.lr.ph.1.a, !llvm.loop !3

._crit_edge.1:                                    ; preds = %bb.p
  %6 = or i32 %.272, 128
  %spec.select162 = select i1 %.not116, i32 %6, i32 %.272
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.1, %._crit_edge.1.thread, %.thread141, %bb.o
  %.4 = phi i32 [ %.272, %bb.o ], [ %i.as, %.thread141 ], [ %5, %._crit_edge.1.thread ], [ %spec.select162, %._crit_edge.1 ] ; 2 uses
  %i.br = and i64 %.pre, 4294967294
  %i.bs = icmp eq i64 %i.br, 4294967294
  %i.bt = or i32 %.4, 2
  %spec.select139 = select i1 %i.bs, i32 %i.bt, i32 %.4
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a, %bb.q
  %.074 = phi i32 [ 64, %bb.c ], [ 32, %bb.a ], [ 1, %bb.b ], [ %spec.select139, %bb.q ], [ 32, %bb.e ], [ 32, %bb.f ]
  ret i32 %.074
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_0
