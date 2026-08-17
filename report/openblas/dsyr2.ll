inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DSYR2 \00", align 1
@syr2 = internal unnamed_addr constant [2 x ptr] [ptr @dsyr2_U, ptr @dsyr2_L], align 16
@syr2_thread = internal unnamed_addr constant [2 x ptr] [ptr @dsyr2_thread_U, ptr @dsyr2_thread_L], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @dsyr2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !9      ; 12 uses
  %i.d = load double, ptr %2, align 8, !tbaa !10  ; 7 uses
  %i.e = load i32, ptr %8, align 4, !tbaa !9      ; 4 uses
  %i.f = load i32, ptr %4, align 4, !tbaa !9      ; 5 uses
  %i.g = load i32, ptr %6, align 4, !tbaa !9      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.h = icmp sgt i8 %i.b, 96
  %i.i = add nsw i8 %i.b, -32
  %spec.select = select i1 %i.h, i8 %i.i, i8 %i.b ; 2 uses
  %i.j = icmp ne i8 %spec.select, 85              ; 2 uses
  %spec.store.select = sext i1 %i.j to i32
  %i.k = icmp ne i8 %spec.select, 76              ; 2 uses
  %spec.store.select7 = select i1 %i.k, i32 %spec.store.select, i32 1 ; 2 uses
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.m = icmp slt i32 %i.e, %i.l
  %spec.store.select9 = select i1 %i.m, i32 9, i32 0
  %i.n = icmp eq i32 %i.g, 0
  %spec.store.select10 = select i1 %i.n, i32 7, i32 %spec.store.select9
  %i.o = icmp eq i32 %i.f, 0
  %spec.store.select11 = select i1 %i.o, i32 5, i32 %spec.store.select10
  %i.p = icmp slt i32 %i.c, 0
  %spec.store.select12 = select i1 %i.p, i32 2, i32 %spec.store.select11
  %i.q = and i1 %i.k, %i.j
  %spec.store.select13 = select i1 %i.q, i32 1, i32 %spec.store.select12 ; 2 uses
  store i32 %spec.store.select13, ptr %i.a, align 4
  %.not = icmp eq i32 %spec.store.select13, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.c, 0
  %i.t = fcmp oeq double %i.d, 0.000000e+00
  %or.cond118 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond118, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %i.f, 1
  %i.v = icmp eq i32 %i.g, 1
  %or.cond = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp slt i32 %i.c, 100
  %or.cond3 = select i1 %or.cond, i1 %i.w, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not117 = icmp eq i32 %spec.store.select7, 0
  %i.x = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %.not117, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.e
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader119
  %i.y = sext i32 %i.e to i64
  %9 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.g

.preheader:                                       ; preds = %bb.e
  br i1 %i.x, label %.lr.ph125, label %.loopexit

