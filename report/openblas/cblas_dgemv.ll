Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dgemv?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DGEMV \00", align 1
@gemv_thread = internal unnamed_addr constant [2 x ptr] [ptr @dgemv_thread_n, ptr @dgemv_thread_t], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dgemv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, double noundef %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %.thread116 [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.d = icmp ne i32 %1, 111
  %spec.select = sext i1 %i.d to i32
  %i.e = icmp eq i32 %1, 112
  %.1 = select i1 %i.e, i32 1, i32 %spec.select
  %i.f = icmp eq i32 %1, 114
  %.2 = select i1 %i.f, i32 0, i32 %.1
  %i.g = icmp eq i32 %1, 113
  %.3 = select i1 %i.g, i32 1, i32 %.2            ; 2 uses
  %i.h = icmp eq i32 %11, 0
  %spec.store.select = select i1 %i.h, i32 11, i32 -1
  %i.i = icmp eq i32 %8, 0
  %spec.store.select2 = select i1 %i.i, i32 8, i32 %spec.store.select
  %i.j = tail call i32 @llvm.smax.i32(i32 %2, i32 1)
  %i.k = icmp slt i32 %6, %i.j
  %spec.store.select3 = select i1 %i.k, i32 6, i32 %spec.store.select2
  %i.l = icmp slt i32 %3, 0
  %spec.store.select4 = select i1 %i.l, i32 3, i32 %spec.store.select3
  %i.m = icmp slt i32 %2, 0
  %spec.store.select5 = select i1 %i.m, i32 2, i32 %spec.store.select4
  %i.n = icmp slt i32 %.3, 0
  %spec.store.select6 = select i1 %i.n, i32 1, i32 %spec.store.select5 ; 2 uses
  store i32 %spec.store.select6, ptr %i.a, align 4, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %1, 111
  %spec.select111 = select i1 %i.o, i32 1, i32 -1
  %i.p = icmp eq i32 %1, 112
  %.6 = select i1 %i.p, i32 0, i32 %spec.select111
  %i.q = icmp eq i32 %1, 114
  %.7 = select i1 %i.q, i32 1, i32 %.6
  %i.r = icmp eq i32 %1, 113
  %.8 = select i1 %i.r, i32 0, i32 %.7            ; 2 uses
  %i.s = icmp eq i32 %11, 0
  %storemerge = select i1 %i.s, i32 11, i32 -1
  %i.t = icmp eq i32 %8, 0
  %storemerge104 = select i1 %i.t, i32 8, i32 %storemerge
  %i.u = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %i.v = icmp slt i32 %6, %i.u
  %storemerge105 = select i1 %i.v, i32 6, i32 %storemerge104
  %i.w = icmp slt i32 %2, 0
  %storemerge106 = select i1 %i.w, i32 3, i32 %storemerge105
  %i.x = icmp slt i32 %3, 0
  %storemerge107 = select i1 %i.x, i32 2, i32 %storemerge106
  %i.y = icmp slt i32 %.8, 0                      ; 2 uses
  %spec.store.select113 = select i1 %i.y, i32 1, i32 %storemerge107 ; 2 uses
  store i32 %spec.store.select113, ptr %i.a, align 4, !tbaa !8
  %spec.select114 = select i1 %i.y, i32 -1, i32 %.8
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.z = phi i32 [ %spec.store.select6, %.thread ], [ %spec.store.select113, %bb.b ]
  %.9 = phi i32 [ %.3, %.thread ], [ %spec.select114, %bb.b ] ; 3 uses
  %.093 = phi i32 [ %3, %.thread ], [ %2, %bb.b ] ; 4 uses
  %.0 = phi i32 [ %2, %.thread ], [ %3, %bb.b ]   ; 4 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.thread116, label %bb.d

.thread116:                                       ; preds = %bb.a, %bb.c
  %i.ab = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i32 %.0, 0
  %i.ad = icmp eq i32 %.093, 0
  %or.cond = or i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %.9, 0                      ; 2 uses
  %spec.select112 = select i1 %.not, i32 %.093, i32 %.0
  %.095 = select i1 %.not, i32 %.0, i32 %.093     ; 2 uses
  %i.ae = fcmp une double %9, 1.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sext i32 %.095 to i64
  %i.ag = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = tail call i32 @dscal_k(i64 noundef %i.af, i64 noundef 0, i64 noundef 0, double noundef %9, ptr noundef %10, i64 noundef %i.ah, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = fcmp oeq double %4, 0.000000e+00
  br i1 %i.aj, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp slt i32 %8, 0
  %i.al = add nsw i32 %spec.select112, -1
  %i.am = mul nsw i32 %i.al, %8
  %i.an = sext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %.097.idx = select i1 %i.ak, i64 %i.ao, i64 0
  %.097 = getelementptr inbounds [8 x i8], ptr %7, i64 %.097.idx ; 2 uses
  %i.ap = icmp slt i32 %11, 0
  %i.aq = add nsw i32 %.095, -1
  %i.ar = mul nsw i32 %i.aq, %11
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %.098.idx = select i1 %i.ap, i64 %i.at, i64 0
  %.098 = getelementptr inbounds [8 x i8], ptr %10, i64 %.098.idx ; 2 uses
  %i.au = add i32 %2, 19
  %i.av = add i32 %i.au, %3
  %i.aw = and i32 %i.av, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %i.aw, ptr %i.b, align 4, !tbaa !8
  %.0..0..0..0.7 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.ax = icmp ugt i32 %.0..0..0..0.7, 256
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store volatile i32 0, ptr %i.b, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 2143294004, ptr %i.c, align 4, !tbaa !8
  %.0..0..0..0.8 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not108 = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %.not108, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0..0..0..0.9 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.ay = zext i32 %.0..0..0..0.9 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.az = phi i64 [ %i.ay, %bb.k ], [ 1, %bb.j ]
  %i.ba = tail call ptr @llvm.stacksave.p0()
  %i.bb = alloca double, i64 %i.az, align 32
  %.0..0..0..0.10 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not109 = icmp eq i32 %.0..0..0..0.10, 0
  br i1 %.not109, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call ptr @blas_memory_alloc(i32 noundef 1) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bd = phi ptr [ %i.bc, %bb.m ], [ %i.bb, %bb.l ] ; 3 uses
  %i.be = sext i32 %.0 to i64                     ; 3 uses
  %i.bf = sext i32 %.093 to i64                   ; 3 uses
  %i.bg = mul nsw i64 %i.be, %i.bf
  %i.bh = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %num_cpu_avail.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9 ; 0 uses
  br label %num_cpu_avail.exit.i

num_cpu_avail.exit.i:                             ; preds = %bb.o, %bb.n
  %i.bk = icmp slt i64 %i.bg, 460800
  br i1 %i.bk, label %get_gemv_optimal_nthreads.exit.thread, label %bb.p

bb.p:                                             ; preds = %num_cpu_avail.exit.i
  %i.bl = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %get_gemv_optimal_nthreads.exit.thread, label %get_gemv_optimal_nthreads.exit

get_gemv_optimal_nthreads.exit:                   ; preds = %bb.p
  %i.bn = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %get_gemv_optimal_nthreads.exit.thread, label %bb.q

get_gemv_optimal_nthreads.exit.thread:            ; preds = %bb.p, %num_cpu_avail.exit.i, %get_gemv_optimal_nthreads.exit
  %.sroa.idx = icmp eq i32 %.9, 1
  %.sroa.speculated = select i1 %.sroa.idx, ptr @dgemv_t, ptr @dgemv_n
  %i.bp = sext i32 %6 to i64
  %i.bq = sext i32 %8 to i64
  %i.br = sext i32 %11 to i64
  %i.bs = call i32 %.sroa.speculated(i64 noundef %i.be, i64 noundef %i.bf, i64 noundef 0, double noundef %4, ptr noundef %5, i64 noundef %i.bp, ptr noundef %.097, i64 noundef %i.bq, ptr noundef %.098, i64 noundef %i.br, ptr noundef %i.bd) #6, !callees !10 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %get_gemv_optimal_nthreads.exit
  %i.bt = sext i32 %.9 to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr @gemv_thread, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !12
  %i.bw = sext i32 %6 to i64
  %i.bx = sext i32 %8 to i64
  %i.by = sext i32 %11 to i64
  %i.bz = call i32 %i.bv(i64 noundef %i.be, i64 noundef %i.bf, double noundef %4, ptr noundef %5, i64 noundef %i.bw, ptr noundef %.097, i64 noundef %i.bx, ptr noundef %.098, i64 noundef %i.by, ptr noundef %i.bd, i32 noundef %i.bn) #6 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %get_gemv_optimal_nthreads.exit.thread
  %.0..0..0..0.11 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not110 = icmp eq i32 %.0..0..0..0.11, 0
  br i1 %.not110, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @blas_memory_free(ptr noundef %i.bd) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.stackrestore.p0(ptr %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %bb.d, %bb.t, %.thread116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @dgemv_n(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemv_thread_n(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dgemv_thread_t(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
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
!10 = !{ptr @dgemv_n, ptr @dgemv_t}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
end_hunk_0
