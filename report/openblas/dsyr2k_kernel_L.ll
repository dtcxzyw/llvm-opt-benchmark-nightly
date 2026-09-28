Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyr2k_kernel_L?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dsyr2k_kernel_L(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x double], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = add nsw i64 %8, %0
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.loopexit152, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, %8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  br label %.loopexit152

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %8, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %8, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  %i.h = sub nsw i64 %1, %8                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.loopexit152, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.j = mul nsw i64 %8, %7
  %i.k = getelementptr inbounds [8 x i8], ptr %6, i64 %i.j
  %i.l = mul nsw i64 %8, %2
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %.0137 = phi i64 [ %i.h, %._crit_edge ], [ %1, %bb.d ] ; 2 uses
  %.0135 = phi ptr [ %i.m, %._crit_edge ], [ %5, %bb.d ] ; 3 uses
  %.0133 = phi ptr [ %i.k, %._crit_edge ], [ %6, %bb.d ] ; 2 uses
  %.0130 = phi i64 [ 0, %._crit_edge ], [ %8, %bb.d ] ; 4 uses
  %i.n = add nsw i64 %.0130, %0                   ; 5 uses
  %i.o = icmp sgt i64 %.0137, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i64 %i.n, 1
  br i1 %i.p, label %.loopexit152, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1138 = phi i64 [ %i.n, %bb.g ], [ %.0137, %bb.f ] ; 13 uses
  %i.q = icmp slt i64 %.0130, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = mul i64 %2, %.0130
  %i.s = sub i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %4, i64 %i.s
  %i.u = sub i64 0, %.0130
  %i.v = getelementptr inbounds [8 x i8], ptr %.0133, i64 %i.u
  %i.w = icmp slt i64 %i.n, 1
  br i1 %i.w, label %.loopexit152, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0136 = phi ptr [ %i.t, %bb.i ], [ %4, %bb.h ] ; 4 uses
  %.1134 = phi ptr [ %i.v, %bb.i ], [ %.0133, %bb.h ] ; 4 uses
  %.0131 = phi i64 [ %i.n, %bb.i ], [ %0, %bb.h ] ; 3 uses
  %i.x = icmp sgt i64 %.0131, %.1138
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sub nsw i64 %.0131, %.1138
  %i.z = mul nsw i64 %.1138, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.1134, i64 %.1138
  %i.ac = tail call i32 @dgemm_kernel(i64 noundef %i.y, i64 noundef %.1138, i64 noundef %2, double noundef %3, ptr noundef %i.aa, ptr noundef %.0135, ptr noundef %i.ab, i64 noundef %7) #4 ; 0 uses
  %i.ad = icmp slt i64 %.1138, 1
  br i1 %i.ad, label %.loopexit152, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp sgt i64 %.1138, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit152

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.1132168 = phi i64 [ %.0131, %bb.l ], [ %.1138, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0159.us = phi i64 [ %i.au, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = sub nuw nsw i64 %.1138, %.0159.us
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 32) ; 3 uses
  %sext147.us = shl i64 %.0159.us, 32
  %i.ah = ashr exact i64 %sext147.us, 32
  %i.ai = add nsw i64 %i.ah, %i.ag
  %i.aj = sub i64 %.1132168, %i.ai
  %i.ak = add nuw i64 %i.ag, %.0159.us
  %sext149.us = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext149.us, 32          ; 2 uses
  %i.am = mul nsw i64 %i.al, %2
  %i.an = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.am
  %i.ao = mul nsw i64 %.0159.us, %2
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.ao
  %i.aq = mul nsw i64 %.0159.us, %7
  %i.ar = getelementptr [8 x i8], ptr %.1134, i64 %i.al
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = tail call i32 @dgemm_kernel(i64 noundef %i.aj, i64 noundef %i.ag, i64 noundef %2, double noundef %3, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.as, i64 noundef %7) #4 ; 0 uses
  %i.au = add nuw nsw i64 %.0159.us, 32           ; 2 uses
  %i.av = icmp slt i64 %i.au, %.1138
  br i1 %i.av, label %.lr.ph.split.us, label %.loopexit152, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %.1138, %.lr.ph ] ; 2 uses
  %.0159 = phi i64 [ %i.cj, %.loopexit ], [ 0, %.lr.ph ] ; 8 uses
  %smin162 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32) ; 3 uses
  %smax = call i64 @llvm.smax.i64(i64 %smin162, i64 1)
  %i.aw = sub nuw nsw i64 %.1138, %.0159          ; 2 uses
  %i.ax = call i64 @llvm.smin.i64(i64 %i.aw, i64 32) ; 15 uses
  %i.ay = call i32 @dgemm_beta(i64 noundef %i.ax, i64 noundef %i.ax, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ax) #4 ; 0 uses
  %i.az = mul nsw i64 %.0159, %2                  ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.az ; 2 uses
  %i.bc = call i32 @dgemm_kernel(i64 noundef %i.ax, i64 noundef %i.ax, i64 noundef %2, double noundef %3, ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull %i.a, i64 noundef %i.ax) #4 ; 0 uses
  %i.bd = icmp sgt i64 %i.aw, 0
  br i1 %i.bd, label %.preheader.lr.ph.new, label %.loopexit

