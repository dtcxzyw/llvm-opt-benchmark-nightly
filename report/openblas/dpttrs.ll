Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpttrs?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DPTTRS\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @dpttrs_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %narrow = xor i32 %i.c, -1
  %i.d = sext i32 %narrow to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %4, i64 %i.d
  store i32 0, ptr %6, align 4, !tbaa !9
  %i.f = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %5, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %i.k = icmp slt i32 %i.j, %spec.select
  br i1 %i.k, label %.thread.a, label %bb.d

.thread.a:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -6, %bb.c ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 6, %bb.c ]
  store i32 %.sink, ptr %6, align 4, !tbaa !9
  store i32 %.neg, ptr %i.a, align 4, !tbaa !9
  %i.l = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.f, 0
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.h, label %bb.f [
    i32 0, label %.loopexit
    i32 1, label %.thread68
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #4
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1) ; 3 uses
  %.pre = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %.not58 = icmp slt i32 %i.o, %.pre
  br i1 %.not58, label %.lr.ph.preheader, label %.thread68

.thread68:                                        ; preds = %bb.e, %bb.f
  tail call void @dptts2_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #4
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.p = zext nneg i32 %i.o to i64
  %i.q = sext i32 %i.c to i64
  %i.r = zext nneg i32 %.pre to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !9
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %reass.sub = sub i32 %i.s, %i.t
  %i.u = add i32 %reass.sub, 1
  %i.v = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.o)
  store i32 %i.v, ptr %i.b, align 4, !tbaa !9
  %i.w = mul nsw i64 %indvars.iv, %i.q
  %i.x = getelementptr [8 x i8], ptr %i.e, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 8
  call void @dptts2_(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %i.y, ptr noundef nonnull %5) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.p ; 2 uses
  %.not63 = icmp samesign ugt i64 %indvars.iv.next, %i.r
  br i1 %.not63, label %.loopexit, label %.lr.ph, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph, %.thread68, %bb.e, %bb.d, %.thread.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dptts2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

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
!8 = distinct !{!8, !10}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
