Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dspgvd?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DSPGVD\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dspgvd_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = load i32, ptr %8, align 4, !tbaa !8      ; 3 uses
  %narrow = xor i32 %i.c, -1
  %i.d = sext i32 %narrow to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %7, i64 %i.d ; 2 uses
  %i.f = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #3 ; 3 uses
  %i.g = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #3
  %i.h = load i32, ptr %10, align 4, !tbaa !8
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %12, align 4, !tbaa !8
  %i.k = icmp eq i32 %i.j, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ true, %bb.a ], [ %i.k, %bb.b ]  ; 3 uses
  store i32 0, ptr %13, align 4, !tbaa !8
  %i.m = load i32, ptr %0, align 4, !tbaa !8
  %i.n = add i32 %i.m, -4
  %or.cond151 = icmp ult i32 %i.n, -3
  br i1 %or.cond151, label %.thread160.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.2) #3
  %.not139 = icmp eq i32 %i.o, 0
  br i1 %.not139, label %.thread160.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not140 = icmp eq i32 %i.g, 0                  ; 3 uses
  br i1 %.not140, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.3) #3
  %.not141 = icmp eq i32 %i.p, 0
  br i1 %.not141, label %.thread160.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load i32, ptr %3, align 4, !tbaa !8      ; 7 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread160.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %8, align 4, !tbaa !8      ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp samesign ult i32 %i.s, %i.q
  %or.cond152 = and i1 %.not, %i.u
  %or.cond168 = select i1 %i.t, i1 true, i1 %or.cond152
  br i1 %or.cond168, label %.thread160.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pr = load i32, ptr %13, align 4, !tbaa !8     ; 2 uses
  %i.v = icmp eq i32 %.pr, 0
  br i1 %i.v, label %bb.k, label %.thread160

bb.k:                                             ; preds = %bb.j
  %i.w = icmp samesign ult i32 %i.q, 2
  br i1 %i.w, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not142 = icmp eq i32 %i.f, 0
  br i1 %.not142, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = mul nuw nsw i32 %i.q, 5
  %i.y = add nuw nsw i32 %i.x, 3
  %i.z = shl nuw i32 %i.q, 1
  %reass.add = add i32 %i.z, 6
  %reass.mul = mul i32 %reass.add, %i.q
  %i.aa = or disjoint i32 %reass.mul, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = shl nuw i32 %i.q, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %.0124 = phi i32 [ %i.ab, %bb.n ], [ %i.aa, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.n ], [ %i.y, %bb.m ], [ 1, %bb.k ] ; 3 uses
  %i.ac = sitofp i32 %.0124 to double             ; 3 uses
  store double %i.ac, ptr %9, align 8, !tbaa !9
  store i32 %.0, ptr %11, align 4, !tbaa !8
  %i.ad = load i32, ptr %10, align 4, !tbaa !8
  %i.ae = icmp sge i32 %i.ad, %.0124
  %or.cond = select i1 %i.ae, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.p, label %.thread160.sink.split

bb.p:                                             ; preds = %bb.o
  %i.af = load i32, ptr %12, align 4, !tbaa !8
  %i.ag = icmp sge i32 %i.af, %.0
  %or.cond3 = select i1 %i.ag, i1 true, i1 %i.l
  br i1 %or.cond3, label %.thread, label %.thread160.sink.split

.thread:                                          ; preds = %bb.p
  %.pr156.pr = load i32, ptr %13, align 4, !tbaa !8 ; 2 uses
  %.not143 = icmp eq i32 %.pr156.pr, 0
  br i1 %.not143, label %bb.q, label %.thread160

.thread160.sink.split:                            ; preds = %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %bb.e, %bb.c
  %.sink = phi i32 [ -1, %bb.c ], [ -3, %bb.g ], [ -4, %bb.h ], [ -2, %bb.e ], [ -9, %bb.i ], [ -11, %bb.o ], [ -13, %bb.p ] ; 2 uses
  store i32 %.sink, ptr %13, align 4, !tbaa !8
  br label %.thread160

