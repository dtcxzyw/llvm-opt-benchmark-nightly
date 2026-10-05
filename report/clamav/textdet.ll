Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/textdet?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Recognized ASCII text\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Recognized UTF-8 character data\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Recognized %s character data\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Recognized binary data\0A\00", align 1
@text_chars = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\03\03\03\03\03\01\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02", align 16

; Function Attrs: nounwind uwtable
define range(i32 500, 505) i32 @cli_texttype(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @text_chars, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.lr.ph.i11, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #2
  br label %bb.aa

.lr.ph.i11:                                       ; preds = %.lr.ph.i, %.loopexit.i
  %.03256.i = phi i32 [ %.2.i, %.loopexit.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.03455.i = phi i32 [ %i.ae, %.loopexit.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.g = zext i32 %.03455.i to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 6 uses
  %i.k = icmp sgt i8 %i.i, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i11
  %i.l = zext nneg i8 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @text_chars, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %.not45.i = icmp eq i8 %i.n, 1
  br i1 %.not45.i, label %.loopexit.i, label %td_isutf8.exit.thread

bb.d:                                             ; preds = %.lr.ph.i11
  %i.o = and i32 %i.j, 64
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %td_isutf8.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %i.j, 32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %i.j, 16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.j, 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %i.j, 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = and i32 %i.j, 2
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %td_isutf8.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i = phi i32 [ 4, %bb.h ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 5, %bb.i ]
  %i.aa = add i32 %.0.i, %.03455.i                ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.m
  %exitcond.not.i13 = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond.not.i13, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.g, %bb.j ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.not.i12 = icmp samesign ult i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %.not.i12, label %bb.m, label %td_isutf8.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %or.cond.i = icmp slt i8 %i.ad, -64
  br i1 %or.cond.i, label %bb.k, label %td_isutf8.exit.thread.thread22

.loopexit.i:                                      ; preds = %bb.k, %bb.c
  %.3.i = phi i32 [ %.03455.i, %bb.c ], [ %i.aa, %bb.k ]
  %.2.i = phi i32 [ %.03256.i, %bb.c ], [ 1, %bb.k ] ; 2 uses
  %i.ae = add nuw i32 %.3.i, 1                    ; 2 uses
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %.lr.ph.i11, label %td_isutf8.exit

td_isutf8.exit:                                   ; preds = %.loopexit.i, %bb.l
  %.340.i = phi i32 [ %.03256.i, %bb.l ], [ %.2.i, %.loopexit.i ]
  %.not9 = icmp eq i32 %.340.i, 0
  br i1 %.not9, label %td_isutf8.exit.thread, label %bb.n

bb.n:                                             ; preds = %td_isutf8.exit
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #2
  br label %bb.aa

td_isutf8.exit.thread:                            ; preds = %bb.i, %bb.c, %bb.d, %td_isutf8.exit
  %i.ag = icmp eq i32 %1, 1
  br i1 %i.ag, label %select.unfold, label %td_isutf8.exit.thread.thread22

td_isutf8.exit.thread.thread22:                   ; preds = %bb.m, %td_isutf8.exit.thread
  %i.ah = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.ah, label %.thread [
    i8 -1, label %bb.o
    i8 -2, label %bb.p
  ]

bb.o:                                             ; preds = %td_isutf8.exit.thread.thread22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = icmp eq i8 %i.aj, -2
  br i1 %i.ak, label %.thread70.i, label %.thread

bb.p:                                             ; preds = %td_isutf8.exit.thread.thread22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ao = icmp ugt i32 %1, 3
  br i1 %i.ao, label %.lr.ph.split.split.us.i, label %._crit_edge.i

.thread:                                          ; preds = %td_isutf8.exit.thread.thread22, %bb.o, %bb.p
  %i.ap = icmp ugt i32 %1, 3
  br i1 %i.ap, label %.lr.ph.split.split.i, label %td_isutf16.exit

.thread70.i:                                      ; preds = %bb.o
  %i.aq = icmp ugt i32 %1, 3
  br i1 %i.aq, label %.lr.ph.split.us.split.us.i, label %._crit_edge.i

.lr.ph.split.us.split.us.i:                       ; preds = %.thread70.i, %bb.t
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %bb.t ], [ 2, %.thread70.i ] ; 2 uses
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.t ], [ 3, %.thread70.i ] ; 2 uses
  %.03143.us.us.i = phi i32 [ %.129.us.us.i, %bb.t ], [ 0, %.thread70.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv83.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv81.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = or disjoint i32 %i.ax, %i.at            ; 3 uses
  %i.az = icmp eq i32 %i.ay, 65534
  br i1 %i.az, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.ba = icmp samesign ult i32 %i.ay, 128
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = zext nneg i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @text_chars, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not39.us.us.i = icmp ne i8 %i.bd, 1
  %i.be = zext i1 %.not39.us.us.i to i32
  %spec.select.i = add i32 %.03143.us.us.i, %i.be
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.129.us.us.i = phi i32 [ %.03143.us.us.i, %bb.r ], [ %spec.select.i, %bb.s ] ; 2 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %2 = or disjoint i64 %indvars.iv.next84.i, 1
  %i.bf = icmp samesign ult i64 %2, %wide.trip.count.i
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 2
  br i1 %i.bf, label %.lr.ph.split.us.split.us.i, label %._crit_edge.i

.lr.ph.split.split.us.i:                          ; preds = %bb.q, %bb.w
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %bb.w ], [ 2, %bb.q ] ; 2 uses
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %bb.w ], [ 3, %bb.q ] ; 2 uses
  %.03143.us48.i = phi i32 [ %.129.us51.i, %bb.w ], [ 0, %bb.q ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv67.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv69.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bi            ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 65534
  br i1 %i.bo, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split.us.i
  %i.bp = icmp samesign ult i32 %i.bn, 128
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw i8, ptr @text_chars, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %.not39.us49.i = icmp ne i8 %i.bs, 1
  %i.bt = zext i1 %.not39.us49.i to i32
  %spec.select88.i = add i32 %.03143.us48.i, %i.bt
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.129.us51.i = phi i32 [ %.03143.us48.i, %bb.u ], [ %spec.select88.i, %bb.v ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %3 = or disjoint i64 %indvars.iv.next70.i, 1
  %i.bu = icmp samesign ult i64 %3, %wide.trip.count.i
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 2
  br i1 %i.bu, label %.lr.ph.split.split.us.i, label %._crit_edge.i

.lr.ph.split.split.i:                             ; preds = %.thread, %bb.z
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %bb.z ], [ 2, %.thread ] ; 2 uses
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %bb.z ], [ 3, %.thread ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i16
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv62.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.cb, %i.bx            ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 65534
  br i1 %i.cd, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.split.i
  %i.ce = icmp samesign ult i32 %i.cc, 128
  br i1 %i.ce, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = zext nneg i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @text_chars, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %.not39.i = icmp eq i8 %i.ch, 1
  br i1 %.not39.i, label %bb.z, label %select.unfold

bb.z:                                             ; preds = %bb.y, %bb.x
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 2 ; 2 uses
  %4 = or disjoint i64 %indvars.iv.next63.i, 1
  %i.ci = icmp samesign ult i64 %4, %wide.trip.count.i
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 2
  br i1 %i.ci, label %.lr.ph.split.split.i, label %td_isutf16.exit

._crit_edge.i:                                    ; preds = %bb.w, %bb.t, %.thread70.i, %bb.q
  %.03375.i = phi i32 [ 2, %bb.q ], [ 1, %.thread70.i ], [ 1, %bb.t ], [ 2, %bb.w ]
  %.028.lcssa.i = phi i32 [ 0, %bb.q ], [ 0, %.thread70.i ], [ %.129.us.us.i, %bb.t ], [ %.129.us51.i, %bb.w ]
  %i.cj = lshr i32 %1, 1
  %.not37.i.not = icmp ult i32 %.028.lcssa.i, %i.cj
  br i1 %.not37.i.not, label %td_isutf16.exit, label %select.unfold

td_isutf16.exit:                                  ; preds = %bb.z, %.thread, %._crit_edge.i
  %.034.i = phi i32 [ %.03375.i, %._crit_edge.i ], [ 2, %.thread ], [ 2, %bb.z ]
  %i.ck = icmp eq i32 %.034.i, 1                  ; 2 uses
  %i.cl = select i1 %i.ck, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.cl) #2
  %i.cm = select i1 %i.ck, i32 502, i32 503
  br label %bb.aa

select.unfold:                                    ; preds = %.lr.ph.split.split.us.i, %.lr.ph.split.us.split.us.i, %bb.y, %.lr.ph.split.split.i, %._crit_edge.i, %td_isutf8.exit.thread
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #2
  br label %bb.aa

bb.aa:                                            ; preds = %select.unfold, %td_isutf16.exit, %bb.n, %.loopexit
  %.0 = phi i32 [ 500, %.loopexit ], [ 501, %bb.n ], [ %i.cm, %td_isutf16.exit ], [ 504, %select.unfold ]
  ret i32 %.0
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
end_hunk_0
