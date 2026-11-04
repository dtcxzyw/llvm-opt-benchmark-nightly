Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemv?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DGEMV \00", align 1
@gemv_thread = internal unnamed_addr constant [2 x ptr] [ptr @dgemv_thread_n, ptr @dgemv_thread_t], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @dgemv_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !9      ; 7 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !9      ; 6 uses
  %i.g = load i32, ptr %5, align 4, !tbaa !9      ; 3 uses
  %i.h = load i32, ptr %7, align 4, !tbaa !9      ; 5 uses
  %i.i = load i32, ptr %10, align 4, !tbaa !9     ; 6 uses
  %i.j = load double, ptr %3, align 8, !tbaa !11  ; 3 uses
  %i.k = load double, ptr %8, align 8, !tbaa !11  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.l = icmp sgt i8 %i.d, 96
  %i.m = add nsw i8 %i.d, -32
  %spec.select = select i1 %i.l, i8 %i.m, i8 %i.d ; 4 uses
  %i.n = icmp ne i8 %spec.select, 78
  %spec.store.select = sext i1 %i.n to i32
  %i.o = icmp eq i8 %spec.select, 84
  %spec.store.select2 = select i1 %i.o, i32 1, i32 %spec.store.select
  %i.p = icmp eq i8 %spec.select, 82
  %spec.store.select3 = select i1 %i.p, i32 0, i32 %spec.store.select2
  %i.q = icmp eq i8 %spec.select, 67
  %spec.store.select4 = select i1 %i.q, i32 1, i32 %spec.store.select3 ; 4 uses
  %i.r = icmp eq i32 %i.i, 0
  %storemerge = select i1 %i.r, i32 11, i32 0
  %i.s = icmp eq i32 %i.h, 0
  %storemerge97 = select i1 %i.s, i32 8, i32 %storemerge
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.u = icmp slt i32 %i.g, %i.t
  %storemerge98 = select i1 %i.u, i32 6, i32 %storemerge97
  %i.v = icmp slt i32 %i.f, 0
  %storemerge99 = select i1 %i.v, i32 3, i32 %storemerge98
  %i.w = icmp slt i32 %i.e, 0
  %storemerge100 = select i1 %i.w, i32 2, i32 %storemerge99
  %i.x = icmp slt i32 %spec.store.select4, 0
  %storemerge101 = select i1 %i.x, i32 1, i32 %storemerge100 ; 2 uses
  store i32 %storemerge101, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %storemerge101, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #6 ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %i.e, 0
  %i.aa = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not102 = icmp eq i32 %spec.store.select4, 0   ; 2 uses
  %spec.select106 = select i1 %.not102, i32 %i.f, i32 %i.e
  %.086 = select i1 %.not102, i32 %i.e, i32 %i.f  ; 2 uses
  %i.ab = fcmp une double %i.k, 1.000000e+00
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %.086 to i64
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call i32 @dscal_k(i64 noundef %i.ac, i64 noundef 0, i64 noundef 0, double noundef %i.k, ptr noundef %9, i64 noundef %i.ae, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = fcmp oeq double %i.j, 0.000000e+00
  br i1 %i.ag, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp slt i32 %i.h, 0
  %i.ai = add nsw i32 %spec.select106, -1
  %i.aj = mul nsw i32 %i.ai, %i.h
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %.0.idx = select i1 %i.ah, i64 %i.al, i64 0
  %.0 = getelementptr inbounds [8 x i8], ptr %6, i64 %.0.idx ; 2 uses
  %i.am = icmp slt i32 %i.i, 0
  %i.an = add nsw i32 %.086, -1
  %i.ao = mul nsw i32 %i.an, %i.i
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %.085.idx = select i1 %i.am, i64 %i.aq, i64 0
  %.085 = getelementptr inbounds [8 x i8], ptr %9, i64 %.085.idx ; 2 uses
  %i.ar = add i32 %i.e, 19
  %i.as = add i32 %i.ar, %i.f
  %i.at = and i32 %i.as, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %i.at, ptr %i.b, align 4, !tbaa !9
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4, !tbaa !9
  %i.au = icmp ugt i32 %.0..0..0..0.5, 256
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store volatile i32 0, ptr %i.b, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 2143294004, ptr %i.c, align 4, !tbaa !9
  %.0..0..0..0.6 = load volatile i32, ptr %i.b, align 4, !tbaa !9
  %.not103 = icmp eq i32 %.0..0..0..0.6, 0
  br i1 %.not103, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0..0..0..0.7 = load volatile i32, ptr %i.b, align 4, !tbaa !9
  %i.av = zext i32 %.0..0..0..0.7 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aw = phi i64 [ %i.av, %bb.j ], [ 1, %bb.i ]
  %i.ax = tail call ptr @llvm.stacksave.p0()
  %i.ay = alloca double, i64 %i.aw, align 32
  %.0..0..0..0.8 = load volatile i32, ptr %i.b, align 4, !tbaa !9
  %.not104 = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %.not104, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = tail call ptr @blas_memory_alloc(i32 noundef 1) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ba = phi ptr [ %i.az, %bb.l ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bb = sext i32 %i.e to i64                    ; 3 uses
  %i.bc = sext i32 %i.f to i64                    ; 3 uses
  %i.bd = mul nsw i64 %i.bc, %i.bb
  %i.be = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %num_cpu_avail.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8 ; 0 uses
  br label %num_cpu_avail.exit.i

num_cpu_avail.exit.i:                             ; preds = %bb.n, %bb.m
  %i.bh = icmp slt i64 %i.bd, 460800
  br i1 %i.bh, label %get_gemv_optimal_nthreads.exit.thread, label %bb.o

bb.o:                                             ; preds = %num_cpu_avail.exit.i
  %i.bi = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %get_gemv_optimal_nthreads.exit.thread, label %get_gemv_optimal_nthreads.exit

get_gemv_optimal_nthreads.exit:                   ; preds = %bb.o
  %i.bk = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %get_gemv_optimal_nthreads.exit.thread, label %bb.p

get_gemv_optimal_nthreads.exit.thread:            ; preds = %bb.o, %num_cpu_avail.exit.i, %get_gemv_optimal_nthreads.exit
  %.sroa.idx = icmp eq i32 %spec.store.select4, 1
  %.sroa.speculated = select i1 %.sroa.idx, ptr @dgemv_t, ptr @dgemv_n
  %i.bm = sext i32 %i.g to i64
  %i.bn = sext i32 %i.h to i64
  %i.bo = sext i32 %i.i to i64
  %i.bp = call i32 %.sroa.speculated(i64 noundef %i.bb, i64 noundef %i.bc, i64 noundef 0, double noundef %i.j, ptr noundef %4, i64 noundef %i.bm, ptr noundef %.0, i64 noundef %i.bn, ptr noundef %.085, i64 noundef %i.bo, ptr noundef %i.ba) #6, !callees !12 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %get_gemv_optimal_nthreads.exit
  %i.bq = sext i32 %spec.store.select4 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr @gemv_thread, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.bt = sext i32 %i.g to i64
  %i.bu = sext i32 %i.h to i64
  %i.bv = sext i32 %i.i to i64
  %i.bw = call i32 %i.bs(i64 noundef %i.bb, i64 noundef %i.bc, double noundef %i.j, ptr noundef %4, i64 noundef %i.bt, ptr noundef %.0, i64 noundef %i.bu, ptr noundef %.085, i64 noundef %i.bv, ptr noundef %i.ba, i32 noundef %i.bk) #6 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %get_gemv_optimal_nthreads.exit.thread
  %.0..0..0..0.9 = load volatile i32, ptr %i.b, align 4, !tbaa !9
  %.not105 = icmp eq i32 %.0..0..0..0.9, 0
  br i1 %.not105, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @blas_memory_free(ptr noundef %i.ba) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.stackrestore.p0(ptr %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.c, %bb.s, %bb.b
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
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{ptr @dgemv_n, ptr @dgemv_t}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
