Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/caset?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @caset(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl nuw nsw i64 %wide.trip.count, 4
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 16
  %bound0 = icmp ult ptr %0, %i.e
  %bound1 = icmp ult ptr %2, %i.d
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.f = load double, ptr %2, align 8, !tbaa !16, !alias.scope !25
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.f, i64 0
  %i.g = load double, ptr %i.b, align 8, !tbaa !16, !alias.scope !25
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.g, i64 0
  %interleaved.vec = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert11, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x double> %interleaved.vec, ptr %i.h, align 8, !tbaa !16, !alias.scope !27, !noalias !25
  store <4 x double> %interleaved.vec, ptr %i.j, align 8, !tbaa !16, !alias.scope !27, !noalias !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.l = load double, ptr %2, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.prol ; 2 uses
  store double %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = load double, ptr %i.b, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !13

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.p = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.r = load double, ptr %2, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store double %i.r, ptr %i.s, align 8, !tbaa !16
  %i.t = load double, ptr %i.b, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.t, ptr %i.u, align 8, !tbaa !16
  %i.v = load double, ptr %2, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store double %i.v, ptr %i.x, align 8, !tbaa !16
  %i.y = load double, ptr %i.b, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store double %i.y, ptr %i.z, align 8, !tbaa !16
  %i.aa = load double, ptr %2, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store double %i.aa, ptr %i.ac, align 8, !tbaa !16
  %i.ad = load double, ptr %i.b, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store double %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = load double, ptr %2, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store double %i.af, ptr %i.ah, align 8, !tbaa !16
  %i.ai = load double, ptr %i.b, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store double %i.ai, ptr %i.aj, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!12 = distinct !{!12, !19, !20, !21}
!13 = distinct !{!13, !22}
!14 = distinct !{!14, !19, !20}
!15 = !{!"double", !5, i64 0}
!16 = !{!15, !15, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = !{!24}
!26 = distinct !{!26, !23}
!27 = !{!26}
end_hunk_0
