Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpttrf?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DPTTRF\00", align 1

; Function Attrs: nounwind uwtable
define void @dpttrf_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds i8, ptr %2, i64 -8 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8 ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.d = load i32, ptr %0, align 4, !tbaa !9      ; 7 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %3, align 4, !tbaa !9
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.f = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.d, 3
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not115 = icmp eq i32 %i.i, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.j = add nuw nsw i32 %i.i, 1                  ; 5 uses
  %.pre = load double, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.k = fcmp ugt double %.pre, 0.000000e+00
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i32 [ 1, %.lr.ph.preheader ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ]
  store i32 %indvars.iv.lcssa, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph.preheader
  %i.l = load double, ptr %2, align 8, !tbaa !11  ; 2 uses
  %i.m = fdiv double %i.l, %.pre                  ; 2 uses
  store double %i.m, ptr %2, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !11
  %i.p = fneg double %i.m
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.l, double %i.o) ; 3 uses
  store double %i.q, ptr %i.n, align 8, !tbaa !11
  %exitcond.not = icmp eq i32 %i.j, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.f
  %i.r = fcmp ugt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.g, label %bb.e

bb.g:                                             ; preds = %.lr.ph.1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 2 uses
  %i.u = fdiv double %i.t, %i.q                   ; 2 uses
  store double %i.u, ptr %i.s, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  %i.x = fneg double %i.u
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.t, double %i.w) ; 3 uses
  store double %i.y, ptr %i.v, align 8, !tbaa !11
  %exitcond.not.1 = icmp eq i32 %i.j, 3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.g
  %i.z = fcmp ugt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.h, label %bb.e

bb.h:                                             ; preds = %.lr.ph.2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = fdiv double %i.ab, %i.y                 ; 2 uses
  store double %i.ac, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = fneg double %i.ac
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ab, double %i.ae)
  store double %i.ag, ptr %i.ad, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g, %bb.h, %bb.d
  %.pre-phi = phi i32 [ 1, %bb.d ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.f ]
  %i.ah = add nsw i32 %i.d, -4                    ; 2 uses
  %.not104117 = icmp sgt i32 %.pre-phi, %i.ah
  br i1 %.not104117, label %._crit_edge121, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %._crit_edge
  %narrow = add nuw i32 %i.d, 3
  %i.ai = and i32 %narrow, 3
  %narrow148 = add nuw nsw i32 %i.ai, 1
  %i.aj = zext nneg i32 %narrow148 to i64         ; 2 uses
  %.phi.trans.insert139 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aj
  %.pre140 = load double, ptr %.phi.trans.insert139, align 8, !tbaa !11
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.p
  %i.ak = phi double [ %.pre140, %.lr.ph120.preheader ], [ %i.bx, %bb.p ] ; 2 uses
  %indvars.iv136 = phi i64 [ %i.aj, %.lr.ph120.preheader ], [ %indvars.iv.next137, %bb.p ] ; 8 uses
  %i.al = fcmp ugt double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph120
  %i.am = trunc nuw nsw i64 %indvars.iv136 to i32
  store i32 %i.am, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph120
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv136 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ap = fdiv double %i.ao, %i.ak                ; 2 uses
  store double %i.ap, ptr %i.an, align 8, !tbaa !11
  %i.aq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv136 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = fneg double %i.ap
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ao, double %i.ar) ; 3 uses
  store double %i.at, ptr %i.aq, align 8, !tbaa !11
  %i.au = fcmp ugt double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = trunc i64 %indvars.iv136 to i32
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr [8 x i8], ptr %2, i64 %indvars.iv136 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = fdiv double %i.ay, %i.at                ; 2 uses
  store double %i.az, ptr %i.ax, align 8, !tbaa !11
  %i.ba = add nuw nsw i64 %indvars.iv136, 2       ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ba ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = fneg double %i.az
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ay, double %i.bc) ; 3 uses
  store double %i.be, ptr %i.bb, align 8, !tbaa !11
  %i.bf = fcmp ugt double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc nuw i64 %i.ba to i32
  store i32 %i.bg, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = fdiv double %i.bi, %i.be                ; 2 uses
  store double %i.bj, ptr %i.bh, align 8, !tbaa !11
  %i.bk = add nuw nsw i64 %indvars.iv136, 3       ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fneg double %i.bj
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bi, double %i.bm) ; 3 uses
  store double %i.bo, ptr %i.bl, align 8, !tbaa !11
  %i.bp = fcmp ugt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = trunc nuw i64 %i.bk to i32
  store i32 %i.bq, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %i.bt = fdiv double %i.bs, %i.bo                ; 2 uses
  store double %i.bt, ptr %i.br, align 8, !tbaa !11
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 4 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next137 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = fneg double %i.bt
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bs, double %i.bv) ; 2 uses
  store double %i.bx, ptr %i.bu, align 8, !tbaa !11
  %i.by = trunc nuw i64 %indvars.iv.next137 to i32
  %.not104 = icmp slt i32 %i.ah, %i.by
  br i1 %.not104, label %._crit_edge121, label %.lr.ph120, !llvm.loop !8

._crit_edge121:                                   ; preds = %bb.p, %._crit_edge
  %i.bz = zext nneg i32 %i.d to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = fcmp ugt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge121
  store i32 %i.d, ptr %3, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %._crit_edge121, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

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
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
