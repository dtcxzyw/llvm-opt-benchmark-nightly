Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpotrf?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"DPOTRF\00", align 1
@potrf_single = internal unnamed_addr constant [2 x ptr] [ptr @dpotrf_U_single, ptr @dpotrf_L_single], align 16
@potrf_parallel = internal unnamed_addr constant [2 x ptr] [ptr @dpotrf_U_parallel, ptr @dpotrf_L_parallel], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define noundef i32 @dpotrf_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.blas_arg_t, align 8         ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.c = sext i8 %i.b to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.d = load i32, ptr %1, align 4, !tbaa !9      ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !10
  store ptr %2, ptr %5, align 8, !tbaa !14
  %i.g = load i32, ptr %3, align 4, !tbaa !9
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = icmp sgt i8 %i.b, 96
  %i.k = add nsw i32 %i.c, -32
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.c ; 3 uses
  %i.l = icmp ne i32 %spec.select, 85
  %spec.store.select = sext i1 %i.l to i64
  %.not31 = icmp eq i32 %spec.select, 76
  %spec.store.select1 = select i1 %.not31, i64 1, i64 %spec.store.select
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.e, i64 1)
  %i.n = icmp sgt i64 %i.m, %i.h
  %spec.store.select28 = select i1 %i.n, i32 4, i32 0
  %i.o = icmp slt i32 %i.d, 0
  %spec.store.select29 = select i1 %i.o, i32 2, i32 %spec.store.select28 ; 2 uses
  store i32 %spec.store.select29, ptr %i.a, align 4
  switch i32 %spec.select, label %.thread [
    i32 85, label %bb.b
    i32 76, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq i32 %spec.store.select29, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.p = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !9
  %i.r = sub nsw i32 0, %i.q
  store i32 %i.r, ptr %4, align 4, !tbaa !9
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %4, align 4, !tbaa !9
  %i.s = icmp eq i32 %i.d, 0
  br i1 %i.s, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @blas_memory_alloc(i32 noundef 1) #4 ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add nsw i64 %i.u, 589824
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr null, ptr %i.x, align 8, !tbaa !16
  %i.y = icmp slt i32 %i.d, 64
  br i1 %i.y, label %.thread32, label %bb.f

.thread32:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 1, ptr %i.z, align 8, !tbaa !17
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aa = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %num_cpu_avail.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.ad = sext i32 %i.ac to i64
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ad, %bb.g ], [ 1, %bb.f ]  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store i64 %.0.i, ptr %i.ae, align 8, !tbaa !17
  %i.af = load i64, ptr %i.f, align 8, !tbaa !10  ; 2 uses
  %i.ag = sdiv i64 %i.af, %.0.i
  %i.ah = icmp slt i64 %i.ag, 64
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %num_cpu_avail.exit
  %i.ai = sdiv i64 %i.af, 64                      ; 2 uses
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %num_cpu_avail.exit, %bb.h
  %i.aj = phi i64 [ %.0.i, %num_cpu_avail.exit ], [ %i.ai, %bb.h ]
  %i.ak = icmp eq i64 %i.aj, 1
  %spec.select34 = select i1 %i.ak, ptr @potrf_single, ptr @potrf_parallel
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread32
  %potrf_parallel.sink = phi ptr [ %spec.select34, %bb.i ], [ @potrf_single, %.thread32 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %potrf_parallel.sink, i64 %spec.store.select1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = call i32 %i.am(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %i.t, ptr noundef %i.w, i64 noundef 0) #4
  store i32 %i.an, ptr %4, align 4, !tbaa !9
  call void @blas_memory_free(ptr noundef %i.t) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.j, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dpotrf_U_single(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dpotrf_L_single(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dpotrf_U_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dpotrf_L_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

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
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !13, i64 56}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !12, i64 104, !13, i64 112, !12, i64 120, !5, i64 128}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !13, i64 72}
!16 = !{!11, !12, i64 104}
!17 = !{!11, !13, i64 112}
!18 = !{!12, !12, i64 0}
end_hunk_0
