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
  br i1 %i.c, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, %8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  br label %.loopexit151

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %8, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %8, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #4 ; 0 uses
  %i.h = sub nsw i64 %1, %8                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 1
  br i1 %i.i, label %.loopexit151, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %i.j = mul nsw i64 %8, %7
  %i.k = getelementptr inbounds [8 x i8], ptr %6, i64 %i.j
  %i.l = mul nsw i64 %8, %2
  %i.m = getelementptr inbounds [8 x i8], ptr %5, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %.0138 = phi ptr [ %i.m, %._crit_edge ], [ %5, %bb.d ] ; 3 uses
  %.0136 = phi ptr [ %i.k, %._crit_edge ], [ %6, %bb.d ] ; 2 uses
  %.0133 = phi i64 [ 0, %._crit_edge ], [ %8, %bb.d ] ; 4 uses
  %.0131 = phi i64 [ %i.h, %._crit_edge ], [ %1, %bb.d ] ; 2 uses
  %i.n = add nsw i64 %.0133, %0                   ; 5 uses
  %i.o = icmp sgt i64 %.0131, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i64 %i.n, 1
  br i1 %i.p, label %.loopexit151, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1132 = phi i64 [ %i.n, %bb.g ], [ %.0131, %bb.f ] ; 13 uses
  %i.q = icmp slt i64 %.0133, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = mul i64 %2, %.0133
  %i.s = sub i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %4, i64 %i.s
  %i.u = sub i64 0, %.0133
  %i.v = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.u
  %i.w = icmp slt i64 %i.n, 1
  br i1 %i.w, label %.loopexit151, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1137 = phi ptr [ %i.v, %bb.i ], [ %.0136, %bb.h ] ; 4 uses
  %.0135 = phi ptr [ %i.t, %bb.i ], [ %4, %bb.h ] ; 4 uses
  %.0127 = phi i64 [ %i.n, %bb.i ], [ %0, %bb.h ] ; 3 uses
  %i.x = icmp sgt i64 %.0127, %.1132
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sub nsw i64 %.0127, %.1132
  %i.z = mul nsw i64 %.1132, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.1137, i64 %.1132
  %i.ac = tail call i32 @dgemm_kernel(i64 noundef %i.y, i64 noundef %.1132, i64 noundef %2, double noundef %3, ptr noundef %i.aa, ptr noundef %.0138, ptr noundef %i.ab, i64 noundef %7) #4 ; 0 uses
  %i.ad = icmp slt i64 %.1132, 1
  br i1 %i.ad, label %.loopexit151, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp sgt i64 %.1132, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit151

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.1173 = phi i64 [ %.0127, %bb.l ], [ %.1132, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0128158.us = phi i64 [ %i.av, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = sub nsw i64 %.1132, %.0128158.us
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 32) ; 2 uses
  %sext146.us = shl i64 %.0128158.us, 32
  %i.ah = ashr exact i64 %sext146.us, 32
  %sext147.us = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext147.us, 32          ; 2 uses
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = sub i64 %.1173, %i.aj
  %i.al = add i64 %i.ag, %.0128158.us
  %sext148.us = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext148.us, 32          ; 2 uses
  %i.an = mul nsw i64 %i.am, %2
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.an
  %i.ap = mul nsw i64 %.0128158.us, %2
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0138, i64 %i.ap
  %i.ar = mul nsw i64 %.0128158.us, %7
  %i.as = getelementptr [8 x i8], ptr %.1137, i64 %i.am
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = tail call i32 @dgemm_kernel(i64 noundef %i.ak, i64 noundef %i.ai, i64 noundef %2, double noundef %3, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.at, i64 noundef %7) #4 ; 0 uses
  %i.av = add nuw nsw i64 %.0128158.us, 32        ; 2 uses
  %i.aw = icmp slt i64 %i.av, %.1132
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit151, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %.1132, %.lr.ph ] ; 2 uses
  %.0128158 = phi i64 [ %i.cl, %.loopexit ], [ 0, %.lr.ph ] ; 8 uses
  %smin161 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32)
  %sext171 = shl i64 %smin161, 32
  %10 = ashr exact i64 %sext171, 32               ; 3 uses
  %i.ax = sub nsw i64 %.1132, %.0128158
  %i.ay = call i64 @llvm.smin.i64(i64 %i.ax, i64 32) ; 2 uses
  %sext = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = call i32 @dgemm_beta(i64 noundef %i.az, i64 noundef %i.az, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.az) #4 ; 0 uses
  %i.bb = mul nsw i64 %.0128158, %2               ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0138, i64 %i.bb ; 2 uses
  %i.be = call i32 @dgemm_kernel(i64 noundef %i.az, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.a, i64 noundef %i.az) #4 ; 0 uses
  %i.bf = icmp sgt i64 %i.az, 0
  br i1 %i.bf, label %.preheader.lr.ph.a, label %.loopexit

