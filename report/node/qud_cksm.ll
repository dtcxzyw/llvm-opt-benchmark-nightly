Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/qud_cksm?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @DES_quad_cksum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = load <2 x i32>, ptr %4, align 1            ; 9 uses
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %bb.a, %bb.d
  %.03954.us = phi ptr [ %.140.us, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %.04153.us = phi i64 [ %.142.us, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %6 = phi <2 x i32> [ %12, %bb.d ], [ %5, %bb.a ] ; 2 uses
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
  %7 = extractelement <2 x i32> %6, i64 0
  %i.i = add i32 %.044.us, %7                     ; 3 uses
  %8 = extractelement <2 x i32> %6, i64 1         ; 3 uses
  %i.j = mul i32 %8, %8
  %.narrow.us.a = add i32 %8, 83653421
  %9 = mul i32 %i.i, %i.i
  %.narrow50.us = mul i32 %i.i, %.narrow.us.a
  %i.k = add i32 %9, %i.j
  %10 = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %11 = insertelement <2 x i32> %10, i32 %.narrow50.us, i64 1
  %12 = urem <2 x i32> %11, splat (i32 2147483647) ; 4 uses
  %i.l = icmp sgt i64 %.142.us, 0
  br i1 %i.l, label %.preheader.us, label %._crit_edge.us, !llvm.loop !11

bb.e:                                             ; preds = %._crit_edge.us
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x i32> %12, ptr %1, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us
  %.1.us = phi ptr [ %i.m, %bb.e ], [ null, %._crit_edge.us ] ; 3 uses
  %exitcond64.not = icmp slt i32 %3, 2
  %13 = extractelement <2 x i32> %12, i64 0
  br i1 %exitcond64.not, label %.split61.us, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %bb.f, %bb.i
  %.03954.us.1 = phi ptr [ %.140.us.1, %bb.i ], [ %0, %bb.f ] ; 4 uses
  %.04153.us.1 = phi i64 [ %.142.us.1, %bb.i ], [ %2, %bb.f ] ; 2 uses
  %14 = phi <2 x i32> [ %20, %bb.i ], [ %12, %bb.f ] ; 2 uses
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
  %15 = extractelement <2 x i32> %14, i64 0
  %i.u = add nuw i32 %.044.us.1, %15              ; 3 uses
  %16 = extractelement <2 x i32> %14, i64 1       ; 3 uses
  %i.v = mul i32 %16, %16
  %.narrow.us.1.a = add nuw i32 %16, 83653421
  %17 = mul i32 %i.u, %i.u
  %.narrow50.us.1 = mul i32 %i.u, %.narrow.us.1.a
  %i.w = add i32 %17, %i.v
  %18 = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %19 = insertelement <2 x i32> %18, i32 %.narrow50.us.1, i64 1
  %20 = urem <2 x i32> %19, splat (i32 2147483647) ; 4 uses
  %i.x = icmp sgt i64 %.142.us.1, 0
  br i1 %i.x, label %.preheader.us.1, label %._crit_edge.us.1, !llvm.loop !11

._crit_edge.us.1:                                 ; preds = %bb.i
  %.not.us.1 = icmp eq ptr %.1.us, null
  br i1 %.not.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.us.1
  %i.y = getelementptr inbounds nuw i8, ptr %.1.us, i64 8
  store <2 x i32> %20, ptr %.1.us, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.us.1
  %.1.us.1 = phi ptr [ %i.y, %bb.j ], [ null, %._crit_edge.us.1 ] ; 3 uses
  %exitcond64.not.1 = icmp eq i32 %3, 2
  %21 = extractelement <2 x i32> %20, i64 0
  br i1 %exitcond64.not.1, label %.split61.us, label %.preheader.us.2

.preheader.us.2:                                  ; preds = %bb.k, %bb.n
  %.03954.us.2 = phi ptr [ %.140.us.2, %bb.n ], [ %0, %bb.k ] ; 4 uses
  %.04153.us.2 = phi i64 [ %.142.us.2, %bb.n ], [ %2, %bb.k ] ; 2 uses
  %22 = phi <2 x i32> [ %28, %bb.n ], [ %20, %bb.k ] ; 2 uses
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
  %23 = extractelement <2 x i32> %22, i64 0
  %i.ag = add nuw i32 %.044.us.2, %23             ; 3 uses
  %24 = extractelement <2 x i32> %22, i64 1       ; 3 uses
  %i.ah = mul i32 %24, %24
  %.narrow.us.2.a = add nuw i32 %24, 83653421
  %25 = mul i32 %i.ag, %i.ag
  %.narrow50.us.2 = mul i32 %i.ag, %.narrow.us.2.a
  %i.ai = add i32 %25, %i.ah
  %26 = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %27 = insertelement <2 x i32> %26, i32 %.narrow50.us.2, i64 1
  %28 = urem <2 x i32> %27, splat (i32 2147483647) ; 4 uses
  %i.aj = icmp sgt i64 %.142.us.2, 0
  br i1 %i.aj, label %.preheader.us.2, label %._crit_edge.us.2, !llvm.loop !11

._crit_edge.us.2:                                 ; preds = %bb.n
  %.not.us.2 = icmp eq ptr %.1.us.1, null
  br i1 %.not.us.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.us.2
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.us.1, i64 8
  store <2 x i32> %28, ptr %.1.us.1, align 4, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.us.2
  %.1.us.2 = phi ptr [ %i.ak, %bb.o ], [ null, %._crit_edge.us.2 ] ; 2 uses
  %exitcond64.not.2 = icmp eq i32 %3, 3
  %29 = extractelement <2 x i32> %28, i64 0
  br i1 %exitcond64.not.2, label %.split61.us, label %.preheader.us.3

.preheader.us.3:                                  ; preds = %bb.p, %bb.s
  %.03954.us.3 = phi ptr [ %.140.us.3, %bb.s ], [ %0, %bb.p ] ; 4 uses
  %.04153.us.3 = phi i64 [ %.142.us.3, %bb.s ], [ %2, %bb.p ] ; 2 uses
  %30 = phi <2 x i32> [ %36, %bb.s ], [ %28, %bb.p ] ; 2 uses
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
  %31 = extractelement <2 x i32> %30, i64 0
  %i.as = add nuw i32 %.044.us.3, %31             ; 3 uses
  %32 = extractelement <2 x i32> %30, i64 1       ; 3 uses
  %i.at = mul i32 %32, %32
  %.narrow.us.3.a = add nuw i32 %32, 83653421
  %33 = mul i32 %i.as, %i.as
  %.narrow50.us.3 = mul i32 %i.as, %.narrow.us.3.a
  %i.au = add i32 %33, %i.at
  %34 = insertelement <2 x i32> poison, i32 %i.au, i64 0
  %35 = insertelement <2 x i32> %34, i32 %.narrow50.us.3, i64 1
  %36 = urem <2 x i32> %35, splat (i32 2147483647) ; 3 uses
  %i.av = icmp sgt i64 %.142.us.3, 0
  br i1 %i.av, label %.preheader.us.3, label %._crit_edge.us.3, !llvm.loop !11

._crit_edge.us.3:                                 ; preds = %bb.s
  %.not.us.3 = icmp eq ptr %.1.us.2, null
  br i1 %.not.us.3, label %37, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us.3
  store <2 x i32> %36, ptr %.1.us.2, align 4, !tbaa !13
  br label %37

37:                                               ; preds = %bb.t, %._crit_edge.us.3
  %38 = extractelement <2 x i32> %36, i64 0
  br label %.split61.us

._crit_edge.us:                                   ; preds = %bb.d
  %.not.us = icmp eq ptr %1, null
  br i1 %.not.us, label %bb.f, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x i32> %5, ptr %1, align 4, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.u
  %.1 = phi ptr [ %i.aw, %bb.u ], [ null, %.preheader ] ; 3 uses
  %exitcond.not = icmp slt i32 %3, 2
  %39 = extractelement <2 x i32> %5, i64 0
  br i1 %exitcond.not, label %.split61.us, label %.preheader.1

.preheader.1:                                     ; preds = %bb.v
  %.not.1 = icmp eq ptr %.1, null
  br i1 %.not.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.1
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store <2 x i32> %5, ptr %.1, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader.1
  %.1.1 = phi ptr [ %i.ax, %bb.w ], [ null, %.preheader.1 ] ; 3 uses
  %exitcond.not.1 = icmp eq i32 %3, 2
  %40 = extractelement <2 x i32> %5, i64 0
  br i1 %exitcond.not.1, label %.split61.us, label %.preheader.2

.preheader.2:                                     ; preds = %bb.x
  %.not.2 = icmp eq ptr %.1.1, null
  br i1 %.not.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.2
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.1, i64 8
  store <2 x i32> %5, ptr %.1.1, align 4, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader.2
  %.1.2 = phi ptr [ %i.ay, %bb.y ], [ null, %.preheader.2 ] ; 2 uses
  %exitcond.not.2 = icmp eq i32 %3, 3
  %41 = extractelement <2 x i32> %5, i64 0
  br i1 %exitcond.not.2, label %.split61.us, label %.preheader.3

.preheader.3:                                     ; preds = %bb.z
  %.not.3 = icmp eq ptr %.1.2, null
  br i1 %.not.3, label %42, label %bb.aa

bb.aa:                                            ; preds = %.preheader.3
  store <2 x i32> %5, ptr %.1.2, align 4, !tbaa !13
  br label %42

42:                                               ; preds = %bb.aa, %.preheader.3
  %43 = extractelement <2 x i32> %5, i64 0
  br label %.split61.us

.split61.us:                                      ; preds = %bb.v, %bb.x, %bb.z, %42, %bb.f, %bb.k, %bb.p, %37
  %.us-phi = phi i32 [ %38, %37 ], [ %13, %bb.f ], [ %21, %bb.k ], [ %29, %bb.p ], [ %39, %bb.v ], [ %40, %bb.x ], [ %41, %bb.z ], [ %43, %42 ]
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
