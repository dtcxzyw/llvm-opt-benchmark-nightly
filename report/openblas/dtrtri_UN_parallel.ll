Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrtri_UN_parallel?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@__const.dtrtri_UN_parallel.alpha = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@__const.dtrtri_UN_parallel.beta = private unnamed_addr constant [2 x double] [double -1.000000e+00, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @dtrtri_UN_parallel(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.blas_arg_t, align 8         ; 20 uses
  %i.a = alloca [2 x double], align 16            ; 4 uses
  %i.b = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_UN_parallel.alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_UN_parallel.beta, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %i.j = load i64, ptr %2, align 8, !tbaa !15
  %i.k = sub nsw i64 %i.i, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.088 = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.l = icmp slt i64 %.088, 33
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @dtrti2_UN(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %.088, 1536
  %i.o = add nuw nsw i64 %.088, 3
  %i.p = lshr i64 %i.o, 2
  %.0 = select i1 %i.n, i64 %i.p, i64 384         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.ac = shufflevector <2 x i64> %i.ab, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.08692 = phi i64 [ 0, %bb.e ], [ %i.au, %bb.f ] ; 7 uses
  %i.ad = sub nuw nsw i64 %.088, %.08692          ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.ad, i64 %.0) ; 7 uses
  store <2 x i64> %i.ac, ptr %i.q, align 8, !tbaa !15
  store i64 %i.g, ptr %i.r, align 8, !tbaa !16
  store ptr %i.a, ptr %i.s, align 8, !tbaa !17
  store i64 %.08692, ptr %i.t, align 8, !tbaa !18
  store i64 %spec.select, ptr %i.u, align 8, !tbaa !12
  %i.ae = mul nsw i64 %.08692, %i.g               ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.e, i64 %.08692 ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !13
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ae ; 2 uses
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !19
  store ptr %i.b, ptr %i.w, align 8, !tbaa !20
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !21
  %i.aj = call i32 @gemm_thread_m(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dtrsm_RNUN, ptr noundef %3, ptr noundef %4, i64 noundef %i.ai) #4 ; 0 uses
  store i64 %spec.select, ptr %i.t, align 8, !tbaa !18
  store i64 %spec.select, ptr %i.u, align 8, !tbaa !12
  store ptr %i.ag, ptr %6, align 8, !tbaa !13
  %i.ak = call i32 @dtrtri_UN_parallel(ptr noundef nonnull %6, ptr poison, ptr noundef null, ptr noundef %3, ptr noundef %4, i64 poison) ; 0 uses
  store i64 %.08692, ptr %i.t, align 8, !tbaa !18
  %i.al = sub nsw i64 %i.ad, %spec.select         ; 2 uses
  store i64 %i.al, ptr %i.u, align 8, !tbaa !12
  store i64 %spec.select, ptr %i.z, align 8, !tbaa !22
  store ptr %i.ah, ptr %6, align 8, !tbaa !13
  %i.am = add nuw nsw i64 %spec.select, %.08692
  %i.an = mul nsw i64 %i.am, %i.g                 ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.af, i64 %i.an ; 2 uses
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !19
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.an
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !23
  store ptr null, ptr %i.w, align 8, !tbaa !20
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !21
  %i.ar = call i32 @gemm_thread_n(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dgemm_nn, ptr noundef %3, ptr noundef %4, i64 noundef %i.aq) #4 ; 0 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !13
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !19
  store i64 %spec.select, ptr %i.t, align 8, !tbaa !18
  store i64 %i.al, ptr %i.u, align 8, !tbaa !12
  %i.as = load i64, ptr %i.x, align 8, !tbaa !21
  %i.at = call i32 @gemm_thread_n(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dtrmm_LNUN, ptr noundef %3, ptr noundef %4, i64 noundef %i.as) #4 ; 0 uses
  %i.au = add nuw nsw i64 %.08692, %.0            ; 2 uses
  %i.av = icmp slt i64 %i.au, %.088
  br i1 %i.av, label %bb.f, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.089 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dtrti2_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gemm_thread_m(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_RNUN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @gemm_thread_n(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_nn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dtrmm_LNUN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
!8 = distinct !{!8, !24}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !9, i64 104, !10, i64 112, !9, i64 120, !5, i64 128}
!12 = !{!11, !10, i64 56}
!13 = !{!11, !9, i64 0}
!14 = !{!11, !10, i64 72}
!15 = !{!10, !10, i64 0}
!16 = !{!11, !10, i64 88}
!17 = !{!11, !9, i64 32}
!18 = !{!11, !10, i64 48}
!19 = !{!11, !9, i64 8}
!20 = !{!11, !9, i64 40}
!21 = !{!11, !10, i64 112}
!22 = !{!11, !10, i64 64}
!23 = !{!11, !9, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
