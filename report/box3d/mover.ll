Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mover?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define { <2 x float>, i64 } @b3SolvePlanes(<2 x float> %0, float %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader.us.preheader.a

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.preheader.us.preheader.unr-lcssa:                ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us.preheader.a, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader.us.preheader.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv.epil
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.us.preheader.a, label %.lr.ph.epil, !llvm.loop !15

.preheader.us.preheader.a:                        ; preds = %.preheader.us.preheader.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.e = tail call float @b3GetLengthUnitsPerMeter() #4
  %i.f = fmul float %i.e, 5.000000e-03            ; 2 uses
  br i1 %i.a, label %.preheader.us.preheader, label %.split

.preheader.us.preheader:                          ; preds = %.preheader.us.preheader.a
  %wide.trip.count75 = zext nneg i32 %3 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.sroa.7.063.us = phi float [ %i.ah, %bb.c ], [ %1, %.preheader.us.preheader ]
  %.sroa.028.062.us = phi <2 x float> [ %i.af, %bb.c ], [ %0, %.preheader.us.preheader ]
  %.04861.us = phi i32 [ %i.am, %bb.c ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv72 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next73, %bb.b ] ; 2 uses
  %.sroa.7.156.us = phi float [ %.sroa.7.063.us, %.preheader.us ], [ %i.ah, %bb.b ] ; 2 uses
  %.sroa.028.155.us = phi <2 x float> [ %.sroa.028.062.us, %.preheader.us ], [ %i.af, %bb.b ] ; 2 uses
  %.04954.us = phi float [ 0.000000e+00, %.preheader.us ], [ %i.al, %bb.b ]
  %i.g = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv72 ; 5 uses
  %i.h = load <2 x float>, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %.sroa.28.8.vec.extract.i.us = extractelement <2 x float> %i.j, i64 0
  %i.k = fmul <2 x float> %.sroa.028.155.us, %i.h ; 2 uses
  %shift = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.k, %shift
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = fmul float %.sroa.7.156.us, %.sroa.28.8.vec.extract.i.us
  %i.n = fadd float %i.m, %i.l
  %.sroa.28.12.vec.extract.i.us = extractelement <2 x float> %i.j, i64 1
  %i.o = fsub float %i.n, %.sroa.28.12.vec.extract.i.us
  %i.p = tail call float @b3GetLengthUnitsPerMeter() #4
  %i.q = fmul float %i.p, 5.000000e-03
  %i.r = fadd float %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !13 ; 2 uses
  %i.u = fsub float %i.t, %i.r                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !20 ; 2 uses
  %i.x = fcmp olt float %i.u, 0.000000e+00
  %i.y = fcmp olt float %i.w, %i.u
  %i.z = select i1 %i.y, float %i.w, float %i.u
  %i.aa = select i1 %i.x, float 0.000000e+00, float %i.z ; 2 uses
  store float %i.aa, ptr %i.s, align 4, !tbaa !13
  %i.ab = fsub float %i.aa, %i.t                  ; 5 uses
  %.sroa.01.0.copyload.us = load <2 x float>, ptr %i.g, align 4
  %.sroa.22.0.copyload.us = load float, ptr %i.i, align 4
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %.sroa.01.0.copyload.us, %i.ad
  %i.af = fadd <2 x float> %.sroa.028.155.us, %i.ae ; 3 uses
  %i.ag = fmul float %.sroa.22.0.copyload.us, %i.ab
  %i.ah = fadd float %.sroa.7.156.us, %i.ag       ; 3 uses
  %i.ai = fcmp olt float %i.ab, 0.000000e+00
  %i.aj = fneg float %i.ab
  %i.ak = select i1 %i.ai, float %i.aj, float %i.ab
  %i.al = fadd float %.04954.us, %i.ak            ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge58.us, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %._crit_edge58.us
  %i.am = add nuw nsw i32 %.04861.us, 1           ; 2 uses
  %exitcond77.not = icmp eq i32 %i.am, 20
  br i1 %exitcond77.not, label %.split65.us.loopexit, label %.preheader.us, !llvm.loop !17

._crit_edge58.us:                                 ; preds = %bb.b
  %i.an = fcmp olt float %i.al, %i.f
  br i1 %i.an, label %.split65.us.loopexit, label %bb.c

.split:                                           ; preds = %.preheader.us.preheader.a
  %i.ao = fcmp ogt float %i.f, 0.000000e+00
  %spec.select = select i1 %i.ao, i64 0, i64 85899345920
  br label %.split65.us

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ap = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 132
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 188
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !13
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.us.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !18

.split65.us.loopexit:                             ; preds = %bb.c, %._crit_edge58.us
  %.us-phi.ph = phi i32 [ %.04861.us, %._crit_edge58.us ], [ 20, %bb.c ]
  %i.bf = zext nneg i32 %.us-phi.ph to i64
  %i.bg = shl nuw nsw i64 %i.bf, 32
  br label %.split65.us

.split65.us:                                      ; preds = %.split, %.split65.us.loopexit
  %.us-phi = phi i64 [ %spec.select, %.split ], [ %i.bg, %.split65.us.loopexit ]
  %.us-phi66 = phi <2 x float> [ %0, %.split ], [ %i.af, %.split65.us.loopexit ]
  %.us-phi67 = phi float [ %1, %.split ], [ %i.ah, %.split65.us.loopexit ]
  %.fca.0.insert = insertvalue { <2 x float>, i64 } poison, <2 x float> %.us-phi66, 0
  %i.bh = bitcast float %.us-phi67 to i32
  %.sroa.245.8.insert.ext = zext i32 %i.bh to i64
  %.sroa.245.8.insert.insert = or disjoint i64 %.us-phi, %.sroa.245.8.insert.ext
  %.fca.1.insert = insertvalue { <2 x float>, i64 } %.fca.0.insert, i64 %.sroa.245.8.insert.insert, 1
  ret { <2 x float>, i64 } %.fca.1.insert
}

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { <2 x float>, float } @b3ClipVector(<2 x float> %0, float %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.023.0.lcssa = phi <2 x float> [ %0, %bb.a ], [ %.sroa.023.1, %bb.d ]
  %.sroa.5.0.lcssa = phi float [ %1, %bb.a ], [ %.sroa.5.1, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.023.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0.lcssa, 1
  ret { <2 x float>, float } %.fca.1.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.5.028 = phi float [ %1, %.lr.ph.preheader ], [ %.sroa.5.1, %bb.d ] ; 4 uses
  %.sroa.023.027 = phi <2 x float> [ %0, %.lr.ph.preheader ], [ %.sroa.023.1, %bb.d ] ; 4 uses
  %i.b = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !13
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i8, ptr %i.f, align 4, !tbaa !22, !range !23, !noundef !24
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.b, align 4 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4 ; 2 uses
  %i.i = fmul <2 x float> %.sroa.023.027, %.sroa.07.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.k = fmul float %.sroa.5.028, %.sroa.28.0.copyload
  %i.l = fadd float %i.k, %i.j                    ; 2 uses
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 0.000000e+00, float %i.l ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %.sroa.07.0.copyload, %i.p
  %i.r = fsub <2 x float> %.sroa.023.027, %i.q
  %i.s = fmul float %.sroa.28.0.copyload, %i.n
  %i.t = fsub float %.sroa.5.028, %i.s
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %.sroa.023.1 = phi <2 x float> [ %i.r, %bb.c ], [ %.sroa.023.027, %bb.b ], [ %.sroa.023.027, %.lr.ph ] ; 2 uses
  %.sroa.5.1 = phi float [ %i.t, %bb.c ], [ %.sroa.5.028, %bb.b ], [ %.sroa.5.028, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

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
!9 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!"b3Plane", !9, i64 0, !8, i64 12}
!11 = !{!"_Bool", !4, i64 0}
!12 = !{!"b3CollisionPlane", !10, i64 0, !8, i64 16, !8, i64 20, !11, i64 24}
!13 = !{!12, !8, i64 20}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !19}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!12, !8, i64 16}
!21 = distinct !{!21, !14}
!22 = !{!12, !11, i64 24}
!23 = !{i8 0, i8 2}
!24 = !{}
end_hunk_0
