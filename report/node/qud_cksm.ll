Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/qud_cksm?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @DES_quad_cksum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = load i32, ptr %4, align 1                  ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = load i32, ptr %6, align 1                  ; 5 uses
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %bb.d
  %.03954.us = phi ptr [ %.140.us, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %.04153.us = phi i64 [ %.142.us, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.14652.us = phi i32 [ %10, %bb.d ], [ %7, %bb.a ] ; 3 uses
  %.14851.us = phi i32 [ %9, %bb.d ], [ %5, %bb.a ]
  %.not49.us = icmp eq i64 %.04153.us, 1
  br i1 %.not49.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.b = load i16, ptr %.03954.us, align 1
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %.03954.us, i64 2
  %i.e = add nsw i64 %.04153.us, -2
  br label %bb.d

bb.c:                                             ; preds = %.preheader.us
  %i.f = getelementptr inbounds nuw i8, ptr %.03954.us, i64 1
  %i.g = load i8, ptr %.03954.us, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.044.us = phi i32 [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  %.142.us = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.140.us = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.i = add i32 %.044.us, %.14851.us             ; 3 uses
  %8 = mul i32 %i.i, %i.i
  %i.j = mul i32 %.14652.us, %.14652.us
  %.narrow.us.a = add i32 %8, %i.j
  %9 = urem i32 %.narrow.us.a, 2147483647         ; 4 uses
  %i.k = add i32 %.14652.us, 83653421
  %.narrow50.us = mul i32 %i.i, %i.k
  %10 = urem i32 %.narrow50.us, 2147483647        ; 3 uses
  %i.l = icmp sgt i64 %.142.us, 0
  br i1 %i.l, label %.preheader.us, label %._crit_edge.us, !llvm.loop !11

bb.e:                                             ; preds = %._crit_edge.us
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %9, ptr %1, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %10, ptr %11, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us
  %.1.us = phi ptr [ %i.m, %bb.e ], [ null, %._crit_edge.us ] ; 4 uses
  %exitcond64.not = icmp slt i32 %3, 2
  br i1 %exitcond64.not, label %.split61.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.f, %bb.i
  %.03954.us.1 = phi ptr [ %.140.us.1, %bb.i ], [ %0, %bb.f ] ; 4 uses
  %.04153.us.1 = phi i64 [ %.142.us.1, %bb.i ], [ %2, %bb.f ] ; 2 uses
  %.14652.us.1 = phi i32 [ %14, %bb.i ], [ %10, %bb.f ] ; 3 uses
  %.14851.us.1 = phi i32 [ %13, %bb.i ], [ %9, %bb.f ]
  %.not49.us.1 = icmp eq i64 %.04153.us.1, 1
  br i1 %.not49.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us.1
  %i.n = load i16, ptr %.03954.us.1, align 1
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.03954.us.1, i64 2
  %i.q = add nsw i64 %.04153.us.1, -2
  br label %bb.i

bb.h:                                             ; preds = %.preheader.us.1
  %i.r = getelementptr inbounds nuw i8, ptr %.03954.us.1, i64 1
  %i.s = load i8, ptr %.03954.us.1, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.044.us.1 = phi i32 [ %i.o, %bb.g ], [ %i.t, %bb.h ]
  %.142.us.1 = phi i64 [ %i.q, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %.140.us.1 = phi ptr [ %i.p, %bb.g ], [ %i.r, %bb.h ]
  %i.u = add nuw i32 %.044.us.1, %.14851.us.1     ; 3 uses
  %12 = mul i32 %i.u, %i.u
  %i.v = mul i32 %.14652.us.1, %.14652.us.1
  %.narrow.us.1.a = add i32 %12, %i.v
  %13 = urem i32 %.narrow.us.1.a, 2147483647      ; 4 uses
  %i.w = add nuw i32 %.14652.us.1, 83653421
  %.narrow50.us.1 = mul i32 %i.u, %i.w
  %14 = urem i32 %.narrow50.us.1, 2147483647      ; 3 uses
  %i.x = icmp sgt i64 %.142.us.1, 0
  br i1 %i.x, label %.preheader.us.1, label %._crit_edge.us.1, !llvm.loop !11

._crit_edge.us.1:                                 ; preds = %bb.i
  %.not.us.1 = icmp eq ptr %.1.us, null
  br i1 %.not.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.us.1
  %15 = getelementptr inbounds nuw i8, ptr %.1.us, i64 4
  store i32 %13, ptr %.1.us, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  store i32 %14, ptr %15, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.us.1
  %.1.us.1 = phi ptr [ %i.y, %bb.j ], [ null, %._crit_edge.us.1 ] ; 4 uses
  %exitcond64.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond64.not.1, label %.split61.us, label %.preheader.us.2

.preheader.us.2:                                  ; preds = %bb.k, %bb.n
  %.03954.us.2 = phi ptr [ %.140.us.2, %bb.n ], [ %0, %bb.k ] ; 4 uses
  %.04153.us.2 = phi i64 [ %.142.us.2, %bb.n ], [ %2, %bb.k ] ; 2 uses
  %.14652.us.2 = phi i32 [ %18, %bb.n ], [ %14, %bb.k ] ; 3 uses
  %.14851.us.2 = phi i32 [ %17, %bb.n ], [ %13, %bb.k ]
  %.not49.us.2 = icmp eq i64 %.04153.us.2, 1
  br i1 %.not49.us.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.us.2
  %i.z = load i16, ptr %.03954.us.2, align 1
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %.03954.us.2, i64 2
  %i.ac = add nsw i64 %.04153.us.2, -2
  br label %bb.n

bb.m:                                             ; preds = %.preheader.us.2
  %i.ad = getelementptr inbounds nuw i8, ptr %.03954.us.2, i64 1
  %i.ae = load i8, ptr %.03954.us.2, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.044.us.2 = phi i32 [ %i.aa, %bb.l ], [ %i.af, %bb.m ]
  %.142.us.2 = phi i64 [ %i.ac, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.140.us.2 = phi ptr [ %i.ab, %bb.l ], [ %i.ad, %bb.m ]
  %i.ag = add nuw i32 %.044.us.2, %.14851.us.2    ; 3 uses
  %16 = mul i32 %i.ag, %i.ag
  %i.ah = mul i32 %.14652.us.2, %.14652.us.2
  %.narrow.us.2.a = add i32 %16, %i.ah
  %17 = urem i32 %.narrow.us.2.a, 2147483647      ; 4 uses
  %i.ai = add nuw i32 %.14652.us.2, 83653421
  %.narrow50.us.2 = mul i32 %i.ag, %i.ai
  %18 = urem i32 %.narrow50.us.2, 2147483647      ; 3 uses
  %i.aj = icmp sgt i64 %.142.us.2, 0
  br i1 %i.aj, label %.preheader.us.2, label %._crit_edge.us.2, !llvm.loop !11

._crit_edge.us.2:                                 ; preds = %bb.n
  %.not.us.2 = icmp eq ptr %.1.us.1, null
  br i1 %.not.us.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.us.2
  %19 = getelementptr inbounds nuw i8, ptr %.1.us.1, i64 4
  store i32 %17, ptr %.1.us.1, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.us.1, i64 8
  store i32 %18, ptr %19, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.us.2
  %.1.us.2 = phi ptr [ %i.ak, %bb.o ], [ null, %._crit_edge.us.2 ] ; 3 uses
  %exitcond64.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond64.not.2, label %.split61.us, label %.preheader.us.3

.preheader.us.3:                                  ; preds = %bb.p, %bb.s
  %.03954.us.3 = phi ptr [ %.140.us.3, %bb.s ], [ %0, %bb.p ] ; 4 uses
  %.04153.us.3 = phi i64 [ %.142.us.3, %bb.s ], [ %2, %bb.p ] ; 2 uses
  %.14652.us.3 = phi i32 [ %22, %bb.s ], [ %18, %bb.p ] ; 3 uses
  %.14851.us.3 = phi i32 [ %21, %bb.s ], [ %17, %bb.p ]
  %.not49.us.3 = icmp eq i64 %.04153.us.3, 1
  br i1 %.not49.us.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.us.3
  %i.al = load i16, ptr %.03954.us.3, align 1
  %i.am = zext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.03954.us.3, i64 2
  %i.ao = add nsw i64 %.04153.us.3, -2
  br label %bb.s

bb.r:                                             ; preds = %.preheader.us.3
  %i.ap = getelementptr inbounds nuw i8, ptr %.03954.us.3, i64 1
  %i.aq = load i8, ptr %.03954.us.3, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.044.us.3 = phi i32 [ %i.am, %bb.q ], [ %i.ar, %bb.r ]
  %.142.us.3 = phi i64 [ %i.ao, %bb.q ], [ 0, %bb.r ] ; 2 uses
  %.140.us.3 = phi ptr [ %i.an, %bb.q ], [ %i.ap, %bb.r ]
  %i.as = add nuw i32 %.044.us.3, %.14851.us.3    ; 3 uses
  %20 = mul i32 %i.as, %i.as
  %i.at = mul i32 %.14652.us.3, %.14652.us.3
  %.narrow.us.3.a = add i32 %20, %i.at
  %21 = urem i32 %.narrow.us.3.a, 2147483647      ; 4 uses
  %i.au = add nuw i32 %.14652.us.3, 83653421
  %.narrow50.us.3 = mul i32 %i.as, %i.au
  %22 = urem i32 %.narrow50.us.3, 2147483647      ; 2 uses
  %i.av = icmp sgt i64 %.142.us.3, 0
  br i1 %i.av, label %.preheader.us.3, label %._crit_edge.us.3, !llvm.loop !11

._crit_edge.us.3:                                 ; preds = %bb.s
  %.not.us.3 = icmp eq ptr %.1.us.2, null
  br i1 %.not.us.3, label %.split61.us, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us.3
  %23 = getelementptr inbounds nuw i8, ptr %.1.us.2, i64 4
  store i32 %21, ptr %.1.us.2, align 4, !tbaa !13
  store i32 %22, ptr %23, align 4, !tbaa !13
  br label %.split61.us

._crit_edge.us:                                   ; preds = %bb.d
  %.not.us = icmp eq ptr %1, null
  br i1 %.not.us, label %bb.f, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %5, ptr %1, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %7, ptr %24, align 4, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.u
  %.1 = phi ptr [ %i.aw, %bb.u ], [ null, %.preheader ] ; 4 uses
  %exitcond.not = icmp slt i32 %3, 2
  br i1 %exitcond.not, label %.split61.us, label %.preheader.1

.preheader.1:                                     ; preds = %bb.v
  %.not.1 = icmp eq ptr %.1, null
  br i1 %.not.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.1
  %25 = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i32 %5, ptr %.1, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %7, ptr %25, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader.1
  %.1.1 = phi ptr [ %i.ax, %bb.w ], [ null, %.preheader.1 ] ; 4 uses
  %exitcond.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond.not.1, label %.split61.us, label %.preheader.2

.preheader.2:                                     ; preds = %bb.x
  %.not.2 = icmp eq ptr %.1.1, null
  br i1 %.not.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.2
  %26 = getelementptr inbounds nuw i8, ptr %.1.1, i64 4
  store i32 %5, ptr %.1.1, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store i32 %7, ptr %26, align 4, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.2
  %.1.2 = phi ptr [ %i.ay, %bb.y ], [ null, %.preheader.2 ] ; 3 uses
  %exitcond.not.2 = icmp eq i32 %3, 3
  %.not.3 = icmp eq ptr %.1.2, null
  %or.cond = select i1 %exitcond.not.2, i1 true, i1 %.not.3
  br i1 %or.cond, label %.split61.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %27 = getelementptr inbounds nuw i8, ptr %.1.2, i64 4
  store i32 %5, ptr %.1.2, align 4, !tbaa !13
  store i32 %7, ptr %27, align 4, !tbaa !13
  br label %.split61.us

.split61.us:                                      ; preds = %bb.v, %bb.x, %bb.z, %bb.aa, %bb.f, %bb.k, %bb.p, %bb.t, %._crit_edge.us.3
  %.us-phi = phi i32 [ %21, %._crit_edge.us.3 ], [ %9, %bb.f ], [ %13, %bb.k ], [ %17, %bb.p ], [ %21, %bb.t ], [ %5, %bb.v ], [ %5, %bb.aa ], [ %5, %bb.z ], [ %5, %bb.x ]
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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!7, !7, i64 0}
end_hunk_0
