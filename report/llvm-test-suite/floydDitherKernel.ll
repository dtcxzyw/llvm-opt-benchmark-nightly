begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @floydDitherKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 10 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.preheader112.lr.ph, label %._crit_edge117

.preheader112.lr.ph:                              ; preds = %bb.a
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %.preheader112.preheader, label %.preheader111

.preheader112.preheader:                          ; preds = %.preheader112.lr.ph
  %wide.trip.count124 = zext nneg i32 %0 to i64   ; 3 uses
  %i.c = mul nuw nsw i64 %i.a, %wide.trip.count124
  %i.d = shl nuw i64 %i.c, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %i.e = shl nuw nsw i64 %wide.trip.count124, 11
  %i.f = shl nuw nsw i64 %i.a, 2
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 %i.f
  %scevgep146 = getelementptr i8, ptr %i.h, i64 -2048
  %min.iters.check = icmp ult i32 %1, 8
  %bound0 = icmp ult ptr %3, %scevgep146
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  %xtraiter = and i64 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %._crit_edge.us
  %indvars.iv121 = phi i64 [ 0, %.preheader112.preheader ], [ %indvars.iv.next124, %._crit_edge.us ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2048 x i8], ptr %2, i64 %indvars.iv121 ; 6 uses
  %i.j = mul nuw nsw i64 %indvars.iv121, %i.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader112, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader112 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !4, !alias.scope !8
  %wide.load147 = load <4 x i32>, ptr %i.m, align 4, !tbaa !4, !alias.scope !8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  store <4 x i32> %wide.load147, ptr %i.o, align 4, !tbaa !4, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader112, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader112 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.prol
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !17

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.t = sub nsw i64 %indvars.iv.ph, %i.a
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.a
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !19

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count124
  br i1 %exitcond127.not, label %.preheader111, label %.preheader112, !llvm.loop !20

.preheader111:                                    ; preds = %._crit_edge.us, %.preheader112.lr.ph
  %5 = icmp sgt i32 %0, 2
  %6 = icmp sgt i32 %1, 2
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge117

.preheader.us.preheader:                          ; preds = %.preheader111
  %7 = add nsw i32 %0, -1
  %8 = add nsw i32 %1, -1
  %wide.trip.count136 = zext nneg i32 %7 to i64
  %wide.trip.count131 = zext i32 %8 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.us.preheader, %._crit_edge.us118
  %indvars.iv131 = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next132, %._crit_edge.us118 ] ; 2 uses
  %i.ah = mul nuw nsw i64 %indvars.iv131, %i.a
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ah ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 3 uses
  %i.aj = mul nuw nsw i64 %indvars.iv.next132, %i.a
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv126 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next127, %bb.b ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv126 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 127                 ; 2 uses
  %i.ao = add nsw i32 %i.am, -255
  %storemerge = select i1 %i.an, i32 255, i32 0
  %.0102 = select i1 %i.an, i32 %i.ao, i32 %i.am  ; 4 uses
  store i32 %storemerge, ptr %i.al, align 4, !tbaa !4
  %i.ap = mul nsw i32 %.0102, 7
  %i.aq = sdiv i32 %i.ap, 16
  %i.ar = sdiv i32 %.0102, 16
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next127 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = add nsw i32 %i.aq, %i.at
  %. = tail call i32 @llvm.smax.i32(i32 %i.au, i32 0)
  %.sink = tail call i32 @llvm.smin.i32(i32 %., i32 255)
  store i32 %.sink, ptr %i.as, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next127 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.aw, %i.ar
  %.143 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %.sink140 = tail call i32 @llvm.smin.i32(i32 %.143, i32 255)
  store i32 %.sink140, ptr %i.av, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv126
  %i.az = getelementptr i8, ptr %i.ay, i64 -4     ; 2 uses
  %i.ba = mul nsw i32 %.0102, 5
  %i.bb = mul nsw i32 %.0102, 3
  %i.bc = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %i.bd = insertelement <2 x i32> %i.bc, i32 %i.ba, i64 1
  %i.be = sdiv <2 x i32> %i.bd, splat (i32 16)
  %i.bf = load <2 x i32>, ptr %i.az, align 4, !tbaa !4
  %i.bg = add nsw <2 x i32> %i.bf, %i.be
  %i.bh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bg, <2 x i32> zeroinitializer)
  %i.bi = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bh, <2 x i32> splat (i32 255))
  store <2 x i32> %i.bi, ptr %i.az, align 4, !tbaa !4
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count131
  br i1 %exitcond130.not, label %._crit_edge.us118, label %bb.b, !llvm.loop !21

._crit_edge.us118:                                ; preds = %bb.b
  %exitcond137.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge117, label %.preheader, !llvm.loop !22

._crit_edge117:                                   ; preds = %._crit_edge.us118, %bb.a, %.preheader111
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #1

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
!8 = !{!9}
!9 = distinct !{!9, !10}
!10 = distinct !{!10, !"LVerDomain"}
!11 = !{!12}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
end_hunk_0
