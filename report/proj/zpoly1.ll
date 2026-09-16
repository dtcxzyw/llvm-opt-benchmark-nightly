Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/zpoly1?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { double, double } @_Z9pj_zpoly17COMPLEXPKS_i(double %0, double %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !9 ; 4 uses
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fneg double %1
  %i.g = insertelement <2 x double> poison, double %1, i64 0
  %i.h = insertelement <2 x double> %i.g, double %i.f, i64 1 ; 3 uses
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.k = add nsw i32 %3, -1
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !9
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.c, <2 x double> %i.m)
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.c, <2 x double> %i.o) ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.021.unr = phi i32 [ %3, %.lr.ph ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.01720.unr = phi ptr [ %i.b, %.lr.ph ], [ %i.l, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.c, %.lr.ph ], [ %i.q, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i32 %3, 1
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.021 = phi i32 [ %i.z, %.lr.ph.new ], [ %.021.unr, %.prol.loopexit ] ; 2 uses
  %.01720 = phi ptr [ %i.aa, %.lr.ph.new ], [ %.01720.unr, %.prol.loopexit ] ; 2 uses
  %i.s = phi <2 x double> [ %i.ag, %.lr.ph.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.01720, i64 -16
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !9
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.s, <2 x double> %i.u)
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.s, <2 x double> %i.w)
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = add nsw i32 %.021, -2
  %i.aa = getelementptr inbounds i8, ptr %.01720, i64 -32 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !9
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.y, <2 x double> %i.ab)
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.y, <2 x double> %i.ad) ; 2 uses
  %i.af = icmp sgt i32 %.021, 2
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br i1 %i.af, label %.lr.ph.new, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %i.ah = phi <2 x double> [ %i.d, %bb.a ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ae, %.lr.ph.new ] ; 3 uses
  %i.ai = insertelement <2 x double> poison, double %1, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fneg <2 x double> %i.ah
  %i.al = shufflevector <2 x double> %i.ah, <2 x double> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = insertelement <2 x double> poison, double %0, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ah, <2 x double> %i.am) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.aq, 0
  %i.ar = extractelement <2 x double> %i.ap, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ar, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { double, double } @_Z10pj_zpolyd17COMPLEXPKS_iPS_(double %0, double %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %2, i64 %i.a ; 3 uses
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !9 ; 8 uses
  %i.d = icmp sgt i32 %3, 0
  %i.e = fneg double %1                           ; 2 uses
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !9
  %i.h = insertelement <2 x double> poison, double %0, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.c, <2 x double> %i.g)
  %i.k = insertelement <2 x double> poison, double %i.e, i64 0
  %i.l = insertelement <2 x double> %i.k, double %1, i64 1 ; 7 uses
  %i.m = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.m, <2 x double> %i.j) ; 5 uses
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %5 = and i32 %3, 1
  %lcmp.mod.not.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not.not, label %.peel.next.prol, label %.peel.next.prol.loopexit

.peel.next.prol:                                  ; preds = %.peel.next.preheader
  %6 = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %.in.prol = add nsw i32 %3, -1
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.c, <2 x double> %i.n)
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %6, <2 x double> %7) ; 2 uses
  %9 = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %10 = load <2 x double>, ptr %9, align 8, !tbaa !9
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.n, <2 x double> %10)
  %12 = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %12, <2 x double> %11) ; 2 uses
  br label %.peel.next.prol.loopexit

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol, %.peel.next.preheader
  %.in.in.unr = phi i32 [ %3, %.peel.next.preheader ], [ %.in.prol, %.peel.next.prol ]
  %.04345.unr = phi ptr [ %i.f, %.peel.next.preheader ], [ %9, %.peel.next.prol ]
  %.unr = phi <2 x double> [ %i.c, %.peel.next.preheader ], [ %8, %.peel.next.prol ]
  %.unr63 = phi <2 x double> [ %i.n, %.peel.next.preheader ], [ %13, %.peel.next.prol ]
  %.lcssa62.unr = phi <2 x double> [ poison, %.peel.next.preheader ], [ %8, %.peel.next.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.peel.next.preheader ], [ %13, %.peel.next.prol ]
  %14 = icmp eq i32 %3, 2
  br i1 %14, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %.peel.next
  %.in.in = phi i32 [ %.in.1, %.peel.next ], [ %.in.in.unr, %.peel.next.prol.loopexit ] ; 2 uses
  %.04345 = phi ptr [ %i.t, %.peel.next ], [ %.04345.unr, %.peel.next.prol.loopexit ] ; 2 uses
  %i.o = phi <2 x double> [ %i.s, %.peel.next ], [ %.unr, %.peel.next.prol.loopexit ] ; 2 uses
  %i.p = phi <2 x double> [ %i.x, %.peel.next ], [ %.unr63, %.peel.next.prol.loopexit ] ; 3 uses
  %15 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.o, <2 x double> %i.p)
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %15, <2 x double> %16) ; 2 uses
  %18 = getelementptr inbounds i8, ptr %.04345, i64 -16
  %19 = load <2 x double>, ptr %18, align 8, !tbaa !9
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.p, <2 x double> %19)
  %21 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %21, <2 x double> %20) ; 3 uses
  %i.q = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %.in.1 = add nsw i32 %.in.in, -2
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %17, <2 x double> %22)
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.q, <2 x double> %i.r) ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.04345, i64 -32 ; 2 uses
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !9
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %22, <2 x double> %i.u)
  %i.w = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.w, <2 x double> %i.v) ; 2 uses
  %23 = icmp sgt i32 %.in.in, 3
  br i1 %23, label %.peel.next, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.peel.next.prol.loopexit, %.peel.next, %bb.a, %bb.b
  %24 = phi <2 x double> [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %.lcssa62.unr, %.peel.next.prol.loopexit ], [ %i.s, %.peel.next ] ; 2 uses
  %25 = phi <2 x double> [ %i.c, %bb.a ], [ %i.n, %bb.b ], [ %.lcssa.unr, %.peel.next.prol.loopexit ], [ %i.x, %.peel.next ] ; 4 uses
  %i.y = insertelement <2 x double> poison, double %0, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %24, <2 x double> %25)
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = insertelement <2 x double> poison, double %1, i64 0 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fneg <2 x double> %25
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> %25, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x double> %i.ad, %i.af
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %25, <2 x double> %i.ag) ; 2 uses
  %i.ai = insertelement <2 x double> %i.ac, double %i.e, i64 1
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %24, <2 x double> %i.ab)
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ak, ptr %4, align 8, !tbaa !9
  %i.al = extractelement <2 x double> %i.ah, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.al, 0
  %i.am = extractelement <2 x double> %i.ah, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.am, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
