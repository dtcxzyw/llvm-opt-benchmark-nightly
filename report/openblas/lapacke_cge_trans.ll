Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_cge_trans?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @LAPACKE_cge_trans(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = icmp eq ptr %5, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 102, label %bb.d
    i32 101, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.028 = phi i32 [ %1, %bb.c ], [ %2, %bb.b ]
  %.0 = phi i32 [ %2, %bb.c ], [ %1, %bb.b ]
  %i.c = tail call i32 @llvm.smin.i32(i32 %.0, i32 %4) ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.e = tail call i32 @llvm.smin.i32(i32 %.028, i32 %6) ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = sext i32 %4 to i64                       ; 9 uses
  %i.h = sext i32 %6 to i64                       ; 2 uses
  br i1 %i.f, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count40 = zext nneg i32 %i.c to i64  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  %i.i = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %7 = add nuw nsw i64 %wide.trip.count, %wide.trip.count40
  %8 = shl nuw nsw i64 %7, 3
  %9 = getelementptr i8, ptr %3, i64 %8
  %scevgep = getelementptr i8, ptr %9, i64 -8
  %i.j = add nuw nsw i64 %wide.trip.count40, 2305843009213693951
  %i.k = mul i64 %i.j, %i.h
  %i.l = add i64 %i.k, %wide.trip.count
  %i.m = shl i64 %i.l, 3
  %scevgep47 = getelementptr i8, ptr %5, i64 %i.m
  %min.iters.check = icmp ult i32 %i.e, 24
  %ident.check = icmp ne i32 %4, 1
  %mul.result = shl nsw i64 %i.i, 3
  %mul.overflow = icmp ugt i64 %i.i, 2305843009213693951
  %invariant.op = or i1 %mul.overflow, %ident.check
  %bound0 = icmp ult ptr %5, %scevgep
  %bound1 = icmp ult ptr %3, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %indvars.iv37 ; 13 uses
  %10 = mul nuw nsw i64 %indvars.iv37, %i.h
  %11 = getelementptr [8 x i8], ptr %5, i64 %10   ; 11 uses
  %i.n = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.o = icmp ult ptr %i.n, %invariant.gep
  %.reass = or i1 %i.o, %invariant.op
  %or.cond54 = select i1 %min.iters.check, i1 true, i1 %.reass
  %brmerge = select i1 %or.cond54, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.a ] ; 4 uses
  %12 = or disjoint i64 %index, 4                 ; 2 uses
  %13 = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %14 = getelementptr [8 x i8], ptr %invariant.gep, i64 %12
  %wide.vec = load <8 x float>, ptr %13, align 4, !alias.scope !15
  %wide.vec49 = load <8 x float>, ptr %14, align 4, !alias.scope !15
  %15 = getelementptr [8 x i8], ptr %11, i64 %index
  %i.p = getelementptr [8 x i8], ptr %11, i64 %12
  store <8 x float> %wide.vec, ptr %15, align 4, !alias.scope !16, !noalias !15
  store <8 x float> %wide.vec49, ptr %i.p, align 4, !alias.scope !16, !noalias !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.a ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = mul nuw nsw i64 %indvars.iv.prol, %i.g
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.r
  %i.s = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.prol
  %i.t = load <2 x float>, ptr %gep.prol, align 4
  store <2 x float> %i.t, ptr %i.s, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !12

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.u = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.v = icmp ugt i64 %i.u, -8
  br i1 %i.v, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.w = mul nuw nsw i64 %indvars.iv, %i.g
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.w
  %i.x = getelementptr [8 x i8], ptr %11, i64 %indvars.iv
  %i.y = load <2 x float>, ptr %gep, align 4
  store <2 x float> %i.y, ptr %i.x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv.next, %i.g
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.z
  %i.aa = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next
  %i.ab = load <2 x float>, ptr %gep.1, align 4
  store <2 x float> %i.ab, ptr %i.aa, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ac = mul nuw nsw i64 %indvars.iv.next.1, %i.g
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ad = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.1
  %i.ae = load <2 x float>, ptr %gep.2, align 4
  store <2 x float> %i.ae, ptr %i.ad, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.af = mul nuw nsw i64 %indvars.iv.next.2, %i.g
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.af
  %i.ag = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.2
  %i.ah = load <2 x float>, ptr %gep.3, align 4
  store <2 x float> %i.ah, ptr %i.ag, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ai = mul nuw nsw i64 %indvars.iv.next.3, %i.g
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ai
  %i.aj = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.3
  %i.ak = load <2 x float>, ptr %gep.4, align 4
  store <2 x float> %i.ak, ptr %i.aj, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.al = mul nuw nsw i64 %indvars.iv.next.4, %i.g
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.4
  %i.an = load <2 x float>, ptr %gep.5, align 4
  store <2 x float> %i.an, ptr %i.am, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv.next.5, %i.g
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ao
  %i.ap = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.5
  %i.aq = load <2 x float>, ptr %gep.6, align 4
  store <2 x float> %i.aq, ptr %i.ap, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.next.6, %i.g
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ar
  %i.as = getelementptr [8 x i8], ptr %11, i64 %indvars.iv.next.6
  %i.at = load <2 x float>, ptr %gep.7, align 4
  store <2 x float> %i.at, ptr %i.as, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.loopexit, label %.preheader.a, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

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
!11 = distinct !{!11, !17, !18, !19}
!12 = distinct !{!12, !20}
!13 = distinct !{!13, !17, !18}
!14 = distinct !{!14, !17}
!15 = !{!9}
!16 = !{!10}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