.preheader.lr.ph.new:                             ; preds = %.lr.ph.split
  %invariant.gep = getelementptr [8 x i8], ptr %.1134, i64 %.0159
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.new, %bb.o
  %.0127158 = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %bb.o ] ; 7 uses
  %10 = sub i64 %smin162, %.0127158
  %i.be = mul nuw nsw i64 %.0127158, %i.ax
  %invariant.gep154 = getelementptr [8 x i8], ptr %i.a, i64 %i.be ; 5 uses
  %i.bf = getelementptr [8 x i8], ptr %i.a, i64 %.0127158 ; 5 uses
  %i.bg = add nuw nsw i64 %.0127158, %.0159
  %i.bh = mul nsw i64 %i.bg, %7
  %invariant.gep156 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh ; 5 uses
  %11 = freeze i64 %10                            ; 2 uses
  %12 = add i64 %11, -1
  %xtraiter = and i64 %11, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.1, label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.0128153.prol = phi i64 [ %13, %bb.m ], [ %.0127158, %.preheader ] ; 4 uses
  %.0128153.a = phi i64 [ %i.bp, %bb.m ], [ 0, %.preheader ]
  %gep155.a = getelementptr [8 x i8], ptr %invariant.gep154, i64 %.0128153.prol
  %i.bi = load volatile double, ptr %gep155.a, align 8, !tbaa !14
  %i.bj = mul nuw nsw i64 %.0128153.prol, %i.ax
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %i.bj
  %i.bl = load volatile double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = fadd double %i.bi, %i.bl
  %gep157.a = getelementptr [8 x i8], ptr %invariant.gep156, i64 %.0128153.prol ; 2 uses
  %i.bn = load double, ptr %gep157.a, align 8, !tbaa !14
  %i.bo = fadd double %i.bn, %i.bm
  store double %i.bo, ptr %gep157.a, align 8, !tbaa !14
  %13 = add nuw nsw i64 %.0128153.prol, 1         ; 2 uses
  %i.bp = add i64 %.0128153.a, 1                  ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %i.bp, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.1, label %bb.m, !llvm.loop !9

