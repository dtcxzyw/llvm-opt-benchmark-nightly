Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dsyrk?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"DSYRK \00", align 1
@syrk = internal unnamed_addr constant [8 x ptr] [ptr @dsyrk_UN, ptr @dsyrk_UT, ptr @dsyrk_LN, ptr @dsyrk_LT, ptr @dsyrk_thread_UN, ptr @dsyrk_thread_UT, ptr @dsyrk_thread_LN, ptr @dsyrk_thread_LT], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dsyrk(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, double noundef %8, ptr noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %11 = alloca %struct.blas_arg_t, align 8        ; 14 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  store double %5, ptr %i.a, align 8, !tbaa !9
  store double %8, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = sext i32 %3 to i64                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i64 %i.f, ptr %i.g, align 8, !tbaa !14
  store ptr %6, ptr %11, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %9, ptr %i.h, align 8, !tbaa !16
  %i.i = sext i32 %7 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = sext i32 %10 to i64                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.a, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.b, ptr %i.n, align 8, !tbaa !20
  store i32 0, ptr %i.c, align 4, !tbaa !21
  switch i32 %0, label %.thread.thread75 [
    i32 102, label %condstore.split
    i32 101, label %condstore.split55
  ]

condstore.split:                                  ; preds = %bb.a
  %i.o = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.o to i32
  %.not71 = icmp eq i32 %1, 122
  %.144 = select i1 %.not71, i32 1, i32 %spec.select
  %i.p = icmp ne i32 %2, 111
  %.041 = sext i1 %i.p to i32
  %i.q = icmp eq i32 %2, 112
  %.142 = select i1 %i.q, i32 1, i32 %.041
  %i.r = icmp eq i32 %2, 114
  %.2 = select i1 %i.r, i32 0, i32 %.142
  %i.s = icmp eq i32 %2, 113
  %.3 = select i1 %i.s, i32 1, i32 %.2            ; 4 uses
  %i.t = and i32 %.3, 1
  %.not = icmp eq i32 %i.t, 0
  %.0 = select i1 %.not, i32 %3, i32 %4
  %i.u = call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.v = icmp sgt i64 %i.u, %i.k
  %spec.store.select = select i1 %i.v, i32 10, i32 -1
  %i.w = call i32 @llvm.smax.i32(i32 %.0, i32 1)
  %i.x = icmp slt i32 %7, %i.w
  %i.y = icmp slt i32 %4, 0
  %spec.select66 = select i1 %i.x, i32 7, i32 %spec.store.select
  %spec.select72 = select i1 %i.y, i32 4, i32 %spec.select66 ; 2 uses
  store i32 %spec.select72, ptr %i.c, align 4, !tbaa !21
  %i.z = or i32 %.3, %3
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = add i32 %1, -123
  %i.ac = icmp ult i32 %i.ab, -2                  ; 3 uses
  %spec.select52 = select i1 %i.ac, i32 -1, i32 %.144
  %i.ad = or i1 %i.ac, %i.aa
  br i1 %i.ad, label %.thread.thread75.sink.split, label %.thread

condstore.split55:                                ; preds = %bb.a
  %i.ae = icmp eq i32 %1, 121
  %spec.select53 = select i1 %i.ae, i32 1, i32 -1
  %i.af = icmp eq i32 %1, 122
  %.447 = select i1 %i.af, i32 0, i32 %spec.select53 ; 3 uses
  %i.ag = icmp eq i32 %2, 111
  %.5 = select i1 %i.ag, i32 1, i32 -1
  %i.ah = icmp eq i32 %2, 112
  %.6 = select i1 %i.ah, i32 0, i32 %.5
  %i.ai = icmp eq i32 %2, 114
  %.7 = select i1 %i.ai, i32 1, i32 %.6
  %i.aj = icmp eq i32 %2, 113
  %.8 = select i1 %i.aj, i32 0, i32 %.7           ; 4 uses
  %i.ak = and i32 %.8, 1
  %.not49 = icmp eq i32 %i.ak, 0
  %.1 = select i1 %.not49, i32 %3, i32 %4
  %i.al = call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.am = icmp sgt i64 %i.al, %i.k
  %spec.store.select67 = select i1 %i.am, i32 10, i32 -1
  %i.an = call i32 @llvm.smax.i32(i32 %.1, i32 1)
  %i.ao = icmp slt i32 %7, %i.an
  %i.ap = icmp slt i32 %4, 0
  %spec.select68 = select i1 %i.ao, i32 7, i32 %spec.store.select67
  %spec.select73 = select i1 %i.ap, i32 4, i32 %spec.select68 ; 2 uses
  store i32 %spec.select73, ptr %i.c, align 4, !tbaa !21
  %12 = icmp slt i32 %.447, 0                     ; 2 uses
  %spec.select57 = select i1 %12, i32 -1, i32 %.447
  %i.aq = or i32 %.447, %3
  %i.ar = or i32 %i.aq, %.8
  %.not69 = icmp sgt i32 %i.ar, -1
  br i1 %.not69, label %.thread, label %.thread.thread75.sink.split

.thread:                                          ; preds = %condstore.split, %condstore.split55
  %.pr.pr = phi i32 [ %spec.select72, %condstore.split ], [ %spec.select73, %condstore.split55 ]
  %.548.ph.ph = phi i32 [ %spec.select52, %condstore.split ], [ %spec.select57, %condstore.split55 ] ; 2 uses
  %.9.ph.ph = phi i32 [ %.3, %condstore.split ], [ %.8, %condstore.split55 ] ; 2 uses
  %i.as = icmp sgt i32 %.pr.pr, -1
  br i1 %i.as, label %.thread.thread75, label %bb.b

.thread.thread75.sink.split:                      ; preds = %condstore.split55, %condstore.split
  %.3.sink = phi i32 [ %.3, %condstore.split ], [ %.8, %condstore.split55 ]
  %.sink = phi i1 [ %i.ac, %condstore.split ], [ %12, %condstore.split55 ]
  %i.at = icmp slt i32 %.3.sink, 0
  %spec.select50 = select i1 %i.at, i32 2, i32 3
  %spec.select51 = select i1 %.sink, i32 1, i32 %spec.select50
  store i32 %spec.select51, ptr %i.c, align 4, !tbaa !21
  br label %.thread.thread75

.thread.thread75:                                 ; preds = %.thread.thread75.sink.split, %bb.a, %.thread
  %i.au = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 7) #4 ; 0 uses
  br label %bb.i

