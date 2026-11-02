Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlartv?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dlartv_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %6, i64 -8 ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %5, i64 -8 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 -8 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !15     ; 7 uses
  %.not36 = icmp slt i32 %i.e, 1
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.g = load i32, ptr %4, align 4, !tbaa !15     ; 2 uses
  %i.h = load i32, ptr %7, align 4, !tbaa !15     ; 2 uses
  %i.i = sext i32 %i.g to i64                     ; 3 uses
  %i.j = sext i32 %i.f to i64                     ; 3 uses
  %i.k = sext i32 %i.h to i64                     ; 3 uses
  %i.l = zext nneg i32 %i.e to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %ident.check = icmp ne i32 %i.f, 1
  %ident.check50 = icmp ne i32 %i.g, 1
  %ident.check51 = icmp ne i32 %i.h, 1
  %i.m = or i1 %ident.check, %ident.check50
  %i.n = or i1 %i.m, %ident.check51
  br i1 %i.n, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.o = add nsw i32 %i.e, -1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 8                  ; 4 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r       ; 3 uses
  %i.t = getelementptr i8, ptr %3, i64 %i.r       ; 3 uses
  %i.u = getelementptr i8, ptr %5, i64 %i.r       ; 2 uses
  %i.v = getelementptr i8, ptr %6, i64 %i.r       ; 2 uses
  %bound0 = icmp ult ptr %1, %i.t
  %bound1 = icmp ult ptr %3, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound070 = icmp ult ptr %1, %i.u
  %bound171 = icmp ult ptr %5, %i.s
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx = or i1 %found.conflict, %found.conflict72
  %bound073 = icmp ult ptr %1, %i.v
  %bound174 = icmp ult ptr %6, %i.s
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx, %found.conflict75
  %bound077 = icmp ult ptr %3, %i.u
  %bound178 = icmp ult ptr %5, %i.t
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx76, %found.conflict79
  %bound081 = icmp ult ptr %3, %i.v
  %bound182 = icmp ult ptr %6, %i.t
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  br i1 %conflict.rdx84, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 2147483644               ; 4 uses
  %i.w = or disjoint i64 %n.vec, 1
  %i.x = trunc nuw nsw i64 %n.vec to i32
  %i.y = or disjoint i32 %i.x, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.z = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %wide.load.a = load <4 x double>, ptr %i.z, align 8, !tbaa !17, !alias.scope !18, !noalias !19 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load85 = load <4 x double>, ptr %i.aa, align 8, !tbaa !17, !alias.scope !20, !noalias !21 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %5, i64 %index
  %wide.load86.a = load <4 x double>, ptr %i.ab, align 8, !tbaa !17, !alias.scope !22 ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %6, i64 %index
  %wide.load87 = load <4 x double>, ptr %i.ac, align 8, !tbaa !17, !alias.scope !23 ; 2 uses
  %i.ad = fmul <4 x double> %wide.load85, %wide.load87
  %i.ae = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86.a, <4 x double> %wide.load.a, <4 x double> %i.ad)
  store <4 x double> %i.ae, ptr %i.z, align 8, !tbaa !17, !alias.scope !18, !noalias !19
  %i.af = fneg <4 x double> %wide.load.a
  %i.ag = fmul <4 x double> %wide.load87, %i.af
  %i.ah = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load86.a, <4 x double> %wide.load85, <4 x double> %i.ag)
  store <4 x double> %i.ah, ptr %i.aa, align 8, !tbaa !17, !alias.scope !20, !noalias !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.w, %middle.block ] ; 10 uses
  %.03537.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.lr.ph ], [ %i.y, %middle.block ] ; 3 uses
  %xtraiter = and i32 %i.e, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.ph ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.ph ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.ph ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !17
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.ph ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !17
  %i.ar = fmul double %i.am, %i.aq
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ak, double %i.ar)
  store double %i.as, ptr %i.aj, align 8, !tbaa !17
  %i.at = load double, ptr %i.an, align 8, !tbaa !17
  %i.au = load double, ptr %i.ap, align 8, !tbaa !17
  %i.av = fneg double %i.ak
  %i.aw = fmul double %i.au, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.am, double %i.aw)
  store double %i.ax, ptr %i.al, align 8, !tbaa !17
  %indvars.iv.next42.prol = add nsw i64 %indvars.iv.ph, %i.j
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.i
  %indvars.iv.next44.prol = add nsw i64 %indvars.iv.ph, %i.k
  %i.ay = add nuw i32 %.03537.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv43.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next44.prol, %scalar.ph.prol ]
  %indvars.iv41.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next42.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.03537.unr = phi i32 [ %.03537.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = icmp eq i32 %i.e, %.03537.ph
  br i1 %i.az, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.1, %scalar.ph ], [ %indvars.iv43.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv41 = phi i64 [ %indvars.iv.next42.1, %scalar.ph ], [ %indvars.iv41.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.03537 = phi i32 [ %i.cf, %scalar.ph ], [ %.03537.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv41 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !17 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv43 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv43 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bi = fmul double %i.bd, %i.bh
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bb, double %i.bi)
  store double %i.bj, ptr %i.ba, align 8, !tbaa !17
  %i.bk = load double, ptr %i.be, align 8, !tbaa !17
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !17
  %i.bm = fneg double %i.bb
  %i.bn = fmul double %i.bl, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bd, double %i.bn)
  store double %i.bo, ptr %i.bc, align 8, !tbaa !17
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, %i.j ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.i ; 2 uses
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, %i.k ; 3 uses
  %i.bp = add nuw i32 %.03537, 1
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next42 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !17 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !17 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next44 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !17
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next44 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !17
  %i.by = fmul double %i.bt, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.br, double %i.by)
  store double %i.bz, ptr %i.bq, align 8, !tbaa !17
  %i.ca = load double, ptr %i.bu, align 8, !tbaa !17
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !17
  %i.cc = fneg double %i.br
  %i.cd = fmul double %i.cb, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bt, double %i.cd)
  store double %i.ce, ptr %i.bs, align 8, !tbaa !17
  %indvars.iv.next42.1 = add nsw i64 %indvars.iv.next42, %i.j
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.i
  %indvars.iv.next44.1 = add nsw i64 %indvars.iv.next44, %i.k
  %i.cf = add nuw i32 %.03537, 2
  %exitcond.not.1 = icmp eq i32 %i.bp, %i.e
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !24, !25, !26}
!14 = distinct !{!14, !24, !25}
!15 = !{!5, !5, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!9}
!19 = !{!12, !11, !10}
!20 = !{!12}
!21 = !{!11, !10}
!22 = !{!11}
!23 = !{!10}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
