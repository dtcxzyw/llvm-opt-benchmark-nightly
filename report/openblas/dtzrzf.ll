Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtzrzf?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGERQF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DTZRZF\00", align 1
@c__3 = internal global i32 3, align 4
@c__2 = internal global i32 2, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"Backward\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: nounwind uwtable
define void @dtzrzf_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.i = load i32, ptr %3, align 4, !tbaa !9      ; 3 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %4, i64 -8
  store i32 0, ptr %7, align 4, !tbaa !9
  %i.m = load i32, ptr %6, align 4, !tbaa !9      ; 3 uses
  %i.n = icmp eq i32 %i.m, -1                     ; 2 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !9      ; 6 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.thread175.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.o
  br i1 %i.r, label %.thread175.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %3, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.o, i32 1)
  %i.t = icmp slt i32 %i.s, %spec.select
  br i1 %i.t, label %.thread175.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %i.o, 0
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i32 %i.o, %i.q
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5 ; 2 uses
  %i.x = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.w
  %spec.select167 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.z = sitofp i32 %i.y to double
  %.pre = load i32, ptr %6, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.pre202204 = phi i32 [ %i.x, %bb.f ], [ %i.o, %bb.e ], [ 0, %bb.d ] ; 6 uses
  %i.aa = phi i32 [ %.pre, %bb.f ], [ %i.m, %bb.e ], [ %i.m, %bb.d ]
  %.0142 = phi i32 [ %i.w, %bb.f ], [ undef, %bb.e ], [ undef, %bb.d ] ; 5 uses
  %.0140 = phi i32 [ %spec.select167, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ]
  %.0 = phi double [ %i.z, %bb.f ], [ 1.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ] ; 2 uses
  store double %.0, ptr %5, align 8, !tbaa !11
  %i.ab = icmp sge i32 %i.aa, %.0140
  %or.cond = select i1 %i.ab, i1 true, i1 %i.n
  br i1 %or.cond, label %.thread, label %.thread175.sink.split

.thread:                                          ; preds = %bb.g
  %.pr171.pr = load i32, ptr %7, align 4, !tbaa !9 ; 2 uses
  %.not = icmp eq i32 %.pr171.pr, 0
  br i1 %.not, label %bb.h, label %.thread175

.thread175.sink.split:                            ; preds = %bb.g, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.c ], [ -7, %bb.g ] ; 2 uses
  store i32 %.sink, ptr %7, align 4, !tbaa !9
  br label %.thread175

.thread175:                                       ; preds = %.thread175.sink.split, %.thread
  %i.ac = phi i32 [ %.pr171.pr, %.thread ], [ %.sink, %.thread175.sink.split ]
  %i.ad = sub nsw i32 0, %i.ac
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !9
  %i.ae = call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %.thread
  %i.af = icmp eq i32 %.pre202204, 0
  %or.cond213 = select i1 %i.n, i1 true, i1 %i.af
  br i1 %or.cond213, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %1, align 4, !tbaa !9
  %i.ah = icmp eq i32 %.pre202204, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not166195 = icmp slt i32 %.pre202204, 1
  br i1 %.not166195, label %.loopexit, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %bb.j
  %i.ai = zext nneg i32 %.pre202204 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %i.aj, i1 false), !tbaa !11
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp sgt i32 %.0142, 1
  %i.al = icmp slt i32 %.0142, %.pre202204
  %or.cond168 = and i1 %i.ak, %i.al
  br i1 %or.cond168, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = tail call i32 @ilaenv_(ptr noundef nonnull @c__3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0) ; 3 uses
  %i.ao = load i32, ptr %0, align 4, !tbaa !9     ; 6 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  store i32 %i.ao, ptr %i.h, align 4, !tbaa !9
  %i.aq = mul nsw i32 %i.ao, %.0142
  %i.ar = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.n, label %.thread180

bb.n:                                             ; preds = %bb.m
  %i.at = sdiv i32 %i.ar, %i.ao
  %i.au = tail call i32 @ilaenv_(ptr noundef nonnull @c__2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 6, i32 noundef 1) #5
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.au, i32 2)
  %.pre202.pre = load i32, ptr %0, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pre202 = phi i32 [ %.pre202.pre, %bb.n ], [ %.pre202204, %bb.k ] ; 2 uses
  %.0144 = phi i32 [ %i.av, %bb.n ], [ 2, %bb.k ]
  %.2 = phi i32 [ %i.at, %bb.n ], [ %.0142, %bb.k ] ; 2 uses
  %.0141 = phi i32 [ %i.an, %bb.n ], [ 1, %bb.k ]
  %.not162 = icmp slt i32 %.2, %.0144
  br i1 %.not162, label %bb.t, label %.thread180

