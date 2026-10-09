Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrtri_LU_parallel?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@__const.dtrtri_LU_parallel.alpha = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16
@__const.dtrtri_LU_parallel.beta = private unnamed_addr constant [2 x double] [double -1.000000e+00, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @dtrtri_LU_parallel(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.blas_arg_t, align 8         ; 20 uses
  %i.a = alloca [2 x double], align 16            ; 4 uses
  %i.b = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_LU_parallel.alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dtrtri_LU_parallel.beta, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16
  %i.j = load i64, ptr %2, align 8, !tbaa !16
  %i.k = sub nsw i64 %i.i, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.092 = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.l = icmp slt i64 %.092, 33
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @dtrti2_LU(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i64 %.092, 1536
  %i.o = add nuw nsw i64 %.092, 3
  %i.p = lshr i64 %i.o, 2
  %.089 = select i1 %i.n, i64 %i.p, i64 384       ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ 0, %bb.e ], [ %i.r, %bb.f ]     ; 3 uses
  %i.q = icmp slt i64 %.0, %.092
  %i.r = add nuw nsw i64 %.0, %.089
  br i1 %i.q, label %bb.f, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %bb.f
  %.09096 = sub nsw i64 %.0, %.089                ; 2 uses
  %i.s = icmp sgt i64 %.09096, -1
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.af = shufflevector <2 x i64> %i.ae, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.09097 = phi i64 [ %.09096, %.lr.ph ], [ %.090, %bb.g ] ; 6 uses
  %i.ag = sub nsw i64 %.092, %.09097              ; 2 uses
  %spec.select = call i64 @llvm.smin.i64(i64 %i.ag, i64 %.089) ; 7 uses
  store <2 x i64> %i.af, ptr %i.t, align 8, !tbaa !16
  store i64 %i.g, ptr %i.u, align 8, !tbaa !18
  store ptr %i.a, ptr %i.v, align 8, !tbaa !19
  %i.ah = sub i64 %i.ag, %spec.select             ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !tbaa !20
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !13
  %i.ai = mul nsw i64 %.09097, %i.g               ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.e, i64 %.09097 ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.ai ; 3 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !14
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %spec.select ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  store ptr %i.am, ptr %i.y, align 8, !tbaa !21
  store ptr %i.b, ptr %i.z, align 8, !tbaa !22
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  store i64 %i.an, ptr %i.ab, align 8, !tbaa !23
  %i.ao = call i32 @gemm_thread_m(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dtrsm_RNLU, ptr noundef %3, ptr noundef %4, i64 noundef %i.an) #4 ; 0 uses
  store i64 %spec.select, ptr %i.w, align 8, !tbaa !20
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !13
  store ptr %i.ak, ptr %6, align 8, !tbaa !14
  %i.ap = call i32 @dtrtri_LU_parallel(ptr noundef nonnull %6, ptr poison, ptr noundef null, ptr noundef %3, ptr noundef %4, i64 poison) ; 0 uses
  store i64 %i.ah, ptr %i.w, align 8, !tbaa !20
  store i64 %.09097, ptr %i.x, align 8, !tbaa !13
  store i64 %spec.select, ptr %i.ac, align 8, !tbaa !24
  store ptr %i.am, ptr %6, align 8, !tbaa !14
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !21
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !25
  store ptr null, ptr %i.z, align 8, !tbaa !22
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ar = call i32 @gemm_thread_n(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dgemm_nn, ptr noundef %3, ptr noundef %4, i64 noundef %i.aq) #4 ; 0 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !14
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !21
  store i64 %spec.select, ptr %i.w, align 8, !tbaa !20
  store i64 %.09097, ptr %i.x, align 8, !tbaa !13
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.at = call i32 @gemm_thread_n(i32 noundef 3, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dtrmm_LNLU, ptr noundef %3, ptr noundef %4, i64 noundef %i.as) #4 ; 0 uses
  %.090 = sub nsw i64 %.09097, %.089              ; 2 uses
  %i.au = icmp sgt i64 %.090, -1
  br i1 %i.au, label %bb.g, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.d
  %.093 = phi i32 [ %i.m, %bb.d ], [ 0, %.preheader ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 %.093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dtrti2_LU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gemm_thread_m(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrsm_RNLU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @gemm_thread_n(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dgemm_nn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dtrmm_LNLU(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

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
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !5, i64 128}
!13 = !{!12, !11, i64 56}
!14 = !{!12, !10, i64 0}
!15 = !{!12, !11, i64 72}
!16 = !{!11, !11, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!12, !11, i64 88}
!19 = !{!12, !10, i64 32}
!20 = !{!12, !11, i64 48}
!21 = !{!12, !10, i64 8}
!22 = !{!12, !10, i64 40}
!23 = !{!12, !11, i64 112}
!24 = !{!12, !11, i64 64}
!25 = !{!12, !10, i64 16}
end_hunk_0