.lr.ph125:                                        ; preds = %.preheader
  %i.z = sext i32 %i.e to i64
  %wide.trip.count131 = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph125, %bb.f
  %indvars.iv128 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next129, %bb.f ] ; 3 uses
  %.0109123 = phi ptr [ %7, %.lr.ph125 ], [ %i.ai, %bb.f ] ; 3 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv128
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10
  %i.ac = fmul double %i.d, %i.ab
  %i.ad = tail call i32 @daxpy_k(i64 noundef %indvars.iv.next129, i64 noundef 0, i64 noundef 0, double noundef %i.ac, ptr noundef %5, i64 noundef 1, ptr noundef %.0109123, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv128
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = fmul double %i.d, %i.af
  %i.ah = tail call i32 @daxpy_k(i64 noundef %indvars.iv.next129, i64 noundef 0, i64 noundef 0, double noundef %i.ag, ptr noundef %3, i64 noundef 1, ptr noundef %.0109123, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0109123, i64 %i.z
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %bb.f, !llvm.loop !12

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.1110121 = phi ptr [ %7, %.lr.ph ], [ %i.at, %bb.g ] ; 3 uses
  %i.aj = sub nsw i64 %9, %indvars.iv             ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = fmul double %i.d, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ao = tail call i32 @daxpy_k(i64 noundef %i.aj, i64 noundef 0, i64 noundef 0, double noundef %i.am, ptr noundef %i.an, i64 noundef 1, ptr noundef %.1110121, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.ap = load double, ptr %i.an, align 8, !tbaa !10
  %i.aq = fmul double %i.d, %i.ap
  %i.ar = tail call i32 @daxpy_k(i64 noundef %i.aj, i64 noundef 0, i64 noundef 0, double noundef %i.aq, ptr noundef nonnull %i.ak, i64 noundef 1, ptr noundef %.1110121, i64 noundef 1, ptr noundef null, i64 noundef 0) #4 ; 0 uses
  %i.as = getelementptr [8 x i8], ptr %.1110121, i64 %i.y
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %bb.d
  %i.au = icmp slt i32 %i.f, 0
  %i.av = add nsw i32 %i.c, -1                    ; 2 uses
  %i.aw = mul nsw i32 %i.f, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %.0107.idx = select i1 %i.au, i64 %i.ay, i64 0
  %.0107 = getelementptr inbounds [8 x i8], ptr %3, i64 %.0107.idx ; 2 uses
  %i.az = icmp slt i32 %i.g, 0
  %i.ba = mul nsw i32 %i.g, %i.av
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %.0108.idx = select i1 %i.az, i64 %i.bc, i64 0
  %.0108 = getelementptr inbounds [8 x i8], ptr %5, i64 %.0108.idx ; 2 uses
  %i.bd = tail call ptr @blas_memory_alloc(i32 noundef 1) #4 ; 3 uses
  %i.be = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %num_cpu_avail.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !8
  br label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.bg, %bb.i ], [ 1, %bb.h ]
  %i.bh = icmp slt i32 %i.c, 50
  %spec.store.select4 = select i1 %i.bh, i32 1, i32 %.0.i ; 2 uses
  %i.bi = icmp sgt i32 %spec.store.select4, 2
  %i.bj = icmp slt i32 %i.c, 500
  %or.cond6 = select i1 %i.bi, i1 %i.bj, i1 false
  %spec.store.select8 = select i1 %or.cond6, i32 2, i32 %spec.store.select4 ; 2 uses
  %i.bk = icmp eq i32 %spec.store.select8, 1
  %i.bl = sext i32 %spec.store.select7 to i64     ; 2 uses
  %i.bm = sext i32 %i.c to i64                    ; 2 uses
  %i.bn = sext i32 %i.f to i64                    ; 2 uses
  %i.bo = sext i32 %i.g to i64                    ; 2 uses
  %i.bp = sext i32 %i.e to i64                    ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %num_cpu_avail.exit
  %i.bq = getelementptr inbounds [8 x i8], ptr @syr2, i64 %i.bl
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = tail call i32 %i.br(i64 noundef %i.bm, double noundef %i.d, ptr noundef %.0107, i64 noundef %i.bn, ptr noundef %.0108, i64 noundef %i.bo, ptr noundef %7, i64 noundef %i.bp, ptr noundef %i.bd) #4 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %num_cpu_avail.exit
  %i.bt = getelementptr inbounds [8 x i8], ptr @syr2_thread, i64 %i.bl
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15
  %i.bv = tail call i32 %i.bu(i64 noundef %i.bm, double noundef %i.d, ptr noundef %.0107, i64 noundef %i.bn, ptr noundef %.0108, i64 noundef %i.bo, ptr noundef %7, i64 noundef %i.bp, ptr noundef %i.bd, i32 noundef %spec.store.select8) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @blas_memory_free(ptr noundef %i.bd) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %.preheader119, %.preheader, %bb.c, %bb.l, %bb.b
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

declare i32 @dsyr2_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dsyr2_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dsyr2_thread_U(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dsyr2_thread_L(i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
