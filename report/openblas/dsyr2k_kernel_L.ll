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
  %.1132168 = phi i64 [ %.0131, %bb.l ], [ %.1138.fr, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0159.us = phi i64 [ %i.au, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = sub nuw nsw i64 %.1138.fr, %.0159.us
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
  %i.at = tail call i32 @dgemm_kernel(i64 noundef %i.aj, i64 noundef %i.ag, i64 noundef %2, double noundef %3, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.as, i64 noundef %7) #5 ; 0 uses
  %i.au = add nuw nsw i64 %.0159.us, 32           ; 2 uses
  %i.av = icmp slt i64 %i.au, %.1138.fr
  br i1 %i.av, label %.lr.ph.split.us, label %.loopexit152, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %.1138.fr, %.lr.ph ] ; 3 uses
  %.0159 = phi i64 [ %i.dh, %.loopexit ], [ 0, %.lr.ph ] ; 10 uses
  %i.aw = sub nuw nsw i64 %.1138.fr, %.0159       ; 2 uses
  %i.ax = call i64 @llvm.smin.i64(i64 %i.aw, i64 32) ; 18 uses
  %i.ay = call i32 @dgemm_beta(i64 noundef %i.ax, i64 noundef %i.ax, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ax) #5 ; 0 uses
  %i.az = mul nsw i64 %.0159, %2                  ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.az ; 2 uses
  %i.bc = call i32 @dgemm_kernel(i64 noundef %i.ax, i64 noundef %i.ax, i64 noundef %2, double noundef %3, ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull %i.a, i64 noundef %i.ax) #5 ; 0 uses
  %i.bd = icmp sgt i64 %i.aw, 0
  br i1 %i.bd, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.lr.ph.split
  %i.be = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.bf = call i64 @llvm.umin.i64(i64 %i.be, i64 32) ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1134, i64 %.0159 ; 3 uses
  %xtraiter = and i64 %i.bf, 1
  %i.bg = icmp slt i64 %indvars.iv, 2
  br i1 %i.bg, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %unroll_iter = and i64 %i.bf, 62
  br label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader.lr.ph.new
  %.0127158 = phi i64 [ 0, %.preheader.lr.ph.new ], [ %i.ci, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.bh = mul nuw nsw i64 %.0127158, %i.ax
  %invariant.gep154 = getelementptr [8 x i8], ptr %i.a, i64 %i.bh
  %i.bi = getelementptr [8 x i8], ptr %i.a, i64 %.0127158
  %i.bj = add nuw nsw i64 %.0127158, %.0159
  %i.bk = mul nsw i64 %i.bj, %7
  %invariant.gep156 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bk
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.0128153 = phi i64 [ %.0127158, %.preheader ], [ %i.bs, %bb.m ] ; 4 uses
  %gep155 = getelementptr [8 x i8], ptr %invariant.gep154, i64 %.0128153
  %i.bl = load volatile double, ptr %gep155, align 8, !tbaa !13
  %i.bm = mul nuw nsw i64 %.0128153, %i.ax
  %i.bn = getelementptr [8 x i8], ptr %i.bi, i64 %i.bm
  %i.bo = load volatile double, ptr %i.bn, align 8, !tbaa !13
  %i.bp = fadd double %i.bl, %i.bo
  %gep157 = getelementptr [8 x i8], ptr %invariant.gep156, i64 %.0128153 ; 2 uses
  %i.bq = load double, ptr %gep157, align 8, !tbaa !13
  %i.br = fadd double %i.bq, %i.bp
  store double %i.br, ptr %gep157, align 8, !tbaa !13
  %i.bs = add nuw nsw i64 %.0128153, 1            ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.ax
  br i1 %i.bt, label %bb.m, label %.preheader.1, !llvm.loop !9

.preheader.1:                                     ; preds = %bb.m
  %i.bu = or disjoint i64 %.0127158, 1            ; 4 uses
  %i.bv = mul nuw nsw i64 %i.bu, %i.ax
  %invariant.gep154.1 = getelementptr [8 x i8], ptr %i.a, i64 %i.bv
  %i.bw = getelementptr [8 x i8], ptr %i.a, i64 %i.bu
  %i.bx = add nuw nsw i64 %i.bu, %.0159
  %i.by = mul nsw i64 %i.bx, %7
  %invariant.gep156.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.1
  %.0128153.1 = phi i64 [ %i.bu, %.preheader.1 ], [ %i.cg, %bb.n ] ; 4 uses
  %gep155.1 = getelementptr [8 x i8], ptr %invariant.gep154.1, i64 %.0128153.1
  %i.bz = load volatile double, ptr %gep155.1, align 8, !tbaa !13
  %i.ca = mul nuw nsw i64 %.0128153.1, %i.ax
  %i.cb = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca
  %i.cc = load volatile double, ptr %i.cb, align 8, !tbaa !13
  %i.cd = fadd double %i.bz, %i.cc
  %gep157.1 = getelementptr [8 x i8], ptr %invariant.gep156.1, i64 %.0128153.1 ; 2 uses
  %i.ce = load double, ptr %gep157.1, align 8, !tbaa !13
  %i.cf = fadd double %i.ce, %i.cd
  store double %i.cf, ptr %gep157.1, align 8, !tbaa !13
  %i.cg = add nuw nsw i64 %.0128153.1, 1          ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ax
  br i1 %i.ch, label %bb.n, label %bb.o, !llvm.loop !9

bb.o:                                             ; preds = %bb.n
  %i.ci = add nuw nsw i64 %.0127158, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !10

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.lr.ph
  %.0127158.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ci, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod172 = trunc i64 %i.bf to i1
  call void @llvm.assume(i1 %lcmp.mod172)
  %i.cj = mul nuw nsw i64 %.0127158.epil.init, %i.ax
  %invariant.gep154.epil = getelementptr [8 x i8], ptr %i.a, i64 %i.cj
  %i.ck = getelementptr [8 x i8], ptr %i.a, i64 %.0127158.epil.init
  %i.cl = add nuw nsw i64 %.0127158.epil.init, %.0159
  %i.cm = mul nsw i64 %i.cl, %7
  %invariant.gep156.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cm
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.epil.preheader
  %.0128153.epil = phi i64 [ %.0127158.epil.init, %.preheader.epil.preheader ], [ %i.cu, %bb.p ] ; 4 uses
  %gep155.epil = getelementptr [8 x i8], ptr %invariant.gep154.epil, i64 %.0128153.epil
  %i.cn = load volatile double, ptr %gep155.epil, align 8, !tbaa !13
  %i.co = mul nuw nsw i64 %.0128153.epil, %i.ax
  %i.cp = getelementptr [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = load volatile double, ptr %i.cp, align 8, !tbaa !13
  %i.cr = fadd double %i.cn, %i.cq
  %gep157.epil = getelementptr [8 x i8], ptr %invariant.gep156.epil, i64 %.0128153.epil ; 2 uses
  %i.cs = load double, ptr %gep157.epil, align 8, !tbaa !13
  %i.ct = fadd double %i.cs, %i.cr
  store double %i.ct, ptr %gep157.epil, align 8, !tbaa !13
  %i.cu = add nuw nsw i64 %.0128153.epil, 1       ; 2 uses
  %i.cv = icmp slt i64 %i.cu, %i.ax
  br i1 %i.cv, label %bb.p, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.p, %.lr.ph.split
  %sext147 = shl i64 %.0159, 32
  %i.cw = ashr exact i64 %sext147, 32
  %i.cx = add nsw i64 %i.cw, %i.ax
  %i.cy = sub i64 %.1132168, %i.cx
  %i.cz = add nuw i64 %i.ax, %.0159
  %sext149 = shl i64 %i.cz, 32
  %i.da = ashr exact i64 %sext149, 32             ; 2 uses
  %i.db = mul nsw i64 %i.da, %2
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0136, i64 %i.db
  %i.dd = mul nsw i64 %.0159, %7
  %i.de = getelementptr [8 x i8], ptr %.1134, i64 %i.da
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = call i32 @dgemm_kernel(i64 noundef %i.cy, i64 noundef %i.ax, i64 noundef %2, double noundef %3, ptr noundef %i.dc, ptr noundef %i.bb, ptr noundef %i.df, i64 noundef %7) #5 ; 0 uses
  %i.dh = add nuw nsw i64 %.0159, 32              ; 2 uses
  %i.di = icmp slt i64 %i.dh, %.1138.fr
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.di, label %.lr.ph.split, label %.loopexit152, !llvm.loop !8

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !11}
!9 = distinct !{!9, !11}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"double", !4, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
