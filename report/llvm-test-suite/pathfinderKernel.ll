begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pathFinderKernel(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = zext i32 %1 to i64                       ; 7 uses
  %i.d = add i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.preheader85.lr.ph, label %._crit_edge90

.preheader85.lr.ph:                               ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr [4 x i8], ptr %4, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.f, label %.preheader85.us.preheader, label %._crit_edge90

.preheader85.us.preheader:                        ; preds = %.preheader85.lr.ph
  %i.k = add nsw i32 %1, -1
  %i.l = zext nneg i32 %i.k to i64                ; 5 uses
  %wide.trip.count108 = zext nneg i32 %i.d to i64
  %exitcond103.peel.not = icmp eq i32 %1, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.o = sub i64 %i.b, %i.a
  %min.iters.check = icmp ult i32 %1, 8
  %diff.check = icmp ult i64 %i.o, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod.not.a = icmp eq i32 %1, 2
  %5 = add nsw i64 %i.c, -2
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us, %.preheader85.us.preheader
  %indvars.iv105 = phi i64 [ 0, %.preheader85.us.preheader ], [ %indvars.iv.next106, %._crit_edge.us ]
  br i1 %or.cond, label %.lr.ph.us.preheader112, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %wide.load111 = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !4
  store <4 x i32> %wide.load111, ptr %i.s, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.us.preheader112

.lr.ph.us.preheader112:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader112, %.lr.ph.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.us.prol ], [ %indvars.iv.ph, %.lr.ph.us.preheader112 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader112 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.prol
  store i32 %i.v, ptr %i.w, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !12

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader112
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.us.preheader112 ], [ %indvars.iv.next.prol, %.lr.ph.us.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %i.c
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.us

bb.b:                                             ; preds = %.peel.next, %bb.e
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.e ], [ 1, %.peel.next ] ; 6 uses
  %i.z = icmp eq i64 %indvars.iv99, %i.l
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv99
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv99 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %.83.us = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ah)
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %.83.us)
  %i.ai = add nsw i32 %spec.select.us, %i.ab
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv99
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %6, align 4, !tbaa !4
  %i.al = load i32, ptr %i.m, align 4, !tbaa !4
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %.82.us = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.am)
  %i.an = add nsw i32 %.82.us, %i.ak
  store i32 %i.an, ptr %i.n, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv99, %5
  br i1 %exitcond103.not, label %._crit_edge.us.loopexit.peel.begin, label %bb.b, !llvm.loop !14

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us ], [ %indvars.iv.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.1
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.2
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.c
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.us, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.ba = mul nuw nsw i64 %indvars.iv.next106, %i.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = load i32, ptr %4, align 4, !tbaa !4
  %i.be = load i32, ptr %i.j, align 4, !tbaa !4
  %..us.peel = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be)
  %i.bf = add nsw i32 %..us.peel, %i.bc
  store i32 %i.bf, ptr %3, align 4, !tbaa !4
  br i1 %exitcond103.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %.loopexit
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.l ; 2 uses
  br i1 %lcmp.mod.not.a, label %._crit_edge.us.loopexit.peel.begin, label %bb.b

._crit_edge.us.loopexit.peel.begin:               ; preds = %.peel.next, %bb.e
  %7 = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next100, %bb.e ] ; 4 uses
  %8 = icmp eq i64 %7, %i.l
  br i1 %8, label %18, label %.peel.next.a

.peel.next.a:                                     ; preds = %._crit_edge.us.loopexit.peel.begin
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !4
  %11 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %7 ; 3 uses
  %12 = load i32, ptr %11, align 4, !tbaa !4
  %13 = getelementptr i8, ptr %11, i64 -4
  %14 = load i32, ptr %13, align 4, !tbaa !4
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %16 = load i32, ptr %15, align 4, !tbaa !4
  %.83.us.peel = tail call i32 @llvm.smin.i32(i32 %14, i32 %16)
  %spec.select.us.peel = tail call i32 @llvm.smin.i32(i32 %12, i32 %.83.us.peel)
  %17 = add nsw i32 %spec.select.us.peel, %10
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  store i32 %17, ptr %i.bg, align 4, !tbaa !4
  br label %._crit_edge.us

18:                                               ; preds = %._crit_edge.us.loopexit.peel.begin
  %19 = load i32, ptr %6, align 4, !tbaa !4
  %20 = load i32, ptr %i.m, align 4, !tbaa !4
  %21 = load i32, ptr %i.i, align 4, !tbaa !4
  %.82.us.peel = tail call i32 @llvm.smin.i32(i32 %20, i32 %21)
  %22 = add nsw i32 %.82.us.peel, %19
  store i32 %22, ptr %i.n, align 4, !tbaa !4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %18, %.peel.next.a, %.loopexit
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge90, label %.lr.ph.us.preheader, !llvm.loop !17

._crit_edge90:                                    ; preds = %._crit_edge.us, %.preheader85.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !9, !15}
!15 = !{!"llvm.loop.peeled.count", i32 2}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
end_hunk_0
