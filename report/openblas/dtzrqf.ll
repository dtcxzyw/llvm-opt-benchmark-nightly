Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtzrqf?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DTZRQF\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b8 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @dtzrqf_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = load i32, ptr %3, align 4, !tbaa !9      ; 4 uses
  %narrow = xor i32 %i.d, -1
  %i.e = sext i32 %narrow to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %4, i64 -8
  store i32 0, ptr %5, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 9 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 4, !tbaa !9      ; 4 uses
  %i.k = icmp slt i32 %i.j, %i.h
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.m = icmp slt i32 %i.l, %spec.select
  br i1 %i.m, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.c ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.c ]
  store i32 %.sink, ptr %5, align 4, !tbaa !9
  store i32 %.neg, ptr %i.a, align 4, !tbaa !9
  %i.n = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.h, %i.j
  br i1 %i.p, label %.lr.ph101.preheader, label %.lr.ph

.lr.ph101.preheader:                              ; preds = %bb.e
  %i.q = zext nneg i32 %i.h to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.r, i1 false), !tbaa !11
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.h, 1
  %.not94.not = icmp samesign ult i32 %i.h, %i.j
  %. = select i1 %.not94.not, i32 %i.s, i32 %i.j
  %i.t = mul nsw i32 %., %i.d
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 8        ; 2 uses
  %i.x = zext nneg i32 %i.h to i64
  %i.y = sext i32 %i.d to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.h ] ; 9 uses
  %indvars103 = trunc i64 %indvars.iv to i32
  %i.z = load i32, ptr %1, align 4, !tbaa !9
  %i.aa = load i32, ptr %0, align 4, !tbaa !9
  %i.ab = add i32 %i.z, 1
  %i.ac = sub i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !9
  %i.ad = mul nsw i32 %i.d, %indvars103
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  call void @dlarfg_(ptr noundef nonnull %i.a, ptr noundef %i.ag, ptr noundef %gep, ptr noundef nonnull %3, ptr noundef nonnull %i.ah) #5
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  %i.aj = fcmp une double %i.ai, 0.000000e+00
  %i.ak = icmp ne i64 %indvars.iv, 1
  %or.cond = and i1 %i.ak, %i.aj
  br i1 %or.cond, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = add nsw i64 %indvars.iv, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = mul nsw i64 %indvars.iv, %i.y
  %i.am = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32          ; 4 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !9
  %i.ao = getelementptr [8 x i8], ptr %i.f, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8      ; 2 uses
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.ap, ptr noundef nonnull @c__1, ptr noundef nonnull %4, ptr noundef nonnull @c__1) #5
  store i32 %i.an, ptr %i.a, align 4, !tbaa !9
  %i.aq = load i32, ptr %1, align 4, !tbaa !9
  %i.ar = load i32, ptr %0, align 4, !tbaa !9
  %i.as = sub nsw i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.b, align 4, !tbaa !9
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b8, ptr noundef %i.w, ptr noundef nonnull %3, ptr noundef %gep, ptr noundef nonnull %3, ptr noundef nonnull @c_b8, ptr noundef nonnull %4, ptr noundef nonnull @c__1) #5
  store i32 %i.an, ptr %i.a, align 4, !tbaa !9
  %i.at = load double, ptr %i.ah, align 8, !tbaa !11
  %i.au = fneg double %i.at
  store double %i.au, ptr %i.c, align 8, !tbaa !11
  call void @daxpy_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull @c__1, ptr noundef %i.ap, ptr noundef nonnull @c__1) #5
  store i32 %i.an, ptr %i.a, align 4, !tbaa !9
  %i.av = load i32, ptr %1, align 4, !tbaa !9
  %i.aw = load i32, ptr %0, align 4, !tbaa !9
  %i.ax = sub nsw i32 %i.av, %i.aw
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !9
  %i.ay = load double, ptr %i.ah, align 8, !tbaa !11
  %i.az = fneg double %i.ay
  store double %i.az, ptr %i.c, align 8, !tbaa !11
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, ptr noundef nonnull @c__1, ptr noundef %gep, ptr noundef nonnull %3, ptr noundef %i.w, ptr noundef nonnull %3) #5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.am, %bb.g ]
  %i.ba = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ba, label %bb.f, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.h, %.lr.ph101.preheader, %bb.d, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!8 = distinct !{!8, !12}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
