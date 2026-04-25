begin_hunk_0_@pathFinderKernel:bb.a
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
end_hunk_0
begin_hunk_1_@pathFinderKernel:bb.a
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod.not.a = icmp eq i32 %1, 2
  %5 = add nsw i64 %i.c, -2
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge.us, %.preheader85.us.preheader
end_hunk_1
begin_hunk_2_@pathFinderKernel:bb.a

.lr.ph.us.preheader112:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader112, %.lr.ph.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.us.prol ], [ %indvars.iv.ph, %.lr.ph.us.preheader112 ] ; 3 uses
end_hunk_2
begin_hunk_3_@pathFinderKernel:bb.a
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.loopexit, label %.lr.ph.us

bb.b:                                             ; preds = %.peel.next, %bb.e
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.e ], [ 1, %.peel.next ] ; 6 uses
  %i.z = icmp eq i64 %indvars.iv99, %i.l
  br i1 %i.z, label %bb.d, label %bb.c

end_hunk_3
begin_hunk_4_@pathFinderKernel:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ak = load i32, ptr %6, align 4, !tbaa !4
  %i.al = load i32, ptr %i.m, align 4, !tbaa !4
  %i.am = load i32, ptr %i.i, align 4, !tbaa !4
  %.82.us = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.am)
end_hunk_4
begin_hunk_5_@pathFinderKernel:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv99, %5
  br i1 %exitcond103.not, label %._crit_edge.us.loopexit.peel.begin, label %bb.b, !llvm.loop !14

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us ], [ %indvars.iv.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
end_hunk_5
begin_hunk_6_@pathFinderKernel:bb.a
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

end_hunk_6
begin_hunk_7_@llvm.smin.i32
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !9, !15}
!15 = !{!"llvm.loop.peeled.count", i32 2}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9}
end_hunk_7
