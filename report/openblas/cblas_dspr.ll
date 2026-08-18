inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSPR  \00", align 1
@spr = internal unnamed_addr constant [2 x ptr] [ptr @dspr_U, ptr @dspr_L], align 16
@spr_thread = internal unnamed_addr constant [2 x ptr] [ptr @dspr_thread_U, ptr @dspr_thread_L], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dspr(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !8
  switch i32 %0, label %.thread92 [
    i32 102, label %.thread
    i32 101, label %bb.b
  ]

.thread:                                          ; preds = %bb.a
  %i.b = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.b to i32
  %.not = icmp eq i32 %1, 122
  %.180 = select i1 %.not, i32 1, i32 %spec.select
  %i.c = icmp eq i32 %5, 0
  %spec.store.select = select i1 %i.c, i32 5, i32 -1
  %i.d = icmp slt i32 %2, 0
  %spec.store.select6 = select i1 %i.d, i32 2, i32 %spec.store.select
  %i.e = add i32 %1, -123
  %i.f = icmp ult i32 %i.e, -2
  br i1 %i.f, label %.thread113, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 121
  %spec.select89 = select i1 %i.g, i32 1, i32 -1
  %i.h = icmp eq i32 %1, 122
  %.4 = select i1 %i.h, i32 0, i32 %spec.select89 ; 2 uses
  %i.i = icmp eq i32 %5, 0
  %spec.store.select1 = select i1 %i.i, i32 5, i32 -1
  %i.j = icmp slt i32 %2, 0
  %spec.store.select7 = select i1 %i.j, i32 2, i32 %spec.store.select1
  %i.k = icmp slt i32 %.4, 0
  br i1 %i.k, label %.thread113, label %bb.c

.thread113:                                       ; preds = %bb.b, %.thread
  store i32 1, ptr %i.a, align 4
  br label %.thread92

bb.c:                                             ; preds = %.thread, %bb.b
  %storemerge = phi i32 [ %spec.store.select7, %bb.b ], [ %spec.store.select6, %.thread ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.b ], [ %.180, %.thread ] ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4
  %i.l = icmp sgt i32 %storemerge, -1
  br i1 %i.l, label %.thread92, label %bb.d

.thread92:                                        ; preds = %.thread113, %bb.a, %bb.c
  %i.m = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %2, 0
  %i.o = fcmp oeq double %3, 0.000000e+00
  %or.cond90 = or i1 %i.n, %i.o
  br i1 %or.cond90, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %5, 1
  %i.q = icmp slt i32 %2, 100
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %.5, 0
  %i.s = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader94

.preheader94:                                     ; preds = %bb.f
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader94
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.f
  br i1 %i.s, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %.preheader
  %wide.trip.count106 = zext nneg i32 %2 to i64
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %.lr.ph100._crit_edge
  %indvars.iv103 = phi i64 [ 0, %.lr.ph100.preheader ], [ %i.w, %.lr.ph100._crit_edge ] ; 2 uses
  %.08198 = phi ptr [ %6, %.lr.ph100.preheader ], [ %i.z, %.lr.ph100._crit_edge ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv103
  %i.u = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.v = fcmp une double %i.u, 0.000000e+00
  %i.w = add nuw nsw i64 %indvars.iv103, 1        ; 4 uses
  br i1 %i.v, label %bb.g, label %.lr.ph100._crit_edge

bb.g:                                             ; preds = %.lr.ph100
  %i.x = fmul double %3, %i.u
  %i.y = tail call i32 @daxpy_k(i64 noundef %i.w, i64 noundef 0, i64 noundef 0, double noundef %i.x, ptr noundef nonnull %4, i64 noundef 1, ptr noundef %.08198, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  br label %.lr.ph100._crit_edge

.lr.ph100._crit_edge:                             ; preds = %.lr.ph100, %bb.g
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.08198, i64 %i.w
  %exitcond107.not = icmp eq i64 %i.w, %wide.trip.count106
  br i1 %exitcond107.not, label %.loopexit, label %.lr.ph100, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph._crit_edge ] ; 3 uses
  %.18296 = phi ptr [ %6, %.lr.ph.preheader ], [ %i.ag, %.lr.ph._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9 ; 2 uses
  %i.ac = fcmp une double %i.ab, 0.000000e+00
  %i.ad = sub nuw nsw i64 %wide.trip.count, %indvars.iv ; 2 uses
  br i1 %i.ac, label %bb.h, label %.lr.ph._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.ae = fmul double %3, %i.ab
  %i.af = tail call i32 @daxpy_k(i64 noundef %i.ad, i64 noundef 0, i64 noundef 0, double noundef %i.ae, ptr noundef nonnull %i.aa, i64 noundef 1, ptr noundef %.18296, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.h
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.18296, i64 %i.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

bb.i:                                             ; preds = %bb.e
  %i.ah = icmp slt i32 %5, 0
  %i.ai = add nsw i32 %2, -1
  %i.aj = mul nsw i32 %5, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %.083.idx = select i1 %i.ah, i64 %i.al, i64 0
  %.083 = getelementptr inbounds [8 x i8], ptr %4, i64 %.083.idx ; 2 uses
  %i.am = tail call ptr @blas_memory_alloc(i32 noundef 1) #4 ; 3 uses
  %i.an = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !14
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %num_cpu_avail.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !14
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ap, %bb.j ], [ 1, %bb.i ]  ; 2 uses
  %i.aq = icmp slt i32 %2, 50
  %i.ar = icmp slt i32 %2, 500
  %i.as = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 2)
  %i.at = select i1 %i.aq, i32 1, i32 %i.as
  %spec.store.select8 = select i1 %i.ar, i32 %i.at, i32 %.0.i ; 2 uses
  %i.au = icmp eq i32 %spec.store.select8, 1
  %i.av = sext i32 %.5 to i64                     ; 2 uses
  %i.aw = sext i32 %2 to i64                      ; 2 uses
  %i.ax = sext i32 %5 to i64                      ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %num_cpu_avail.exit
  %i.ay = getelementptr inbounds [8 x i8], ptr @spr, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = tail call i32 %i.az(i64 noundef %i.aw, double noundef %3, ptr noundef %.083, i64 noundef %i.ax, ptr noundef %6, ptr noundef %i.am) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %num_cpu_avail.exit
  %i.bb = getelementptr inbounds [8 x i8], ptr @spr_thread, i64 %i.av
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bd = tail call i32 %i.bc(i64 noundef %i.aw, double noundef %3, ptr noundef %.083, i64 noundef %i.ax, ptr noundef %6, ptr noundef %i.am, i32 noundef %spec.store.select8) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @blas_memory_free(ptr noundef %i.am) #4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph._crit_edge, %.lr.ph100._crit_edge, %.preheader94, %.preheader, %bb.d, %bb.m, %.thread92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @daxpy_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

declare i32 @dspr_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i32 @dspr_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i32 @dspr_thread_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @dspr_thread_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
