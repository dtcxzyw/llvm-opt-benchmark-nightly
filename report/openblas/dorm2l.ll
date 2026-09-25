Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dorm2l?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DORM2L\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dorm2l_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef captures(none) initializes((0, 4)) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.d = load i32, ptr %6, align 4, !tbaa !9      ; 2 uses
  %narrow = xor i32 %i.d, -1
  %i.e = sext i32 %narrow to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %5, i64 %i.e ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %7, i64 -8 ; 2 uses
  store i32 0, ptr %11, align 4, !tbaa !9
  %i.h = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.i = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4 ; 2 uses
  %i.j = icmp ne i32 %i.h, 0                      ; 4 uses
  %. = select i1 %i.j, ptr %2, ptr %3
  %.0 = load i32, ptr %., align 4, !tbaa !9       ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not106 = icmp eq i32 %i.i, 0
  br i1 %.not106, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %.not107 = icmp eq i32 %i.l, 0
  br i1 %.not107, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i32, ptr %2, align 4, !tbaa !9      ; 4 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %3, align 4, !tbaa !9      ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %4, align 4, !tbaa !9      ; 7 uses
  %i.r = icmp slt i32 %i.q, 0
  %i.s = icmp sgt i32 %i.q, %.0
  %or.cond109 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond109, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %6, align 4, !tbaa !9
  %i.u = tail call i32 @llvm.smax.i32(i32 %.0, i32 1)
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.thread.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %9, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1)
  %i.x = icmp slt i32 %i.w, %spec.select
  br i1 %i.x, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pr = load i32, ptr %11, align 4, !tbaa !9     ; 2 uses
  %.not108 = icmp eq i32 %.pr, 0
  br i1 %.not108, label %bb.k, label %.thread

.thread.sink.split:                               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -4, %bb.f ], [ -7, %bb.h ], [ -5, %bb.g ], [ -3, %bb.e ], [ -10, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %11, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j
  %i.y = phi i32 [ %.pr, %bb.j ], [ %.sink, %.thread.sink.split ]
  %i.z = sub nsw i32 0, %i.y
  store i32 %i.z, ptr %i.a, align 4, !tbaa !9
  %i.aa = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i32 %i.m, 0
  %i.ac = icmp eq i32 %i.o, 0
  %or.cond = or i1 %i.ab, %i.ac
  %i.ad = icmp eq i32 %i.q, 0
  %or.cond126 = or i1 %or.cond, %i.ad
  br i1 %or.cond126, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp ne i32 %i.i, 0
  %or.cond110 = xor i1 %i.j, %i.ae                ; 5 uses
  %i.af = zext nneg i32 %i.q to i64
  %i.ag = select i1 %or.cond110, i64 %i.af, i64 1 ; 2 uses
  %i.ah = select i1 %or.cond110, i64 -1, i64 1    ; 2 uses
  %i.ai = sext i32 %i.d to i64                    ; 2 uses
  %i.aj = zext nneg i32 %i.q to i64
  %12 = select i1 %or.cond110, i64 1, i64 %i.aj   ; 4 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.l
  store i32 %i.m, ptr %i.b, align 4, !tbaa !9
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.l
  store i32 %i.o, ptr %i.c, align 4, !tbaa !9
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.ak = phi i32 [ %i.q, %.lr.ph.split.us.preheader ], [ %i.ba, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv119 = phi i64 [ %i.ag, %.lr.ph.split.us.preheader ], [ %indvars.iv.next120, %.lr.ph.split.us ] ; 4 uses
  %i.al = load i32, ptr %2, align 4, !tbaa !9
  %i.am = trunc nsw i64 %indvars.iv119 to i32     ; 2 uses
  %i.an = add i32 %i.al, %i.am
  %i.ao = sub i32 %i.an, %i.ak
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !9
  %i.ap = mul nsw i64 %indvars.iv119, %i.ai       ; 2 uses
  %i.aq = add i32 %.0, %i.am
  %i.ar = trunc nsw i64 %i.ap to i32
  %i.as = add i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = sub i32 %i.as, %i.ak
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %i.ap
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv119
  call void @dlarf_(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.ay, ptr noundef nonnull @c__1, ptr noundef nonnull %i.az, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #4
  %i.ba = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.bb = sub i32 %i.as, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bc
  store double %i.aw, ptr %i.bd, align 8, !tbaa !11
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, %i.ah ; 3 uses
  %13 = icmp sge i64 %indvars.iv.next120, %12
  %i.be = icmp sle i64 %indvars.iv.next120, %12
  %.in.us = select i1 %or.cond110, i1 %13, i1 %i.be
  br i1 %.in.us, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %i.bf = phi i32 [ %i.q, %.lr.ph.split.preheader ], [ %i.bv, %.lr.ph.split ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 4 uses
  %i.bg = load i32, ptr %3, align 4, !tbaa !9
  %i.bh = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bi = add i32 %i.bg, %i.bh
  %i.bj = sub i32 %i.bi, %i.bf
  store i32 %i.bj, ptr %i.c, align 4, !tbaa !9
  %i.bk = mul nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.bl = add i32 %.0, %i.bh
  %i.bm = trunc nsw i64 %i.bk to i32
  %i.bn = add i32 %i.bl, %i.bm                    ; 2 uses
  %i.bo = sub i32 %i.bn, %i.bf
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !11
  store double 1.000000e+00, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr [8 x i8], ptr %i.f, i64 %i.bk
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  call void @dlarf_(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.bt, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bu, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #4
  %i.bv = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.bw = sub i32 %i.bn, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bx
  store double %i.br, ptr %i.by, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ah ; 3 uses
  %14 = icmp sge i64 %indvars.iv.next, %12
  %i.bz = icmp sle i64 %indvars.iv.next, %12
  %.in = select i1 %or.cond110, i1 %14, i1 %i.bz
  br i1 %.in, label %.lr.ph.split, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!8 = distinct !{!8, !12}
!9 = !{!5, !5, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
