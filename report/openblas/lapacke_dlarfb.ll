Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_dlarfb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"LAPACKE_dlarfb\00", align 1

; Function Attrs: nounwind uwtable
define i32 @LAPACKE_dlarfb(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -103
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LAPACKE_get_nancheck() #6
  %.not = icmp eq i32 %i.b, 0
  %.pre = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #7 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @LAPACKE_lsame(i8 noundef signext %4, i8 noundef signext 99) #7 ; 2 uses
  %i.d = icmp ne i32 %i.c, 0                      ; 4 uses
  %i.e = icmp eq i32 %.pre, 0                     ; 2 uses
  %spec.select = select i1 %i.e, i32 %6, i32 %5
  %i.f = select i1 %i.d, i32 %spec.select, i32 %7 ; 2 uses
  %spec.select99 = select i1 %i.e, i32 %6, i32 %5
  %i.g = select i1 %i.d, i32 %7, i32 %spec.select99 ; 2 uses
  %14 = icmp sle i32 %7, %i.f
  %15 = icmp sle i32 %7, %i.g
  %or.cond98.not = or i1 %i.d, %15
  %or.cond103 = select i1 %14, i1 %or.cond98.not, i1 false
  br i1 %or.cond103, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @LAPACKE_lsame(i8 noundef signext %3, i8 noundef signext 102) #7 ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  %or.cond11 = and i1 %i.d, %i.i
  %i.j = or i32 %i.h, %i.c
  %.not90 = icmp eq i32 %i.j, 0
  %i.k = or i1 %or.cond11, %.not90
  %i.l = select i1 %i.k, i8 108, i8 117
  %i.m = tail call i32 @LAPACKE_dtz_nancheck(i32 noundef %0, i8 noundef signext %3, i8 noundef signext %i.l, i8 noundef signext 117, i32 noundef %i.f, i32 noundef %i.g, ptr noundef %8, i32 noundef %9) #6
  %.not91 = icmp eq i32 %i.m, 0
  br i1 %.not91, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @LAPACKE_dge_nancheck(i32 noundef %0, i32 noundef %7, i32 noundef %7, ptr noundef %10, i32 noundef %11) #6
  %.not92 = icmp eq i32 %i.n, 0
  br i1 %.not92, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @LAPACKE_dge_nancheck(i32 noundef %0, i32 noundef %5, i32 noundef %6, ptr noundef %12, i32 noundef %13) #6
  %.not93 = icmp eq i32 %i.o, 0
  br i1 %.not93, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.f
  %.not94 = icmp eq i32 %.pre, 0
  br i1 %.not94, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.p = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 114) #7
  %.not95 = icmp eq i32 %i.p, 0
  %. = select i1 %.not95, i32 1, i32 %5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.0 = phi i32 [ %6, %._crit_edge ], [ %., %bb.g ] ; 2 uses
  %i.q = sext i32 %.0 to i64
  %i.r = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = mul i64 %i.t, %i.q
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #8 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @LAPACKE_dlarfb_work(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef nonnull %i.v, i32 noundef %.0) #6 ; 2 uses
  tail call void @free(ptr noundef nonnull %i.v) #6
  %i.y = icmp eq i32 %i.x, -1010
  br i1 %i.y, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h, %bb.c, %bb.a
  %.sink = phi i32 [ -8, %bb.c ], [ -1, %bb.a ], [ -1010, %bb.h ], [ -1010, %bb.i ] ; 2 uses
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef %.sink) #6
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.f, %bb.e, %bb.d
  %.088 = phi i32 [ -11, %bb.e ], [ %i.x, %bb.i ], [ -13, %bb.f ], [ -9, %bb.d ], [ %.sink, %.sink.split ]
  ret i32 %.088
}

declare void @LAPACKE_xerbla(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @LAPACKE_get_nancheck() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #2

declare i32 @LAPACKE_dtz_nancheck(i32 noundef, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @LAPACKE_dge_nancheck(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @LAPACKE_dlarfb_work(i32 noundef, i8 noundef signext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }

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
end_hunk_0
