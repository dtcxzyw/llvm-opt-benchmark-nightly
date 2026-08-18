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
define void @dspr_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9      ; 11 uses
  %i.d = load double, ptr %2, align 8, !tbaa !10  ; 5 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !9      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = icmp sgt i8 %i.b, 96
  %i.g = add nsw i8 %i.b, -32
  %spec.select = select i1 %i.f, i8 %i.g, i8 %i.b ; 2 uses
  %i.h = icmp ne i8 %spec.select, 85              ; 2 uses
  %spec.store.select = sext i1 %i.h to i32
  %i.i = icmp ne i8 %spec.select, 76              ; 2 uses
  %spec.store.select6 = select i1 %i.i, i32 %spec.store.select, i32 1 ; 2 uses
  %i.j = icmp eq i32 %i.e, 0
  %spec.store.select1 = select i1 %i.j, i32 5, i32 0
  %i.k = icmp slt i32 %i.c, 0
  %spec.store.select8 = select i1 %i.k, i32 2, i32 %spec.store.select1
  %i.l = and i1 %i.i, %i.h
  %spec.store.select9 = select i1 %i.l, i32 1, i32 %spec.store.select8 ; 2 uses
  store i32 %spec.store.select9, ptr %i.a, align 4
  %.not = icmp eq i32 %spec.store.select9, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #3 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.c, 0
  %i.o = fcmp oeq double %i.d, 0.000000e+00
  %or.cond87 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond87, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %i.e, 1
  %i.q = icmp slt i32 %i.c, 100
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %spec.store.select6, 0
  %i.s = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader88

.preheader88:                                     ; preds = %bb.e
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader88
  %6 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.e
  br i1 %i.s, label %.lr.ph94.preheader, label %.loopexit

.lr.ph94.preheader:                               ; preds = %.preheader
  %wide.trip.count100 = zext nneg i32 %i.c to i64
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94._crit_edge
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %i.w, %.lr.ph94._crit_edge ] ; 2 uses
  %.07892 = phi ptr [ %5, %.lr.ph94.preheader ], [ %i.z, %.lr.ph94._crit_edge ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv97
  %i.u = load double, ptr %i.t, align 8, !tbaa !10 ; 2 uses
  %i.v = fcmp une double %i.u, 0.000000e+00
  %i.w = add nuw nsw i64 %indvars.iv97, 1         ; 4 uses
  br i1 %i.v, label %bb.f, label %.lr.ph94._crit_edge

bb.f:                                             ; preds = %.lr.ph94
  %i.x = fmul double %i.d, %i.u
  %i.y = tail call i32 @daxpy_k(i64 noundef %i.w, i64 noundef 0, i64 noundef 0, double noundef %i.x, ptr noundef nonnull %3, i64 noundef 1, ptr noundef %.07892, i64 noundef 1, ptr noundef null, i64 noundef 0) #3 ; 0 uses
  br label %.lr.ph94._crit_edge

.lr.ph94._crit_edge:                              ; preds = %.lr.ph94, %bb.f
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.07892, i64 %i.w
  %exitcond101.not = icmp eq i64 %i.w, %wide.trip.count100
  br i1 %exitcond101.not, label %.loopexit, label %.lr.ph94, !llvm.loop !12

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph._crit_edge ] ; 3 uses
  %.17990 = phi ptr [ %5, %.lr.ph.preheader ], [ %i.ag, %.lr.ph._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %i.ac = fcmp une double %i.ab, 0.000000e+00
  %i.ad = sub nsw i64 %6, %indvars.iv             ; 2 uses
  br i1 %i.ac, label %bb.g, label %.lr.ph._crit_edge

bb.g:                                             ; preds = %.lr.ph
  %i.ae = fmul double %i.d, %i.ab
  %i.af = tail call i32 @daxpy_k(i64 noundef %i.ad, i64 noundef 0, i64 noundef 0, double noundef %i.ae, ptr noundef nonnull %i.aa, i64 noundef 1, ptr noundef %.17990, i64 noundef 1, ptr noundef null, i64 noundef 0) #3 ; 0 uses
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %i.ag = getelementptr inbounds [8 x i8], ptr %.17990, i64 %i.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !14

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp slt i32 %i.e, 0
  %i.ai = add nsw i32 %i.c, -1
  %i.aj = mul nsw i32 %i.e, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %.080.idx = select i1 %i.ah, i64 %i.al, i64 0
  %.080 = getelementptr inbounds [8 x i8], ptr %3, i64 %.080.idx ; 2 uses
  %i.am = tail call ptr @blas_memory_alloc(i32 noundef 1) #3 ; 3 uses
  %i.an = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %num_cpu_avail.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ap, %bb.i ], [ 1, %bb.h ]
  %i.aq = icmp slt i32 %i.c, 50
  %spec.store.select3 = select i1 %i.aq, i32 1, i32 %.0.i ; 2 uses
  %i.ar = icmp sgt i32 %spec.store.select3, 2
  %i.as = icmp slt i32 %i.c, 500
  %or.cond5 = select i1 %i.ar, i1 %i.as, i1 false
  %spec.store.select7 = select i1 %or.cond5, i32 2, i32 %spec.store.select3 ; 2 uses
  %i.at = icmp eq i32 %spec.store.select7, 1
  %i.au = sext i32 %spec.store.select6 to i64     ; 2 uses
  %i.av = sext i32 %i.c to i64                    ; 2 uses
  %i.aw = sext i32 %i.e to i64                    ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %num_cpu_avail.exit
  %i.ax = getelementptr inbounds [8 x i8], ptr @spr, i64 %i.au
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = tail call i32 %i.ay(i64 noundef %i.av, double noundef %i.d, ptr noundef %.080, i64 noundef %i.aw, ptr noundef %5, ptr noundef %i.am) #3 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %num_cpu_avail.exit
  %i.ba = getelementptr inbounds [8 x i8], ptr @spr_thread, i64 %i.au
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.bc = tail call i32 %i.bb(i64 noundef %i.av, double noundef %i.d, ptr noundef %.080, i64 noundef %i.aw, ptr noundef %5, ptr noundef %i.am, i32 noundef %spec.store.select7) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @blas_memory_free(ptr noundef %i.am) #3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph._crit_edge, %.lr.ph94._crit_edge, %.preheader88, %.preheader, %bb.c, %bb.l, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
