inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSYR2 \00", align 1
@syr2 = internal unnamed_addr constant [2 x ptr] [ptr @dsyr2_U, ptr @dsyr2_L], align 16
@syr2_thread = internal unnamed_addr constant [2 x ptr] [ptr @dsyr2_thread_U, ptr @dsyr2_thread_L], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dsyr2(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %.thread126 [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.b = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.b to i32
  %.not128 = icmp eq i32 %1, 122
  %.1114 = select i1 %.not128, i32 1, i32 %spec.select
  %i.c = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.d = icmp slt i32 %9, %i.c
  %spec.store.select7 = select i1 %i.d, i32 9, i32 -1
  %i.e = icmp eq i32 %7, 0
  %spec.store.select9 = select i1 %i.e, i32 7, i32 %spec.store.select7
  %i.f = icmp eq i32 %5, 0
  %spec.store.select11 = select i1 %i.f, i32 5, i32 %spec.store.select9
  %i.g = icmp slt i32 %2, 0
  %spec.store.select13 = select i1 %i.g, i32 2, i32 %spec.store.select11
  %i.h = add i32 %1, -123
  %i.i = icmp ult i32 %i.h, -2
  br i1 %i.i, label %.thread145, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %1, 121
  %spec.select123 = select i1 %i.j, i32 1, i32 -1
  %i.k = icmp eq i32 %1, 122
  %.4 = select i1 %i.k, i32 0, i32 %spec.select123 ; 2 uses
  %i.l = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.m = icmp slt i32 %9, %i.l
  %spec.store.select8 = select i1 %i.m, i32 9, i32 -1
  %i.n = icmp eq i32 %7, 0
  %spec.store.select10 = select i1 %i.n, i32 7, i32 %spec.store.select8
  %i.o = icmp eq i32 %5, 0
  %spec.store.select12 = select i1 %i.o, i32 5, i32 %spec.store.select10
  %i.p = icmp slt i32 %2, 0
  %spec.store.select14 = select i1 %i.p, i32 2, i32 %spec.store.select12
  %i.q = icmp slt i32 %.4, 0
  br i1 %i.q, label %.thread145, label %bb.c

.thread145:                                       ; preds = %bb.b, %.thread
  store i32 1, ptr %i.a, align 4
  br label %.thread126

bb.c:                                             ; preds = %.thread, %bb.b
  %storemerge = phi i32 [ %spec.store.select14, %bb.b ], [ %spec.store.select13, %.thread ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.b ], [ %.1114, %.thread ] ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4
  %i.r = icmp sgt i32 %storemerge, -1
  br i1 %i.r, label %.thread126, label %bb.d

.thread126:                                       ; preds = %.thread145, %bb.a, %bb.c
  %i.s = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %2, 0
  %i.u = fcmp oeq double %3, 0.000000e+00
  %or.cond124 = or i1 %i.t, %i.u
  br i1 %or.cond124, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %5, 1
  %i.w = icmp eq i32 %7, 1
  %or.cond = and i1 %i.v, %i.w
  %i.x = icmp slt i32 %2, 100
  %or.cond3 = and i1 %i.x, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq i32 %.5, 0
  %i.y = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader129

.preheader129:                                    ; preds = %bb.f
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader129
  %i.z = sext i32 %9 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %bb.h

.preheader:                                       ; preds = %bb.f
  br i1 %i.y, label %.lr.ph135, label %.loopexit

.lr.ph135:                                        ; preds = %.preheader
  %i.aa = sext i32 %9 to i64
  %wide.trip.count141 = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph135, %bb.g
  %indvars.iv138 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next139, %bb.g ] ; 3 uses
  %.0116133 = phi ptr [ %8, %.lr.ph135 ], [ %i.aj, %bb.g ] ; 3 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv138
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !9
  %i.ad = fmul double %3, %i.ac
  %i.ae = tail call i32 @daxpy_k(i64 noundef %indvars.iv.next139, i64 noundef 0, i64 noundef 0, double noundef %i.ad, ptr noundef %6, i64 noundef 1, ptr noundef %.0116133, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv138
  %i.ag = load double, ptr %i.af, align 8, !tbaa !9
  %i.ah = fmul double %3, %i.ag
  %i.ai = tail call i32 @daxpy_k(i64 noundef %indvars.iv.next139, i64 noundef 0, i64 noundef 0, double noundef %i.ah, ptr noundef %4, i64 noundef 1, ptr noundef %.0116133, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.0116133, i64 %i.aa
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.loopexit, label %bb.g, !llvm.loop !11

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.1117131 = phi ptr [ %8, %.lr.ph ], [ %i.au, %bb.h ] ; 3 uses
  %i.ak = sub nuw nsw i64 %wide.trip.count, %indvars.iv ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !9
  %i.an = fmul double %3, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.ap = tail call i32 @daxpy_k(i64 noundef %i.ak, i64 noundef 0, i64 noundef 0, double noundef %i.an, ptr noundef %i.ao, i64 noundef 1, ptr noundef %.1117131, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !9
  %i.ar = fmul double %3, %i.aq
  %i.as = tail call i32 @daxpy_k(i64 noundef %i.ak, i64 noundef 0, i64 noundef 0, double noundef %i.ar, ptr noundef nonnull %i.al, i64 noundef 1, ptr noundef %.1117131, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.at = getelementptr [8 x i8], ptr %.1117131, i64 %i.z
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !13

bb.i:                                             ; preds = %bb.e
  %i.av = icmp slt i32 %5, 0
  %i.aw = add nsw i32 %2, -1                      ; 2 uses
  %i.ax = mul nsw i32 %5, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %.0115.idx = select i1 %i.av, i64 %i.az, i64 0
  %.0115 = getelementptr inbounds [8 x i8], ptr %4, i64 %.0115.idx ; 2 uses
  %i.ba = icmp slt i32 %7, 0
  %i.bb = mul nsw i32 %7, %i.aw
  %i.bc = sext i32 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %.0118.idx = select i1 %i.ba, i64 %i.bd, i64 0
  %.0118 = getelementptr inbounds [8 x i8], ptr %6, i64 %.0118.idx ; 2 uses
  %i.be = tail call ptr @blas_memory_alloc(i32 noundef 1) #4 ; 3 uses
  %i.bf = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %num_cpu_avail.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !14
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.bh, %bb.j ], [ 1, %bb.i ]  ; 2 uses
  %i.bi = icmp slt i32 %2, 50
  %i.bj = icmp slt i32 %2, 500
  %i.bk = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 2)
  %i.bl = select i1 %i.bi, i32 1, i32 %i.bk
  %spec.store.select6 = select i1 %i.bj, i32 %i.bl, i32 %.0.i ; 2 uses
  %i.bm = icmp eq i32 %spec.store.select6, 1
  %i.bn = sext i32 %.5 to i64                     ; 2 uses
  %i.bo = sext i32 %2 to i64                      ; 2 uses
  %i.bp = sext i32 %5 to i64                      ; 2 uses
  %i.bq = sext i32 %7 to i64                      ; 2 uses
  %i.br = sext i32 %9 to i64                      ; 2 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %num_cpu_avail.exit
  %i.bs = getelementptr inbounds [8 x i8], ptr @syr2, i64 %i.bn
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.bu = tail call i32 %i.bt(i64 noundef %i.bo, double noundef %3, ptr noundef %.0115, i64 noundef %i.bp, ptr noundef %.0118, i64 noundef %i.bq, ptr noundef %8, i64 noundef %i.br, ptr noundef %i.be) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %num_cpu_avail.exit
  %i.bv = getelementptr inbounds [8 x i8], ptr @syr2_thread, i64 %i.bn
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = tail call i32 %i.bw(i64 noundef %i.bo, double noundef %3, ptr noundef %.0115, i64 noundef %i.bp, ptr noundef %.0118, i64 noundef %i.bq, ptr noundef %8, i64 noundef %i.br, ptr noundef %i.be, i32 noundef %spec.store.select6) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @blas_memory_free(ptr noundef %i.be) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g, %.preheader129, %.preheader, %bb.d, %bb.m, %.thread126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @daxpy_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

declare i32 @dsyr2_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dsyr2_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dsyr2_thread_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dsyr2_thread_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
