Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dtrmv?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DTRMV \00", align 1
@trmv = internal unnamed_addr constant [8 x ptr] [ptr @dtrmv_NUU, ptr @dtrmv_NUN, ptr @dtrmv_NLU, ptr @dtrmv_NLN, ptr @dtrmv_TUU, ptr @dtrmv_TUN, ptr @dtrmv_TLU, ptr @dtrmv_TLN], align 16
@trmv_thread = internal unnamed_addr constant [8 x ptr] [ptr @dtrmv_thread_NUU, ptr @dtrmv_thread_NUN, ptr @dtrmv_thread_NLU, ptr @dtrmv_thread_NLN, ptr @dtrmv_thread_TUU, ptr @dtrmv_thread_TUN, ptr @dtrmv_thread_TLU, ptr @dtrmv_thread_TLN], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dtrmv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %thread-pre-split.thread [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.b = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.b to i32
  %.not96 = icmp eq i32 %1, 122
  %.177 = select i1 %.not96, i32 1, i32 %spec.select
  %i.c = icmp ne i32 %2, 111
  %.082 = sext i1 %i.c to i32
  %i.d = icmp eq i32 %2, 112
  %.183 = select i1 %i.d, i32 1, i32 %.082
  %i.e = icmp eq i32 %2, 114
  %.284 = select i1 %i.e, i32 0, i32 %.183
  %i.f = icmp eq i32 %2, 113
  %.385 = select i1 %i.f, i32 1, i32 %.284        ; 2 uses
  %i.g = icmp ne i32 %3, 132
  %.0 = sext i1 %i.g to i32
  %.not95 = icmp eq i32 %3, 131
  %.1 = select i1 %.not95, i32 1, i32 %.0
  %i.h = icmp eq i32 %8, 0
  %spec.store.select = select i1 %i.h, i32 8, i32 -1
  %i.i = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %i.j = icmp slt i32 %6, %i.i
  %spec.store.select5 = select i1 %i.j, i32 6, i32 %spec.store.select
  %i.k = icmp slt i32 %4, 0
  %spec.store.select7 = select i1 %i.k, i32 4, i32 %spec.store.select5
  %i.l = add i32 %3, -133
  %i.m = icmp ult i32 %i.l, -2
  %spec.store.select9 = select i1 %i.m, i32 3, i32 %spec.store.select7
  %i.n = icmp slt i32 %.385, 0
  %spec.store.select11 = select i1 %i.n, i32 2, i32 %spec.store.select9
  %i.o = add i32 %1, -123
  %i.p = icmp ult i32 %i.o, -2
  %spec.store.select13 = select i1 %i.p, i32 1, i32 %spec.store.select11
  br label %thread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %1, 121
  %spec.select91 = select i1 %i.q, i32 1, i32 -1
  %i.r = icmp eq i32 %1, 122
  %.480 = select i1 %i.r, i32 0, i32 %spec.select91 ; 2 uses
  %i.s = icmp eq i32 %2, 111
  %.587 = select i1 %i.s, i32 1, i32 -1
  %i.t = icmp eq i32 %2, 112
  %.6 = select i1 %i.t, i32 0, i32 %.587
  %i.u = icmp eq i32 %2, 114
  %.7 = select i1 %i.u, i32 1, i32 %.6
  %i.v = icmp eq i32 %2, 113
  %.8 = select i1 %i.v, i32 0, i32 %.7            ; 2 uses
  %i.w = icmp ne i32 %3, 132
  %.3 = sext i1 %i.w to i32
  %.not = icmp eq i32 %3, 131
  %.4 = select i1 %.not, i32 1, i32 %.3
  %i.x = icmp eq i32 %8, 0
  %spec.store.select1 = select i1 %i.x, i32 8, i32 -1
  %i.y = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %i.z = icmp slt i32 %6, %i.y
  %spec.store.select6 = select i1 %i.z, i32 6, i32 %spec.store.select1
  %i.aa = icmp slt i32 %4, 0
  %spec.store.select8 = select i1 %i.aa, i32 4, i32 %spec.store.select6
  %i.ab = add i32 %3, -133
  %i.ac = icmp ult i32 %i.ab, -2
  %spec.store.select10 = select i1 %i.ac, i32 3, i32 %spec.store.select8
  %i.ad = icmp slt i32 %.8, 0
  %spec.store.select12 = select i1 %i.ad, i32 2, i32 %spec.store.select10
  %i.ae = icmp slt i32 %.480, 0
  %spec.store.select14 = select i1 %i.ae, i32 1, i32 %spec.store.select12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread, %bb.b
  %spec.store.select13.sink = phi i32 [ %spec.store.select13, %.thread ], [ %spec.store.select14, %bb.b ] ; 2 uses
  %.9 = phi i32 [ %.385, %.thread ], [ %.8, %bb.b ]
  %.581 = phi i32 [ %.177, %.thread ], [ %.480, %bb.b ]
  %.5 = phi i32 [ %.1, %.thread ], [ %.4, %bb.b ]
  store i32 %spec.store.select13.sink, ptr %i.a, align 4, !tbaa !8
  %i.af = icmp sgt i32 %spec.store.select13.sink, -1
  br i1 %i.af, label %thread-pre-split.thread, label %bb.c

thread-pre-split.thread:                          ; preds = %bb.a, %thread-pre-split
  %i.ag = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %thread-pre-split
  %i.ah = icmp eq i32 %4, 0
  br i1 %i.ah, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp slt i32 %8, 0
  %i.aj = add nsw i32 %4, -1
  %i.ak = mul nsw i32 %8, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = sub nsw i64 0, %i.al
  %.088.idx = select i1 %i.ai, i64 %i.am, i64 0
  %.088 = getelementptr inbounds [8 x i8], ptr %7, i64 %.088.idx ; 2 uses
  %i.an = tail call ptr @blas_memory_alloc(i32 noundef 1) #4 ; 3 uses
  %i.ao = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %num_cpu_avail.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.aq, %bb.e ], [ 1, %bb.d ]  ; 2 uses
  %i.ar = icmp slt i32 %4, 50
  %i.as = icmp slt i32 %4, 500
  %i.at = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 2)
  %i.au = select i1 %i.ar, i32 1, i32 %i.at
  %spec.store.select4 = select i1 %i.as, i32 %i.au, i32 %.0.i ; 2 uses
  %i.av = icmp eq i32 %spec.store.select4, 1
  %i.aw = shl nsw i32 %.9, 2
  %i.ax = shl nsw i32 %.581, 1
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %.5
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = sext i32 %4 to i64                      ; 2 uses
  %i.bc = sext i32 %6 to i64                      ; 2 uses
  %i.bd = sext i32 %8 to i64                      ; 2 uses
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %num_cpu_avail.exit
  %i.be = getelementptr inbounds [8 x i8], ptr @trmv, i64 %i.ba
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = tail call i32 %i.bf(i64 noundef %i.bb, ptr noundef %5, i64 noundef %i.bc, ptr noundef %.088, i64 noundef %i.bd, ptr noundef %i.an) #4 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %num_cpu_avail.exit
  %i.bh = getelementptr inbounds [8 x i8], ptr @trmv_thread, i64 %i.ba
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bj = tail call i32 %i.bi(i64 noundef %i.bb, ptr noundef %5, i64 noundef %i.bc, ptr noundef %.088, i64 noundef %i.bd, ptr noundef %i.an, i32 noundef %spec.store.select4) #4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @blas_memory_free(ptr noundef %i.an) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %thread-pre-split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dtrmv_NUU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_NUN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_NLU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_NLN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_TUU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_TUN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_TLU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_TLN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dtrmv_thread_NUU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_NUN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_NLU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_NLN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_TUU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_TUN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_TLU(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dtrmv_thread_TLN(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

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
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
end_hunk_0