.thread180:                                       ; preds = %bb.o, %bb.m
  %8 = phi i32 [ %.pre202, %bb.o ], [ %i.ao, %bb.m ] ; 8 uses
  %.0141186 = phi i32 [ %.0141, %bb.o ], [ %i.an, %bb.m ] ; 2 uses
  %.2185 = phi i32 [ %.2, %bb.o ], [ %.0142, %bb.m ] ; 7 uses
  %i.aw = icmp slt i32 %.2185, %8
  %i.ax = icmp slt i32 %.0141186, %8
  %or.cond169 = and i1 %i.aw, %i.ax
  br i1 %or.cond169, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.thread180
  %i.ay = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %i.az = xor i32 %.0141186, -1
  %i.ba = add nsw i32 %8, %i.az
  %.fr = freeze i32 %i.ba                         ; 2 uses
  %i.bb = srem i32 %.fr, %.2185
  %i.bc = sub nsw i32 %.fr, %i.bb                 ; 2 uses
  %i.bd = add nsw i32 %i.bc, %.2185
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 %i.bd)
  %10 = sub nsw i32 %8, %9                        ; 2 uses
  %11 = add nuw i32 %10, 1                        ; 2 uses
  %i.be = sub nsw i32 0, %.2185
  store i32 %i.be, ptr %i.b, align 4, !tbaa !9
  %i.bf = add i32 %11, %i.bc                      ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, %10
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.bh = add nuw nsw i32 %8, 1
  %.not163.not = icmp slt i32 %8, %i.ay
  %. = select i1 %.not163.not, i32 %i.bh, i32 %i.ay
  %i.bi = mul nsw i32 %., %i.i
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.s
  %.1146193 = phi i32 [ %i.bf, %.lr.ph ], [ %i.co, %bb.s ] ; 10 uses
  %i.bj = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.bk = sub nsw i32 %i.bj, %.1146193
  %i.bl = add nsw i32 %i.bk, 1
  %i.bm = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.2185)
  store i32 %i.bm, ptr %i.f, align 4, !tbaa !9
  %i.bn = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %reass.sub = sub i32 %i.bn, %.1146193
  %i.bo = add i32 %reass.sub, 1
  store i32 %i.bo, ptr %i.c, align 4, !tbaa !9
  %i.bp = sub nsw i32 %i.bn, %i.bj
  store i32 %i.bp, ptr %i.d, align 4, !tbaa !9
  %i.bq = mul nsw i32 %.1146193, %i.i             ; 2 uses
  %i.br = add nsw i32 %i.bq, %.1146193
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bs
  %i.bu = sext i32 %.1146193 to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bu ; 2 uses
  call void @dlatrz_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.bt, ptr noundef nonnull %3, ptr noundef nonnull %i.bv, ptr noundef nonnull %5) #5
  %i.bw = icmp sgt i32 %.1146193, 1
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = load i32, ptr %1, align 4, !tbaa !9
  %i.by = load i32, ptr %0, align 4, !tbaa !9
  %i.bz = sub nsw i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.c, align 4, !tbaa !9
  %i.ca = add nsw i32 %.1146193, %i.bi
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cb ; 2 uses
  call void @dlarzt_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef %i.cc, ptr noundef nonnull %3, ptr noundef nonnull %i.bv, ptr noundef nonnull %5, ptr noundef nonnull %i.h) #5
  %i.cd = add nsw i32 %.1146193, -1
  store i32 %i.cd, ptr %i.c, align 4, !tbaa !9
  %i.ce = load i32, ptr %1, align 4, !tbaa !9     ; 2 uses
  %reass.sub199 = sub i32 %i.ce, %.1146193
  %i.cf = add i32 %reass.sub199, 1
  store i32 %i.cf, ptr %i.d, align 4, !tbaa !9
  %i.cg = load i32, ptr %0, align 4, !tbaa !9
  %i.ch = sub nsw i32 %i.ce, %i.cg
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !9
  %i.ci = sext i32 %i.bq to i64
  %i.cj = getelementptr [8 x i8], ptr %i.k, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !9
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %5, i64 %i.cm
  call void @dlarzb_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef %i.cc, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %i.h, ptr noundef %i.ck, ptr noundef nonnull %3, ptr noundef %i.cn, ptr noundef nonnull %i.h) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.co = sub nsw i32 %.1146193, %.2185           ; 3 uses
  %.not212 = icmp slt i32 %i.co, %11
  br i1 %.not212, label %._crit_edge, label %bb.q, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.s, %bb.p
  %.1146.lcssa = phi i32 [ %i.bf, %bb.p ], [ %i.co, %bb.s ]
  %i.cp = add nsw i32 %.2185, -1
  %i.cq = add i32 %i.cp, %.1146.lcssa
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.o, %.thread180, %._crit_edge
  %storemerge = phi i32 [ %i.cq, %._crit_edge ], [ %8, %.thread180 ], [ %.pre202, %bb.o ], [ %i.ao, %bb.l ] ; 2 uses
  store i32 %storemerge, ptr %i.g, align 4, !tbaa !9
  %i.cr = icmp sgt i32 %storemerge, 0
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = load i32, ptr %1, align 4, !tbaa !9
  %i.ct = load i32, ptr %0, align 4, !tbaa !9
  %i.cu = sub nsw i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.b, align 4, !tbaa !9
  call void @dlatrz_(ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store double %.0, ptr %5, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph198.preheader, %bb.j, %bb.h, %bb.v, %.thread175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlatrz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarzt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarzb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

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
