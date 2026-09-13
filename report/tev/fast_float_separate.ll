Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_separate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_cmsComputeComponentIncrements:bb.a
  %wide.load73 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !17
  %i.aq = mul <4 x i32> %wide.load, %broadcast.splat70
  %i.ar = mul <4 x i32> %wide.load73, %broadcast.splat70
  store <4 x i32> %i.aq, ptr %4, align 4, !tbaa !17
  store <4 x i32> %i.ar, ptr %i.ap, align 4, !tbaa !17
  %i.as = icmp eq i64 %n.vec68, 8
  br i1 %i.as, label %middle.block75, label %vector.body71.1

vector.body71.1:                                  ; preds = %vector.ph67
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.at, align 4, !tbaa !17
  %wide.load73.1 = load <4 x i32>, ptr %i.au, align 4, !tbaa !17
  %i.av = mul <4 x i32> %wide.load.1, %broadcast.splat70
  %i.aw = mul <4 x i32> %wide.load73.1, %broadcast.splat70
  store <4 x i32> %i.av, ptr %i.at, align 4, !tbaa !17
  store <4 x i32> %i.aw, ptr %i.au, align 4, !tbaa !17
  br label %middle.block75

middle.block75:                                   ; preds = %vector.body71.1, %vector.ph67
  %cmp.n76 = icmp eq i64 %n.vec68, %wide.trip.count.i
  br i1 %cmp.n76, label %ComputeIncrementsForPlanar.exit, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %.lr.ph61.preheader.i, %middle.block75
  %indvars.iv81.i.ph = phi i64 [ 0, %.lr.ph61.preheader.i ], [ %n.vec68, %middle.block75 ]
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %.lr.ph61.i ], [ %indvars.iv81.i.ph, %.lr.ph61.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv81.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.az = mul i32 %i.ay, %1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !17
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count.i
  br i1 %exitcond85.not.i, label %ComputeIncrementsForPlanar.exit, label %.lr.ph61.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.a
  %i.ba = mul nuw nsw i32 %..i.i12, %i.f          ; 2 uses
  %.not.i13 = icmp eq ptr %2, null
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.e, ptr %2, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not53.i = icmp eq ptr %3, null
  br i1 %.not53.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.c, ptr %3, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not66.i = icmp eq i32 %i.f, 0
  br i1 %.not66.i, label %._crit_edge.thread.i22, label %.lr.ph.preheader.i14

.lr.ph.preheader.i14:                             ; preds = %bb.m
  %wide.trip.count.i15 = zext nneg i32 %i.f to i64 ; 9 uses
  %min.iters.check79 = icmp samesign ult i32 %i.f, 8
  br i1 %min.iters.check79, label %.lr.ph.i16.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.preheader.i14
  %n.vec81 = and i64 %wide.trip.count.i15, 24     ; 3 uses
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %broadcast.splat83, ptr %5, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat83, ptr %i.bb, align 4, !tbaa !17
  %i.bc = icmp eq i64 %n.vec81, 8
  br i1 %i.bc, label %middle.block87, label %vector.body84.1

vector.body84.1:                                  ; preds = %vector.ph80
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  store <4 x i32> %broadcast.splat83, ptr %i.bd, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat83, ptr %i.be, align 4, !tbaa !17
  br label %middle.block87

middle.block87:                                   ; preds = %vector.body84.1, %vector.ph80
  %cmp.n88 = icmp eq i64 %n.vec81, %wide.trip.count.i15
  br i1 %cmp.n88, label %.lr.ph59.i, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %.lr.ph.preheader.i14, %middle.block87
  %indvars.iv.i17.ph = phi i64 [ 0, %.lr.ph.preheader.i14 ], [ %n.vec81, %middle.block87 ]
  br label %.lr.ph.i16

.lr.ph59.i:                                       ; preds = %.lr.ph.i16, %middle.block87
  %i.bf = and i32 %0, 1024
  %.not55.i = icmp eq i32 %i.bf, 0
  %min.iters.check106 = icmp samesign ult i32 %i.f, 8 ; 2 uses
  br i1 %.not55.i, label %.lr.ph59.split.us.i.preheader, label %.lr.ph59.split.i.preheader

.lr.ph59.split.i.preheader:                       ; preds = %.lr.ph59.i
  br i1 %min.iters.check106, label %.lr.ph59.split.i.preheader134, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph59.split.i.preheader
  %n.vec93 = and i64 %wide.trip.count.i15, 24     ; 3 uses
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bg = add nsw <4 x i32> %broadcast.splat95, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.bh = add nsw <4 x i32> %broadcast.splat95, <i32 -5, i32 -6, i32 -7, i32 -8>
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> %i.bg, ptr %4, align 4, !tbaa !17
  store <4 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !17
  %i.bj = icmp eq i64 %n.vec93, 8
  br i1 %i.bj, label %middle.block102, label %vector.body96.1

vector.body96.1:                                  ; preds = %vector.ph92
  %i.bk = add nsw <4 x i32> %broadcast.splat95, <i32 -9, i32 -10, i32 -11, i32 -12>
  %i.bl = add nsw <4 x i32> %broadcast.splat95, <i32 -13, i32 -14, i32 -15, i32 -16>
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> %i.bk, ptr %i.bm, align 4, !tbaa !17
  store <4 x i32> %i.bl, ptr %i.bn, align 4, !tbaa !17
  br label %middle.block102

middle.block102:                                  ; preds = %vector.body96.1, %vector.ph92
  %cmp.n103 = icmp eq i64 %n.vec93, %wide.trip.count.i15
  br i1 %cmp.n103, label %._crit_edge.i20, label %.lr.ph59.split.i.preheader134

.lr.ph59.split.i.preheader134:                    ; preds = %.lr.ph59.split.i.preheader, %middle.block102
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph59.split.i.preheader ], [ %n.vec93, %middle.block102 ]
  br label %.lr.ph59.split.i