bb.b:                                             ; preds = %.thread
  %i.av = icmp eq i32 %3, 0
  br i1 %i.av, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = call ptr @blas_memory_alloc(i32 noundef 0) #4 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add nsw i64 %i.ax, 589824
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr null, ptr %i.ba, align 8, !tbaa !22
  %i.bb = add nsw i64 %i.d, 1
  %i.bc = sitofp i64 %i.bb to double
  %i.bd = sitofp i32 %3 to double
  %i.be = fmul nnan double %i.bd, %i.bc
  %i.bf = sitofp i32 %4 to double
  %i.bg = fmul double %i.be, %i.bf
  %i.bh = fcmp ugt double %i.bg, 4.397760e+05
  br i1 %i.bh, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.bi = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !23
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !23 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !24
  %i.bn = icmp eq i32 %i.bk, 1
  br i1 %i.bn, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i64 1, ptr %i.bo, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.bp = shl nsw i32 %.548.ph.ph, 1
  %i.bq = or i32 %i.bp, %.9.ph.ph
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.br = shl nsw i32 %.548.ph.ph, 1
  %i.bs = or i32 %.9.ph.ph, %i.br
  %i.bt = or i32 %i.bs, 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink87 = phi i32 [ %i.bt, %bb.g ], [ %i.bq, %bb.f ]
  %i.bu = sext i32 %.sink87 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @syrk, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25
  %i.bx = call i32 %i.bw(ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef %i.aw, ptr noundef %i.az, i64 noundef 0) #4 ; 0 uses
  call void @blas_memory_free(ptr noundef %i.aw) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %.thread.thread75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dsyrk_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_UT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_LN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_LT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_thread_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_thread_UT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_thread_LN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyrk_thread_LT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !5, i64 128}
!13 = !{!12, !11, i64 56}
!14 = !{!12, !11, i64 64}
!15 = !{!12, !10, i64 0}
!16 = !{!12, !10, i64 16}
!17 = !{!12, !11, i64 72}
!18 = !{!12, !11, i64 88}
!19 = !{!12, !10, i64 32}
!20 = !{!12, !10, i64 40}
!21 = !{!5, !5, i64 0}
!22 = !{!12, !10, i64 104}
!23 = !{!4, !4, i64 0}
!24 = !{!12, !11, i64 112}
!25 = !{!10, !10, i64 0}
end_hunk_0
