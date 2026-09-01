Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaror?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DLAROR\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b9 = internal global double 0.000000e+00, align 8
@c_b10 = internal global double 1.000000e+00, align 8
@c__3 = internal global i32 3, align 4
@c__1 = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"N\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaror_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef initializes((0, 4)) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 8 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = load i32, ptr %5, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.d, -1
  %i.e = sext i32 %narrow to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %4, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %7, i64 -8 ; 7 uses
  store i32 0, ptr %8, align 4, !tbaa !8
  %i.h = load i32, ptr %3, align 4, !tbaa !8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %.not = icmp ne i32 %i.l, 0                     ; 6 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %.not163 = icmp eq i32 %i.m, 0
  br i1 %.not163, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %.not164 = icmp eq i32 %i.n, 0
  br i1 %.not164, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %.not165 = icmp eq i32 %i.o, 0
  br i1 %.not165, label %.thread184.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.ph = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.e ] ; 3 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread184.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %3, align 4, !tbaa !8      ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  %.not166 = icmp ne i32 %i.r, %i.p
  %or.cond177.not = and i1 %.ph, %.not166
  %or.cond187 = or i1 %i.s, %or.cond177.not
  br i1 %or.cond187, label %.thread184.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i32, ptr %5, align 4, !tbaa !8
  %i.u = icmp slt i32 %i.t, %i.p
  br i1 %i.u, label %.thread184.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pr = load i32, ptr %8, align 4, !tbaa !8      ; 2 uses
  %.not167 = icmp eq i32 %.pr, 0
  br i1 %.not167, label %bb.k, label %.thread184

.thread184.sink.split:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i32 [ -1, %bb.f ], [ -3, %bb.g ], [ -4, %bb.h ], [ -6, %bb.i ] ; 2 uses
  store i32 %.sink, ptr %8, align 4, !tbaa !8
  br label %.thread184

.thread184:                                       ; preds = %.thread184.sink.split, %bb.j
  %i.v = phi i32 [ %.pr, %bb.j ], [ %.sink, %.thread184.sink.split ]
  %i.w = sub nsw i32 0, %i.v
  store i32 %i.w, ptr %i.a, align 4, !tbaa !8
  br label %.loopexit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.x = select i1 %.not, i32 %i.p, i32 %i.r      ; 10 uses
  %i.y = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.5) #5
  %.not168 = icmp eq i32 %i.y, 0
  br i1 %.not168, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @c_b9, ptr noundef nonnull @c_b10, ptr noundef %4, ptr noundef nonnull %5) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not169189 = icmp eq i32 %i.x, 0
  br i1 %.not169189, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %bb.m
  store i32 2, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge200

._crit_edge:                                      ; preds = %bb.m
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %i.aa, i1 false), !tbaa !9
  store i32 2, ptr %i.c, align 4, !tbaa !8
  %.not170196 = icmp eq i32 %i.x, 1
  br i1 %.not170196, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %._crit_edge
  %or.cond = or i1 %.not, %.ph
  %i.ab = shl nuw i32 %i.x, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8      ; 4 uses
  %i.af = zext nneg i32 %i.x to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph199, %bb.r
  %storemerge197 = phi i32 [ 2, %.lr.ph199 ], [ %i.bq, %bb.r ] ; 2 uses
  %i.ag = sub i32 %i.x, %storemerge197
  %i.ah = add i32 %i.ag, 1                        ; 4 uses
  %.not173191.not = icmp sgt i32 %storemerge197, 0
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  br i1 %.not173191.not, label %.lr.ph194, label %._crit_edge195

.lr.ph194:                                        ; preds = %bb.n, %.lr.ph194
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph194 ], [ %i.ai, %bb.n ] ; 3 uses
  %i.aj = call double @dlarnd_(ptr noundef nonnull @c__3, ptr noundef %6) #5
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  store double %i.aj, ptr %i.ak, align 8, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not173.not = icmp slt i64 %indvars.iv, %i.af
  br i1 %.not173.not, label %.lr.ph194, label %._crit_edge195, !llvm.loop !11

