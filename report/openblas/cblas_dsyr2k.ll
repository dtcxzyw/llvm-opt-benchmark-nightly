Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dsyr2k?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.blas_arg_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, ptr, i64, ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"DSYR2K\00", align 1
@syr2k = internal unnamed_addr constant [4 x ptr] [ptr @dsyr2k_UN, ptr @dsyr2k_UT, ptr @dsyr2k_LN, ptr @dsyr2k_LT], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dsyr2k(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, double noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %13 = alloca %struct.blas_arg_t, align 8        ; 17 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  store double %5, ptr %i.a, align 8, !tbaa !9
  store double %10, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = sext i32 %3 to i64                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i64 %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = sext i32 %4 to i64                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i64 %i.f, ptr %i.g, align 8, !tbaa !14
  store ptr %6, ptr %13, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %8, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %11, ptr %i.i, align 8, !tbaa !17
  %i.j = sext i32 %7 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = sext i32 %9 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i64 %i.l, ptr %i.m, align 8, !tbaa !19
  %i.n = sext i32 %12 to i64                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.a, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.b, ptr %i.q, align 8, !tbaa !22
  store i32 0, ptr %i.c, align 4, !tbaa !23
  switch i32 %0, label %.thread.thread89 [
    i32 102, label %condstore.split
    i32 101, label %condstore.split69
  ]

condstore.split:                                  ; preds = %bb.a
  %i.r = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.r to i32
  %.not87 = icmp eq i32 %1, 122
  %.156 = select i1 %.not87, i32 1, i32 %spec.select
  %i.s = icmp ne i32 %2, 111
  %.053 = sext i1 %i.s to i32
  %i.t = icmp eq i32 %2, 112
  %.154 = select i1 %i.t, i32 1, i32 %.053
  %i.u = icmp eq i32 %2, 114
  %.2 = select i1 %i.u, i32 0, i32 %.154
  %i.v = icmp eq i32 %2, 113
  %.3 = select i1 %i.v, i32 1, i32 %.2            ; 4 uses
  %i.w = and i32 %.3, 1
  %.not = icmp eq i32 %i.w, 0
  %.052 = select i1 %.not, i32 %3, i32 %4
  %i.x = call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.y = icmp sgt i64 %i.x, %i.n
  %spec.store.select = select i1 %i.y, i32 12, i32 -1
  %i.z = call i32 @llvm.smax.i32(i32 %.052, i32 1) ; 2 uses
  %i.aa = icmp slt i32 %9, %i.z
  %i.ab = icmp slt i32 %7, %i.z
  %i.ac = icmp slt i32 %4, 0
  %spec.select80 = select i1 %i.aa, i32 9, i32 %spec.store.select
  %spec.select81 = select i1 %i.ab, i32 7, i32 %spec.select80
  %storemerge86 = select i1 %i.ac, i32 4, i32 %spec.select81 ; 2 uses
  store i32 %storemerge86, ptr %i.c, align 4, !tbaa !23
  %i.ad = or i32 %.3, %3
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = add i32 %1, -123
  %i.ag = icmp ult i32 %i.af, -2                  ; 3 uses
  %spec.select66 = select i1 %i.ag, i32 -1, i32 %.156
  %i.ah = or i1 %i.ag, %i.ae
  br i1 %i.ah, label %.thread.thread89.sink.split, label %.thread

condstore.split69:                                ; preds = %bb.a
  %i.ai = icmp eq i32 %1, 121
  %spec.select67 = select i1 %i.ai, i32 1, i32 -1
  %i.aj = icmp eq i32 %1, 122
  %.459 = select i1 %i.aj, i32 0, i32 %spec.select67 ; 3 uses
  %i.ak = icmp eq i32 %2, 111
  %.5 = select i1 %i.ak, i32 1, i32 -1
  %i.al = icmp eq i32 %2, 112
  %.6 = select i1 %i.al, i32 0, i32 %.5
  %i.am = icmp eq i32 %2, 114
  %.7 = select i1 %i.am, i32 1, i32 %.6
  %i.an = icmp eq i32 %2, 113
  %.8 = select i1 %i.an, i32 0, i32 %.7           ; 4 uses
  %i.ao = and i32 %.8, 1
  %.not62 = icmp eq i32 %i.ao, 0
  %.1 = select i1 %.not62, i32 %3, i32 %4
  %i.ap = call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.aq = icmp sgt i64 %i.ap, %i.n
  %spec.store.select82 = select i1 %i.aq, i32 12, i32 -1
  %i.ar = call i32 @llvm.smax.i32(i32 %.1, i32 1) ; 2 uses
  %i.as = icmp slt i32 %9, %i.ar
  %i.at = icmp slt i32 %7, %i.ar
  %i.au = icmp slt i32 %4, 0
  %spec.select83 = select i1 %i.as, i32 9, i32 %spec.store.select82
  %spec.select84 = select i1 %i.at, i32 7, i32 %spec.select83
  %storemerge = select i1 %i.au, i32 4, i32 %spec.select84 ; 2 uses
  store i32 %storemerge, ptr %i.c, align 4, !tbaa !23
  %14 = icmp slt i32 %.459, 0                     ; 2 uses
  %spec.select71 = select i1 %14, i32 -1, i32 %.459
  %i.av = or i32 %.459, %3
  %i.aw = or i32 %i.av, %.8
  %.not85 = icmp sgt i32 %i.aw, -1
  br i1 %.not85, label %.thread, label %.thread.thread89.sink.split

.thread:                                          ; preds = %condstore.split, %condstore.split69
  %.pr.pr = phi i32 [ %storemerge86, %condstore.split ], [ %storemerge, %condstore.split69 ]
  %.560.ph.ph = phi i32 [ %spec.select66, %condstore.split ], [ %spec.select71, %condstore.split69 ] ; 3 uses
  %.9.ph.ph = phi i32 [ %.3, %condstore.split ], [ %.8, %condstore.split69 ] ; 3 uses
  %i.ax = icmp sgt i32 %.pr.pr, -1
  br i1 %i.ax, label %.thread.thread89, label %bb.b

.thread.thread89.sink.split:                      ; preds = %condstore.split69, %condstore.split
  %.3.sink = phi i32 [ %.3, %condstore.split ], [ %.8, %condstore.split69 ]
  %.sink = phi i1 [ %i.ag, %condstore.split ], [ %14, %condstore.split69 ]
  %i.ay = icmp slt i32 %.3.sink, 0
  %spec.select64 = select i1 %i.ay, i32 2, i32 3
  %spec.select65 = select i1 %.sink, i32 1, i32 %spec.select64
  store i32 %spec.select65, ptr %i.c, align 4, !tbaa !23
  br label %.thread.thread89

.thread.thread89:                                 ; preds = %.thread.thread89.sink.split, %bb.a, %.thread
  %i.az = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 7) #4 ; 0 uses
  br label %bb.i