.lr.ph59.split.us.i.preheader:                    ; preds = %.lr.ph59.i
  br i1 %min.iters.check106, label %.lr.ph59.split.us.i.preheader133, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph59.split.us.i.preheader
  %n.vec108 = and i64 %wide.trip.count.i15, 24    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %4, align 4, !tbaa !17
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bo, align 4, !tbaa !17
  %i.bp = icmp eq i64 %n.vec108, 8
  br i1 %i.bp, label %middle.block115, label %vector.body109.1

vector.body109.1:                                 ; preds = %vector.ph107
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bq, align 4, !tbaa !17
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.br, align 4, !tbaa !17
  br label %middle.block115

middle.block115:                                  ; preds = %vector.body109.1, %vector.ph107
  %cmp.n116 = icmp eq i64 %n.vec108, %wide.trip.count.i15
  br i1 %cmp.n116, label %._crit_edge.i20, label %.lr.ph59.split.us.i.preheader133

.lr.ph59.split.us.i.preheader133:                 ; preds = %.lr.ph59.split.us.i.preheader, %middle.block115
  %indvars.iv75.i.ph = phi i64 [ 0, %.lr.ph59.split.us.i.preheader ], [ %n.vec108, %middle.block115 ]
  br label %.lr.ph59.split.us.i