._crit_edge195:                                   ; preds = %.lr.ph194, %bb.n
  %i.al = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ai ; 7 uses
  %i.am = call double @dnrm2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1) #5 ; 3 uses
  %i.an = load double, ptr %i.al, align 8, !tbaa !9 ; 4 uses
  %i.ao = fcmp ult double %i.an, 0.000000e+00
  %i.ap = fcmp oge double %i.am, 0.000000e+00
  %.neg174 = fneg double %i.am
  %i.aq = xor i1 %i.ap, %i.ao
  %i.ar = select i1 %i.aq, double %i.am, double %.neg174 ; 2 uses
  %i.as = fneg double %i.an
  store double %i.as, ptr %i.b, align 8, !tbaa !9
  %i.at = fcmp ugt double %i.an, 0.000000e+00
  %i.au = load double, ptr @c_b10, align 8, !tbaa !9 ; 3 uses
  %i.av = fcmp oge double %i.au, 0.000000e+00
  %.neg175 = fneg double %i.au
  %i.aw = xor i1 %i.av, %i.at
  %i.ax = select i1 %i.aw, double %i.au, double %.neg175
  %i.ay = add nsw i32 %i.ah, %i.x
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.az
  store double %i.ax, ptr %i.ba, align 8, !tbaa !9
  %i.bb = fadd double %i.ar, %i.an                ; 2 uses
  %i.bc = fmul double %i.ar, %i.bb                ; 2 uses
  %i.bd = call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp olt double %i.bd, f0x3BC79CA10C924223
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge195
  store i32 1, ptr %8, align 4, !tbaa !8
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %._crit_edge195
  %i.bf = fdiv double 1.000000e+00, %i.bc         ; 2 uses
  store double %i.bb, ptr %i.al, align 8, !tbaa !9
  br i1 %or.cond, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bg = add nsw i32 %i.ah, %i.d
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bh ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull @c_b10, ptr noundef %i.bi, ptr noundef nonnull %5, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b9, ptr noundef %i.ae, ptr noundef nonnull @c__1) #5
  %i.bj = fneg double %i.bf
  store double %i.bj, ptr %i.b, align 8, !tbaa !9
  call void @dger_(ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1, ptr noundef %i.ae, ptr noundef nonnull @c__1, ptr noundef %i.bi, ptr noundef nonnull %5) #5
  br i1 %.not, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.p, %bb.q
  %i.bk = mul nsw i32 %i.ah, %i.d
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [8 x i8], ptr %i.f, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b10, ptr noundef %i.bn, ptr noundef nonnull %5, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b9, ptr noundef %i.ae, ptr noundef nonnull @c__1) #5
  %i.bo = fneg double %i.bf
  store double %i.bo, ptr %i.b, align 8, !tbaa !9
  call void @dger_(ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.ae, ptr noundef nonnull @c__1, ptr noundef nonnull %i.al, ptr noundef nonnull @c__1, ptr noundef %i.bn, ptr noundef nonnull %5) #5
  br label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.bq, ptr %i.c, align 4, !tbaa !8
  %.not170.not = icmp slt i32 %i.bp, %i.x
  br i1 %.not170.not, label %bb.n, label %._crit_edge200, !llvm.loop !13

._crit_edge200:                                   ; preds = %bb.r, %._crit_edge.thread, %._crit_edge
  %i.br = call double @dlarnd_(ptr noundef nonnull @c__3, ptr noundef %6) #5 ; 2 uses
  store double %i.br, ptr %i.b, align 8, !tbaa !9
  %i.bs = fcmp ult double %i.br, 0.000000e+00
  %i.bt = load double, ptr @c_b10, align 8, !tbaa !9 ; 3 uses
  %i.bu = fcmp oge double %i.bt, 0.000000e+00
  %.neg = fneg double %i.bt
  %i.bv = xor i1 %i.bu, %i.bs
  %i.bw = select i1 %i.bv, double %i.bt, double %.neg
  %i.bx = shl nuw nsw i32 %i.x, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.by
  store double %i.bw, ptr %i.bz, align 8, !tbaa !9
  %or.cond5 = or i1 %.not, %.ph
  br i1 %or.cond5, label %bb.s, label %.loopexit188.thread

bb.s:                                             ; preds = %._crit_edge200
  %i.ca = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %.not171201 = icmp slt i32 %i.ca, 1
  br i1 %.not171201, label %.loopexit188, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.s
  %i.cb = zext nneg i32 %i.x to i64
  %i.cc = sext i32 %i.d to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cb
  %invariant.gep222 = getelementptr [8 x i8], ptr %i.f, i64 %i.cc
  %i.cd = zext nneg i32 %i.ca to i64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %indvars.iv211 = phi i64 [ 1, %.lr.ph204.preheader ], [ %indvars.iv.next212, %.lr.ph204 ] ; 4 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv211
  %gep223 = getelementptr [8 x i8], ptr %invariant.gep222, i64 %indvars.iv211
  call void @dscal_(ptr noundef nonnull %3, ptr noundef nonnull %gep, ptr noundef %gep223, ptr noundef nonnull %5) #5
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %.not171.not = icmp samesign ult i64 %indvars.iv211, %i.cd
  br i1 %.not171.not, label %.lr.ph204, label %.loopexit188, !llvm.loop !14

.loopexit188:                                     ; preds = %.lr.ph204, %bb.s
  br i1 %.not, label %.loopexit, label %.loopexit188.thread

.loopexit188.thread:                              ; preds = %._crit_edge200, %.loopexit188
  %i.ce = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %.not172205 = icmp slt i32 %i.ce, 1
  br i1 %.not172205, label %.loopexit, label %.lr.ph208.preheader

.lr.ph208.preheader:                              ; preds = %.loopexit188.thread
  %i.cf = zext nneg i32 %i.r to i64
  %i.cg = sext i32 %i.d to i64
  %invariant.gep224 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cf
  %i.ch = zext nneg i32 %i.ce to i64
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.lr.ph208
  %indvars.iv214 = phi i64 [ 1, %.lr.ph208.preheader ], [ %indvars.iv.next215, %.lr.ph208 ] ; 4 uses
  %gep225 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep224, i64 %indvars.iv214
  %i.ci = mul nsw i64 %indvars.iv214, %i.cg
  %i.cj = getelementptr [8 x i8], ptr %i.f, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %gep225, ptr noundef %i.ck, ptr noundef nonnull @c__1) #5
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1
  %.not172.not = icmp samesign ult i64 %indvars.iv214, %i.ch
  br i1 %.not172.not, label %.lr.ph208, label %.loopexit, !llvm.loop !15

.loopexit.sink.split:                             ; preds = %.thread184, %bb.o
  %.sink227 = phi ptr [ %8, %bb.o ], [ %i.a, %.thread184 ]
  %i.cl = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %.sink227, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph208, %.loopexit.sink.split, %.loopexit188.thread, %.loopexit188, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlarnd_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dnrm2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

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
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
end_hunk_0
