Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pathfinderKernel?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pathFinderKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = zext i32 %1 to i64                       ; 7 uses
  %i.d = add nsw i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.preheader85.lr.ph, label %._crit_edge90

.preheader85.lr.ph:                               ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %5 = sext i32 %1 to i64
  %i.g = getelementptr [4 x i8], ptr %4, i64 %5
  %i.h = getelementptr i8, ptr %i.g, i64 -8       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.f, label %.preheader85.us.preheader, label %._crit_edge90

.preheader85.us.preheader:                        ; preds = %.preheader85.lr.ph
  %i.j = add nsw i32 %1, -1
  %i.k = zext nneg i32 %i.j to i64                ; 5 uses
  %wide.trip.count101 = zext nneg i32 %i.d to i64
  %exitcond96.peel.not = icmp eq i32 %1, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  %i.n = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %.not = icmp eq i32 %1, 2
  %i.o = add nsw i64 %i.c, -2
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us, %.preheader85.us.preheader
  %indvars.iv98 = phi i64 [ 0, %.preheader85.us.preheader ], [ %indvars.iv.next99, %._crit_edge.us ]
  br i1 %or.cond, label %.lr.ph.us.preheader105, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !4
  %wide.load104 = load <4 x i32>, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !4
  store <4 x i32> %wide.load104, ptr %i.s, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.us.preheader105

.lr.ph.us.preheader105:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader105, %.lr.ph.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.us.prol ], [ %indvars.iv.ph, %.lr.ph.us.preheader105 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader105 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.prol
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.prol
  store i32 %i.v, ptr %i.w, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !12

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader105
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.us.preheader105 ], [ %indvars.iv.next.prol, %.lr.ph.us.prol ]
  %i.x = sub nsw i64 %indvars.iv.ph, %i.c
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us ], [ %indvars.iv.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.1
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.2
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.c
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.us, !llvm.loop !14

.peel.next.split:                                 ; preds = %.peel.next, %bb.d
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.d ], [ 1, %.peel.next ] ; 6 uses
  %i.al = icmp eq i64 %indvars.iv92, %i.k
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.peel.next.split
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv92 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %.83.us = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.at)
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.83.us)
  %i.au = add nsw i32 %spec.select.us, %i.an
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv92
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %.peel.next.split
  %i.aw = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.ax = load i32, ptr %i.l, align 4, !tbaa !4
  %i.ay = load i32, ptr %i.h, align 4, !tbaa !4
  %.82.us = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.ay)
  %i.az = add nsw i32 %.82.us, %i.aw
  store i32 %i.az, ptr %i.m, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv92, %i.o
  br i1 %exitcond96.not, label %._crit_edge.us.loopexit.peel.begin, label %.peel.next.split, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 3 uses
  %i.ba = mul nuw nsw i64 %indvars.iv.next99, %i.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = load i32, ptr %4, align 4, !tbaa !4
  %i.be = load i32, ptr %i.i, align 4, !tbaa !4
  %..us.peel = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.be)
  %i.bf = add nsw i32 %..us.peel, %i.bc
  store i32 %i.bf, ptr %3, align 4, !tbaa !4
  br i1 %exitcond96.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.k ; 2 uses
  br i1 %.not, label %._crit_edge.us.loopexit.peel.begin, label %.peel.next.split

._crit_edge.us.loopexit.peel.begin:               ; preds = %.peel.next, %bb.d
  %i.bh = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next93, %bb.d ] ; 4 uses
  %i.bi = icmp eq i64 %i.bh, %i.k
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.loopexit.peel.begin
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bh ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = getelementptr i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %.83.us.peel = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq)
  %spec.select.us.peel = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %.83.us.peel)
  %i.br = add nsw i32 %spec.select.us.peel, %i.bk
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bh
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  br label %._crit_edge.us

bb.f:                                             ; preds = %._crit_edge.us.loopexit.peel.begin
  %i.bt = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.l, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.h, align 4, !tbaa !4
  %.82.us.peel = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bv)
  %i.bw = add nsw i32 %.82.us.peel, %i.bt
  store i32 %i.bw, ptr %i.m, align 4, !tbaa !4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f, %bb.e, %.loopexit
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge90, label %.lr.ph.us.preheader, !llvm.loop !17

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
end_hunk_0
