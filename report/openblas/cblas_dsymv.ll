Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dsymv?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSYMV \00", align 1
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dsymv(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %.thread78 [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.b = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.b to i32
  %.not = icmp eq i32 %1, 122
  %.1 = select i1 %.not, i32 1, i32 %spec.select
  %i.c = icmp eq i32 %10, 0
  %spec.store.select = select i1 %i.c, i32 10, i32 -1
  %i.d = icmp eq i32 %7, 0
  %spec.store.select2 = select i1 %i.d, i32 7, i32 %spec.store.select
  %i.e = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %i.f = icmp slt i32 %5, %i.e
  %spec.store.select4 = select i1 %i.f, i32 5, i32 %spec.store.select2
  %i.g = icmp slt i32 %2, 0
  %spec.store.select6 = select i1 %i.g, i32 2, i32 %spec.store.select4
  %i.h = add i32 %1, -123
  %i.i = icmp ult i32 %i.h, -2
  br i1 %i.i, label %.thread85, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %1, 121
  %spec.select76 = select i1 %i.j, i32 1, i32 -1
  %i.k = icmp eq i32 %1, 122
  %.4 = select i1 %i.k, i32 0, i32 %spec.select76 ; 2 uses
  %i.l = icmp eq i32 %10, 0
  %spec.store.select1 = select i1 %i.l, i32 10, i32 -1
  %i.m = icmp eq i32 %7, 0
  %spec.store.select3 = select i1 %i.m, i32 7, i32 %spec.store.select1
  %i.n = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %i.o = icmp slt i32 %5, %i.n
  %spec.store.select5 = select i1 %i.o, i32 5, i32 %spec.store.select3
  %i.p = icmp slt i32 %2, 0
  %spec.store.select7 = select i1 %i.p, i32 2, i32 %spec.store.select5
  %i.q = icmp slt i32 %.4, 0
  br i1 %i.q, label %.thread85, label %bb.c

.thread85:                                        ; preds = %bb.b, %.thread
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %.thread78

bb.c:                                             ; preds = %.thread, %bb.b
  %storemerge = phi i32 [ %spec.store.select7, %bb.b ], [ %spec.store.select6, %.thread ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.b ], [ %.1, %.thread ] ; 4 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !8
  %i.r = icmp sgt i32 %storemerge, -1
  br i1 %i.r, label %.thread78, label %bb.d

.thread78:                                        ; preds = %.thread85, %bb.a, %bb.c
  %i.s = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fcmp une double %8, 1.000000e+00
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %2 to i64
  %i.w = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = tail call i32 @dscal_k(i64 noundef %i.v, i64 noundef 0, i64 noundef 0, double noundef %8, ptr noundef %9, i64 noundef %i.x, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = fcmp oeq double %3, 0.000000e+00
  br i1 %i.z, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %7, 0
  %i.ab = add nsw i32 %2, -1                      ; 2 uses
  %i.ac = mul nsw i32 %7, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %.069.idx = select i1 %i.aa, i64 %i.ae, i64 0
  %.069 = getelementptr inbounds [8 x i8], ptr %6, i64 %.069.idx ; 2 uses
  %i.af = icmp slt i32 %10, 0
  %i.ag = mul nsw i32 %10, %i.ab
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %.070.idx = select i1 %i.af, i64 %i.ai, i64 0
  %.070 = getelementptr inbounds [8 x i8], ptr %9, i64 %.070.idx ; 2 uses
  %i.aj = tail call ptr @blas_memory_alloc(i32 noundef 1) #6 ; 3 uses
  %i.ak = icmp slt i32 %2, 200
  br i1 %i.ak, label %num_cpu_avail.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.i
  %i.an = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %num_cpu_avail.exit.thread, label %bb.j

num_cpu_avail.exit.thread:                        ; preds = %bb.i, %bb.h, %num_cpu_avail.exit
  %.sroa.idx10.not = icmp eq i32 %.5, 0
  %11 = icmp ult i32 %.5, 2
  tail call void @llvm.assume(i1 %11)
  %.sroa.speculated13 = select i1 %.sroa.idx10.not, ptr @dsymv_U, ptr @dsymv_L
  %i.ap = sext i32 %2 to i64                      ; 2 uses
  %i.aq = sext i32 %5 to i64
  %i.ar = sext i32 %7 to i64
  %i.as = sext i32 %10 to i64
  %i.at = tail call i32 %.sroa.speculated13(i64 noundef %i.ap, i64 noundef %i.ap, double noundef %3, ptr noundef %4, i64 noundef %i.aq, ptr noundef %.069, i64 noundef %i.ar, ptr noundef %.070, i64 noundef %i.as, ptr noundef %i.aj) #6, !callees !10 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %num_cpu_avail.exit
  %.sroa.idx.not = icmp eq i32 %.5, 0
  %12 = icmp ult i32 %.5, 2
  tail call void @llvm.assume(i1 %12)
  %.sroa.speculated = select i1 %.sroa.idx.not, ptr @dsymv_thread_U, ptr @dsymv_thread_L
  %i.au = zext nneg i32 %2 to i64
  %i.av = sext i32 %5 to i64
  %i.aw = sext i32 %7 to i64
  %i.ax = sext i32 %10 to i64
  %i.ay = tail call i32 %.sroa.speculated(i64 noundef %i.au, double noundef %3, ptr noundef %4, i64 noundef %i.av, ptr noundef %.069, i64 noundef %i.aw, ptr noundef %.070, i64 noundef %i.ax, ptr noundef %i.aj, i32 noundef %i.an) #6, !callees !11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %num_cpu_avail.exit.thread
  tail call void @blas_memory_free(ptr noundef %i.aj) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.d, %bb.k, %.thread78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dsymv_U(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsymv_L(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dsymv_thread_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dsymv_thread_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{ptr @dsymv_U, ptr @dsymv_L}
!11 = !{ptr @dsymv_thread_U, ptr @dsymv_thread_L}
end_hunk_0