.preheader.lr.ph.a:                               ; preds = %.lr.ph.split
  %invariant.gep = getelementptr [8 x i8], ptr %.1137, i64 %.0128158
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.a, %.unr-lcssa
  %.0129157 = phi i64 [ 0, %.preheader.lr.ph.a ], [ %i.bz, %.unr-lcssa ] ; 7 uses
  %11 = sub i64 %10, %.0129157
  %i.bg = mul nuw nsw i64 %.0129157, %i.az
  %invariant.gep153 = getelementptr [8 x i8], ptr %i.a, i64 %i.bg ; 5 uses
  %i.bh = getelementptr [8 x i8], ptr %i.a, i64 %.0129157 ; 5 uses
  %i.bi = add nuw nsw i64 %.0129157, %.0128158
  %i.bj = mul nsw i64 %i.bi, %7
  %invariant.gep155 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj ; 5 uses
  %12 = freeze i64 %11                            ; 2 uses
  %13 = add i64 %12, -1
  %xtraiter = and i64 %12, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %.0130152.prol = phi i64 [ %14, %.prol.preheader ], [ %.0129157, %.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %gep154.prol = getelementptr [8 x i8], ptr %invariant.gep153, i64 %.0130152.prol
  %i.bk = load volatile double, ptr %gep154.prol, align 8, !tbaa !10
  %i.bl = mul nuw nsw i64 %.0130152.prol, %i.az
  %i.bm = getelementptr [8 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = load volatile double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fadd double %i.bk, %i.bn
  %gep156.prol = getelementptr [8 x i8], ptr %invariant.gep155, i64 %.0130152.prol ; 2 uses
  %i.bp = load double, ptr %gep156.prol, align 8, !tbaa !10
  %i.bq = fadd double %i.bp, %i.bo
  store double %i.bq, ptr %gep156.prol, align 8, !tbaa !10
  %14 = add nuw nsw i64 %.0130152.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.0130152.unr = phi i64 [ %.0129157, %.preheader ], [ %14, %.prol.preheader ]
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %.unr-lcssa, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.0130152 = phi i64 [ %i.by, %.preheader.new ], [ %.0130152.unr, %.prol.loopexit ] ; 7 uses
  %gep154 = getelementptr [8 x i8], ptr %invariant.gep153, i64 %.0130152
  %16 = load volatile double, ptr %gep154, align 8, !tbaa !10
  %17 = mul nuw nsw i64 %.0130152, %i.az
  %18 = getelementptr [8 x i8], ptr %i.bh, i64 %17
  %19 = load volatile double, ptr %18, align 8, !tbaa !10
  %20 = fadd double %16, %19
  %gep156 = getelementptr [8 x i8], ptr %invariant.gep155, i64 %.0130152 ; 2 uses
  %21 = load double, ptr %gep156, align 8, !tbaa !10
  %22 = fadd double %21, %20
  store double %22, ptr %gep156, align 8, !tbaa !10
  %23 = add nuw nsw i64 %.0130152, 1              ; 3 uses
  %gep154.1 = getelementptr [8 x i8], ptr %invariant.gep153, i64 %23
  %24 = load volatile double, ptr %gep154.1, align 8, !tbaa !10
  %25 = mul nuw nsw i64 %23, %i.az
  %26 = getelementptr [8 x i8], ptr %i.bh, i64 %25
  %27 = load volatile double, ptr %26, align 8, !tbaa !10
  %28 = fadd double %24, %27
  %gep156.1 = getelementptr [8 x i8], ptr %invariant.gep155, i64 %23 ; 2 uses
  %29 = load double, ptr %gep156.1, align 8, !tbaa !10
  %30 = fadd double %29, %28
  store double %30, ptr %gep156.1, align 8, !tbaa !10
  %31 = add nuw nsw i64 %.0130152, 2              ; 3 uses
  %gep154.2 = getelementptr [8 x i8], ptr %invariant.gep153, i64 %31
  %32 = load volatile double, ptr %gep154.2, align 8, !tbaa !10
  %33 = mul nuw nsw i64 %31, %i.az
  %34 = getelementptr [8 x i8], ptr %i.bh, i64 %33
  %35 = load volatile double, ptr %34, align 8, !tbaa !10
  %36 = fadd double %32, %35
  %gep156.2 = getelementptr [8 x i8], ptr %invariant.gep155, i64 %31 ; 2 uses
  %37 = load double, ptr %gep156.2, align 8, !tbaa !10
  %38 = fadd double %37, %36
  store double %38, ptr %gep156.2, align 8, !tbaa !10
  %39 = add nuw nsw i64 %.0130152, 3              ; 3 uses
  %gep154.3 = getelementptr [8 x i8], ptr %invariant.gep153, i64 %39
  %i.br = load volatile double, ptr %gep154.3, align 8, !tbaa !10
  %i.bs = mul nuw nsw i64 %39, %i.az
  %i.bt = getelementptr [8 x i8], ptr %i.bh, i64 %i.bs
  %i.bu = load volatile double, ptr %i.bt, align 8, !tbaa !10
  %i.bv = fadd double %i.br, %i.bu
  %gep156.3 = getelementptr [8 x i8], ptr %invariant.gep155, i64 %39 ; 2 uses
  %i.bw = load double, ptr %gep156.3, align 8, !tbaa !10
  %i.bx = fadd double %i.bw, %i.bv
  store double %i.bx, ptr %gep156.3, align 8, !tbaa !10
  %i.by = add nuw nsw i64 %.0130152, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.by, %10
  br i1 %exitcond.not.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !14

.unr-lcssa:                                       ; preds = %.preheader.new, %.prol.loopexit
  %i.bz = add nuw nsw i64 %.0129157, 1            ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bz, %10
  br i1 %exitcond162.not, label %.loopexit, label %.preheader, !llvm.loop !15

.loopexit:                                        ; preds = %.unr-lcssa, %.lr.ph.split
  %sext146 = shl i64 %.0128158, 32
  %i.ca = ashr exact i64 %sext146, 32
  %i.cb = add nsw i64 %i.ca, %i.az
  %i.cc = sub i64 %.1173, %i.cb
  %i.cd = add i64 %i.ay, %.0128158
  %sext148 = shl i64 %i.cd, 32
  %i.ce = ashr exact i64 %sext148, 32             ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %2
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.cf
  %i.ch = mul nsw i64 %.0128158, %7
  %i.ci = getelementptr [8 x i8], ptr %.1137, i64 %i.ce
  %i.cj = getelementptr [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = call i32 @dgemm_kernel(i64 noundef %i.cc, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.cg, ptr noundef %i.bd, ptr noundef %i.cj, i64 noundef %7) #4 ; 0 uses
  %i.cl = add nuw nsw i64 %.0128158, 32           ; 2 uses
  %i.cm = icmp slt i64 %i.cl, %.1132
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.cm, label %.lr.ph.split, label %.loopexit151, !llvm.loop !8

.loopexit151:                                     ; preds = %.loopexit, %.lr.ph.split.us, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.c
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
end_hunk_0
