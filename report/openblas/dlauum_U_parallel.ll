Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlauum_U_parallel?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@__const.dlauum_U_parallel.alpha = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define noundef i32 @dlauum_U_parallel(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.blas_arg_t, align 8         ; 19 uses
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.dlauum_U_parallel.alpha, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = load i64, ptr %2, align 8, !tbaa !16
  %i.m = sub nsw i64 %i.k, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.062 = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %i.n = icmp slt i64 %.062, 5
  br i1 %i.n, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.i, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 %i.i, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 %i.i, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.a, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 %i.c, ptr %i.t, align 8, !tbaa !12
  %i.u = lshr i64 %.062, 1
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = and i64 %i.v, 9223372036854775806
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.w, i64 384) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %.066 = phi i64 [ 0, %bb.e ], [ %i.am, %bb.f ]  ; 6 uses
  %i.ac = sub nsw i64 %.062, %.066
  %spec.select = call i64 @llvm.smin.i64(i64 %i.ac, i64 %spec.store.select) ; 4 uses
  store i64 %.066, ptr %i.x, align 8, !tbaa !13
  store i64 %spec.select, ptr %i.y, align 8, !tbaa !21
  %i.ad = mul nsw i64 %.066, %i.i                 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  store ptr %i.ae, ptr %6, align 8, !tbaa !14
  store ptr %i.g, ptr %i.z, align 8, !tbaa !22
  %i.af = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ag = call i32 @syrk_thread(i32 noundef 259, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dsyrk_UN, ptr noundef %3, ptr noundef %4, i64 noundef %i.af) #4 ; 0 uses
  store i64 %.066, ptr %i.aa, align 8, !tbaa !23
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !13
  %i.ah = getelementptr [8 x i8], ptr %i.g, i64 %.066
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ad ; 2 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !14
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !24
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ak = call i32 @gemm_thread_m(i32 noundef 1043, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull @dtrmm_RTUN, ptr noundef %3, ptr noundef %4, i64 noundef %i.aj) #4 ; 0 uses
  store i64 %spec.select, ptr %i.aa, align 8, !tbaa !23
  store i64 %spec.select, ptr %i.x, align 8, !tbaa !13
  store ptr %i.ai, ptr %6, align 8, !tbaa !14
  %i.al = call i32 @dlauum_U_parallel(ptr noundef nonnull %6, ptr poison, ptr noundef null, ptr noundef %3, ptr noundef %4, i64 poison) ; 0 uses
  %i.am = add nuw nsw i64 %.066, %spec.store.select ; 2 uses
  %i.an = icmp slt i64 %i.am, %.062
  br i1 %i.an, label %bb.f, label %.loopexit, !llvm.loop !8

.loopexit.sink.split:                             ; preds = %bb.d, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %2, %bb.d ]
  %i.ao = tail call i32 @dlauum_U_single(ptr noundef nonnull %0, ptr noundef null, ptr noundef %.sink, ptr noundef %3, ptr noundef %4, i64 noundef 0) #4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @dlauum_U_single(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @syrk_thread(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dsyrk_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @gemm_thread_m(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dtrmm_RTUN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
!8 = distinct !{!8, !25}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !9, i64 104, !10, i64 112, !9, i64 120, !5, i64 128}
!12 = !{!11, !10, i64 112}
!13 = !{!11, !10, i64 56}
!14 = !{!11, !9, i64 0}
!15 = !{!11, !10, i64 72}
!16 = !{!10, !10, i64 0}
!17 = !{!11, !10, i64 80}
!18 = !{!11, !10, i64 88}
!19 = !{!11, !9, i64 32}
!20 = !{!11, !9, i64 40}
!21 = !{!11, !10, i64 64}
!22 = !{!11, !9, i64 16}
!23 = !{!11, !10, i64 48}
!24 = !{!11, !9, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
end_hunk_0
