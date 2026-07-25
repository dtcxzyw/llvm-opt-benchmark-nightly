loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @DES_quad_cksum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 1                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load i32, ptr %i.b, align 1              ; 5 uses
  %i.d = icmp sgt i64 %2, 0
  br i1 %i.d, label %.preheader.us.1.a, label %.preheader

.preheader.us.1.a:                                ; preds = %bb.a, %bb.d
  %.03954.us.1.a = phi ptr [ %.140.us.1.a, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %.04153.us.1.a = phi i64 [ %.142.us.1.a, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.14652.us.1.a = phi i32 [ %i.q, %bb.d ], [ %i.c, %bb.a ] ; 3 uses
  %.14851.us.1.a = phi i32 [ %i.o, %bb.d ], [ %i.a, %bb.a ]
  %.not49.us.1.a = icmp eq i64 %.04153.us.1.a, 1
  br i1 %.not49.us.1.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.1.a
  %i.e = load i16, ptr %.03954.us.1.a, align 1
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %.03954.us.1.a, i64 2
  %i.h = add nsw i64 %.04153.us.1.a, -2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.us.1.a
  %i.i = getelementptr inbounds nuw i8, ptr %.03954.us.1.a, i64 1
  %i.j = load i8, ptr %.03954.us.1.a, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.044.us.1.a = phi i32 [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  %.142.us.1.a = phi i64 [ %i.h, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.140.us.1.a = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.l = add i32 %.044.us.1.a, %.14851.us.1.a     ; 3 uses
  %i.m = mul i32 %i.l, %i.l
  %i.n = mul i32 %.14652.us.1.a, %.14652.us.1.a
  %.narrow.us.1.a = add i32 %i.m, %i.n
  %i.o = urem i32 %.narrow.us.1.a, 2147483647     ; 4 uses
  %i.p = add i32 %.14652.us.1.a, 83653421
  %.narrow50.us.1.a = mul i32 %i.l, %i.p
  %i.q = urem i32 %.narrow50.us.1.a, 2147483647   ; 3 uses
  %i.r = icmp sgt i64 %.142.us.1.a, 0
  br i1 %i.r, label %.preheader.us.1.a, label %._crit_edge.us, !llvm.loop !10

bb.e:                                             ; preds = %._crit_edge.us
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.o, ptr %1, align 4, !tbaa !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.q, ptr %i.s, align 4, !tbaa !5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us
  %.1.us.1.a = phi ptr [ %i.t, %bb.e ], [ null, %._crit_edge.us ] ; 4 uses
  %exitcond64.not = icmp slt i32 %3, 2
  br i1 %exitcond64.not, label %.split61.us, label %.preheader.us.2.a

.preheader.us.2.a:                                ; preds = %bb.f, %bb.i
  %.03954.us.2.a = phi ptr [ %.140.us.2.a, %bb.i ], [ %0, %bb.f ] ; 4 uses
  %.04153.us.2.a = phi i64 [ %.142.us.2.a, %bb.i ], [ %2, %bb.f ] ; 2 uses
  %.14652.us.2.a = phi i32 [ %i.ag, %bb.i ], [ %i.q, %bb.f ] ; 3 uses
  %.14851.us.2.a = phi i32 [ %i.ae, %bb.i ], [ %i.o, %bb.f ]
  %.not49.us.2.a = icmp eq i64 %.04153.us.2.a, 1
  br i1 %.not49.us.2.a, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us.2.a
  %i.u = load i16, ptr %.03954.us.2.a, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %.03954.us.2.a, i64 2
  %i.x = add nsw i64 %.04153.us.2.a, -2
  br label %bb.i

bb.h:                                             ; preds = %.preheader.us.2.a
  %i.y = getelementptr inbounds nuw i8, ptr %.03954.us.2.a, i64 1
  %i.z = load i8, ptr %.03954.us.2.a, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.044.us.2.a = phi i32 [ %i.v, %bb.g ], [ %i.aa, %bb.h ]
  %.142.us.2.a = phi i64 [ %i.x, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.140.us.2.a = phi ptr [ %i.w, %bb.g ], [ %i.y, %bb.h ]
  %i.ab = add nuw i32 %.044.us.2.a, %.14851.us.2.a ; 3 uses
  %i.ac = mul i32 %i.ab, %i.ab
  %i.ad = mul i32 %.14652.us.2.a, %.14652.us.2.a
  %.narrow.us.2.a = add i32 %i.ac, %i.ad
  %i.ae = urem i32 %.narrow.us.2.a, 2147483647    ; 4 uses
  %i.af = add nuw i32 %.14652.us.2.a, 83653421
  %.narrow50.us.2.a = mul i32 %i.ab, %i.af
  %i.ag = urem i32 %.narrow50.us.2.a, 2147483647  ; 3 uses
  %i.ah = icmp sgt i64 %.142.us.2.a, 0
  br i1 %i.ah, label %.preheader.us.2.a, label %._crit_edge.us.2.a, !llvm.loop !10

._crit_edge.us.2.a:                               ; preds = %bb.i
  %.not.us.2.a = icmp eq ptr %.1.us.1.a, null
  br i1 %.not.us.2.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.us.2.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.us.1.a, i64 4
  store i32 %i.ae, ptr %.1.us.1.a, align 4, !tbaa !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.us.1.a, i64 8
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.us.2.a
  %.1.us.2.a = phi ptr [ %i.aj, %bb.j ], [ null, %._crit_edge.us.2.a ] ; 4 uses
  %exitcond64.not.2.a = icmp eq i32 %3, 2
  br i1 %exitcond64.not.2.a, label %.split61.us, label %.preheader.us.3.a

.preheader.us.3.a:                                ; preds = %bb.k, %bb.n
  %.03954.us.3.a = phi ptr [ %.140.us.3.a, %bb.n ], [ %0, %bb.k ] ; 4 uses
  %.04153.us.3.a = phi i64 [ %.142.us.3.a, %bb.n ], [ %2, %bb.k ] ; 2 uses
  %.14652.us.3.a = phi i32 [ %i.aw, %bb.n ], [ %i.ag, %bb.k ] ; 3 uses
  %.14851.us.3.a = phi i32 [ %i.au, %bb.n ], [ %i.ae, %bb.k ]
  %.not49.us.3.a = icmp eq i64 %.04153.us.3.a, 1
  br i1 %.not49.us.3.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.us.3.a
  %i.ak = load i16, ptr %.03954.us.3.a, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.03954.us.3.a, i64 2
  %i.an = add nsw i64 %.04153.us.3.a, -2
  br label %bb.n

bb.m:                                             ; preds = %.preheader.us.3.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.03954.us.3.a, i64 1
  %i.ap = load i8, ptr %.03954.us.3.a, align 1, !tbaa !9
  %i.aq = zext i8 %i.ap to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.044.us.3.a = phi i32 [ %i.al, %bb.l ], [ %i.aq, %bb.m ]
  %.142.us.3.a = phi i64 [ %i.an, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.140.us.3.a = phi ptr [ %i.am, %bb.l ], [ %i.ao, %bb.m ]
  %i.ar = add nuw i32 %.044.us.3.a, %.14851.us.3.a ; 3 uses
  %i.as = mul i32 %i.ar, %i.ar
  %i.at = mul i32 %.14652.us.3.a, %.14652.us.3.a
  %.narrow.us.3.a = add i32 %i.as, %i.at
  %i.au = urem i32 %.narrow.us.3.a, 2147483647    ; 4 uses
  %i.av = add nuw i32 %.14652.us.3.a, 83653421
  %.narrow50.us.3.a = mul i32 %i.ar, %i.av
  %i.aw = urem i32 %.narrow50.us.3.a, 2147483647  ; 3 uses
  %i.ax = icmp sgt i64 %.142.us.3.a, 0
  br i1 %i.ax, label %.preheader.us.3.a, label %._crit_edge.us.3.a, !llvm.loop !10

._crit_edge.us.3.a:                               ; preds = %bb.n
  %.not.us.3.a = icmp eq ptr %.1.us.2.a, null
  br i1 %.not.us.3.a, label %6, label %bb.o

bb.o:                                             ; preds = %._crit_edge.us.3.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.us.2.a, i64 4
  store i32 %i.au, ptr %.1.us.2.a, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw i8, ptr %.1.us.2.a, i64 8
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !5
  br label %6

6:                                                ; preds = %bb.o, %._crit_edge.us.3.a
  %.1.us.2 = phi ptr [ %5, %bb.o ], [ null, %._crit_edge.us.3.a ] ; 3 uses
  %exitcond64.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond64.not.2, label %.split61.us, label %.preheader.us

.preheader.us:                                    ; preds = %6, %bb.r
  %.03954.us = phi ptr [ %.140.us, %bb.r ], [ %0, %6 ] ; 4 uses
  %.04153.us = phi i64 [ %.142.us, %bb.r ], [ %2, %6 ] ; 2 uses
  %.14652.us = phi i32 [ %i.bl, %bb.r ], [ %i.aw, %6 ] ; 3 uses
  %.14851.us = phi i32 [ %i.bj, %bb.r ], [ %i.au, %6 ]
  %.not49.us = icmp eq i64 %.04153.us, 1
  br i1 %.not49.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.us
  %i.az = load i16, ptr %.03954.us, align 1
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.03954.us, i64 2
  %i.bc = add nsw i64 %.04153.us, -2
  br label %bb.r

bb.q:                                             ; preds = %.preheader.us
  %i.bd = getelementptr inbounds nuw i8, ptr %.03954.us, i64 1
  %i.be = load i8, ptr %.03954.us, align 1, !tbaa !9
  %i.bf = zext i8 %i.be to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.044.us = phi i32 [ %i.ba, %bb.p ], [ %i.bf, %bb.q ]
  %.142.us = phi i64 [ %i.bc, %bb.p ], [ 0, %bb.q ] ; 2 uses
  %.140.us = phi ptr [ %i.bb, %bb.p ], [ %i.bd, %bb.q ]
  %i.bg = add nuw i32 %.044.us, %.14851.us        ; 3 uses
  %i.bh = mul i32 %i.bg, %i.bg
  %i.bi = mul i32 %.14652.us, %.14652.us
  %.narrow.us = add i32 %i.bh, %i.bi
  %i.bj = urem i32 %.narrow.us, 2147483647        ; 4 uses
  %i.bk = add nuw i32 %.14652.us, 83653421
  %.narrow50.us = mul i32 %i.bg, %i.bk
  %i.bl = urem i32 %.narrow50.us, 2147483647      ; 2 uses
  %i.bm = icmp sgt i64 %.142.us, 0
  br i1 %i.bm, label %.preheader.us, label %._crit_edge.us.3, !llvm.loop !10

._crit_edge.us.3:                                 ; preds = %bb.r
  %.not.us.3 = icmp eq ptr %.1.us.2, null
  br i1 %.not.us.3, label %.split61.us, label %7

7:                                                ; preds = %._crit_edge.us.3
  %8 = getelementptr inbounds nuw i8, ptr %.1.us.2, i64 4
  store i32 %i.bj, ptr %.1.us.2, align 4, !tbaa !5
  store i32 %i.bl, ptr %8, align 4, !tbaa !5
  br label %.split61.us

._crit_edge.us:                                   ; preds = %bb.d
  %.not.us = icmp eq ptr %1, null
  br i1 %.not.us, label %bb.f, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.a, ptr %1, align 4, !tbaa !5
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.c, ptr %i.bn, align 4, !tbaa !5
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.s
  %.1 = phi ptr [ %i.bo, %bb.s ], [ null, %.preheader ] ; 4 uses
  %exitcond.not = icmp slt i32 %3, 2
  br i1 %exitcond.not, label %.split61.us, label %.preheader.1

.preheader.1:                                     ; preds = %bb.t
  %.not.1 = icmp eq ptr %.1, null
  br i1 %.not.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i32 %i.a, ptr %.1, align 4, !tbaa !5
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %i.c, ptr %i.bp, align 4, !tbaa !5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.1
  %.1.1 = phi ptr [ %i.bq, %bb.u ], [ null, %.preheader.1 ] ; 4 uses
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %.split61.us, label %.preheader.2

.preheader.2:                                     ; preds = %bb.v
  %.not.2 = icmp eq ptr %.1.1, null
  br i1 %.not.2, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.2
  %i.br = getelementptr inbounds nuw i8, ptr %.1.1, i64 4
  store i32 %i.a, ptr %.1.1, align 4, !tbaa !5
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store i32 %i.c, ptr %i.br, align 4, !tbaa !5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader.2
  %.1.2 = phi ptr [ %i.bs, %bb.w ], [ null, %.preheader.2 ] ; 3 uses
  %exitcond.not.2 = icmp eq i32 %3, 3
  %.not.3 = icmp eq ptr %.1.2, null
  %or.cond = select i1 %exitcond.not.2, i1 true, i1 %.not.3
  br i1 %or.cond, label %.split61.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.2, i64 4
  store i32 %i.a, ptr %.1.2, align 4, !tbaa !5
  store i32 %i.c, ptr %i.bt, align 4, !tbaa !5
  br label %.split61.us

.split61.us:                                      ; preds = %bb.t, %bb.v, %bb.x, %bb.y, %bb.f, %bb.k, %6, %7, %._crit_edge.us.3
  %.us-phi = phi i32 [ %i.bj, %._crit_edge.us.3 ], [ %i.o, %bb.f ], [ %i.ae, %bb.k ], [ %i.au, %6 ], [ %i.bj, %7 ], [ %i.a, %bb.t ], [ %i.a, %bb.y ], [ %i.a, %bb.x ], [ %i.a, %bb.v ]
  ret i32 %.us-phi
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
