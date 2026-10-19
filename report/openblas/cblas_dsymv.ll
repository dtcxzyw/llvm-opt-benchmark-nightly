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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %.thread78 [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %.not = icmp eq i32 %1, 122
  %i.b = icmp eq i32 %10, 0
  %spec.store.select = select i1 %i.b, i32 10, i32 -1
  %i.c = icmp eq i32 %7, 0
  %spec.store.select2 = select i1 %i.c, i32 7, i32 %spec.store.select
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.e = icmp slt i32 %5, %i.d
  %spec.store.select4 = select i1 %i.e, i32 5, i32 %spec.store.select2
  %i.f = icmp slt i32 %2, 0
  %spec.store.select6 = select i1 %i.f, i32 2, i32 %spec.store.select4
  %i.g = add i32 %1, -123
  %i.h = icmp ult i32 %i.g, -2
  br i1 %i.h, label %.thread85, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %1, 121                      ; 2 uses
  %11 = icmp ne i32 %1, 122
  %i.j = icmp eq i32 %10, 0
  %spec.store.select1 = select i1 %i.j, i32 10, i32 -1
  %i.k = icmp eq i32 %7, 0
  %spec.store.select3 = select i1 %i.k, i32 7, i32 %spec.store.select1
  %i.l = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.m = icmp slt i32 %5, %i.l
  %spec.store.select5 = select i1 %i.m, i32 5, i32 %spec.store.select3
  %i.n = icmp slt i32 %2, 0
  %spec.store.select7 = select i1 %i.n, i32 2, i32 %spec.store.select5
  %12 = xor i1 %i.i, %11
  br i1 %12, label %.thread85, label %bb.c

.thread85:                                        ; preds = %bb.b, %.thread
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %.thread78

bb.c:                                             ; preds = %.thread, %bb.b
  %storemerge = phi i32 [ %spec.store.select7, %bb.b ], [ %spec.store.select6, %.thread ] ; 2 uses
  %.5 = phi i1 [ %i.i, %bb.b ], [ %.not, %.thread ] ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !8
  %i.o = icmp sgt i32 %storemerge, -1
  br i1 %i.o, label %.thread78, label %bb.d

.thread78:                                        ; preds = %.thread85, %bb.a, %bb.c
  %i.p = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #5 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %2, 0
  br i1 %i.q, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = fcmp une double %8, 1.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %2 to i64
  %i.t = tail call i32 @llvm.abs.i32(i32 %10, i1 true)
  %i.u = zext nneg i32 %i.t to i64
  %i.v = tail call i32 @dscal_k(i64 noundef %i.s, i64 noundef 0, i64 noundef 0, double noundef %8, ptr noundef %9, i64 noundef %i.u, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = fcmp oeq double %3, 0.000000e+00
  br i1 %i.w, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %7, 0
  %i.y = add nsw i32 %2, -1                       ; 2 uses
  %i.z = mul nsw i32 %7, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %.069.idx = select i1 %i.x, i64 %i.ab, i64 0
  %.069 = getelementptr inbounds [8 x i8], ptr %6, i64 %.069.idx ; 2 uses
  %i.ac = icmp slt i32 %10, 0
  %i.ad = mul nsw i32 %10, %i.y
  %i.ae = sext i32 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %.070.idx = select i1 %i.ac, i64 %i.af, i64 0
  %.070 = getelementptr inbounds [8 x i8], ptr %9, i64 %.070.idx ; 2 uses
  %i.ag = tail call ptr @blas_memory_alloc(i32 noundef 1) #5 ; 3 uses
  %i.ah = icmp slt i32 %2, 200
  br i1 %i.ah, label %num_cpu_avail.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.i
  %i.ak = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %num_cpu_avail.exit.thread, label %bb.j

num_cpu_avail.exit.thread:                        ; preds = %bb.i, %bb.h, %num_cpu_avail.exit
  %.sroa.speculated = select i1 %.5, ptr @dsymv_L, ptr @dsymv_U
  %i.am = sext i32 %2 to i64                      ; 2 uses
  %i.an = sext i32 %5 to i64
  %i.ao = sext i32 %7 to i64
  %i.ap = sext i32 %10 to i64
  %i.aq = tail call i32 %.sroa.speculated(i64 noundef %i.am, i64 noundef %i.am, double noundef %3, ptr noundef %4, i64 noundef %i.an, ptr noundef %.069, i64 noundef %i.ao, ptr noundef %.070, i64 noundef %i.ap, ptr noundef %i.ag) #5, !callees !10 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %num_cpu_avail.exit
  %.sroa.speculated15 = select i1 %.5, ptr @dsymv_thread_L, ptr @dsymv_thread_U
  %i.ar = zext nneg i32 %2 to i64
  %i.as = sext i32 %5 to i64
  %i.at = sext i32 %7 to i64
  %i.au = sext i32 %10 to i64
  %i.av = tail call i32 %.sroa.speculated15(i64 noundef %i.ar, double noundef %3, ptr noundef %4, i64 noundef %i.as, ptr noundef %.069, i64 noundef %i.at, ptr noundef %.070, i64 noundef %i.au, ptr noundef %i.ag, i32 noundef %i.ak) #5, !callees !11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %num_cpu_avail.exit.thread
  tail call void @blas_memory_free(ptr noundef %i.ag) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.d, %bb.k, %.thread78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{ptr @dsymv_L, ptr @dsymv_U}
!11 = !{ptr @dsymv_thread_L, ptr @dsymv_thread_U}
end_hunk_0
