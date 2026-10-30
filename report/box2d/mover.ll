Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/mover?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define { <2 x float>, i32 } @b2SolvePlanes(<2 x float> %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader.us.preheader.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader.us.preheader.unr-lcssa:                ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us.preheader.a, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader.us.preheader.unr-lcssa ]
  %lcmp.mod65 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.us.preheader.a, label %.lr.ph.epil, !llvm.loop !15

.preheader.us.preheader.a:                        ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.e = tail call float @b2GetLengthUnitsPerMeter() #5
  %i.f = fmul float %i.e, 5.000000e-03            ; 2 uses
  br i1 %i.a, label %.preheader.us.preheader, label %.split

.preheader.us.preheader:                          ; preds = %.preheader.us.preheader.a
  %wide.trip.count60 = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.sroa.024.050.us = phi <2 x float> [ %i.ab, %bb.c ], [ %0, %.preheader.us.preheader ]
  %.03849.us = phi i32 [ %i.ag, %bb.c ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv57 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next58, %bb.b ] ; 2 uses
  %.sroa.024.145.us = phi <2 x float> [ %.sroa.024.050.us, %.preheader.us ], [ %i.ab, %bb.b ] ; 2 uses
  %.03944.us = phi float [ 0.000000e+00, %.preheader.us ], [ %i.af, %bb.b ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv57 ; 5 uses
  %.sroa.05.0.copyload.us = load <2 x float>, ptr %i.g, align 4
  %.sroa.26.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.26.0.copyload.us = load float, ptr %.sroa.26.0..sroa_idx.us, align 4
  %i.h = fmul <2 x float> %.sroa.024.145.us, %.sroa.05.0.copyload.us
  %i.i = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.h)
  %i.j = fsub float %i.i, %.sroa.26.0.copyload.us
  %i.k = tail call float @b2GetLengthUnitsPerMeter() #5
  %i.l = fmul float %i.k, 5.000000e-03
  %i.m = fadd float %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !13 ; 2 uses
  %i.p = fsub float %i.o, %i.m                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !20 ; 2 uses
  %i.s = fcmp olt float %i.p, 0.000000e+00
  %i.t = fcmp ogt float %i.p, %i.r
  %i.u = select i1 %i.t, float %i.r, float %i.p
  %i.v = select i1 %i.s, float 0.000000e+00, float %i.u ; 2 uses
  store float %i.v, ptr %i.n, align 4, !tbaa !13
  %i.w = fsub float %i.v, %i.o                    ; 4 uses
  %i.x = load <2 x float>, ptr %i.g, align 4
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = fadd <2 x float> %.sroa.024.145.us, %i.aa ; 4 uses
  %i.ac = fcmp olt float %i.w, 0.000000e+00
  %i.ad = fneg float %i.w
  %i.ae = select i1 %i.ac, float %i.ad, float %i.w
  %i.af = fadd float %.03944.us, %i.ae            ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %._crit_edge47.us, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %._crit_edge47.us
  %i.ag = add nuw nsw i32 %.03849.us, 1           ; 2 uses
  %exitcond62.not = icmp eq i32 %i.ag, 20
  br i1 %exitcond62.not, label %.split52.us, label %.preheader.us, !llvm.loop !17

._crit_edge47.us:                                 ; preds = %bb.b
  %i.ah = fcmp olt float %i.af, %i.f
  br i1 %i.ah, label %.split52.us, label %bb.c

.split:                                           ; preds = %.preheader.us.preheader.a
  %i.ai = fcmp ogt float %i.f, 0.000000e+00
  %spec.select = select i1 %i.ai, i32 0, i32 20
  br label %.split52.us

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !13
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.us.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !18

.split52.us:                                      ; preds = %._crit_edge47.us, %bb.c, %.split
  %.us-phi = phi i32 [ %spec.select, %.split ], [ %.03849.us, %._crit_edge47.us ], [ 20, %bb.c ]
  %.us-phi53 = phi <2 x float> [ %0, %.split ], [ %i.ab, %bb.c ], [ %i.ab, %._crit_edge47.us ]
  %.fca.0.insert = insertvalue { <2 x float>, i32 } poison, <2 x float> %.us-phi53, 0
  %.fca.1.insert = insertvalue { <2 x float>, i32 } %.fca.0.insert, i32 %.us-phi, 1
  ret { <2 x float>, i32 } %.fca.1.insert
}

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define <2 x float> @b2ClipVector(<2 x float> %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.09.0.lcssa = phi <2 x float> [ %0, %bb.a ], [ %.sroa.09.1, %bb.d ]
  ret <2 x float> %.sroa.09.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.09.015 = phi <2 x float> [ %0, %.lr.ph.preheader ], [ %.sroa.09.1, %bb.d ] ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i8, ptr %i.f, align 4, !tbaa !22, !range !23, !noundef !24
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %i.j = fmul <2 x float> %.sroa.09.015, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fcmp ogt float %i.k, 0.000000e+00
  %i.m = select i1 %i.l, float 0.000000e+00, float %i.k
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.i, %i.o
  %i.q = fsub <2 x float> %.sroa.09.015, %i.p
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.09.1 = phi <2 x float> [ %i.q, %bb.c ], [ %.sroa.09.015, %bb.b ], [ %.sroa.09.015, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"b2Vec2", !8, i64 0, !8, i64 4}
!10 = !{!"b2Plane", !9, i64 0, !8, i64 8}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!"b2CollisionPlane", !10, i64 0, !8, i64 12, !8, i64 16, !11, i64 20}
!13 = !{!12, !8, i64 16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!12, !8, i64 12}
!21 = distinct !{!21, !14}
!22 = !{!12, !11, i64 20}
!23 = !{i8 0, i8 2}
!24 = !{}
end_hunk_0
