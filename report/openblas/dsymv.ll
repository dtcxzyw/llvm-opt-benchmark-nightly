Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsymv?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSYMV \00", align 1
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @dsymv_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9      ; 8 uses
  %i.d = load double, ptr %2, align 8, !tbaa !11  ; 3 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !9      ; 3 uses
  %i.f = load i32, ptr %6, align 4, !tbaa !9      ; 5 uses
  %i.g = load double, ptr %7, align 8, !tbaa !11  ; 2 uses
  %i.h = load i32, ptr %9, align 4, !tbaa !9      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.i = icmp sgt i8 %i.b, 96
  %i.j = add nsw i8 %i.b, -32
  %spec.select = select i1 %i.i, i8 %i.j, i8 %i.b ; 2 uses
  %i.k = icmp ne i8 %spec.select, 85
  %i.l = icmp ne i8 %spec.select, 76              ; 3 uses
  %narrow = and i1 %i.l, %i.k
  %i.m = icmp eq i32 %i.h, 0
  %spec.store.select1 = select i1 %i.m, i32 10, i32 0
  %i.n = icmp eq i32 %i.f, 0
  %spec.store.select3 = select i1 %i.n, i32 7, i32 %spec.store.select1
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.p = icmp slt i32 %i.e, %i.o
  %spec.store.select4 = select i1 %i.p, i32 5, i32 %spec.store.select3
  %i.q = icmp slt i32 %i.c, 0
  %spec.store.select5 = select i1 %i.q, i32 2, i32 %spec.store.select4
  %spec.store.select6 = select i1 %narrow, i32 1, i32 %spec.store.select5 ; 2 uses
  store i32 %spec.store.select6, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %spec.store.select6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #5 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.c, 0
  br i1 %i.s, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp une double %i.g, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %i.c to i64
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = tail call i32 @dscal_k(i64 noundef %i.u, i64 noundef 0, i64 noundef 0, double noundef %i.g, ptr noundef %8, i64 noundef %i.w, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp slt i32 %i.f, 0
  %i.aa = add nsw i32 %i.c, -1                    ; 2 uses
  %i.ab = mul nsw i32 %i.f, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %.064.idx = select i1 %i.z, i64 %i.ad, i64 0
  %.064 = getelementptr inbounds [8 x i8], ptr %5, i64 %.064.idx ; 2 uses
  %i.ae = icmp slt i32 %i.h, 0
  %i.af = mul nsw i32 %i.h, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %.065.idx = select i1 %i.ae, i64 %i.ah, i64 0
  %.065 = getelementptr inbounds [8 x i8], ptr %8, i64 %.065.idx ; 2 uses
  %i.ai = tail call ptr @blas_memory_alloc(i32 noundef 1) #5 ; 3 uses
  %i.aj = icmp slt i32 %i.c, 200
  br i1 %i.aj, label %num_cpu_avail.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.h
  %i.am = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8 ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %num_cpu_avail.exit.thread, label %bb.i

num_cpu_avail.exit.thread:                        ; preds = %bb.h, %bb.g, %num_cpu_avail.exit
  %.sroa.speculated = select i1 %i.l, ptr @dsymv_U, ptr @dsymv_L
  %i.ao = sext i32 %i.c to i64                    ; 2 uses
  %i.ap = sext i32 %i.e to i64
  %i.aq = sext i32 %i.f to i64
  %i.ar = sext i32 %i.h to i64
  %i.as = tail call i32 %.sroa.speculated(i64 noundef %i.ao, i64 noundef %i.ao, double noundef %i.d, ptr noundef %3, i64 noundef %i.ap, ptr noundef %.064, i64 noundef %i.aq, ptr noundef %.065, i64 noundef %i.ar, ptr noundef %i.ai) #5, !callees !12 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %num_cpu_avail.exit
  %.sroa.speculated12 = select i1 %i.l, ptr @dsymv_thread_U, ptr @dsymv_thread_L
  %i.at = zext nneg i32 %i.c to i64
  %i.au = sext i32 %i.e to i64
  %i.av = sext i32 %i.f to i64
  %i.aw = sext i32 %i.h to i64
  %i.ax = tail call i32 %.sroa.speculated12(i64 noundef %i.at, double noundef %i.d, ptr noundef %3, i64 noundef %i.au, ptr noundef %.064, i64 noundef %i.av, ptr noundef %.065, i64 noundef %i.aw, ptr noundef %i.ai, i32 noundef %i.am) #5, !callees !13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %num_cpu_avail.exit.thread
  tail call void @blas_memory_free(ptr noundef %i.ai) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.c, %bb.j, %bb.b
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
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{ptr @dsymv_L, ptr @dsymv_U}
!13 = !{ptr @dsymv_thread_L, ptr @dsymv_thread_U}
end_hunk_0
