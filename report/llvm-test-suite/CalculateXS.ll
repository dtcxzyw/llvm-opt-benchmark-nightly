Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CalculateXS?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @calculate_micro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noalias nofree noundef writeonly captures(none) initializes((0, 40)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %6 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr %4, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = add nsw i64 %3, -1
  %i.j = icmp eq i64 %i.i, %i.h
  %i.k = getelementptr inbounds [8 x i8], ptr %5, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr [48 x i8], ptr %i.l, i64 %i.h
  %.0.idx = select i1 %i.j, i64 -48, i64 0
  %.0 = getelementptr i8, ptr %i.m, i64 %.0.idx   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.o = load double, ptr %i.n, align 8, !tbaa !16 ; 2 uses
  %i.p = fsub double %i.o, %0
  %i.q = load double, ptr %.0, align 8, !tbaa !16
  %i.r = fsub double %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.u = fneg double %i.p
  %i.v = fdiv double %i.u, %i.r                   ; 2 uses
  %i.w = load <2 x double>, ptr %i.s, align 8, !tbaa !17 ; 2 uses
  %i.x = load <2 x double>, ptr %i.t, align 8, !tbaa !17
  %i.y = fsub <2 x double> %i.w, %i.x
  %i.z = insertelement <2 x double> poison, double %i.v, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.y, <2 x double> %i.w)
  store <2 x double> %i.ab, ptr %7, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.af = load <2 x double>, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.ad, align 8, !tbaa !17
  %i.ah = fsub <2 x double> %i.af, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ah, <2 x double> %i.af)
  store <2 x double> %i.ai, ptr %i.ae, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = fsub double %i.ak, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.v, double %i.an, double %i.ak)
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %i.ao, ptr %i.ap, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @calculate_macro_xs(double noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef readonly captures(none) %6, ptr noalias nofree noundef readonly captures(none) %7, ptr noalias nofree noundef readonly captures(none) %8, ptr noalias nofree noundef writeonly captures(none) initializes((0, 40)) %9) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false), !tbaa !17
  %i.a = mul nsw i64 %3, %2                       ; 2 uses
  %i.b = icmp sgt i64 %i.a, 2
  br i1 %i.b, label %.lr.ph.preheader.i, label %grid_search.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1                     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.c, %.lr.ph.preheader.i ]
  %.01317.i = phi i64 [ %..013.i, %.lr.ph.i ], [ %i.c, %.lr.ph.preheader.i ]
  %.01416.i = phi i64 [ %.014..i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.d = lshr i64 %.018.i, 1
  %i.e = add nuw nsw i64 %.01416.i, %i.d          ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fcmp ogt double %i.g, %0                 ; 2 uses
  %.014..i = select i1 %i.h, i64 %.01416.i, i64 %i.e ; 3 uses
  %..013.i = select i1 %i.h, i64 %i.e, i64 %.01317.i ; 2 uses
  %i.i = sub nsw i64 %..013.i, %.014..i           ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %.lr.ph.i, label %grid_search.exit.loopexit, !llvm.loop !0

grid_search.exit.loopexit:                        ; preds = %.lr.ph.i
  %i.k = shl i64 %.014..i, 32
  %i.l = ashr exact i64 %i.k, 28
  br label %grid_search.exit

grid_search.exit:                                 ; preds = %grid_search.exit.loopexit, %bb.a
  %.014.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %grid_search.exit.loopexit ]
  %i.m = sext i32 %1 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %4, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %grid_search.exit
  %i.q = getelementptr inbounds [8 x i8], ptr %8, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds i8, ptr %6, i64 %.014.lcssa.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13, !alias.scope !29
  %i.x = add nsw i64 %3, -1
  %wide.trip.count = zext nneg i32 %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  store <2 x double> %i.bs, ptr %9, align 8, !tbaa !17
  store <2 x double> %i.bt, ptr %i.y, align 8, !tbaa !17
  store double %i.bu, ptr %i.z, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %grid_search.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.aa = phi double [ 0.000000e+00, %.lr.ph ], [ %i.bu, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bs, %bb.b ]
  %i.ac = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bt, %bb.b ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.ah = sext i32 %i.ae to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8, !noalias !31
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp eq i64 %i.x, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ah
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14, !alias.scope !30
  %i.ao = getelementptr [48 x i8], ptr %i.an, i64 %i.ak
  %.0.idx.i = select i1 %i.al, i64 -48, i64 0
  %.0.i = getelementptr i8, ptr %i.ao, i64 %.0.idx.i ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !16, !noalias !31 ; 2 uses
  %i.ar = fsub double %i.aq, %0
  %i.as = load double, ptr %.0.i, align 8, !tbaa !16, !noalias !31
  %i.at = fsub double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aw = fneg double %i.ar
  %i.ax = fdiv double %i.aw, %i.at                ; 2 uses
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !17, !noalias !31 ; 2 uses
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !17, !noalias !31
  %i.ba = fsub <2 x double> %i.ay, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.ba, <2 x double> %i.ay)
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bg = load <2 x double>, ptr %i.be, align 8, !tbaa !17, !noalias !31 ; 2 uses
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !17, !noalias !31
  %i.bi = fsub <2 x double> %i.bg, %i.bh
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bi, <2 x double> %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !18, !noalias !31 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18, !noalias !31
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bo, double %i.bl)
  %i.bq = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.br, <2 x double> %i.ab) ; 2 uses
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.br, <2 x double> %i.ac) ; 2 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ag, double %i.aa) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !25
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @grid_search(i64 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i64 %0, 2
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i64 %0, -1                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.018 = phi i64 [ %i.h, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.01317 = phi i64 [ %..013, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.01416 = phi i64 [ %.014., %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = lshr i64 %.018, 1
  %i.d = add nuw nsw i64 %i.c, %.01416            ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !19
  %i.g = fcmp ogt double %i.f, %1                 ; 2 uses
  %.014. = select i1 %i.g, i64 %.01416, i64 %i.d  ; 3 uses
  %..013 = select i1 %i.g, i64 %i.d, i64 %.01317  ; 2 uses
  %i.h = sub nsw i64 %..013, %.014.               ; 2 uses
  %i.i = icmp sgt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %.014., %.lr.ph ]
  ret i64 %.014.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"", !9, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!16 = !{!15, !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!15, !9, i64 40}
!19 = !{!12, !9, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, i1 true, !"calculate_micro_xs"}
!22 = distinct !{!22, !21, !"calculate_micro_xs: argument 0"}
!23 = distinct !{!23, !21, !"calculate_micro_xs: argument 1"}
!24 = distinct !{!24, !21, !"calculate_micro_xs: argument 2"}
!25 = distinct !{!25, !20}
!26 = !{!11, !11, i64 0}
!27 = !{!"p1 double", !10, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!22}
!30 = !{!23}
!31 = !{!22, !23, !24}
end_hunk_0
