Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqp2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaqp2_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = load i32, ptr %4, align 4, !tbaa !8      ; 3 uses
  %narrow = xor i32 %i.c, -1
  %i.d = sext i32 %narrow to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %5, i64 -4 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %6, i64 -8 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %7, i64 -8 ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %8, i64 -8 ; 3 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !8
  %i.k = load i32, ptr %2, align 4, !tbaa !8
  %i.l = sub i32 %i.j, %i.k
  %i.m = load i32, ptr %1, align 4, !tbaa !8
  %. = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %i.n = tail call double @dlamch_(ptr noundef nonnull @.str) #5
  %i.o = tail call double @sqrt(double noundef %i.n) #5
  %.not164169 = icmp slt i32 %., 1
  br i1 %.not164169, label %._crit_edge, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.a
  %i.p = sext i32 %i.c to i64                     ; 6 uses
  %i.q = add nuw i32 %., 1
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph171

.loopexit:                                        ; preds = %bb.n, %.thread, %bb.g
  %indvars.iv.next178.pre-phi191 = phi i64 [ %.pre183, %.thread ], [ %i.bx, %bb.g ], [ %i.bx, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next178.pre-phi191, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph171, !llvm.loop !9

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.loopexit
  %indvars.iv177 = phi i64 [ 1, %.lr.ph171.preheader ], [ %indvars.iv.next178.pre-phi191, %.loopexit ] ; 17 uses
  %indvars.iv = phi i32 [ 2, %.lr.ph171.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %10 = sext i32 %indvars.iv to i64
  %i.r = load i32, ptr %2, align 4, !tbaa !8
  %i.s = trunc nuw nsw i64 %indvars.iv177 to i32  ; 3 uses
  %i.t = add nsw i32 %i.r, %i.s                   ; 10 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !8
  %reass.sub = sub i32 %i.u, %i.s
  %i.v = add i32 %reass.sub, 1
  store i32 %i.v, ptr %i.a, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv177 ; 2 uses
  %i.x = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.w, ptr noundef nonnull @c__1) #5
  %i.y = trunc i64 %indvars.iv177 to i32
  %i.z = add i32 %i.y, -1
  %i.aa = add nsw i32 %i.z, %i.x                  ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %.not165 = icmp eq i64 %indvars.iv177, %i.ab
  br i1 %.not165, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph171
  %i.ac = mul nsw i32 %i.aa, %i.c
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.e, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = mul nsw i64 %indvars.iv177, %i.p
  %i.ah = getelementptr [8 x i8], ptr %i.e, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  call void @dswap_(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull @c__1, ptr noundef %i.ai, ptr noundef nonnull @c__1) #5
  %i.aj = sext i32 %i.aa to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv177 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  %i.ao = load double, ptr %i.w, align 8, !tbaa !11
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aj
  store double %i.ao, ptr %i.ap, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv177
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aj
  store double %i.ar, ptr %i.as, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph171
  %i.at = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.au = icmp slt i32 %i.t, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %reass.sub172 = sub i32 %i.at, %i.t
  %i.av = add i32 %reass.sub172, 1
  store i32 %i.av, ptr %i.a, align 4, !tbaa !8
  %i.aw = mul nsw i64 %indvars.iv177, %i.p        ; 2 uses
  %i.ax = sext i32 %i.t to i64
  %i.ay = getelementptr [8 x i8], ptr %i.e, i64 %i.aw
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = trunc nsw i64 %i.aw to i32
  %i.bb = add i32 %i.ba, 1
  %i.bc = add i32 %i.bb, %i.t
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv177
  call void @dlarfg_(ptr noundef nonnull %i.a, ptr noundef %i.az, ptr noundef %i.be, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bf) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bg = mul nsw i64 %indvars.iv177, %i.p
  %i.bh = sext i32 %i.at to i64
  %i.bi = getelementptr [8 x i8], ptr %i.e, i64 %i.bg
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv177
  call void @dlarfg_(ptr noundef nonnull @c__1, ptr noundef %i.bj, ptr noundef %i.bj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bk) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv177, %i.bm
  br i1 %i.bn, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %.pre183 = add nuw nsw i64 %indvars.iv177, 1
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !8
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bo = mul nsw i64 %indvars.iv177, %i.p
  %i.bp = sext i32 %i.t to i64                    ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.e, i64 %i.bo
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %i.bp ; 4 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !11
  %i.bt = load i32, ptr %0, align 4, !tbaa !8
  %reass.sub173 = sub i32 %i.bt, %i.t
  %i.bu = add i32 %reass.sub173, 1
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !8
  %i.bv = sub nsw i32 %i.bl, %i.s
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv177
  %i.bx = add nuw nsw i64 %indvars.iv177, 1       ; 3 uses
  %i.by = mul nsw i64 %i.bx, %i.p
  %i.bz = getelementptr [8 x i8], ptr %i.e, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.bp
  call void @dlarf_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.br, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bw, ptr noundef %i.ca, ptr noundef nonnull %4, ptr noundef %9) #5
  store double %i.bs, ptr %i.br, align 8, !tbaa !11
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %.pre181 = sext i32 %.pre to i64
  %i.cb = icmp slt i64 %indvars.iv177, %.pre181
  store i32 %.pre, ptr %i.a, align 4, !tbaa !8
  br i1 %i.cb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.cc = sext i32 %i.t to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.cc
  %i.cd = sext i32 %i.t to i64
  %invariant.gep192 = getelementptr [8 x i8], ptr %i.e, i64 %i.cd
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %i.ce = phi i32 [ %.pre, %.lr.ph ], [ %i.df, %bb.n ] ; 3 uses
  %indvars.iv174 = phi i64 [ %10, %.lr.ph ], [ %indvars.iv.next175, %bb.n ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv174 ; 4 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !11 ; 4 uses
  %i.ch = fcmp une double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ci = mul nsw i64 %indvars.iv174, %i.p        ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ci
  %i.cj = load double, ptr %gep, align 8, !tbaa !11 ; 3 uses
  %i.ck = fcmp oge double %i.cj, 0.000000e+00
  %i.cl = fneg double %i.cj
  %i.cm = select i1 %i.ck, double %i.cj, double %i.cl
  %i.cn = fdiv double %i.cm, %i.cg                ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = call double @llvm.fmuladd.f64(double %i.co, double %i.cn, double 1.000000e+00) ; 2 uses
  %i.cq = fcmp oge double %i.cp, 0.000000e+00
  %i.cr = select i1 %i.cq, double %i.cp, double 0.000000e+00 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv174 ; 3 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = fdiv double %i.cg, %i.ct                ; 2 uses
  %i.cv = fmul double %i.cu, %i.cu
  %i.cw = fmul double %i.cv, %i.cr
  %i.cx = fcmp ugt double %i.cw, %i.o
  br i1 %i.cx, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.cz = icmp slt i32 %i.t, %i.cy
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.da = sub nsw i32 %i.cy, %i.t
  store i32 %i.da, ptr %i.b, align 4, !tbaa !8
  %gep193 = getelementptr [8 x i8], ptr %invariant.gep192, i64 %i.ci
  %i.db = getelementptr i8, ptr %gep193, i64 8
  %i.dc = call double @dnrm2_(ptr noundef nonnull %i.b, ptr noundef %i.db, ptr noundef nonnull @c__1) #5 ; 2 uses
  store double %i.dc, ptr %i.cf, align 8, !tbaa !11
  store double %i.dc, ptr %i.cs, align 8, !tbaa !11
  %.pre180 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !11
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !11
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.dd = call double @sqrt(double noundef %i.cr) #5
  %i.de = fmul double %i.cg, %i.dd
  store double %i.de, ptr %i.cf, align 8, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.l, %bb.m
  %i.df = phi i32 [ %i.ce, %bb.h ], [ %.pre180, %bb.k ], [ %i.ce, %bb.l ], [ %i.ce, %bb.m ] ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %i.dg = sext i32 %i.df to i64
  %.not166.not = icmp slt i64 %indvars.iv174, %i.dg
  br i1 %.not166.not, label %bb.h, label %.loopexit, !llvm.loop !13

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !10}
end_hunk_0