bb.b:                                             ; preds = %.thread
  %i.ba = icmp eq i32 %3, 0
  br i1 %i.ba, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bb = call ptr @blas_memory_alloc(i32 noundef 0) #4 ; 4 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add nsw i64 %i.bc, 589824
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %.not63 = icmp eq i32 %.9.ph.ph, 0
  %. = select i1 %.not63, i32 259, i32 19
  %i.bf = shl nsw i32 %.560.ph.ph, 11
  %i.bg = or disjoint i32 %., %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 104
  store ptr null, ptr %i.bh, align 8, !tbaa !24
  %i.bi = mul nsw i64 %i.f, %i.d
  %i.bj = icmp slt i64 %i.bi, 1000
  br i1 %i.bj, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !25
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !25 ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !26
  %i.bp = icmp eq i32 %i.bm, 1
  br i1 %i.bp, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i64 1, ptr %i.bq, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.br = shl nsw i32 %.560.ph.ph, 1
  %i.bs = or i32 %i.br, %.9.ph.ph
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr @syr2k, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bw = call i32 %i.bv(ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef %i.bb, ptr noundef %i.be, i64 noundef 0) #4 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bx = shl nsw i32 %.560.ph.ph, 1
  %i.by = or i32 %i.bx, %.9.ph.ph
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @syr2k, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.cc = call i32 @syrk_thread(i32 noundef %i.bg, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef %i.cb, ptr noundef %i.bb, ptr noundef %i.be, i64 noundef %i.bn) #4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @blas_memory_free(ptr noundef %i.bb) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %.thread.thread89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare i32 @syrk_thread(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dsyr2k_UN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyr2k_UT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyr2k_LN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @dsyr2k_LT(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

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
!16 = !{!12, !10, i64 8}
!17 = !{!12, !10, i64 16}
!18 = !{!12, !11, i64 72}
!19 = !{!12, !11, i64 80}
!20 = !{!12, !11, i64 88}
!21 = !{!12, !10, i64 32}
!22 = !{!12, !10, i64 40}
!23 = !{!5, !5, i64 0}
!24 = !{!12, !10, i64 104}
!25 = !{!4, !4, i64 0}
!26 = !{!12, !11, i64 112}
!27 = !{!10, !10, i64 0}
end_hunk_0
