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
  br i1 %i.c, label %.loopexit151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, %8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #5 ; 0 uses
  br label %.loopexit151

bb.d:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %8, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dgemm_kernel(i64 noundef %0, i64 noundef %8, i64 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #5 ; 0 uses
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
  %.1132 = phi i64 [ %i.n, %bb.g ], [ %.0131, %bb.f ]
  %.1132.fr = freeze i64 %.1132                   ; 13 uses
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
  %i.x = icmp sgt i64 %.0127, %.1132.fr
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = sub nsw i64 %.0127, %.1132.fr
  %i.z = mul nsw i64 %.1132.fr, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %.1137, i64 %.1132.fr
  %i.ac = tail call i32 @dgemm_kernel(i64 noundef %i.y, i64 noundef %.1132.fr, i64 noundef %2, double noundef %3, ptr noundef %i.aa, ptr noundef %.0138, ptr noundef %i.ab, i64 noundef %7) #5 ; 0 uses
  %i.ad = icmp slt i64 %.1132.fr, 1
  br i1 %i.ad, label %.loopexit151, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp sgt i64 %.1132.fr, 0
  br i1 %i.ae, label %.lr.ph, label %.loopexit151

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.1170 = phi i64 [ %.0127, %bb.l ], [ %.1132.fr, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0128158.us = phi i64 [ %i.av, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.af = sub nsw i64 %.1132.fr, %.0128158.us
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 32) ; 2 uses
  %sext146.us = shl i64 %.0128158.us, 32
  %i.ah = ashr exact i64 %sext146.us, 32
  %sext147.us = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %sext147.us, 32          ; 2 uses
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = sub i64 %.1170, %i.aj
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
  %i.au = tail call i32 @dgemm_kernel(i64 noundef %i.ak, i64 noundef %i.ai, i64 noundef %2, double noundef %3, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.at, i64 noundef %7) #5 ; 0 uses
  %i.av = add nuw nsw i64 %.0128158.us, 32        ; 2 uses
  %i.aw = icmp slt i64 %i.av, %.1132.fr
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit151, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ %.1132.fr, %.lr.ph ] ; 2 uses
  %.0128158 = phi i64 [ %i.di, %.loopexit ], [ 0, %.lr.ph ] ; 10 uses
  %i.ax = sub nsw i64 %.1132.fr, %.0128158
  %i.ay = call i64 @llvm.smin.i64(i64 %i.ax, i64 32) ; 2 uses
  %sext = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext, 32                ; 18 uses
  %i.ba = call i32 @dgemm_beta(i64 noundef %i.az, i64 noundef %i.az, i64 noundef 0, double noundef 0.000000e+00, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.az) #5 ; 0 uses
  %i.bb = mul nsw i64 %.0128158, %2               ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0138, i64 %i.bb ; 2 uses
  %i.be = call i32 @dgemm_kernel(i64 noundef %i.az, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.a, i64 noundef %i.az) #5 ; 0 uses
  %i.bf = icmp sgt i64 %i.az, 0
  br i1 %i.bf, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.lr.ph.split
  %smin174 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 32) ; 3 uses
  %sext176 = shl i64 %smin174, 32                 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1137, i64 %.0128158 ; 3 uses
  %xtraiter = and i64 %smin174, 1                 ; 2 uses
  %i.bg = icmp eq i64 %sext176, 4294967296
  br i1 %i.bg, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %i.bh = ashr exact i64 %sext176, 32
  %unroll_iter = sub nsw i64 %i.bh, %xtraiter
  br label %.preheader

