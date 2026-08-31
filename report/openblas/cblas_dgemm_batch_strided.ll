Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dgemm_batch_strided?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"memory alloc failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"DGEMM_BATCH_STRIDED \00", align 1
@gemm_small_kernel_b0 = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_b0_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_b0_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_b0_tt to i64), i64 0, i64 0], align 16
@gemm_small_kernel = internal unnamed_addr constant [8 x i64] [i64 ptrtoint (ptr @dgemm_small_kernel_nn to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tn to i64), i64 0, i64 0, i64 ptrtoint (ptr @dgemm_small_kernel_nt to i64), i64 ptrtoint (ptr @dgemm_small_kernel_tt to i64), i64 0, i64 0], align 16
@gemm = internal unnamed_addr constant [16 x ptr] [ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nn, ptr @dgemm_tn, ptr @dgemm_nt, ptr @dgemm_tt, ptr @dgemm_nt, ptr @dgemm_tt], align 16

; Function Attrs: nounwind uwtable
define void @cblas_dgemm_batch_strided(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, double noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store double %6, ptr %i.a, align 8, !tbaa !8
  store double %13, ptr %i.b, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = sext i32 %17 to i64                      ; 2 uses
  %i.e = mul nsw i64 %i.d, 136
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #6 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = icmp sgt i32 %17, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader
  %i.i = icmp eq i32 %0, 102                      ; 5 uses
  %i.j = icmp eq i32 %0, 101
  %i.k = sext i32 %4 to i64                       ; 4 uses
  %i.l = sext i32 %3 to i64                       ; 4 uses
  %i.m = sext i32 %5 to i64                       ; 5 uses
  %i.n = sext i32 %11 to i64                      ; 2 uses
  %i.o = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.p = insertelement <2 x i32> %i.o, i32 %15, i64 1
  %i.q = sext i32 %8 to i64
  %i.r = icmp ne i32 %2, 111
  %spec.select193 = sext i1 %i.r to i32
  %i.s = icmp eq i32 %2, 112
  %.5173 = select i1 %i.s, i32 1, i32 %spec.select193
  %i.t = icmp eq i32 %2, 114
  %.6174 = select i1 %i.t, i32 0, i32 %.5173
  %i.u = icmp eq i32 %2, 113
  %.7175 = select i1 %i.u, i32 1, i32 %.6174      ; 4 uses
  %i.v = icmp ne i32 %1, 111
  %.4 = sext i1 %i.v to i32
  %i.w = icmp eq i32 %1, 112
  %.5 = select i1 %i.w, i32 1, i32 %.4
  %i.x = icmp eq i32 %1, 114
  %.6 = select i1 %i.x, i32 0, i32 %.5
  %i.y = icmp eq i32 %1, 113
  %.7 = select i1 %i.y, i32 1, i32 %.6            ; 4 uses
  %i.z = and i32 %.7175, 1
  %.not = icmp eq i32 %i.z, 0                     ; 2 uses
  %.1164 = select i1 %.not, i64 %i.k, i64 %i.m
  %i.aa = and i32 %.7, 1
  %.not189 = icmp eq i32 %i.aa, 0                 ; 2 uses
  %.1162 = select i1 %.not189, i64 %i.m, i64 %i.l
  %i.ab = icmp slt i32 %15, %4
  %spec.store.select1 = select i1 %i.ab, i32 13, i32 -1
  %i.ac = icmp sgt i64 %.1162, %i.q
  %spec.store.select4 = select i1 %i.ac, i32 10, i32 %spec.store.select1
  %i.ad = icmp sgt i64 %.1164, %i.n
  %spec.store.select6 = select i1 %i.ad, i32 8, i32 %spec.store.select4
  %i.ae = icmp slt i32 %5, 0                      ; 2 uses
  %spec.store.select8 = select i1 %i.ae, i32 5, i32 %spec.store.select6
  %i.af = icmp slt i32 %3, 0                      ; 2 uses
  %spec.store.select10 = select i1 %i.af, i32 4, i32 %spec.store.select8
  %i.ag = icmp slt i32 %4, 0                      ; 2 uses
  %spec.store.select12 = select i1 %i.ag, i32 3, i32 %spec.store.select10
  %i.ah = icmp slt i32 %.7, 0                     ; 2 uses
  %spec.store.select14 = select i1 %i.ah, i32 2, i32 %spec.store.select12
  %i.ai = icmp slt i32 %.7175, 0                  ; 2 uses
  %spec.store.select16 = select i1 %i.ai, i32 1, i32 %spec.store.select14
  %.0163 = select i1 %.not189, i64 %i.l, i64 %i.m
  %.0161 = select i1 %.not, i64 %i.m, i64 %i.k
  %i.aj = icmp sgt i32 %3, 0
  %spec.store.select = select i1 %i.aj, i32 13, i32 -1
  %i.ak = icmp sgt i64 %.0161, 0
  %spec.store.select3 = select i1 %i.ak, i32 10, i32 %spec.store.select
  %i.al = icmp sgt i64 %.0163, 0
  %spec.store.select5 = select i1 %i.al, i32 8, i32 %spec.store.select3
  %spec.store.select7 = select i1 %i.ae, i32 5, i32 %spec.store.select5
  %spec.store.select9 = select i1 %i.ag, i32 4, i32 %spec.store.select7
  %spec.store.select11 = select i1 %i.af, i32 3, i32 %spec.store.select9
  %spec.store.select13 = select i1 %i.ai, i32 2, i32 %spec.store.select11
  %spec.store.select15 = select i1 %i.ah, i32 1, i32 %spec.store.select13
  %i.am = fcmp oeq double %13, 0.000000e+00
  %i.an = sext i32 %9 to i64                      ; 2 uses
  %i.ao = sext i32 %12 to i64                     ; 2 uses
  %i.ap = sext i32 %16 to i64
  %wide.trip.count = zext nneg i32 %17 to i64
  %i.aq = sitofp i32 %5 to double
  %. = select i1 %i.i, i64 %i.an, i64 %i.ao
  %.218 = select i1 %i.i, ptr %7, ptr %10
  %.219 = select i1 %i.i, i64 %i.ao, i64 %i.an
  %.220 = select i1 %i.i, ptr %10, ptr %7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #5
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.sroa.0.0192 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.m ] ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = phi i32 [ %spec.store.select15, %bb.c ], [ %spec.store.select16, %bb.d ] ; 2 uses
  %.0184 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %.0183 = phi i64 [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.0181 = phi i64 [ 0, %bb.c ], [ %i.n, %bb.d ]
  %.8176 = phi i32 [ %.7, %bb.c ], [ %.7175, %bb.d ]
  %.8 = phi i32 [ %.7175, %bb.c ], [ %.7, %bb.d ]
  %i.as = phi <2 x i32> [ zeroinitializer, %bb.c ], [ %i.p, %bb.d ]
  %i.at = icmp sgt i32 %i.ar, -1
  br i1 %i.at, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.au = phi i32 [ %i.ar, %bb.e ], [ 0, %bb.d ]
  store i32 %i.au, ptr %i.c, align 4
  %i.av = call i32 @xerbla_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, i32 noundef 21) #5 ; 0 uses
  call void @free(ptr noundef %i.f) #5
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.aw = icmp eq i64 %.0184, 0
  %i.ax = icmp eq i64 %.0183, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = sitofp i64 %.0184 to double
  %i.az = sitofp i64 %.0183 to double
  %i.ba = fmul nnan double %i.ay, %i.az
  %i.bb = fmul double %i.ba, %i.aq
  %i.bc = fcmp ugt double %i.bb, 1.000000e+06
  %i.bd = shl nsw i32 %.8, 2
  %i.be = or i32 %i.bd, %.8176
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  br i1 %i.bc, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel_b0, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds [8 x i8], ptr @gemm_small_kernel, i64 %i.bf
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds [8 x i8], ptr @gemm, i64 %i.bf
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.0178 = phi i32 [ 196611, %bb.i ], [ 65539, %bb.j ], [ 3, %bb.k ]
  %.0160 = phi ptr [ null, %bb.i ], [ null, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bh, %bb.i ], [ %i.bj, %bb.j ], [ %.sroa.0.0192, %bb.k ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %i.f, i64 %indvars.iv ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 %.0184, ptr %i.bn, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i64 %.0183, ptr %i.bo, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  store i64 %i.m, ptr %i.bp, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store i64 %.0181, ptr %i.bq, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bs = sext <2 x i32> %i.as to <2 x i64>
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.a, ptr %i.bt, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.b, ptr %i.bu, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bw = mul nsw i64 %indvars.iv, %.
  %i.bx = getelementptr inbounds [8 x i8], ptr %.218, i64 %i.bw
  store ptr %i.bx, ptr %i.bm, align 8, !tbaa !21
  %i.by = mul nsw i64 %indvars.iv, %.219
  %i.bz = getelementptr inbounds [8 x i8], ptr %.220, i64 %i.by
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !22
  %i.ca = mul nsw i64 %indvars.iv, %i.ap
  %i.cb = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  store i32 %.0178, ptr %i.cd, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 120 ; 2 uses
  store ptr %.0160, ptr %i.ce, align 8, !tbaa !25
  %.not188 = icmp eq ptr %.0160, null
  br i1 %.not188, label %18, label %bb.m

18:                                               ; preds = %bb.l
  %19 = inttoptr i64 %.sroa.0.1 to ptr
  store ptr %19, ptr %i.ce, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %18, %bb.f
  %.sroa.0.2 = phi i64 [ %.sroa.0.0192, %bb.f ], [ %.sroa.0.1, %bb.l ], [ %.sroa.0.1, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.m
  %i.cf = call i32 @dgemm_batch_thread(ptr noundef nonnull %i.f, i64 noundef %i.d) #5 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  call void @free(ptr noundef %i.f) #5
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @openblas_warning(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @dgemm_batch_thread(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @dgemm_small_kernel_b0_nn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_tn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_nt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_b0_tt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_nn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_tn(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_nt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_small_kernel_tt(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, double noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_nn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_tn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_nt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @dgemm_tt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !11, i64 48}
!15 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !13, i64 104, !11, i64 112, !13, i64 120, !5, i64 128}
!16 = !{!15, !11, i64 56}
!17 = !{!15, !11, i64 64}
!18 = !{!15, !11, i64 72}
!19 = !{!15, !13, i64 32}
!20 = !{!15, !13, i64 40}
!21 = !{!15, !13, i64 0}
!22 = !{!15, !13, i64 8}
!23 = !{!15, !13, i64 16}
!24 = !{!15, !5, i64 128}
!25 = !{!15, !13, i64 120}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
end_hunk_0
