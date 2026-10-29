Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/lapacke_dlarfb_work?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"LAPACKE_dlarfb_work\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1011, 1) i32 @LAPACKE_dlarfb_work(i32 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %14, i32 noundef %15) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = alloca i32, align 4                      ; 2 uses
  %i.j = alloca i32, align 4                      ; 2 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !8
  store i8 %2, ptr %i.b, align 1, !tbaa !8
  store i8 %3, ptr %i.c, align 1, !tbaa !8
  store i8 %4, ptr %i.d, align 1, !tbaa !8
  store i32 %5, ptr %i.e, align 4, !tbaa !9
  store i32 %6, ptr %i.f, align 4, !tbaa !9
  store i32 %7, ptr %i.g, align 4, !tbaa !9
  store i32 %9, ptr %i.h, align 4, !tbaa !9
  store i32 %11, ptr %i.i, align 4, !tbaa !9
  store i32 %13, ptr %i.j, align 4, !tbaa !9
  store i32 %15, ptr %i.k, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #7
  switch i32 %0, label %bb.t [
    i32 102, label %bb.b
    i32 101, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @dlarfb_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %8, ptr noundef nonnull %i.h, ptr noundef %10, ptr noundef nonnull %i.i, ptr noundef %12, ptr noundef nonnull %i.j, ptr noundef %14, ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.o = tail call i32 @LAPACKE_lsame(i8 noundef signext %1, i8 noundef signext 108) #8
  %i.p = tail call i32 @LAPACKE_lsame(i8 noundef signext %4, i8 noundef signext 99) #8 ; 2 uses
  %i.q = tail call i32 @LAPACKE_lsame(i8 noundef signext %3, i8 noundef signext 102) #8 ; 2 uses
  %i.r = icmp ne i32 %i.p, 0                      ; 7 uses
  %i.s = icmp ne i32 %i.o, 0                      ; 4 uses
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.thread88, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not96 = xor i1 %i.r, true                     ; 4 uses
  %or.cond3 = select i1 %.not96, i1 true, i1 %i.s
  br i1 %or.cond3, label %bb.e, label %.thread88

bb.e:                                             ; preds = %bb.d
  %i.t = select i1 %i.r, i32 1, i32 %7            ; 3 uses
  %or.cond5 = select i1 %.not96, i1 %i.s, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond7 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond7, label %.thread88, label %bb.g

.thread88:                                        ; preds = %bb.d, %bb.c, %bb.f
  %i.u = phi i32 [ %i.t, %bb.f ], [ %6, %bb.d ], [ %5, %bb.c ]
  %16 = phi i1 [ %.not96, %bb.f ], [ false, %bb.d ], [ false, %bb.c ]
  %i.v = select i1 %i.r, i32 %7, i32 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread88
  %17 = phi i1 [ %16, %.thread88 ], [ true, %bb.e ], [ %.not96, %bb.f ]
  %i.w = phi i32 [ %i.u, %.thread88 ], [ %i.t, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %i.x = phi i32 [ %i.v, %.thread88 ], [ %5, %bb.e ], [ %6, %bb.f ] ; 4 uses
  %i.y = icmp ne i32 %i.q, 0
  %or.cond9 = and i1 %i.r, %i.y
  %i.z = or i32 %i.q, %i.p
  %.not = icmp eq i32 %i.z, 0
  %i.aa = or i1 %or.cond9, %.not
  %i.ab = select i1 %i.aa, i8 108, i8 117
  %i.ac = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 3 uses
  store i32 %i.ac, ptr %i.l, align 4, !tbaa !9
  %i.ad = tail call i32 @llvm.smax.i32(i32 %7, i32 1) ; 3 uses
  store i32 %i.ad, ptr %i.m, align 4, !tbaa !9
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1) ; 3 uses
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !9
  %i.af = icmp slt i32 %13, %6
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -14) #7
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp slt i32 %11, %7
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -12) #7
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp slt i32 %9, %i.x
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -10) #7
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %18 = icmp sgt i32 %7, %i.w
  %or.cond83 = and i1 %i.r, %18
  %or.cond95.not = icmp sgt i32 %7, %i.x
  %or.cond86 = and i1 %17, %or.cond95.not
  %or.cond94 = or i1 %or.cond83, %or.cond86
  br i1 %or.cond94, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -8) #7
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = mul i64 %i.aj, %i.al
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #9 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread90, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = mul i64 %i.aq, %i.ap
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #9 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread92, label %bb.q

.thread92:                                        ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.an) #7
  br label %.thread90

bb.q:                                             ; preds = %bb.p
  %i.au = zext nneg i32 %i.ac to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #9 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @LAPACKE_dtz_trans(i32 noundef 101, i8 noundef signext %3, i8 noundef signext %i.ab, i8 noundef signext 117, i32 noundef %i.w, i32 noundef %i.x, ptr noundef %8, i32 noundef %9, ptr noundef nonnull %i.an, i32 noundef %i.ae) #7
  tail call void @LAPACKE_dge_trans(i32 noundef 101, i32 noundef %7, i32 noundef %7, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %i.as, i32 noundef %i.ad) #7
  tail call void @LAPACKE_dge_trans(i32 noundef 101, i32 noundef %5, i32 noundef %6, ptr noundef %12, i32 noundef %13, ptr noundef nonnull %i.az, i32 noundef %i.ac) #7
  call void @dlarfb_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.an, ptr noundef nonnull %i.n, ptr noundef nonnull %i.as, ptr noundef nonnull %i.m, ptr noundef nonnull %i.az, ptr noundef nonnull %i.l, ptr noundef %14, ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !9
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !9
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !9
  call void @LAPACKE_dge_trans(i32 noundef 102, i32 noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.az, i32 noundef %i.bd, ptr noundef %12, i32 noundef %13) #7
  call void @free(ptr noundef nonnull %i.az) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi i32 [ 0, %bb.r ], [ -1011, %bb.q ]
  call void @free(ptr noundef nonnull %i.as) #7
  call void @free(ptr noundef nonnull %i.an) #7
  br i1 %i.ba, label %.thread90, label %bb.u

.thread90:                                        ; preds = %bb.o, %.thread92, %bb.s
  call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -1011) #7
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  tail call void @LAPACKE_xerbla(ptr noundef nonnull @.str, i32 noundef -1) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %.thread90, %bb.t, %bb.b, %bb.n, %bb.l, %bb.j, %bb.h
  %.076 = phi i32 [ -8, %bb.n ], [ -14, %bb.h ], [ -12, %bb.j ], [ -10, %bb.l ], [ -1, %bb.t ], [ 0, %bb.b ], [ -1011, %.thread90 ], [ %.0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  ret i32 %.076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dlarfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @LAPACKE_lsame(i8 noundef signext, i8 noundef signext) local_unnamed_addr #3

declare void @LAPACKE_xerbla(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @LAPACKE_dtz_trans(i32 noundef, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @LAPACKE_dge_trans(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
