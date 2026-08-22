Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsyr2k_kernel_L?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dsyr2k_kernel_L(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x double], align 16         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = add nsw i64 %8, %0
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.loopexit152, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, %8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #5 ; 0 uses
  br label %.loopexit152

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %8, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %8, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #5 ; 0 uses
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
  %.1138 = phi i64 [ %i.n, %bb.g ], [ %.0137, %bb.f ]
  %.1138.fr = freeze i64 %.1138                   ; 13 uses
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
  %i.x = icmp sgt i64 %.0131, %.1138.fr
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sub nsw i64 %.0131, %.1138.fr
  %i.z = mul nsw i64 %.1138.fr, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.1134, i64 %.1138.fr
  %i.ac = tail call i32 @dgemm_kernel(i64 noundef %i.y, i64 noundef %.1138.fr, i64 noundef %2, double noundef %3, ptr noundef %i.aa, ptr noundef %.0135, ptr noundef %i.ab, i64 noundef %7) #5 ; 0 uses
  %i.ad = icmp slt i64 %.1138.fr, 1
  br i1 %i.ad, label %.loopexit152, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp sgt i64 %.1138.fr, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit152

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.1132170 = phi i64 [ %.0131, %bb.l ], [ %.1138.fr, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0159.us = phi i64 [ %i.av, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = sub nsw i64 %.1138.fr, %.0159.us
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 32) ; 2 uses
  %sext147.us = shl i64 %.0159.us, 32
  %i.ah = ashr exact i64 %sext147.us, 32
  %sext148.us = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext148.us, 32          ; 2 uses
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = sub i64 %.1132170, %i.aj
  %i.al = add i64 %i.ag, %.0159.us
  %sext149.us = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext149.us, 32          ; 2 uses
  %i.an = mul nsw i64 %i.am, %2
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.an
  %i.ap = mul nsw i64 %.0159.us, %2
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.ap
  %i.ar = mul nsw i64 %.0159.us, %7
  %i.as = getelementptr [8 x i8], ptr %.1134, i64 %i.am
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = tail call i32 @dgemm_kernel(i64 noundef %i.ak, i64 noundef %i.ai, i64 noundef %2, double noundef %3, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.at, i64 noundef %7) #5 ; 0 uses
  %i.av = add nuw nsw i64 %.0159.us, 32           ; 2 uses
  %i.aw = icmp slt i64 %i.av, %.1138.fr
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit152, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %.1138.fr, %.lr.ph ] ; 2 uses
  %.0159 = phi i64 [ %i.cl, %.loopexit ], [ 0, %.lr.ph ] ; 10 uses
  %i.ax = sub nsw i64 %.1138.fr, %.0159
  %i.ay = call i64 @llvm.smin.i64(i64 %i.ax, i64 32) ; 2 uses
  %sext = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext, 32                ; 18 uses
  %i.ba = call i32 @dgemm_beta(i64 noundef %i.az, i64 noundef %i.az, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.az) #5 ; 0 uses
  %i.bb = mul nsw i64 %.0159, %2                  ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.bb ; 2 uses
  %i.be = call i32 @dgemm_kernel(i64 noundef %i.az, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.a, i64 noundef %i.az) #5 ; 0 uses
  %i.bf = icmp sgt i64 %i.az, 0
  br i1 %i.bf, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.lr.ph.split
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32) ; 3 uses
  %sext168 = shl i64 %smin, 32                    ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1134, i64 %.0159 ; 3 uses
  %xtraiter = and i64 %smin, 1                    ; 2 uses
  %10 = icmp eq i64 %sext168, 4294967296
  br i1 %10, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %11 = ashr exact i64 %sext168, 32
  %unroll_iter = sub nsw i64 %11, %xtraiter
  br label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader.lr.ph.new
  %.0127158 = phi i64 [ 0, %.preheader.lr.ph.new ], [ %19, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.bg = mul nuw nsw i64 %.0127158, %i.az
  %invariant.gep154 = getelementptr [8 x i8], ptr %i.a, i64 %i.bg
  %i.bh = getelementptr [8 x i8], ptr %i.a, i64 %.0127158
  %i.bi = add nuw nsw i64 %.0127158, %.0159
  %i.bj = mul nsw i64 %i.bi, %7
  %invariant.gep156 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.0128153.a = phi i64 [ %.0127158, %.preheader ], [ %i.br, %bb.m ] ; 4 uses
  %gep155.a = getelementptr [8 x i8], ptr %invariant.gep154, i64 %.0128153.a
  %i.bk = load volatile double, ptr %gep155.a, align 8, !tbaa !10
  %i.bl = mul nuw nsw i64 %.0128153.a, %i.az
  %i.bm = getelementptr [8 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = load volatile double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fadd double %i.bk, %i.bn
  %gep157.a = getelementptr [8 x i8], ptr %invariant.gep156, i64 %.0128153.a ; 2 uses
  %i.bp = load double, ptr %gep157.a, align 8, !tbaa !10
  %i.bq = fadd double %i.bp, %i.bo
  store double %i.bq, ptr %gep157.a, align 8, !tbaa !10
  %i.br = add nuw nsw i64 %.0128153.a, 1          ; 2 uses
  %12 = icmp slt i64 %i.br, %i.az
  br i1 %12, label %bb.m, label %.preheader.1, !llvm.loop !12

.preheader.1:                                     ; preds = %bb.m
  %13 = or disjoint i64 %.0127158, 1              ; 4 uses
  %14 = mul nuw nsw i64 %13, %i.az
  %invariant.gep154.1 = getelementptr [8 x i8], ptr %i.a, i64 %14
  %15 = getelementptr [8 x i8], ptr %i.a, i64 %13
  %16 = add nuw nsw i64 %13, %.0159
  %17 = mul nsw i64 %16, %7
  %invariant.gep156.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %17
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.1
  %.0128153.1 = phi i64 [ %13, %.preheader.1 ], [ %i.bz, %bb.n ] ; 4 uses
  %gep155.1.a = getelementptr [8 x i8], ptr %invariant.gep154.1, i64 %.0128153.1
  %i.bs = load volatile double, ptr %gep155.1.a, align 8, !tbaa !10
  %i.bt = mul nuw nsw i64 %.0128153.1, %i.az
  %i.bu = getelementptr [8 x i8], ptr %15, i64 %i.bt
  %i.bv = load volatile double, ptr %i.bu, align 8, !tbaa !10
  %i.bw = fadd double %i.bs, %i.bv
  %gep157.1.a = getelementptr [8 x i8], ptr %invariant.gep156.1, i64 %.0128153.1 ; 2 uses
  %i.bx = load double, ptr %gep157.1.a, align 8, !tbaa !10
  %i.by = fadd double %i.bx, %i.bw
  store double %i.by, ptr %gep157.1.a, align 8, !tbaa !10
  %i.bz = add nuw nsw i64 %.0128153.1, 1          ; 2 uses
  %18 = icmp slt i64 %i.bz, %i.az
  br i1 %18, label %bb.n, label %bb.o, !llvm.loop !12

bb.o:                                             ; preds = %bb.n
  %19 = add nuw nsw i64 %.0127158, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !13

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.lr.ph
  %.0127158.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %19, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod174 = trunc i64 %smin to i1
  call void @llvm.assume(i1 %lcmp.mod174)
  %20 = mul nuw nsw i64 %.0127158.epil.init, %i.az
  %invariant.gep154.epil = getelementptr [8 x i8], ptr %i.a, i64 %20
  %21 = getelementptr [8 x i8], ptr %i.a, i64 %.0127158.epil.init
  %22 = add nuw nsw i64 %.0127158.epil.init, %.0159
  %23 = mul nsw i64 %22, %7
  %invariant.gep156.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %23
  br label %24

24:                                               ; preds = %24, %.preheader.epil.preheader
  %.0128153.epil = phi i64 [ %.0127158.epil.init, %.preheader.epil.preheader ], [ %32, %24 ] ; 4 uses
  %gep155.epil = getelementptr [8 x i8], ptr %invariant.gep154.epil, i64 %.0128153.epil
  %25 = load volatile double, ptr %gep155.epil, align 8, !tbaa !10
  %26 = mul nuw nsw i64 %.0128153.epil, %i.az
  %27 = getelementptr [8 x i8], ptr %21, i64 %26
  %28 = load volatile double, ptr %27, align 8, !tbaa !10
  %29 = fadd double %25, %28
  %gep157.epil = getelementptr [8 x i8], ptr %invariant.gep156.epil, i64 %.0128153.epil ; 2 uses
  %30 = load double, ptr %gep157.epil, align 8, !tbaa !10
  %31 = fadd double %30, %29
  store double %31, ptr %gep157.epil, align 8, !tbaa !10
  %32 = add nuw nsw i64 %.0128153.epil, 1         ; 2 uses
  %33 = icmp slt i64 %32, %i.az
  br i1 %33, label %24, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %24, %.lr.ph.split
  %sext147 = shl i64 %.0159, 32
  %i.ca = ashr exact i64 %sext147, 32
  %i.cb = add nsw i64 %i.ca, %i.az
  %i.cc = sub i64 %.1132170, %i.cb
  %i.cd = add i64 %i.ay, %.0159
  %sext149 = shl i64 %i.cd, 32
  %i.ce = ashr exact i64 %sext149, 32             ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %2
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.cf
  %i.ch = mul nsw i64 %.0159, %7
  %i.ci = getelementptr [8 x i8], ptr %.1134, i64 %i.ce
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = call i32 @dgemm_kernel(i64 noundef %i.cc, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.cg, ptr noundef %i.bd, ptr noundef %i.cj, i64 noundef %7) #5 ; 0 uses
  %i.cl = add nuw nsw i64 %.0159, 32              ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %.1138.fr
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.cm, label %.lr.ph.split, label %.loopexit152, !llvm.loop !8

.loopexit152:                                     ; preds = %.loopexit, %.lr.ph.split.us, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
end_hunk_0