.lr.ph59.split.us.i:                              ; preds = %.lr.ph59.split.us.i.preheader133, %.lr.ph59.split.us.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %.lr.ph59.split.us.i ], [ %indvars.iv75.i.ph, %.lr.ph59.split.us.i.preheader133 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv75.i
  %i.bt = trunc nuw nsw i64 %indvars.iv75.i to i32
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !17
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count.i15
  br i1 %exitcond79.not.i, label %._crit_edge.i20, label %.lr.ph59.split.us.i, !llvm.loop !13

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %.lr.ph.i16
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %.lr.ph.i16 ], [ %indvars.iv.i17.ph, %.lr.ph.i16.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i17
  store i32 %i.ba, ptr %i.bu, align 4, !tbaa !17
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %wide.trip.count.i15
  br i1 %exitcond.not.i19, label %.lr.ph59.i, label %.lr.ph.i16, !llvm.loop !14

.lr.ph59.split.i:                                 ; preds = %.lr.ph59.split.i.preheader134, %.lr.ph59.split.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %.lr.ph59.split.i ], [ %indvars.iv70.i.ph, %.lr.ph59.split.i.preheader134 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv70.i to i32
  %i.bw = xor i32 %i.bv, -1
  %i.bx = add nsw i32 %i.f, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv70.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !17
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count.i15
  br i1 %exitcond74.not.i, label %._crit_edge.i20, label %.lr.ph59.split.i, !llvm.loop !15

._crit_edge.i20:                                  ; preds = %.lr.ph59.split.i, %.lr.ph59.split.us.i, %middle.block102, %middle.block115
  %i.bz = and i32 %0, 16384
  %.not54.i = icmp eq i32 %i.bz, 0
  br i1 %.not54.i, label %bb.o, label %bb.n

._crit_edge.thread.i22:                           ; preds = %bb.m
  %i.ca = and i32 %0, 16384
  %.not5490.i = icmp eq i32 %i.ca, 0
  br i1 %.not5490.i, label %ComputeIncrementsForPlanar.exit, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i22
  %i.cb = load i32, ptr %4, align 4, !tbaa !17
  br label %._crit_edge63.i

bb.n:                                             ; preds = %._crit_edge.i20
  %i.cc = load i32, ptr %4, align 4, !tbaa !17    ; 2 uses
  %.not94.i = icmp eq i32 %i.f, 1
  br i1 %.not94.i, label %._crit_edge63.i, label %.lr.ph62.preheader.i

.lr.ph62.preheader.i:                             ; preds = %bb.n
  %i.cd = add nsw i32 %i.f, -1
  %scevgep.i21 = getelementptr i8, ptr %4, i64 4
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %4, ptr align 4 %scevgep.i21, i64 %i.cf, i1 false), !tbaa !17
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %.lr.ph62.preheader.i, %bb.n, %.thread.i
  %i.cg = phi i64 [ -1, %.thread.i ], [ %i.ce, %.lr.ph62.preheader.i ], [ 0, %bb.n ]
  %i.ch = phi i32 [ %i.cb, %.thread.i ], [ %i.cc, %.lr.ph62.preheader.i ], [ %i.cc, %bb.n ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cg
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge63.i, %._crit_edge.i20
  %i.cj = icmp samesign ugt i32 %..i.i12, 1
  %i.ck = icmp ne i32 %i.f, 0
  %or.cond.i = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i, label %.lr.ph65.preheader.i, label %ComputeIncrementsForPlanar.exit

.lr.ph65.preheader.i:                             ; preds = %bb.o
  %wide.trip.count86.i = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check119 = icmp samesign ult i32 %i.f, 8
  br i1 %min.iters.check119, label %.lr.ph65.i.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph65.preheader.i
  %n.vec121 = and i64 %wide.trip.count86.i, 24    ; 3 uses
  %broadcast.splatinsert122 = insertelement <4 x i32> poison, i32 %..i.i12, i64 0
  %broadcast.splat123 = shufflevector <4 x i32> %broadcast.splatinsert122, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.load126 = load <4 x i32>, ptr %4, align 4, !tbaa !17
  %wide.load127 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !17
  %i.cm = mul <4 x i32> %wide.load126, %broadcast.splat123
  %i.cn = mul <4 x i32> %wide.load127, %broadcast.splat123
  store <4 x i32> %i.cm, ptr %4, align 4, !tbaa !17
  store <4 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !17
  %i.co = icmp eq i64 %n.vec121, 8
  br i1 %i.co, label %middle.block129, label %vector.body124.1

vector.body124.1:                                 ; preds = %vector.ph120
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.load126.1 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !17
  %wide.load127.1 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !17
  %i.cr = mul <4 x i32> %wide.load126.1, %broadcast.splat123
  %i.cs = mul <4 x i32> %wide.load127.1, %broadcast.splat123
  store <4 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !17
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !17
  br label %middle.block129

middle.block129:                                  ; preds = %vector.body124.1, %vector.ph120
  %cmp.n130 = icmp eq i64 %n.vec121, %wide.trip.count86.i
  br i1 %cmp.n130, label %ComputeIncrementsForPlanar.exit, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %.lr.ph65.preheader.i, %middle.block129
  %indvars.iv83.i.ph = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %n.vec121, %middle.block129 ]
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %.lr.ph65.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %.lr.ph65.i ], [ %indvars.iv83.i.ph, %.lr.ph65.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv83.i ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = mul i32 %i.cu, %..i.i12
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !17
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %ComputeIncrementsForPlanar.exit, label %.lr.ph65.i, !llvm.loop !16

ComputeIncrementsForPlanar.exit:                  ; preds = %.lr.ph61.i, %.lr.ph65.i, %middle.block75, %middle.block129, %bb.o, %._crit_edge.thread.i22, %bb.h, %._crit_edge.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !18, !19, !20}
!10 = distinct !{!10, !18, !19, !20}
!11 = distinct !{!11, !18, !19, !20}
!12 = distinct !{!12, !18, !19, !20}
!13 = distinct !{!13, !18, !19, !20}
!14 = distinct !{!14, !18, !19, !20}
!15 = distinct !{!15, !18, !19, !20}
!16 = distinct !{!16, !18, !19, !20}
!17 = !{!6, !6, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