.thread160:                                       ; preds = %.thread160.sink.split, %bb.j, %.thread
  %i.ah = phi i32 [ %.pr156.pr, %.thread ], [ %.pr, %bb.j ], [ %.sink, %.thread160.sink.split ]
  %i.ai = sub nsw i32 0, %i.ah
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !8
  %i.aj = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #3 ; 0 uses
  br label %bb.y

bb.q:                                             ; preds = %.thread
  br i1 %i.l, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load i32, ptr %3, align 4, !tbaa !8
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @dpptrf_(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %13) #3
  %i.am = load i32, ptr %13, align 4, !tbaa !8    ; 2 uses
  %.not144 = icmp eq i32 %i.am, 0
  br i1 %.not144, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load i32, ptr %3, align 4, !tbaa !8
  %i.ao = add nsw i32 %i.an, %i.am
  store i32 %i.ao, ptr %13, align 4, !tbaa !8
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  tail call void @dspgst_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %13) #3
  tail call void @dspevd_(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #3
  %i.ap = load double, ptr %9, align 8, !tbaa !9  ; 2 uses
  %.inv = fcmp ole double %i.ap, %i.ac
  %. = select i1 %.inv, double %i.ac, double %i.ap
  %i.aq = fptosi double %. to i32
  %14 = uitofp nneg i32 %.0 to double             ; 2 uses
  %i.ar = load i32, ptr %11, align 4, !tbaa !8
  %15 = sitofp i32 %i.ar to double                ; 2 uses
  %16 = fcmp oge double %14, %15
  %17 = select i1 %16, double %14, double %15
  %18 = fptosi double %17 to i32
  %.not145 = icmp eq i32 %i.f, 0
  br i1 %.not145, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = load i32, ptr %3, align 4, !tbaa !8
  %i.at = load i32, ptr %13, align 4, !tbaa !8    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = add nsw i32 %i.at, -1
  %spec.select = select i1 %i.au, i32 %i.av, i32 %i.as ; 4 uses
  %i.aw = load i32, ptr %0, align 4, !tbaa !8
  switch i32 %i.aw, label %.loopexit [
    i32 1, label %bb.w
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.153 = select i1 %.not140, i8 84, i8 78
  store i8 %.153, ptr %i.b, align 1, !tbaa !11
  %.not150172 = icmp slt i32 %spec.select, 1
  br i1 %.not150172, label %.loopexit, label %.lr.ph174.preheader

.lr.ph174.preheader:                              ; preds = %bb.w
  %i.ax = sext i32 %i.c to i64
  %i.ay = zext nneg i32 %spec.select to i64
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %.lr.ph174
  %indvars.iv177 = phi i64 [ 1, %.lr.ph174.preheader ], [ %indvars.iv.next178, %.lr.ph174 ] ; 3 uses
  %i.az = mul nsw i64 %indvars.iv177, %i.ax
  %i.ba = getelementptr [8 x i8], ptr %i.e, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  call void @dtpsv_(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.bb, ptr noundef nonnull @c__1) #3
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %.not150.not = icmp samesign ult i64 %indvars.iv177, %i.ay
  br i1 %.not150.not, label %.lr.ph174, label %.loopexit, !llvm.loop !12

bb.x:                                             ; preds = %bb.v
  %.154 = select i1 %.not140, i8 78, i8 84
  store i8 %.154, ptr %i.b, align 1, !tbaa !11
  %.not147170 = icmp slt i32 %spec.select, 1
  br i1 %.not147170, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.bc = sext i32 %i.c to i64
  %i.bd = zext nneg i32 %spec.select to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.be = mul nsw i64 %indvars.iv, %i.bc
  %i.bf = getelementptr [8 x i8], ptr %i.e, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  call void @dtpmv_(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.bg, ptr noundef nonnull @c__1) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not147.not = icmp samesign ult i64 %indvars.iv, %i.bd
  br i1 %.not147.not, label %.lr.ph, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph174, %bb.x, %bb.w, %bb.v, %bb.u
  %i.bh = sitofp i32 %i.aq to double
  store double %i.bh, ptr %9, align 8, !tbaa !9
  store i32 %18, ptr %11, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.q, %.loopexit, %bb.t, %.thread160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dpptrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspgst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspevd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtpsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtpmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
end_hunk_0
