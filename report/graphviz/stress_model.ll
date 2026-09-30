Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress_model?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @stress_model(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @SparseMatrix_is_symmetric(ptr noundef %1, i1 noundef zeroext false) #2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq i32 %i.c, 1                     ; 2 uses
  br i1 %i.a, label %4, label %bb.b

4:                                                ; preds = %bb.a
  br i1 %.not, label %bb.d, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %1, i1 noundef zeroext false) #2
  %i.e = tail call ptr @SparseMatrix_remove_diagonal(ptr noundef %i.d) #2
  br label %bb.d

.thread:                                          ; preds = %4, %bb.b
  %i.f = tail call ptr @SparseMatrix_get_real_adjacency_matrix_symmetrized(ptr noundef nonnull %1) #2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %4
  %.031 = phi ptr [ %i.e, %bb.c ], [ %i.f, %.thread ], [ %1, %4 ]
  %i.g = tail call ptr @SparseMatrix_remove_diagonal(ptr noundef %.031) #2 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call ptr @SparseStressMajorizationSmoother_new(ptr noundef nonnull %i.g, i32 noundef %0, ptr noundef %2) #2 ; 7 uses
  %.not34 = icmp eq ptr %i.i, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store double 1.000000e-01, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 2, ptr %i.k, align 8, !tbaa !26
  %i.l = tail call double @SparseStressMajorizationSmoother_smooth(ptr noundef nonnull %i.i, i32 noundef %0, ptr noundef %2, i32 noundef %3) #2 ; 0 uses
  %i.m = mul nsw i32 %i.h, %0                     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 6 uses
  %min.iters.check = icmp eq i32 %i.m, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.p = shl nuw nsw i64 %wide.trip.count, 3
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %i.r = getelementptr i8, ptr %i.i, i64 64
  %bound0 = icmp ult ptr %2, %i.r
  %bound1 = icmp ult ptr %i.o, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.s = load double, ptr %i.o, align 8, !tbaa !27, !alias.scope !28
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !29, !alias.scope !30, !noalias !28
  %i.u = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.u, ptr %i.t, align 8, !tbaa !29, !alias.scope !30, !noalias !28
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.w = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = load double, ptr %i.o, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !29
  %i.aa = fdiv double %i.z, %i.x
  store double %i.aa, ptr %i.y, align 8, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !12

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  tail call void @SparseStressMajorizationSmoother_delete(ptr noundef nonnull %i.i) #2
  br label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = load double, ptr %i.o, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29
  %i.ag = fdiv double %i.af, %i.ad
  store double %i.ag, ptr %i.ae, align 8, !tbaa !29
  %i.ah = load double, ptr %i.o, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = fdiv double %i.ak, %i.ah
  store double %i.al, ptr %i.aj, align 8, !tbaa !29
  %i.am = load double, ptr %i.o, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !29
  %i.aq = fdiv double %i.ap, %i.am
  store double %i.aq, ptr %i.ao, align 8, !tbaa !29
  %i.ar = load double, ptr %i.o, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !29
  %i.av = fdiv double %i.au, %i.ar
  store double %i.av, ptr %i.at, align 8, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !13

bb.f:                                             ; preds = %bb.d, %._crit_edge
  %.030 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.d ]
  %.not35 = icmp eq ptr %i.g, %1
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @SparseMatrix_delete(ptr noundef nonnull %i.g) #2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i32 %.030
}

declare zeroext i1 @SparseMatrix_is_symmetric(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @SparseMatrix_symmetrize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @SparseMatrix_remove_diagonal(ptr noundef) local_unnamed_addr #1

declare ptr @SparseMatrix_get_real_adjacency_matrix_symmetrized(ptr noundef) local_unnamed_addr #1

declare ptr @SparseStressMajorizationSmoother_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare double @SparseStressMajorizationSmoother_smooth(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @SparseStressMajorizationSmoother_delete(ptr noundef) local_unnamed_addr #1

declare void @SparseMatrix_delete(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !31, !32, !33}
!12 = distinct !{!12, !34}
!13 = distinct !{!13, !31, !32}
!14 = !{!"long", !4, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"_Bool", !4, i64 0}
!18 = !{!"SparseMatrix_struct", !5, i64 0, !5, i64 4, !14, i64 8, !14, i64 16, !5, i64 24, !16, i64 32, !16, i64 40, !15, i64 48, !5, i64 56, !17, i64 60, !17, i64 60, !17, i64 60, !14, i64 64}
!19 = !{!18, !5, i64 24}
!20 = !{!18, !5, i64 0}
!21 = !{!"p1 _ZTS19SparseMatrix_struct", !15, i64 0}
!22 = !{!"p1 double", !15, i64 0}
!23 = !{!"double", !4, i64 0}
!24 = !{!"StressMajorizationSmoother_struct", !21, i64 0, !21, i64 8, !21, i64 16, !22, i64 24, !15, i64 32, !15, i64 40, !5, i64 48, !23, i64 56, !23, i64 64, !23, i64 72}
!25 = !{!24, !23, i64 64}
!26 = !{!24, !5, i64 48}
!27 = !{!24, !23, i64 56}
!28 = !{!9}
!29 = !{!23, !23, i64 0}
!30 = !{!10}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