.preheader:                                       ; preds = %bb.o, %.preheader.lr.ph.new
  %.0129157 = phi i64 [ 0, %.preheader.lr.ph.new ], [ %i.cj, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.1, %bb.o ]
  %i.bi = mul nuw nsw i64 %.0129157, %i.az
  %invariant.gep153 = getelementptr [8 x i8], ptr %i.a, i64 %i.bi
  %i.bj = getelementptr [8 x i8], ptr %i.a, i64 %.0129157
  %i.bk = add nuw nsw i64 %.0129157, %.0128158
  %i.bl = mul nsw i64 %i.bk, %7
  %invariant.gep155 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.0130152 = phi i64 [ %.0129157, %.preheader ], [ %i.bt, %bb.m ] ; 4 uses
  %gep154 = getelementptr [8 x i8], ptr %invariant.gep153, i64 %.0130152
  %i.bm = load volatile double, ptr %gep154, align 8, !tbaa !10
  %i.bn = mul nuw nsw i64 %.0130152, %i.az
  %i.bo = getelementptr [8 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load volatile double, ptr %i.bo, align 8, !tbaa !10
  %i.bq = fadd double %i.bm, %i.bp
  %gep156 = getelementptr [8 x i8], ptr %invariant.gep155, i64 %.0130152 ; 2 uses
  %i.br = load double, ptr %gep156, align 8, !tbaa !10
  %i.bs = fadd double %i.br, %i.bq
  store double %i.bs, ptr %gep156, align 8, !tbaa !10
  %i.bt = add nuw nsw i64 %.0130152, 1            ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %i.az
  br i1 %i.bu, label %bb.m, label %.preheader.1, !llvm.loop !12

.preheader.1:                                     ; preds = %bb.m
  %i.bv = or disjoint i64 %.0129157, 1            ; 4 uses
  %i.bw = mul nuw nsw i64 %i.bv, %i.az
  %invariant.gep153.1 = getelementptr [8 x i8], ptr %i.a, i64 %i.bw
  %i.bx = getelementptr [8 x i8], ptr %i.a, i64 %i.bv
  %i.by = add nuw nsw i64 %i.bv, %.0128158
  %i.bz = mul nsw i64 %i.by, %7
  %invariant.gep155.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.1
  %.0130152.1 = phi i64 [ %i.bv, %.preheader.1 ], [ %i.ch, %bb.n ] ; 4 uses
  %gep154.1 = getelementptr [8 x i8], ptr %invariant.gep153.1, i64 %.0130152.1
  %i.ca = load volatile double, ptr %gep154.1, align 8, !tbaa !10
  %i.cb = mul nuw nsw i64 %.0130152.1, %i.az
  %i.cc = getelementptr [8 x i8], ptr %i.bx, i64 %i.cb
  %i.cd = load volatile double, ptr %i.cc, align 8, !tbaa !10
  %i.ce = fadd double %i.ca, %i.cd
  %gep156.1 = getelementptr [8 x i8], ptr %invariant.gep155.1, i64 %.0130152.1 ; 2 uses
  %i.cf = load double, ptr %gep156.1, align 8, !tbaa !10
  %i.cg = fadd double %i.cf, %i.ce
  store double %i.cg, ptr %gep156.1, align 8, !tbaa !10
  %i.ch = add nuw nsw i64 %.0130152.1, 1          ; 2 uses
  %i.ci = icmp slt i64 %i.ch, %i.az
  br i1 %i.ci, label %bb.n, label %bb.o, !llvm.loop !12

bb.o:                                             ; preds = %bb.n
  %i.cj = add nuw nsw i64 %.0129157, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !13

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.lr.ph
  %.0129157.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %i.cj, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod175 = trunc i64 %smin174 to i1
  call void @llvm.assume(i1 %lcmp.mod175)
  %i.ck = mul nuw nsw i64 %.0129157.epil.init, %i.az
  %invariant.gep153.epil = getelementptr [8 x i8], ptr %i.a, i64 %i.ck
  %i.cl = getelementptr [8 x i8], ptr %i.a, i64 %.0129157.epil.init
  %i.cm = add nuw nsw i64 %.0129157.epil.init, %.0128158
  %i.cn = mul nsw i64 %i.cm, %7
  %invariant.gep155.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cn
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.epil.preheader
  %.0130152.epil = phi i64 [ %.0129157.epil.init, %.preheader.epil.preheader ], [ %i.cv, %bb.p ] ; 4 uses
  %gep154.epil = getelementptr [8 x i8], ptr %invariant.gep153.epil, i64 %.0130152.epil
  %i.co = load volatile double, ptr %gep154.epil, align 8, !tbaa !10
  %i.cp = mul nuw nsw i64 %.0130152.epil, %i.az
  %i.cq = getelementptr [8 x i8], ptr %i.cl, i64 %i.cp
  %i.cr = load volatile double, ptr %i.cq, align 8, !tbaa !10
  %i.cs = fadd double %i.co, %i.cr
  %gep156.epil = getelementptr [8 x i8], ptr %invariant.gep155.epil, i64 %.0130152.epil ; 2 uses
  %i.ct = load double, ptr %gep156.epil, align 8, !tbaa !10
  %i.cu = fadd double %i.ct, %i.cs
  store double %i.cu, ptr %gep156.epil, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.0130152.epil, 1       ; 2 uses
  %i.cw = icmp slt i64 %i.cv, %i.az
  br i1 %i.cw, label %bb.p, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.p, %.lr.ph.split
  %sext146 = shl i64 %.0128158, 32
  %i.cx = ashr exact i64 %sext146, 32
  %i.cy = add nsw i64 %i.cx, %i.az
  %i.cz = sub i64 %.1170, %i.cy
  %i.da = add i64 %i.ay, %.0128158
  %sext148 = shl i64 %i.da, 32
  %i.db = ashr exact i64 %sext148, 32             ; 2 uses
  %i.dc = mul nsw i64 %i.db, %2
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0135, i64 %i.dc
  %i.de = mul nsw i64 %.0128158, %7
  %i.df = getelementptr [8 x i8], ptr %.1137, i64 %i.db
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = call i32 @dgemm_kernel(i64 noundef %i.cz, i64 noundef %i.az, i64 noundef %2, double noundef %3, ptr noundef %i.dd, ptr noundef %i.bd, ptr noundef %i.dg, i64 noundef %7) #5 ; 0 uses
  %i.di = add nuw nsw i64 %.0128158, 32           ; 2 uses
  %i.dj = icmp slt i64 %i.di, %.1132.fr
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.dj, label %.lr.ph.split, label %.loopexit151, !llvm.loop !8

.loopexit151:                                     ; preds = %.loopexit, %.lr.ph.split.us, %bb.l, %bb.k, %bb.i, %bb.g, %bb.e, %bb.a, %bb.c
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