.preheader.1:                                     ; preds = %bb.m, %.preheader
  %.0128153.unr = phi i64 [ %.0127158, %.preheader ], [ %13, %bb.m ]
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader.1, %bb.n
  %.0128153.1 = phi i64 [ %i.bx, %bb.n ], [ %.0128153.unr, %.preheader.1 ] ; 7 uses
  %gep155 = getelementptr [8 x i8], ptr %invariant.gep154, i64 %.0128153.1
  %15 = load volatile double, ptr %gep155, align 8, !tbaa !14
  %16 = mul nuw nsw i64 %.0128153.1, %i.ax
  %17 = getelementptr [8 x i8], ptr %i.bf, i64 %16
  %18 = load volatile double, ptr %17, align 8, !tbaa !14
  %19 = fadd double %15, %18
  %gep157 = getelementptr [8 x i8], ptr %invariant.gep156, i64 %.0128153.1 ; 2 uses
  %20 = load double, ptr %gep157, align 8, !tbaa !14
  %21 = fadd double %20, %19
  store double %21, ptr %gep157, align 8, !tbaa !14
  %22 = add nuw nsw i64 %.0128153.1, 1            ; 3 uses
  %gep155.1 = getelementptr [8 x i8], ptr %invariant.gep154, i64 %22
  %23 = load volatile double, ptr %gep155.1, align 8, !tbaa !14
  %24 = mul nuw nsw i64 %22, %i.ax
  %25 = getelementptr [8 x i8], ptr %i.bf, i64 %24
  %26 = load volatile double, ptr %25, align 8, !tbaa !14
  %27 = fadd double %23, %26
  %gep157.1 = getelementptr [8 x i8], ptr %invariant.gep156, i64 %22 ; 2 uses
  %28 = load double, ptr %gep157.1, align 8, !tbaa !14
  %29 = fadd double %28, %27
  store double %29, ptr %gep157.1, align 8, !tbaa !14
  %30 = add nuw nsw i64 %.0128153.1, 2            ; 3 uses
  %gep155.2 = getelementptr [8 x i8], ptr %invariant.gep154, i64 %30
  %31 = load volatile double, ptr %gep155.2, align 8, !tbaa !14
  %32 = mul nuw nsw i64 %30, %i.ax
  %33 = getelementptr [8 x i8], ptr %i.bf, i64 %32
  %34 = load volatile double, ptr %33, align 8, !tbaa !14
  %35 = fadd double %31, %34
  %gep157.2 = getelementptr [8 x i8], ptr %invariant.gep156, i64 %30 ; 2 uses
  %36 = load double, ptr %gep157.2, align 8, !tbaa !14
  %37 = fadd double %36, %35
  store double %37, ptr %gep157.2, align 8, !tbaa !14
  %38 = add nuw nsw i64 %.0128153.1, 3            ; 3 uses
  %gep155.1.a = getelementptr [8 x i8], ptr %invariant.gep154, i64 %38
  %i.bq = load volatile double, ptr %gep155.1.a, align 8, !tbaa !14
  %i.br = mul nuw nsw i64 %38, %i.ax
  %i.bs = getelementptr [8 x i8], ptr %i.bf, i64 %i.br
  %i.bt = load volatile double, ptr %i.bs, align 8, !tbaa !14
  %i.bu = fadd double %i.bq, %i.bt
  %gep157.1.a = getelementptr [8 x i8], ptr %invariant.gep156, i64 %38 ; 2 uses
  %i.bv = load double, ptr %gep157.1.a, align 8, !tbaa !14
  %i.bw = fadd double %i.bv, %i.bu
  store double %i.bw, ptr %gep157.1.a, align 8, !tbaa !14
  %i.bx = add nuw nsw i64 %.0128153.1, 4          ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %smin162
  br i1 %exitcond.not.3, label %bb.o, label %bb.n, !llvm.loop !10

bb.o:                                             ; preds = %bb.n, %.preheader.1
  %niter.next.1 = add nuw nsw i64 %.0127158, 1    ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %smax
  br i1 %niter.ncmp.1, label %.loopexit, label %.preheader, !llvm.loop !11

.loopexit:                                        ; preds = %bb.o, %.lr.ph.split
  %sext147 = shl i64 %.0159, 32
  %i.by = ashr exact i64 %sext147, 32
  %i.bz = add nsw i64 %i.by, %i.ax
  %i.ca = sub i64 %.1132168, %i.bz
  %i.cb = add nuw i64 %i.ax, %.0159
  %sext149 = shl i64 %i.cb, 32
  %i.cc = ashr exact i64 %sext149, 32             ; 2 uses
  %i.cd = mul nsw i64 %i.cc, %2
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.cd
  %i.cf = mul nsw i64 %.0159, %7
  %i.cg = getelementptr [8 x i8], ptr %.1134, i64 %i.cc
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = call i32 @dgemm_kernel(i64 noundef %i.ca, i64 noundef %i.ax, i64 noundef %2, double noundef %3, ptr noundef %i.ce, ptr noundef %i.bb, ptr noundef %i.ch, i64 noundef %7) #4 ; 0 uses
  %i.cj = add nuw nsw i64 %.0159, 32              ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %.1138
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.ck, label %.lr.ph.split, label %.loopexit152, !llvm.loop !8

.loopexit152:                                     ; preds = %.loopexit, %.lr.ph.split.us, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_beta(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
