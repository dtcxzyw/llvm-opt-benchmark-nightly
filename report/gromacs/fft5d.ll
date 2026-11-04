Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/fft5d?download=true
inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.fftw_iodim_do_not_use_me = type { i32, i32, i32 }

$__clang_call_terminate = comdat any

@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"FFT5D: Using %dx%d rank grid, rank %d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"FFT5D: N: %d, M: %d, K: %d, P: %dx%d, real2complex: %d, backward: %d, order yz: %d, debug %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lin\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/fft/fft5d.cpp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lout2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lout3\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Running on %d threads\0A\00", align 1
@_ZTISt9exception = external constant ptr
@.str.9 = private unnamed_addr constant [49 x i8] c"FFT5D: Plan s %d rC %d M %d pK %d C %d lsize %d\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_ZL14big_fftw_mutex = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"%d %d: copy in lin\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%d %d: FFT\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
@TMPI_FLOAT = external local_unnamed_addr constant ptr, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"%d %d: transposed\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%d %d: FFT %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%d %d: \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"plan->lin\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"plan->lout\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"plan->lout2\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"plan->lout3\00", align 1
@str = private unnamed_addr constant [55 x i8] c"FFT5D: FATAL: Datasize cannot be zero in any dimension\00", align 1

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 13 uses
  %i.d = alloca [2 x i32], align 4                ; 11 uses
  %i.e = alloca [3 x i32], align 4                ; 11 uses
  %i.f = alloca [3 x i32], align 4                ; 12 uses
  %i.g = alloca [3 x i32], align 4                ; 10 uses
  %i.h = alloca [3 x i32], align 4                ; 9 uses
  %i.i = alloca [3 x i32], align 4                ; 10 uses
  %i.j = alloca [3 x i32], align 4                ; 11 uses
  %i.k = alloca [3 x i32], align 4                ; 9 uses
  %i.l = alloca [3 x i32], align 4                ; 8 uses
  %i.m = alloca [3 x ptr], align 16               ; 9 uses
  %i.n = alloca [3 x ptr], align 16               ; 9 uses
  %i.o = alloca [3 x ptr], align 16               ; 9 uses
  %i.p = alloca [3 x ptr], align 16               ; 9 uses
  %i.q = alloca [3 x i32], align 4                ; 11 uses
  %i.r = alloca [3 x i32], align 4                ; 11 uses
  %11 = alloca [2 x i32], align 4                 ; 8 uses
  %i.s = alloca ptr, align 8                      ; 7 uses
  %i.t = alloca i32, align 4                      ; 24 uses
  %12 = alloca [3 x %struct.fftw_iodim_do_not_use_me], align 16 ; 24 uses
  %i.u = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i32 %4, ptr %i.a, align 4, !tbaa !9
  store i32 %9, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  %i.v = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c) ; 0 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !12
  %i.y = call noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef %i.x, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !9
  store i32 0, ptr %i.d, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not287 = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %.not287, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.af = call noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef %i.ad, ptr noundef nonnull %i.ae) ; 0 uses
  %.pre = load i32, ptr %i.ae, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %i.ab, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i32 [ 0, %bb.f ], [ %.pre, %bb.e ]  ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.al = icmp eq i32 %i.ah, 0
  %i.am = select i1 %i.aj, i1 %i.al, i1 false     ; 2 uses
  %i.an = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not288 = icmp eq ptr %i.an, null
  br i1 %.not288, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.an, ptr noundef nonnull @.str, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.ai, i32 noundef %i.ah) #13 ; 0 uses
  %.pre515 = load ptr, ptr @debug, align 8        ; 2 uses
  %i.as = icmp ne ptr %.pre515, null
  %or.cond13 = select i1 %i.am, i1 %i.as, i1 false
  br i1 %or.cond13, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.c, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9
  %i.aw = lshr i32 %4, 2
  %.lobit = and i32 %i.aw, 1
  %i.ax = lshr i32 %4, 1
  %.lobit289 = and i32 %i.ax, 1
  %i.ay = and i32 %4, 1
  %i.az = lshr i32 %4, 3
  %.lobit290 = and i32 %i.az, 1
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pre515, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %.lobit, i32 noundef %.lobit289, i32 noundef %i.ay, i32 noundef %.lobit290) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %i.bb = icmp eq i32 %0, 0
  %i.bc = icmp eq i32 %1, 0
  %or.cond = or i1 %i.bb, %i.bc
  %i.bd = icmp eq i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.bd
  br i1 %or.cond3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  br i1 %i.am, label %bb.k, label %bb.ba

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ba

bb.l:                                             ; preds = %.thread
  %i.be = and i32 %4, 4
  %.not291 = icmp eq i32 %i.be, 0                 ; 4 uses
  br i1 %.not291, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = and i32 %4, 2
  %.not292 = icmp eq i32 %i.bf, 0
  br i1 %.not292, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = sdiv i32 %0, 2
  %i.bh = add nsw i32 %i.bg, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %4, 1
  %.not293 = icmp eq i32 %i.bi, 0
  br i1 %.not293, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = sdiv i32 %1, 2
  %i.bk = add nsw i32 %i.bj, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bl = sdiv i32 %2, 2
  %i.bm = add nsw i32 %i.bl, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.l
  %.0270 = phi i32 [ %i.bm, %bb.q ], [ %2, %bb.p ], [ %2, %bb.n ], [ %2, %bb.l ] ; 17 uses
  %.0269 = phi i32 [ %1, %bb.q ], [ %i.bk, %bb.p ], [ %1, %bb.n ], [ %1, %bb.l ] ; 19 uses
  %.0268 = phi i32 [ %0, %bb.q ], [ %0, %bb.p ], [ %i.bh, %bb.n ], [ %0, %bb.l ] ; 18 uses
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !9
  %.fr492 = freeze i32 %i.bn                      ; 31 uses
  %i.bo = sext i32 %.fr492 to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 6 uses
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 12 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %.fr = freeze i32 %i.bs                         ; 31 uses
  %i.bt = sext i32 %.fr to i64
  %i.bu = shl nsw i64 %i.bt, 2                    ; 6 uses
  %i.bv = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 12 uses
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 12 uses
  %i.bx = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 12 uses
  %i.by = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 12 uses
  %i.bz = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 12 uses
  %i.ca = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 9 uses
  %i.cb = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 9 uses
  %i.cc = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 9 uses
  %i.cd = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 9 uses
  %i.ce = call noalias ptr @malloc(i64 noundef %i.bp) #19 ; 9 uses
  %i.cf = call noalias ptr @malloc(i64 noundef %i.bu) #19 ; 9 uses
  %i.cg = icmp sgt i32 %.fr492, 0                 ; 2 uses
  br i1 %i.cg, label %.lr.ph.preheader, label %.preheader469

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %.fr492 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr492, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0268, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <8 x i32> poison, i32 %.fr492, i64 0
  %broadcast.splat582 = shufflevector <8 x i32> %broadcast.splatinsert581, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert583 = insertelement <8 x i32> poison, i32 %.0269, i64 0
  %broadcast.splat584 = shufflevector <8 x i32> %broadcast.splatinsert583, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <8 x i32> poison, i32 %.0270, i64 0
  %broadcast.splat586 = shufflevector <8 x i32> %broadcast.splatinsert585, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind587 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next589, %vector.body ] ; 2 uses
  %vec.ind588 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next590, %vector.body ] ; 2 uses
  %i.ch = mul <8 x i32> %broadcast.splat, %vec.ind
  %i.ci = sdiv <8 x i32> %i.ch, %broadcast.splat582
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index
  store <8 x i32> %i.ci, ptr %i.cj, align 4, !tbaa !9
  %i.ck = mul <8 x i32> %broadcast.splat584, %vec.ind587
  %i.cl = sdiv <8 x i32> %i.ck, %broadcast.splat582
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index
  store <8 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !9
  %i.cn = mul <8 x i32> %broadcast.splat586, %vec.ind588
  %i.co = sdiv <8 x i32> %i.cn, %broadcast.splat582
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index
  store <8 x i32> %i.co, ptr %i.cp, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next589 = add <8 x i32> %vec.ind587, splat (i32 8)
  %vec.ind.next590 = add <8 x i32> %vec.ind588, splat (i32 8)
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader469, label %.lr.ph.preheader1209

.lr.ph.preheader1209:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.cr = insertelement <2 x i32> poison, i32 %.fr492, i64 0
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.preheader469:                                    ; preds = %.lr.ph, %middle.block, %bb.r
  %i.ct = icmp sgt i32 %.fr, 0                    ; 2 uses
  br i1 %i.ct, label %.lr.ph475.preheader, label %.preheader468

.lr.ph475.preheader:                              ; preds = %.preheader469
  %wide.trip.count497 = zext nneg i32 %.fr to i64 ; 3 uses
  %min.iters.check592 = icmp ult i32 %.fr, 8
  br i1 %min.iters.check592, label %.lr.ph475.preheader1208, label %vector.ph593

vector.ph593:                                     ; preds = %.lr.ph475.preheader
  %n.vec594 = and i64 %wide.trip.count497, 2147483640 ; 3 uses
  %broadcast.splatinsert595 = insertelement <8 x i32> poison, i32 %.0268, i64 0
  %broadcast.splat596 = shufflevector <8 x i32> %broadcast.splatinsert595, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert597 = insertelement <8 x i32> poison, i32 %.fr, i64 0
  %broadcast.splat598 = shufflevector <8 x i32> %broadcast.splatinsert597, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert599 = insertelement <8 x i32> poison, i32 %.0269, i64 0
  %broadcast.splat600 = shufflevector <8 x i32> %broadcast.splatinsert599, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert601 = insertelement <8 x i32> poison, i32 %.0270, i64 0
  %broadcast.splat602 = shufflevector <8 x i32> %broadcast.splatinsert601, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph593
  %index604 = phi i64 [ 0, %vector.ph593 ], [ %index.next608, %vector.body603 ] ; 4 uses
  %vec.ind605 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next609, %vector.body603 ] ; 2 uses
  %vec.ind606 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next610, %vector.body603 ] ; 2 uses
  %vec.ind607 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next611, %vector.body603 ] ; 2 uses
  %i.cu = mul <8 x i32> %broadcast.splat596, %vec.ind605
  %i.cv = sdiv <8 x i32> %i.cu, %broadcast.splat598
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index604
  store <8 x i32> %i.cv, ptr %i.cw, align 4, !tbaa !9
  %i.cx = mul <8 x i32> %broadcast.splat600, %vec.ind606
  %i.cy = sdiv <8 x i32> %i.cx, %broadcast.splat598
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index604
  store <8 x i32> %i.cy, ptr %i.cz, align 4, !tbaa !9
  %i.da = mul <8 x i32> %broadcast.splat602, %vec.ind607
  %i.db = sdiv <8 x i32> %i.da, %broadcast.splat598
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index604
  store <8 x i32> %i.db, ptr %i.dc, align 4, !tbaa !9
  %index.next608 = add nuw i64 %index604, 8       ; 2 uses
  %vec.ind.next609 = add <8 x i32> %vec.ind605, splat (i32 8)
  %vec.ind.next610 = add <8 x i32> %vec.ind606, splat (i32 8)
  %vec.ind.next611 = add <8 x i32> %vec.ind607, splat (i32 8)
  %i.dd = icmp eq i64 %index.next608, %n.vec594
  br i1 %i.dd, label %middle.block612, label %vector.body603, !llvm.loop !43

middle.block612:                                  ; preds = %vector.body603
  %cmp.n613 = icmp eq i64 %n.vec594, %wide.trip.count497
  br i1 %cmp.n613, label %.preheader468, label %.lr.ph475.preheader1208

.lr.ph475.preheader1208:                          ; preds = %.lr.ph475.preheader, %middle.block612
  %indvars.iv494.ph = phi i64 [ 0, %.lr.ph475.preheader ], [ %n.vec594, %middle.block612 ]
  %i.de = insertelement <2 x i32> poison, i32 %.fr, i64 0
  %i.df = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph475

.lr.ph:                                           ; preds = %.lr.ph.preheader1209, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1209 ] ; 7 uses
  %i.dg = trunc i64 %indvars.iv to i32
  %i.dh = mul i32 %.0268, %i.dg
  %i.di = sdiv i32 %i.dh, %.fr492
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !9
  %i.dk = trunc i64 %indvars.iv to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  %i.dm = trunc i64 %indvars.iv to i32
  %i.dn = mul i32 %.0269, %i.dk
  %i.do = mul i32 %.0270, %i.dm
  %i.dp = insertelement <2 x i32> poison, i32 %i.dn, i64 0
  %i.dq = insertelement <2 x i32> %i.dp, i32 %i.do, i64 1
  %i.dr = sdiv <2 x i32> %i.dq, %i.cs             ; 2 uses
  %i.ds = extractelement <2 x i32> %i.dr, i64 0
  store i32 %i.ds, ptr %i.dl, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %i.du = extractelement <2 x i32> %i.dr, i64 1
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader469, label %.lr.ph, !llvm.loop !44

.preheader468:                                    ; preds = %.lr.ph475, %middle.block612, %.preheader469
  %i.dv = add i32 %.fr492, -1                     ; 2 uses
  %i.dw = icmp sgt i32 %.fr492, 1
  br i1 %i.dw, label %.lr.ph477.split.preheader, label %._crit_edge

.lr.ph477.split.preheader:                        ; preds = %.preheader468
  %wide.trip.count502 = zext nneg i32 %i.dv to i64 ; 3 uses
  %.pre516 = load i32, ptr %i.ca, align 4, !tbaa !9 ; 2 uses
  %.pre517 = load i32, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %.pre518 = load i32, ptr %i.ce, align 4, !tbaa !9 ; 2 uses
  %min.iters.check616 = icmp ult i32 %.fr492, 9
  br i1 %min.iters.check616, label %.lr.ph477.split.preheader1204, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph477.split.preheader
  %n.vec618 = and i64 %wide.trip.count502, 2147483640 ; 3 uses
  %vector.recur.init = insertelement <8 x i32> poison, i32 %.pre518, i64 7
  %vector.recur.init621 = insertelement <8 x i32> poison, i32 %.pre517, i64 7
  %vector.recur.init623 = insertelement <8 x i32> poison, i32 %.pre516, i64 7
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next627, %vector.body619 ] ; 5 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph617 ], [ %wide.load626, %vector.body619 ]
  %vector.recur622 = phi <8 x i32> [ %vector.recur.init621, %vector.ph617 ], [ %wide.load625, %vector.body619 ]
  %vector.recur624 = phi <8 x i32> [ %vector.recur.init623, %vector.ph617 ], [ %wide.load, %vector.body619 ]
  %i.dx = or disjoint i64 %index620, 1            ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dx
  %wide.load = load <8 x i32>, ptr %i.dy, align 4, !tbaa !9 ; 4 uses
  %i.dz = shufflevector <8 x i32> %vector.recur624, <8 x i32> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ea = sub nsw <8 x i32> %wide.load, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index620
  store <8 x i32> %i.ea, ptr %i.eb, align 4, !tbaa !9
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dx
  %wide.load625 = load <8 x i32>, ptr %i.ec, align 4, !tbaa !9 ; 4 uses
  %i.ed = shufflevector <8 x i32> %vector.recur622, <8 x i32> %wide.load625, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ee = sub nsw <8 x i32> %wide.load625, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index620
  store <8 x i32> %i.ee, ptr %i.ef, align 4, !tbaa !9
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dx
  %wide.load626 = load <8 x i32>, ptr %i.eg, align 4, !tbaa !9 ; 4 uses
  %i.eh = shufflevector <8 x i32> %vector.recur, <8 x i32> %wide.load626, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ei = sub nsw <8 x i32> %wide.load626, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index620
  store <8 x i32> %i.ei, ptr %i.ej, align 4, !tbaa !9
  %index.next627 = add nuw i64 %index620, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next627, %n.vec618
  br i1 %i.ek, label %middle.block628, label %vector.body619, !llvm.loop !45

middle.block628:                                  ; preds = %vector.body619
  %vector.recur.extract = extractelement <8 x i32> %wide.load626, i64 7
  %vector.recur.extract629 = extractelement <8 x i32> %wide.load625, i64 7
  %vector.recur.extract630 = extractelement <8 x i32> %wide.load, i64 7
  %cmp.n631 = icmp eq i64 %n.vec618, %wide.trip.count502
  br i1 %cmp.n631, label %._crit_edge, label %.lr.ph477.split.preheader1204
end_hunk_0
begin_hunk_1_@_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE:bb.a
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ib
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !9  ; 2 uses
  store i32 %i.if, ptr %i.l, align 4, !tbaa !9
  store i32 %.0268, ptr %i.q, align 4, !tbaa !9
  store i32 %0, ptr %i.r, align 4, !tbaa !9
  %i.ig = and i32 %4, 1
  %.not294 = icmp eq i32 %i.ig, 0                 ; 6 uses
  br i1 %.not294, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge483
  br i1 %.lcssa470, label %iter.check916, label %_ZL4vmaxPKii.exit

iter.check916:                                    ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %.fr to i64  ; 12 uses
  %min.iters.check895 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check895, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check896

vector.main.loop.iter.check896:                   ; preds = %iter.check916
  %min.iters.check897 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check897, label %vec.epilog.ph920, label %vector.ph898

vector.ph898:                                     ; preds = %vector.main.loop.iter.check896
  %i.ih = and i64 %wide.trip.count.i, 28
  %n.vec899 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body900

vector.body900:                                   ; preds = %vector.ph898, %vector.body900
  %index901 = phi i64 [ 0, %vector.ph898 ], [ %index.next910, %vector.body900 ] ; 2 uses
  %vec.phi902 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.im, %vector.body900 ]
  %vec.phi903 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.in, %vector.body900 ]
  %vec.phi904 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.io, %vector.body900 ]
  %vec.phi905 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.ip, %vector.body900 ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index901 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  %wide.load906 = load <8 x i32>, ptr %i.ii, align 4, !tbaa !9
  %wide.load907 = load <8 x i32>, ptr %i.ij, align 4, !tbaa !9
  %wide.load908 = load <8 x i32>, ptr %i.ik, align 4, !tbaa !9
  %wide.load909 = load <8 x i32>, ptr %i.il, align 4, !tbaa !9
  %i.im = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load906, <8 x i32> %vec.phi902) ; 2 uses
  %i.in = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load907, <8 x i32> %vec.phi903) ; 2 uses
  %i.io = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load908, <8 x i32> %vec.phi904) ; 2 uses
  %i.ip = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load909, <8 x i32> %vec.phi905) ; 2 uses
  %index.next910 = add nuw i64 %index901, 32      ; 2 uses
  %i.iq = icmp eq i64 %index.next910, %n.vec899
  br i1 %i.iq, label %middle.block911, label %vector.body900, !llvm.loop !50

middle.block911:                                  ; preds = %vector.body900
  %rdx.minmax912 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.im, <8 x i32> %i.in)
  %rdx.minmax913 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax912, <8 x i32> %i.io)
  %rdx.minmax914 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax913, <8 x i32> %i.ip)
  %i.ir = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax914) ; 3 uses
  %cmp.n915 = icmp eq i64 %n.vec899, %wide.trip.count.i
  br i1 %cmp.n915, label %iter.check957, label %vec.epilog.iter.check917

vec.epilog.iter.check917:                         ; preds = %middle.block911
  %min.epilog.iters.check919 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check919, label %.lr.ph.i.preheader, label %vec.epilog.ph920, !prof !89

vec.epilog.ph920:                                 ; preds = %vector.main.loop.iter.check896, %vec.epilog.iter.check917
  %vec.epilog.resume.val921 = phi i64 [ %n.vec899, %vec.epilog.iter.check917 ], [ 0, %vector.main.loop.iter.check896 ]
  %bc.merge.rdx922 = phi i32 [ %i.ir, %vec.epilog.iter.check917 ], [ 0, %vector.main.loop.iter.check896 ]
  %broadcast.splatinsert926 = insertelement <4 x i32> poison, i32 %bc.merge.rdx922, i64 0
  %broadcast.splat927 = shufflevector <4 x i32> %broadcast.splatinsert926, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec923 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body924

vec.epilog.vector.body924:                        ; preds = %vec.epilog.vector.body924, %vec.epilog.ph920
  %index925 = phi i64 [ %vec.epilog.resume.val921, %vec.epilog.ph920 ], [ %index.next930, %vec.epilog.vector.body924 ] ; 2 uses
  %vec.phi928 = phi <4 x i32> [ %broadcast.splat927, %vec.epilog.ph920 ], [ %i.it, %vec.epilog.vector.body924 ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index925
  %wide.load929 = load <4 x i32>, ptr %i.is, align 4, !tbaa !9
  %i.it = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load929, <4 x i32> %vec.phi928) ; 2 uses
  %index.next930 = add nuw i64 %index925, 4       ; 2 uses
  %i.iu = icmp eq i64 %index.next930, %n.vec923
  br i1 %i.iu, label %vec.epilog.middle.block931, label %vec.epilog.vector.body924, !llvm.loop !51

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body924
  %i.iv = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.it) ; 2 uses
  %cmp.n932 = icmp eq i64 %n.vec923, %wide.trip.count.i
  br i1 %cmp.n932, label %iter.check957, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check916, %vec.epilog.iter.check917, %vec.epilog.middle.block931
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check916 ], [ %n.vec899, %vec.epilog.iter.check917 ], [ %n.vec923, %vec.epilog.middle.block931 ]
  %.011.i.ph = phi i32 [ 0, %iter.check916 ], [ %i.ir, %vec.epilog.iter.check917 ], [ %i.iv, %vec.epilog.middle.block931 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.011.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !9
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.ix, i32 %.011.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %iter.check957, label %.lr.ph.i, !llvm.loop !52

_ZL4vmaxPKii.exit:                                ; preds = %bb.s
  store i32 0, ptr %i.e, align 4, !tbaa !9
  store i32 %i.hx, ptr %i.f, align 4, !tbaa !9
  br label %_ZL4vmaxPKii.exit330

iter.check957:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block931, %middle.block911
  %spec.select.i.lcssa = phi i32 [ %i.iv, %vec.epilog.middle.block931 ], [ %i.ir, %middle.block911 ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  store i32 %spec.select.i.lcssa, ptr %i.e, align 4, !tbaa !9
  store i32 %i.hx, ptr %i.f, align 4, !tbaa !9
  %min.iters.check936 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check936, label %.lr.ph.i324.preheader, label %vector.main.loop.iter.check937

vector.main.loop.iter.check937:                   ; preds = %iter.check957
  %min.iters.check938 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check938, label %vec.epilog.ph961, label %vector.ph939

vector.ph939:                                     ; preds = %vector.main.loop.iter.check937
  %i.iy = and i64 %wide.trip.count.i, 28
  %n.vec940 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body941

vector.body941:                                   ; preds = %vector.ph939, %vector.body941
  %index942 = phi i64 [ 0, %vector.ph939 ], [ %index.next951, %vector.body941 ] ; 2 uses
  %vec.phi943 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jd, %vector.body941 ]
  %vec.phi944 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.je, %vector.body941 ]
  %vec.phi945 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jf, %vector.body941 ]
  %vec.phi946 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jg, %vector.body941 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index942 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  %wide.load947 = load <8 x i32>, ptr %i.iz, align 4, !tbaa !9
  %wide.load948 = load <8 x i32>, ptr %i.ja, align 4, !tbaa !9
  %wide.load949 = load <8 x i32>, ptr %i.jb, align 4, !tbaa !9
  %wide.load950 = load <8 x i32>, ptr %i.jc, align 4, !tbaa !9
  %i.jd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load947, <8 x i32> %vec.phi943) ; 2 uses
  %i.je = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load948, <8 x i32> %vec.phi944) ; 2 uses
  %i.jf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load949, <8 x i32> %vec.phi945) ; 2 uses
  %i.jg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load950, <8 x i32> %vec.phi946) ; 2 uses
  %index.next951 = add nuw i64 %index942, 32      ; 2 uses
  %i.jh = icmp eq i64 %index.next951, %n.vec940
  br i1 %i.jh, label %middle.block952, label %vector.body941, !llvm.loop !53

middle.block952:                                  ; preds = %vector.body941
  %rdx.minmax953 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jd, <8 x i32> %i.je)
  %rdx.minmax954 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax953, <8 x i32> %i.jf)
  %rdx.minmax955 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax954, <8 x i32> %i.jg)
  %i.ji = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax955) ; 3 uses
  %cmp.n956 = icmp eq i64 %n.vec940, %wide.trip.count.i
  br i1 %cmp.n956, label %_ZL4vmaxPKii.exit330, label %vec.epilog.iter.check958

vec.epilog.iter.check958:                         ; preds = %middle.block952
  %min.epilog.iters.check960 = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check960, label %.lr.ph.i324.preheader, label %vec.epilog.ph961, !prof !89

vec.epilog.ph961:                                 ; preds = %vector.main.loop.iter.check937, %vec.epilog.iter.check958
  %vec.epilog.resume.val962 = phi i64 [ %n.vec940, %vec.epilog.iter.check958 ], [ 0, %vector.main.loop.iter.check937 ]
  %bc.merge.rdx963 = phi i32 [ %i.ji, %vec.epilog.iter.check958 ], [ 0, %vector.main.loop.iter.check937 ]
  %broadcast.splatinsert967 = insertelement <4 x i32> poison, i32 %bc.merge.rdx963, i64 0
  %broadcast.splat968 = shufflevector <4 x i32> %broadcast.splatinsert967, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec964 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body965

vec.epilog.vector.body965:                        ; preds = %vec.epilog.vector.body965, %vec.epilog.ph961
  %index966 = phi i64 [ %vec.epilog.resume.val962, %vec.epilog.ph961 ], [ %index.next971, %vec.epilog.vector.body965 ] ; 2 uses
  %vec.phi969 = phi <4 x i32> [ %broadcast.splat968, %vec.epilog.ph961 ], [ %i.jk, %vec.epilog.vector.body965 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index966
  %wide.load970 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !9
  %i.jk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load970, <4 x i32> %vec.phi969) ; 2 uses
  %index.next971 = add nuw i64 %index966, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next971, %n.vec964
  br i1 %i.jl, label %vec.epilog.middle.block972, label %vec.epilog.vector.body965, !llvm.loop !54

vec.epilog.middle.block972:                       ; preds = %vec.epilog.vector.body965
  %i.jm = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.jk) ; 2 uses
  %cmp.n973 = icmp eq i64 %n.vec964, %wide.trip.count.i
  br i1 %cmp.n973, label %_ZL4vmaxPKii.exit330, label %.lr.ph.i324.preheader

.lr.ph.i324.preheader:                            ; preds = %iter.check957, %vec.epilog.iter.check958, %vec.epilog.middle.block972
  %indvars.iv.i325.ph = phi i64 [ 0, %iter.check957 ], [ %n.vec940, %vec.epilog.iter.check958 ], [ %n.vec964, %vec.epilog.middle.block972 ]
  %.011.i326.ph = phi i32 [ 0, %iter.check957 ], [ %i.ji, %vec.epilog.iter.check958 ], [ %i.jm, %vec.epilog.middle.block972 ]
  br label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324.preheader, %.lr.ph.i324
  %indvars.iv.i325 = phi i64 [ %indvars.iv.next.i328, %.lr.ph.i324 ], [ %indvars.iv.i325.ph, %.lr.ph.i324.preheader ] ; 2 uses
  %.011.i326 = phi i32 [ %spec.select.i327, %.lr.ph.i324 ], [ %.011.i326.ph, %.lr.ph.i324.preheader ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i325
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !9
  %spec.select.i327 = call i32 @llvm.smax.i32(i32 %i.jo, i32 %.011.i326) ; 2 uses
  %indvars.iv.next.i328 = add nuw nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %exitcond.not.i329 = icmp eq i64 %indvars.iv.next.i328, %wide.trip.count.i
  br i1 %exitcond.not.i329, label %_ZL4vmaxPKii.exit330, label %.lr.ph.i324, !llvm.loop !55

_ZL4vmaxPKii.exit330:                             ; preds = %.lr.ph.i324, %middle.block952, %vec.epilog.middle.block972, %_ZL4vmaxPKii.exit
  %.0.lcssa.i457 = phi i32 [ 0, %_ZL4vmaxPKii.exit ], [ %spec.select.i.lcssa, %middle.block952 ], [ %spec.select.i.lcssa, %vec.epilog.middle.block972 ], [ %spec.select.i.lcssa, %.lr.ph.i324 ]
  %.0.lcssa.i321 = phi i32 [ 0, %_ZL4vmaxPKii.exit ], [ %i.ji, %middle.block952 ], [ %i.jm, %vec.epilog.middle.block972 ], [ %spec.select.i327, %.lr.ph.i324 ] ; 2 uses
  store i32 %.0.lcssa.i321, ptr %i.g, align 4, !tbaa !9
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ib
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !9  ; 5 uses
  store i32 %i.jq, ptr %i.h, align 4, !tbaa !9
  store ptr %i.bv, ptr %i.o, align 16, !tbaa !19
  store ptr %i.cb, ptr %i.p, align 16, !tbaa !19
  store i32 %.fr, ptr %11, align 4, !tbaa !9
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.0270, ptr %i.jr, align 4, !tbaa !9
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %2, ptr %i.js, align 4, !tbaa !9
  br i1 %.lcssa472, label %iter.check998, label %_ZL4vmaxPKii.exit340

iter.check998:                                    ; preds = %_ZL4vmaxPKii.exit330
  %wide.trip.count.i333 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check977 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check977, label %.lr.ph.i334.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %iter.check998
  %min.iters.check979 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check979, label %vec.epilog.ph1002, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %i.jt = and i64 %wide.trip.count.i333, 28
  %n.vec981 = and i64 %wide.trip.count.i333, 2147483616 ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.ph980, %vector.body982
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next992, %vector.body982 ] ; 2 uses
  %vec.phi984 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.jy, %vector.body982 ]
  %vec.phi985 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.jz, %vector.body982 ]
  %vec.phi986 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.ka, %vector.body982 ]
  %vec.phi987 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.kb, %vector.body982 ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index983 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  %wide.load988 = load <8 x i32>, ptr %i.ju, align 4, !tbaa !9
  %wide.load989 = load <8 x i32>, ptr %i.jv, align 4, !tbaa !9
  %wide.load990 = load <8 x i32>, ptr %i.jw, align 4, !tbaa !9
  %wide.load991 = load <8 x i32>, ptr %i.jx, align 4, !tbaa !9
  %i.jy = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load988, <8 x i32> %vec.phi984) ; 2 uses
  %i.jz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load989, <8 x i32> %vec.phi985) ; 2 uses
  %i.ka = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load990, <8 x i32> %vec.phi986) ; 2 uses
  %i.kb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load991, <8 x i32> %vec.phi987) ; 2 uses
  %index.next992 = add nuw i64 %index983, 32      ; 2 uses
  %i.kc = icmp eq i64 %index.next992, %n.vec981
  br i1 %i.kc, label %middle.block993, label %vector.body982, !llvm.loop !56

middle.block993:                                  ; preds = %vector.body982
  %rdx.minmax994 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jy, <8 x i32> %i.jz)
  %rdx.minmax995 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax994, <8 x i32> %i.ka)
  %rdx.minmax996 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax995, <8 x i32> %i.kb)
  %i.kd = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax996) ; 3 uses
  %cmp.n997 = icmp eq i64 %n.vec981, %wide.trip.count.i333
  br i1 %cmp.n997, label %_ZL4vmaxPKii.exit340, label %vec.epilog.iter.check999

vec.epilog.iter.check999:                         ; preds = %middle.block993
  %min.epilog.iters.check1001 = icmp eq i64 %i.jt, 0
  br i1 %min.epilog.iters.check1001, label %.lr.ph.i334.preheader, label %vec.epilog.ph1002, !prof !89

vec.epilog.ph1002:                                ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check999
  %vec.epilog.resume.val1003 = phi i64 [ %n.vec981, %vec.epilog.iter.check999 ], [ 0, %vector.main.loop.iter.check978 ]
  %bc.merge.rdx1004 = phi i32 [ %i.kd, %vec.epilog.iter.check999 ], [ 0, %vector.main.loop.iter.check978 ]
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1004, i64 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1005 = and i64 %wide.trip.count.i333, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1006

vec.epilog.vector.body1006:                       ; preds = %vec.epilog.vector.body1006, %vec.epilog.ph1002
  %index1007 = phi i64 [ %vec.epilog.resume.val1003, %vec.epilog.ph1002 ], [ %index.next1012, %vec.epilog.vector.body1006 ] ; 2 uses
  %vec.phi1010 = phi <4 x i32> [ %broadcast.splat1009, %vec.epilog.ph1002 ], [ %i.kf, %vec.epilog.vector.body1006 ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index1007
  %wide.load1011 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !9
  %i.kf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1011, <4 x i32> %vec.phi1010) ; 2 uses
  %index.next1012 = add nuw i64 %index1007, 4     ; 2 uses
  %i.kg = icmp eq i64 %index.next1012, %n.vec1005
  br i1 %i.kg, label %vec.epilog.middle.block1013, label %vec.epilog.vector.body1006, !llvm.loop !57

vec.epilog.middle.block1013:                      ; preds = %vec.epilog.vector.body1006
  %i.kh = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.kf) ; 2 uses
  %cmp.n1014 = icmp eq i64 %n.vec1005, %wide.trip.count.i333
  br i1 %cmp.n1014, label %_ZL4vmaxPKii.exit340, label %.lr.ph.i334.preheader

.lr.ph.i334.preheader:                            ; preds = %iter.check998, %vec.epilog.iter.check999, %vec.epilog.middle.block1013
  %indvars.iv.i335.ph = phi i64 [ 0, %iter.check998 ], [ %n.vec981, %vec.epilog.iter.check999 ], [ %n.vec1005, %vec.epilog.middle.block1013 ]
  %.011.i336.ph = phi i32 [ 0, %iter.check998 ], [ %i.kd, %vec.epilog.iter.check999 ], [ %i.kh, %vec.epilog.middle.block1013 ]
  br label %.lr.ph.i334

.lr.ph.i334:                                      ; preds = %.lr.ph.i334.preheader, %.lr.ph.i334
  %indvars.iv.i335 = phi i64 [ %indvars.iv.next.i338, %.lr.ph.i334 ], [ %indvars.iv.i335.ph, %.lr.ph.i334.preheader ] ; 2 uses
  %.011.i336 = phi i32 [ %spec.select.i337, %.lr.ph.i334 ], [ %.011.i336.ph, %.lr.ph.i334.preheader ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i335
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !9
  %spec.select.i337 = call i32 @llvm.smax.i32(i32 %i.kj, i32 %.011.i336) ; 2 uses
  %indvars.iv.next.i338 = add nuw nsw i64 %indvars.iv.i335, 1 ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %indvars.iv.next.i338, %wide.trip.count.i333
  br i1 %exitcond.not.i339, label %_ZL4vmaxPKii.exit340, label %.lr.ph.i334, !llvm.loop !58

_ZL4vmaxPKii.exit340:                             ; preds = %.lr.ph.i334, %middle.block993, %vec.epilog.middle.block1013, %_ZL4vmaxPKii.exit330
  %.0.lcssa.i331 = phi i32 [ 0, %_ZL4vmaxPKii.exit330 ], [ %i.kh, %vec.epilog.middle.block1013 ], [ %i.kd, %middle.block993 ], [ %spec.select.i337, %.lr.ph.i334 ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.0.lcssa.i331, ptr %i.kk, align 4, !tbaa !9
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.hv
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bz, ptr %i.ko, align 8, !tbaa !19
  %i.kp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cf, ptr %i.kp, align 8, !tbaa !19
  %i.kq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.by, ptr %i.kq, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ce, ptr %i.kr, align 8, !tbaa !19
  br i1 %.lcssa472, label %iter.check1039, label %_ZL4vmaxPKii.exit350

iter.check1039:                                   ; preds = %_ZL4vmaxPKii.exit340
  %wide.trip.count.i343 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check1018 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check1018, label %.lr.ph.i344.preheader, label %vector.main.loop.iter.check1019

vector.main.loop.iter.check1019:                  ; preds = %iter.check1039
  %min.iters.check1020 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check1020, label %vec.epilog.ph1043, label %vector.ph1021

vector.ph1021:                                    ; preds = %vector.main.loop.iter.check1019
  %i.ks = and i64 %wide.trip.count.i343, 28
  %n.vec1022 = and i64 %wide.trip.count.i343, 2147483616 ; 4 uses
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.ph1021, %vector.body1023
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1033, %vector.body1023 ] ; 2 uses
  %vec.phi1025 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.kx, %vector.body1023 ]
  %vec.phi1026 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.ky, %vector.body1023 ]
  %vec.phi1027 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.kz, %vector.body1023 ]
  %vec.phi1028 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.la, %vector.body1023 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index1024 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 96
  %wide.load1029 = load <8 x i32>, ptr %i.kt, align 4, !tbaa !9
  %wide.load1030 = load <8 x i32>, ptr %i.ku, align 4, !tbaa !9
  %wide.load1031 = load <8 x i32>, ptr %i.kv, align 4, !tbaa !9
  %wide.load1032 = load <8 x i32>, ptr %i.kw, align 4, !tbaa !9
  %i.kx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1029, <8 x i32> %vec.phi1025) ; 2 uses
  %i.ky = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1030, <8 x i32> %vec.phi1026) ; 2 uses
  %i.kz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1031, <8 x i32> %vec.phi1027) ; 2 uses
  %i.la = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1032, <8 x i32> %vec.phi1028) ; 2 uses
  %index.next1033 = add nuw i64 %index1024, 32    ; 2 uses
  %i.lb = icmp eq i64 %index.next1033, %n.vec1022
  br i1 %i.lb, label %middle.block1034, label %vector.body1023, !llvm.loop !59

middle.block1034:                                 ; preds = %vector.body1023
  %rdx.minmax1035 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.kx, <8 x i32> %i.ky)
  %rdx.minmax1036 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1035, <8 x i32> %i.kz)
  %rdx.minmax1037 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1036, <8 x i32> %i.la)
  %i.lc = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1037) ; 3 uses
  %cmp.n1038 = icmp eq i64 %n.vec1022, %wide.trip.count.i343
  br i1 %cmp.n1038, label %_ZL4vmaxPKii.exit350, label %vec.epilog.iter.check1040

vec.epilog.iter.check1040:                        ; preds = %middle.block1034
  %min.epilog.iters.check1042 = icmp eq i64 %i.ks, 0
  br i1 %min.epilog.iters.check1042, label %.lr.ph.i344.preheader, label %vec.epilog.ph1043, !prof !89

vec.epilog.ph1043:                                ; preds = %vector.main.loop.iter.check1019, %vec.epilog.iter.check1040
  %vec.epilog.resume.val1044 = phi i64 [ %n.vec1022, %vec.epilog.iter.check1040 ], [ 0, %vector.main.loop.iter.check1019 ]
  %bc.merge.rdx1045 = phi i32 [ %i.lc, %vec.epilog.iter.check1040 ], [ 0, %vector.main.loop.iter.check1019 ]
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1045, i64 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1046 = and i64 %wide.trip.count.i343, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1047

vec.epilog.vector.body1047:                       ; preds = %vec.epilog.vector.body1047, %vec.epilog.ph1043
  %index1048 = phi i64 [ %vec.epilog.resume.val1044, %vec.epilog.ph1043 ], [ %index.next1053, %vec.epilog.vector.body1047 ] ; 2 uses
  %vec.phi1051 = phi <4 x i32> [ %broadcast.splat1050, %vec.epilog.ph1043 ], [ %i.le, %vec.epilog.vector.body1047 ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index1048
  %wide.load1052 = load <4 x i32>, ptr %i.ld, align 4, !tbaa !9
  %i.le = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1052, <4 x i32> %vec.phi1051) ; 2 uses
  %index.next1053 = add nuw i64 %index1048, 4     ; 2 uses
  %i.lf = icmp eq i64 %index.next1053, %n.vec1046
  br i1 %i.lf, label %vec.epilog.middle.block1054, label %vec.epilog.vector.body1047, !llvm.loop !60

vec.epilog.middle.block1054:                      ; preds = %vec.epilog.vector.body1047
  %i.lg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.le) ; 2 uses
  %cmp.n1055 = icmp eq i64 %n.vec1046, %wide.trip.count.i343
  br i1 %cmp.n1055, label %_ZL4vmaxPKii.exit350, label %.lr.ph.i344.preheader

.lr.ph.i344.preheader:                            ; preds = %iter.check1039, %vec.epilog.iter.check1040, %vec.epilog.middle.block1054
  %indvars.iv.i345.ph = phi i64 [ 0, %iter.check1039 ], [ %n.vec1022, %vec.epilog.iter.check1040 ], [ %n.vec1046, %vec.epilog.middle.block1054 ]
  %.011.i346.ph = phi i32 [ 0, %iter.check1039 ], [ %i.lc, %vec.epilog.iter.check1040 ], [ %i.lg, %vec.epilog.middle.block1054 ]
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %.lr.ph.i344.preheader, %.lr.ph.i344
  %indvars.iv.i345 = phi i64 [ %indvars.iv.next.i348, %.lr.ph.i344 ], [ %indvars.iv.i345.ph, %.lr.ph.i344.preheader ] ; 2 uses
  %.011.i346 = phi i32 [ %spec.select.i347, %.lr.ph.i344 ], [ %.011.i346.ph, %.lr.ph.i344.preheader ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i345
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !9
  %spec.select.i347 = call i32 @llvm.smax.i32(i32 %i.li, i32 %.011.i346) ; 2 uses
  %indvars.iv.next.i348 = add nuw nsw i64 %indvars.iv.i345, 1 ; 2 uses
  %exitcond.not.i349 = icmp eq i64 %indvars.iv.next.i348, %wide.trip.count.i343
  br i1 %exitcond.not.i349, label %_ZL4vmaxPKii.exit350, label %.lr.ph.i344, !llvm.loop !61

_ZL4vmaxPKii.exit350:                             ; preds = %.lr.ph.i344, %middle.block1034, %vec.epilog.middle.block1054, %_ZL4vmaxPKii.exit340
  %.0.lcssa.i341 = phi i32 [ 0, %_ZL4vmaxPKii.exit340 ], [ %i.lg, %vec.epilog.middle.block1054 ], [ %i.lc, %middle.block1034 ], [ %spec.select.i347, %.lr.ph.i344 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.0.lcssa.i341, ptr %i.lj, align 4, !tbaa !9
  %i.lk = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.hx, ptr %i.lk, align 4, !tbaa !9
  %i.ll = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.hz, ptr %i.ll, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.jq, ptr %i.lm, align 4, !tbaa !9
  %i.ln = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.jq, ptr %i.ln, align 4, !tbaa !9
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ib
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !9  ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.fr492, ptr %13, align 4, !tbaa !9
  %i.lr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.0269, ptr %i.lr, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %1, ptr %i.ls, align 4, !tbaa !9
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bw, ptr %i.lt, align 16, !tbaa !19
  %i.lu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.cc, ptr %i.lu, align 16, !tbaa !19
  br i1 %.lcssa472, label %iter.check1080, label %_ZL4vmaxPKii.exit360

iter.check1080:                                   ; preds = %_ZL4vmaxPKii.exit350
  %wide.trip.count.i353 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check1059 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check1059, label %.lr.ph.i354.preheader, label %vector.main.loop.iter.check1060

vector.main.loop.iter.check1060:                  ; preds = %iter.check1080
  %min.iters.check1061 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check1061, label %vec.epilog.ph1084, label %vector.ph1062

vector.ph1062:                                    ; preds = %vector.main.loop.iter.check1060
  %i.lv = and i64 %wide.trip.count.i353, 28
  %n.vec1063 = and i64 %wide.trip.count.i353, 2147483616 ; 4 uses
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.ph1062, %vector.body1064
  %index1065 = phi i64 [ 0, %vector.ph1062 ], [ %index.next1074, %vector.body1064 ] ; 2 uses
  %vec.phi1066 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.ma, %vector.body1064 ]
  %vec.phi1067 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.mb, %vector.body1064 ]
  %vec.phi1068 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.mc, %vector.body1064 ]
  %vec.phi1069 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.md, %vector.body1064 ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index1065 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 96
  %wide.load1070 = load <8 x i32>, ptr %i.lw, align 4, !tbaa !9
  %wide.load1071 = load <8 x i32>, ptr %i.lx, align 4, !tbaa !9
  %wide.load1072 = load <8 x i32>, ptr %i.ly, align 4, !tbaa !9
  %wide.load1073 = load <8 x i32>, ptr %i.lz, align 4, !tbaa !9
  %i.ma = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1070, <8 x i32> %vec.phi1066) ; 2 uses
  %i.mb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1071, <8 x i32> %vec.phi1067) ; 2 uses
  %i.mc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1072, <8 x i32> %vec.phi1068) ; 2 uses
  %i.md = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1073, <8 x i32> %vec.phi1069) ; 2 uses
  %index.next1074 = add nuw i64 %index1065, 32    ; 2 uses
  %i.me = icmp eq i64 %index.next1074, %n.vec1063
  br i1 %i.me, label %middle.block1075, label %vector.body1064, !llvm.loop !62

middle.block1075:                                 ; preds = %vector.body1064
  %rdx.minmax1076 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ma, <8 x i32> %i.mb)
  %rdx.minmax1077 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1076, <8 x i32> %i.mc)
  %rdx.minmax1078 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1077, <8 x i32> %i.md)
  %i.mf = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1078) ; 3 uses
  %cmp.n1079 = icmp eq i64 %n.vec1063, %wide.trip.count.i353
  br i1 %cmp.n1079, label %_ZL4vmaxPKii.exit360, label %vec.epilog.iter.check1081

vec.epilog.iter.check1081:                        ; preds = %middle.block1075
  %min.epilog.iters.check1083 = icmp eq i64 %i.lv, 0
  br i1 %min.epilog.iters.check1083, label %.lr.ph.i354.preheader, label %vec.epilog.ph1084, !prof !89

vec.epilog.ph1084:                                ; preds = %vector.main.loop.iter.check1060, %vec.epilog.iter.check1081
  %vec.epilog.resume.val1085 = phi i64 [ %n.vec1063, %vec.epilog.iter.check1081 ], [ 0, %vector.main.loop.iter.check1060 ]
  %bc.merge.rdx1086 = phi i32 [ %i.mf, %vec.epilog.iter.check1081 ], [ 0, %vector.main.loop.iter.check1060 ]
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1086, i64 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1087 = and i64 %wide.trip.count.i353, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1088

vec.epilog.vector.body1088:                       ; preds = %vec.epilog.vector.body1088, %vec.epilog.ph1084
  %index1089 = phi i64 [ %vec.epilog.resume.val1085, %vec.epilog.ph1084 ], [ %index.next1094, %vec.epilog.vector.body1088 ] ; 2 uses
  %vec.phi1092 = phi <4 x i32> [ %broadcast.splat1091, %vec.epilog.ph1084 ], [ %i.mh, %vec.epilog.vector.body1088 ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index1089
  %wide.load1093 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !9
  %i.mh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1093, <4 x i32> %vec.phi1092) ; 2 uses
  %index.next1094 = add nuw i64 %index1089, 4     ; 2 uses
  %i.mi = icmp eq i64 %index.next1094, %n.vec1087
  br i1 %i.mi, label %vec.epilog.middle.block1095, label %vec.epilog.vector.body1088, !llvm.loop !63

vec.epilog.middle.block1095:                      ; preds = %vec.epilog.vector.body1088
  %i.mj = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.mh) ; 2 uses
  %cmp.n1096 = icmp eq i64 %n.vec1087, %wide.trip.count.i353
  br i1 %cmp.n1096, label %_ZL4vmaxPKii.exit360, label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %iter.check1080, %vec.epilog.iter.check1081, %vec.epilog.middle.block1095
  %indvars.iv.i355.ph = phi i64 [ 0, %iter.check1080 ], [ %n.vec1063, %vec.epilog.iter.check1081 ], [ %n.vec1087, %vec.epilog.middle.block1095 ]
  %.011.i356.ph = phi i32 [ 0, %iter.check1080 ], [ %i.mf, %vec.epilog.iter.check1081 ], [ %i.mj, %vec.epilog.middle.block1095 ]
  br label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354
  %indvars.iv.i355 = phi i64 [ %indvars.iv.next.i358, %.lr.ph.i354 ], [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ] ; 2 uses
  %.011.i356 = phi i32 [ %spec.select.i357, %.lr.ph.i354 ], [ %.011.i356.ph, %.lr.ph.i354.preheader ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i355
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !9
  %spec.select.i357 = call i32 @llvm.smax.i32(i32 %i.ml, i32 %.011.i356) ; 2 uses
  %indvars.iv.next.i358 = add nuw nsw i64 %indvars.iv.i355, 1 ; 2 uses
  %exitcond.not.i359 = icmp eq i64 %indvars.iv.next.i358, %wide.trip.count.i353
  br i1 %exitcond.not.i359, label %_ZL4vmaxPKii.exit360, label %.lr.ph.i354, !llvm.loop !64

_ZL4vmaxPKii.exit360:                             ; preds = %.lr.ph.i354, %middle.block1075, %vec.epilog.middle.block1095, %_ZL4vmaxPKii.exit350
  %.0.lcssa.i351 = phi i32 [ 0, %_ZL4vmaxPKii.exit350 ], [ %i.mj, %vec.epilog.middle.block1095 ], [ %i.mf, %middle.block1075 ], [ %spec.select.i357, %.lr.ph.i354 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.0.lcssa.i351, ptr %i.mm, align 4, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.km, ptr %i.mn, align 4, !tbaa !9
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.hv
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !9
  %i.mq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check1121, label %_ZL4vmaxPKii.exit370

iter.check1121:                                   ; preds = %_ZL4vmaxPKii.exit360
  %wide.trip.count.i363 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check1100 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check1100, label %.lr.ph.i364.preheader, label %vector.main.loop.iter.check1101

vector.main.loop.iter.check1101:                  ; preds = %iter.check1121
  %min.iters.check1102 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check1102, label %vec.epilog.ph1125, label %vector.ph1103

vector.ph1103:                                    ; preds = %vector.main.loop.iter.check1101
  %i.mr = and i64 %wide.trip.count.i363, 28
  %n.vec1104 = and i64 %wide.trip.count.i363, 2147483616 ; 4 uses
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.ph1103, %vector.body1105
  %index1106 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1115, %vector.body1105 ] ; 2 uses
  %vec.phi1107 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.mw, %vector.body1105 ]
  %vec.phi1108 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.mx, %vector.body1105 ]
  %vec.phi1109 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.my, %vector.body1105 ]
  %vec.phi1110 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.mz, %vector.body1105 ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index1106 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 96
  %wide.load1111 = load <8 x i32>, ptr %i.ms, align 4, !tbaa !9
  %wide.load1112 = load <8 x i32>, ptr %i.mt, align 4, !tbaa !9
  %wide.load1113 = load <8 x i32>, ptr %i.mu, align 4, !tbaa !9
  %wide.load1114 = load <8 x i32>, ptr %i.mv, align 4, !tbaa !9
  %i.mw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1111, <8 x i32> %vec.phi1107) ; 2 uses
  %i.mx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1112, <8 x i32> %vec.phi1108) ; 2 uses
  %i.my = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1113, <8 x i32> %vec.phi1109) ; 2 uses
  %i.mz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1114, <8 x i32> %vec.phi1110) ; 2 uses
  %index.next1115 = add nuw i64 %index1106, 32    ; 2 uses
  %i.na = icmp eq i64 %index.next1115, %n.vec1104
  br i1 %i.na, label %middle.block1116, label %vector.body1105, !llvm.loop !65

middle.block1116:                                 ; preds = %vector.body1105
  %rdx.minmax1117 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mw, <8 x i32> %i.mx)
  %rdx.minmax1118 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1117, <8 x i32> %i.my)
  %rdx.minmax1119 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1118, <8 x i32> %i.mz)
  %i.nb = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1119) ; 3 uses
  %cmp.n1120 = icmp eq i64 %n.vec1104, %wide.trip.count.i363
  br i1 %cmp.n1120, label %_ZL4vmaxPKii.exit370, label %vec.epilog.iter.check1122

vec.epilog.iter.check1122:                        ; preds = %middle.block1116
  %min.epilog.iters.check1124 = icmp eq i64 %i.mr, 0
  br i1 %min.epilog.iters.check1124, label %.lr.ph.i364.preheader, label %vec.epilog.ph1125, !prof !89

vec.epilog.ph1125:                                ; preds = %vector.main.loop.iter.check1101, %vec.epilog.iter.check1122
  %vec.epilog.resume.val1126 = phi i64 [ %n.vec1104, %vec.epilog.iter.check1122 ], [ 0, %vector.main.loop.iter.check1101 ]
  %bc.merge.rdx1127 = phi i32 [ %i.nb, %vec.epilog.iter.check1122 ], [ 0, %vector.main.loop.iter.check1101 ]
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1127, i64 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1128 = and i64 %wide.trip.count.i363, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1129

vec.epilog.vector.body1129:                       ; preds = %vec.epilog.vector.body1129, %vec.epilog.ph1125
  %index1130 = phi i64 [ %vec.epilog.resume.val1126, %vec.epilog.ph1125 ], [ %index.next1135, %vec.epilog.vector.body1129 ] ; 2 uses
  %vec.phi1133 = phi <4 x i32> [ %broadcast.splat1132, %vec.epilog.ph1125 ], [ %i.nd, %vec.epilog.vector.body1129 ]
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index1130
  %wide.load1134 = load <4 x i32>, ptr %i.nc, align 4, !tbaa !9
  %i.nd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1134, <4 x i32> %vec.phi1133) ; 2 uses
  %index.next1135 = add nuw i64 %index1130, 4     ; 2 uses
  %i.ne = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.ne, label %vec.epilog.middle.block1136, label %vec.epilog.vector.body1129, !llvm.loop !66

vec.epilog.middle.block1136:                      ; preds = %vec.epilog.vector.body1129
  %i.nf = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.nd) ; 2 uses
  %cmp.n1137 = icmp eq i64 %n.vec1128, %wide.trip.count.i363
  br i1 %cmp.n1137, label %_ZL4vmaxPKii.exit370, label %.lr.ph.i364.preheader

.lr.ph.i364.preheader:                            ; preds = %iter.check1121, %vec.epilog.iter.check1122, %vec.epilog.middle.block1136
  %indvars.iv.i365.ph = phi i64 [ 0, %iter.check1121 ], [ %n.vec1104, %vec.epilog.iter.check1122 ], [ %n.vec1128, %vec.epilog.middle.block1136 ]
  %.011.i366.ph = phi i32 [ 0, %iter.check1121 ], [ %i.nb, %vec.epilog.iter.check1122 ], [ %i.nf, %vec.epilog.middle.block1136 ]
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.preheader, %.lr.ph.i364
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i368, %.lr.ph.i364 ], [ %indvars.iv.i365.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %.011.i366 = phi i32 [ %spec.select.i367, %.lr.ph.i364 ], [ %.011.i366.ph, %.lr.ph.i364.preheader ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i365
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !9
  %spec.select.i367 = call i32 @llvm.smax.i32(i32 %i.nh, i32 %.011.i366) ; 2 uses
  %indvars.iv.next.i368 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond.not.i369 = icmp eq i64 %indvars.iv.next.i368, %wide.trip.count.i363
  br i1 %exitcond.not.i369, label %_ZL4vmaxPKii.exit370, label %.lr.ph.i364, !llvm.loop !67

_ZL4vmaxPKii.exit370:                             ; preds = %.lr.ph.i364, %middle.block1116, %vec.epilog.middle.block1136, %_ZL4vmaxPKii.exit360
  %.0.lcssa.i361 = phi i32 [ 0, %_ZL4vmaxPKii.exit360 ], [ %i.nf, %vec.epilog.middle.block1136 ], [ %i.nb, %middle.block1116 ], [ %spec.select.i367, %.lr.ph.i364 ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.0.lcssa.i361, ptr %i.ni, align 4, !tbaa !9
  %i.nj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.jq, ptr %i.nj, align 4, !tbaa !9
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge483
  br i1 %.lcssa472, label %iter.check, label %_ZL4vmaxPKii.exit380

iter.check:                                       ; preds = %bb.t
  %wide.trip.count.i373 = zext nneg i32 %.fr492 to i64 ; 12 uses
  %min.iters.check661 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check661, label %.lr.ph.i374.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check662 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check662, label %vec.epilog.ph, label %vector.ph663

vector.ph663:                                     ; preds = %vector.main.loop.iter.check
  %i.nk = and i64 %wide.trip.count.i373, 28
  %n.vec664 = and i64 %wide.trip.count.i373, 2147483616 ; 4 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.ph663, %vector.body665
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next674, %vector.body665 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.np, %vector.body665 ]
  %vec.phi667 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.nq, %vector.body665 ]
  %vec.phi668 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.nr, %vector.body665 ]
  %vec.phi669 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.ns, %vector.body665 ]
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index666 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 96
  %wide.load670 = load <8 x i32>, ptr %i.nl, align 4, !tbaa !9
  %wide.load671 = load <8 x i32>, ptr %i.nm, align 4, !tbaa !9
  %wide.load672 = load <8 x i32>, ptr %i.nn, align 4, !tbaa !9
  %wide.load673 = load <8 x i32>, ptr %i.no, align 4, !tbaa !9
  %i.np = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load670, <8 x i32> %vec.phi) ; 2 uses
  %i.nq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load671, <8 x i32> %vec.phi667) ; 2 uses
  %i.nr = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load672, <8 x i32> %vec.phi668) ; 2 uses
  %i.ns = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load673, <8 x i32> %vec.phi669) ; 2 uses
  %index.next674 = add nuw i64 %index666, 32      ; 2 uses
  %i.nt = icmp eq i64 %index.next674, %n.vec664
  br i1 %i.nt, label %middle.block675, label %vector.body665, !llvm.loop !68

middle.block675:                                  ; preds = %vector.body665
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.np, <8 x i32> %i.nq)
  %rdx.minmax676 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.nr)
  %rdx.minmax677 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax676, <8 x i32> %i.ns)
  %i.nu = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax677) ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec664, %wide.trip.count.i373
  br i1 %cmp.n678, label %iter.check711, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block675
  %min.epilog.iters.check = icmp eq i64 %i.nk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i374.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec664, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.nu, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert681 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat682 = shufflevector <4 x i32> %broadcast.splatinsert681, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec679 = and i64 %wide.trip.count.i373, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index680 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next685, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi683 = phi <4 x i32> [ %broadcast.splat682, %vec.epilog.ph ], [ %i.nw, %vec.epilog.vector.body ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index680
  %wide.load684 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !9
  %i.nw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load684, <4 x i32> %vec.phi683) ; 2 uses
  %index.next685 = add nuw i64 %index680, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next685, %n.vec679
  br i1 %i.nx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ny = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.nw) ; 2 uses
  %cmp.n686 = icmp eq i64 %n.vec679, %wide.trip.count.i373
  br i1 %cmp.n686, label %iter.check711, label %.lr.ph.i374.preheader

.lr.ph.i374.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i375.ph = phi i64 [ 0, %iter.check ], [ %n.vec664, %vec.epilog.iter.check ], [ %n.vec679, %vec.epilog.middle.block ]
  %.011.i376.ph = phi i32 [ 0, %iter.check ], [ %i.nu, %vec.epilog.iter.check ], [ %i.ny, %vec.epilog.middle.block ]
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.preheader, %.lr.ph.i374
  %indvars.iv.i375 = phi i64 [ %indvars.iv.next.i378, %.lr.ph.i374 ], [ %indvars.iv.i375.ph, %.lr.ph.i374.preheader ] ; 2 uses
  %.011.i376 = phi i32 [ %spec.select.i377, %.lr.ph.i374 ], [ %.011.i376.ph, %.lr.ph.i374.preheader ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i375
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !9
  %spec.select.i377 = call i32 @llvm.smax.i32(i32 %i.oa, i32 %.011.i376) ; 2 uses
  %indvars.iv.next.i378 = add nuw nsw i64 %indvars.iv.i375, 1 ; 2 uses
  %exitcond.not.i379 = icmp eq i64 %indvars.iv.next.i378, %wide.trip.count.i373
  br i1 %exitcond.not.i379, label %iter.check711, label %.lr.ph.i374, !llvm.loop !70

_ZL4vmaxPKii.exit380:                             ; preds = %bb.t
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %_ZL4vmaxPKii.exit390

iter.check711:                                    ; preds = %.lr.ph.i374, %vec.epilog.middle.block, %middle.block675
  %spec.select.i377.lcssa = phi i32 [ %i.ny, %vec.epilog.middle.block ], [ %i.nu, %middle.block675 ], [ %spec.select.i377, %.lr.ph.i374 ] ; 4 uses
  store i32 %spec.select.i377.lcssa, ptr %i.e, align 4, !tbaa !9
  %min.iters.check690 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check690, label %.lr.ph.i384.preheader, label %vector.main.loop.iter.check691

vector.main.loop.iter.check691:                   ; preds = %iter.check711
  %min.iters.check692 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check692, label %vec.epilog.ph715, label %vector.ph693

vector.ph693:                                     ; preds = %vector.main.loop.iter.check691
  %i.ob = and i64 %wide.trip.count.i373, 28
  %n.vec694 = and i64 %wide.trip.count.i373, 2147483616 ; 4 uses
  br label %vector.body695

vector.body695:                                   ; preds = %vector.ph693, %vector.body695
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next705, %vector.body695 ] ; 2 uses
  %vec.phi697 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.og, %vector.body695 ]
  %vec.phi698 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.oh, %vector.body695 ]
  %vec.phi699 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.oi, %vector.body695 ]
  %vec.phi700 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.oj, %vector.body695 ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index696 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 96
  %wide.load701 = load <8 x i32>, ptr %i.oc, align 4, !tbaa !9
  %wide.load702 = load <8 x i32>, ptr %i.od, align 4, !tbaa !9
  %wide.load703 = load <8 x i32>, ptr %i.oe, align 4, !tbaa !9
  %wide.load704 = load <8 x i32>, ptr %i.of, align 4, !tbaa !9
  %i.og = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load701, <8 x i32> %vec.phi697) ; 2 uses
  %i.oh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load702, <8 x i32> %vec.phi698) ; 2 uses
  %i.oi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load703, <8 x i32> %vec.phi699) ; 2 uses
  %i.oj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load704, <8 x i32> %vec.phi700) ; 2 uses
  %index.next705 = add nuw i64 %index696, 32      ; 2 uses
  %i.ok = icmp eq i64 %index.next705, %n.vec694
  br i1 %i.ok, label %middle.block706, label %vector.body695, !llvm.loop !71

middle.block706:                                  ; preds = %vector.body695
  %rdx.minmax707 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.og, <8 x i32> %i.oh)
  %rdx.minmax708 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax707, <8 x i32> %i.oi)
  %rdx.minmax709 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax708, <8 x i32> %i.oj)
  %i.ol = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax709) ; 3 uses
  %cmp.n710 = icmp eq i64 %n.vec694, %wide.trip.count.i373
  br i1 %cmp.n710, label %_ZL4vmaxPKii.exit390, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block706
  %min.epilog.iters.check714 = icmp eq i64 %i.ob, 0
  br i1 %min.epilog.iters.check714, label %.lr.ph.i384.preheader, label %vec.epilog.ph715, !prof !89

vec.epilog.ph715:                                 ; preds = %vector.main.loop.iter.check691, %vec.epilog.iter.check712
  %vec.epilog.resume.val716 = phi i64 [ %n.vec694, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check691 ]
  %bc.merge.rdx717 = phi i32 [ %i.ol, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check691 ]
  %broadcast.splatinsert721 = insertelement <4 x i32> poison, i32 %bc.merge.rdx717, i64 0
  %broadcast.splat722 = shufflevector <4 x i32> %broadcast.splatinsert721, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec718 = and i64 %wide.trip.count.i373, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body719

vec.epilog.vector.body719:                        ; preds = %vec.epilog.vector.body719, %vec.epilog.ph715
  %index720 = phi i64 [ %vec.epilog.resume.val716, %vec.epilog.ph715 ], [ %index.next725, %vec.epilog.vector.body719 ] ; 2 uses
  %vec.phi723 = phi <4 x i32> [ %broadcast.splat722, %vec.epilog.ph715 ], [ %i.on, %vec.epilog.vector.body719 ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index720
  %wide.load724 = load <4 x i32>, ptr %i.om, align 4, !tbaa !9
  %i.on = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load724, <4 x i32> %vec.phi723) ; 2 uses
  %index.next725 = add nuw i64 %index720, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next725, %n.vec718
  br i1 %i.oo, label %vec.epilog.middle.block726, label %vec.epilog.vector.body719, !llvm.loop !72

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body719
  %i.op = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.on) ; 2 uses
  %cmp.n727 = icmp eq i64 %n.vec718, %wide.trip.count.i373
  br i1 %cmp.n727, label %_ZL4vmaxPKii.exit390, label %.lr.ph.i384.preheader

.lr.ph.i384.preheader:                            ; preds = %iter.check711, %vec.epilog.iter.check712, %vec.epilog.middle.block726
  %indvars.iv.i385.ph = phi i64 [ 0, %iter.check711 ], [ %n.vec694, %vec.epilog.iter.check712 ], [ %n.vec718, %vec.epilog.middle.block726 ]
  %.011.i386.ph = phi i32 [ 0, %iter.check711 ], [ %i.ol, %vec.epilog.iter.check712 ], [ %i.op, %vec.epilog.middle.block726 ]
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.preheader, %.lr.ph.i384
  %indvars.iv.i385 = phi i64 [ %indvars.iv.next.i388, %.lr.ph.i384 ], [ %indvars.iv.i385.ph, %.lr.ph.i384.preheader ] ; 2 uses
  %.011.i386 = phi i32 [ %spec.select.i387, %.lr.ph.i384 ], [ %.011.i386.ph, %.lr.ph.i384.preheader ]
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i385
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !9
  %spec.select.i387 = call i32 @llvm.smax.i32(i32 %i.or, i32 %.011.i386) ; 2 uses
  %indvars.iv.next.i388 = add nuw nsw i64 %indvars.iv.i385, 1 ; 2 uses
  %exitcond.not.i389 = icmp eq i64 %indvars.iv.next.i388, %wide.trip.count.i373
  br i1 %exitcond.not.i389, label %_ZL4vmaxPKii.exit390, label %.lr.ph.i384, !llvm.loop !73

_ZL4vmaxPKii.exit390:                             ; preds = %.lr.ph.i384, %middle.block706, %vec.epilog.middle.block726, %_ZL4vmaxPKii.exit380
  %.0.lcssa.i371460 = phi i32 [ 0, %_ZL4vmaxPKii.exit380 ], [ %spec.select.i377.lcssa, %middle.block706 ], [ %spec.select.i377.lcssa, %vec.epilog.middle.block726 ], [ %spec.select.i377.lcssa, %.lr.ph.i384 ]
  %.0.lcssa.i381 = phi i32 [ 0, %_ZL4vmaxPKii.exit380 ], [ %i.ol, %middle.block706 ], [ %i.op, %vec.epilog.middle.block726 ], [ %spec.select.i387, %.lr.ph.i384 ] ; 2 uses
  store i32 %.0.lcssa.i381, ptr %i.f, align 4, !tbaa !9
  store i32 %i.id, ptr %i.g, align 4, !tbaa !9
  %i.os = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.hv
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9  ; 5 uses
  store i32 %i.ot, ptr %i.h, align 4, !tbaa !9
  store ptr %i.bq, ptr %i.o, align 16, !tbaa !19
  store ptr %i.ca, ptr %i.p, align 16, !tbaa !19
  store i32 %.fr492, ptr %11, align 4, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.0269, ptr %i.ou, align 4, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %1, ptr %i.ov, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check752, label %_ZL4vmaxPKii.exit400

iter.check752:                                    ; preds = %_ZL4vmaxPKii.exit390
  %wide.trip.count.i393 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check731 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check731, label %.lr.ph.i394.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %iter.check752
  %min.iters.check733 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check733, label %vec.epilog.ph756, label %vector.ph734

vector.ph734:                                     ; preds = %vector.main.loop.iter.check732
  %i.ow = and i64 %wide.trip.count.i393, 28
  %n.vec735 = and i64 %wide.trip.count.i393, 2147483616 ; 4 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.ph734, %vector.body736
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next746, %vector.body736 ] ; 2 uses
  %vec.phi738 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pb, %vector.body736 ]
  %vec.phi739 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pc, %vector.body736 ]
  %vec.phi740 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pd, %vector.body736 ]
  %vec.phi741 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pe, %vector.body736 ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index737 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 96
  %wide.load742 = load <8 x i32>, ptr %i.ox, align 4, !tbaa !9
  %wide.load743 = load <8 x i32>, ptr %i.oy, align 4, !tbaa !9
  %wide.load744 = load <8 x i32>, ptr %i.oz, align 4, !tbaa !9
  %wide.load745 = load <8 x i32>, ptr %i.pa, align 4, !tbaa !9
  %i.pb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load742, <8 x i32> %vec.phi738) ; 2 uses
  %i.pc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load743, <8 x i32> %vec.phi739) ; 2 uses
  %i.pd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load744, <8 x i32> %vec.phi740) ; 2 uses
  %i.pe = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load745, <8 x i32> %vec.phi741) ; 2 uses
  %index.next746 = add nuw i64 %index737, 32      ; 2 uses
  %i.pf = icmp eq i64 %index.next746, %n.vec735
  br i1 %i.pf, label %middle.block747, label %vector.body736, !llvm.loop !74

middle.block747:                                  ; preds = %vector.body736
  %rdx.minmax748 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pb, <8 x i32> %i.pc)
  %rdx.minmax749 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax748, <8 x i32> %i.pd)
  %rdx.minmax750 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax749, <8 x i32> %i.pe)
  %i.pg = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax750) ; 3 uses
  %cmp.n751 = icmp eq i64 %n.vec735, %wide.trip.count.i393
  br i1 %cmp.n751, label %_ZL4vmaxPKii.exit400, label %vec.epilog.iter.check753

vec.epilog.iter.check753:                         ; preds = %middle.block747
  %min.epilog.iters.check755 = icmp eq i64 %i.ow, 0
  br i1 %min.epilog.iters.check755, label %.lr.ph.i394.preheader, label %vec.epilog.ph756, !prof !89

vec.epilog.ph756:                                 ; preds = %vector.main.loop.iter.check732, %vec.epilog.iter.check753
  %vec.epilog.resume.val757 = phi i64 [ %n.vec735, %vec.epilog.iter.check753 ], [ 0, %vector.main.loop.iter.check732 ]
  %bc.merge.rdx758 = phi i32 [ %i.pg, %vec.epilog.iter.check753 ], [ 0, %vector.main.loop.iter.check732 ]
  %broadcast.splatinsert762 = insertelement <4 x i32> poison, i32 %bc.merge.rdx758, i64 0
  %broadcast.splat763 = shufflevector <4 x i32> %broadcast.splatinsert762, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec759 = and i64 %wide.trip.count.i393, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body760

vec.epilog.vector.body760:                        ; preds = %vec.epilog.vector.body760, %vec.epilog.ph756
  %index761 = phi i64 [ %vec.epilog.resume.val757, %vec.epilog.ph756 ], [ %index.next766, %vec.epilog.vector.body760 ] ; 2 uses
  %vec.phi764 = phi <4 x i32> [ %broadcast.splat763, %vec.epilog.ph756 ], [ %i.pi, %vec.epilog.vector.body760 ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index761
  %wide.load765 = load <4 x i32>, ptr %i.ph, align 4, !tbaa !9
  %i.pi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load765, <4 x i32> %vec.phi764) ; 2 uses
  %index.next766 = add nuw i64 %index761, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next766, %n.vec759
  br i1 %i.pj, label %vec.epilog.middle.block767, label %vec.epilog.vector.body760, !llvm.loop !75

vec.epilog.middle.block767:                       ; preds = %vec.epilog.vector.body760
  %i.pk = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.pi) ; 2 uses
  %cmp.n768 = icmp eq i64 %n.vec759, %wide.trip.count.i393
  br i1 %cmp.n768, label %_ZL4vmaxPKii.exit400, label %.lr.ph.i394.preheader

.lr.ph.i394.preheader:                            ; preds = %iter.check752, %vec.epilog.iter.check753, %vec.epilog.middle.block767
  %indvars.iv.i395.ph = phi i64 [ 0, %iter.check752 ], [ %n.vec735, %vec.epilog.iter.check753 ], [ %n.vec759, %vec.epilog.middle.block767 ]
  %.011.i396.ph = phi i32 [ 0, %iter.check752 ], [ %i.pg, %vec.epilog.iter.check753 ], [ %i.pk, %vec.epilog.middle.block767 ]
  br label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %.lr.ph.i394.preheader, %.lr.ph.i394
  %indvars.iv.i395 = phi i64 [ %indvars.iv.next.i398, %.lr.ph.i394 ], [ %indvars.iv.i395.ph, %.lr.ph.i394.preheader ] ; 2 uses
  %.011.i396 = phi i32 [ %spec.select.i397, %.lr.ph.i394 ], [ %.011.i396.ph, %.lr.ph.i394.preheader ]
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i395
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9
  %spec.select.i397 = call i32 @llvm.smax.i32(i32 %i.pm, i32 %.011.i396) ; 2 uses
  %indvars.iv.next.i398 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i399 = icmp eq i64 %indvars.iv.next.i398, %wide.trip.count.i393
  br i1 %exitcond.not.i399, label %_ZL4vmaxPKii.exit400, label %.lr.ph.i394, !llvm.loop !76

_ZL4vmaxPKii.exit400:                             ; preds = %.lr.ph.i394, %middle.block747, %vec.epilog.middle.block767, %_ZL4vmaxPKii.exit390
  %.0.lcssa.i391 = phi i32 [ 0, %_ZL4vmaxPKii.exit390 ], [ %i.pk, %vec.epilog.middle.block767 ], [ %i.pg, %middle.block747 ], [ %spec.select.i397, %.lr.ph.i394 ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.0.lcssa.i391, ptr %i.pn, align 4, !tbaa !9
  %i.po = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ib
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !9  ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bw, ptr %i.pr, align 8, !tbaa !19
  %i.ps = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cc, ptr %i.ps, align 8, !tbaa !19
  %i.pt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bx, ptr %i.pt, align 8, !tbaa !19
  %i.pu = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.cd, ptr %i.pu, align 8, !tbaa !19
  %i.pv = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.ot, ptr %i.pv, align 4, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ot, ptr %i.pw, align 4, !tbaa !9
  %i.px = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.hv
  %i.py = load i32, ptr %i.px, align 4, !tbaa !9  ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check793, label %_ZL4vmaxPKii.exit410

iter.check793:                                    ; preds = %_ZL4vmaxPKii.exit400
  %wide.trip.count.i403 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check772 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check772, label %.lr.ph.i404.preheader, label %vector.main.loop.iter.check773

vector.main.loop.iter.check773:                   ; preds = %iter.check793
  %min.iters.check774 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check774, label %vec.epilog.ph797, label %vector.ph775

vector.ph775:                                     ; preds = %vector.main.loop.iter.check773
  %i.qa = and i64 %wide.trip.count.i403, 28
  %n.vec776 = and i64 %wide.trip.count.i403, 2147483616 ; 4 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.ph775, %vector.body777
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next787, %vector.body777 ] ; 2 uses
  %vec.phi779 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qf, %vector.body777 ]
  %vec.phi780 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qg, %vector.body777 ]
  %vec.phi781 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qh, %vector.body777 ]
  %vec.phi782 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qi, %vector.body777 ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index778 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 96
  %wide.load783 = load <8 x i32>, ptr %i.qb, align 4, !tbaa !9
  %wide.load784 = load <8 x i32>, ptr %i.qc, align 4, !tbaa !9
  %wide.load785 = load <8 x i32>, ptr %i.qd, align 4, !tbaa !9
  %wide.load786 = load <8 x i32>, ptr %i.qe, align 4, !tbaa !9
  %i.qf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load783, <8 x i32> %vec.phi779) ; 2 uses
  %i.qg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load784, <8 x i32> %vec.phi780) ; 2 uses
  %i.qh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load785, <8 x i32> %vec.phi781) ; 2 uses
  %i.qi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load786, <8 x i32> %vec.phi782) ; 2 uses
  %index.next787 = add nuw i64 %index778, 32      ; 2 uses
  %i.qj = icmp eq i64 %index.next787, %n.vec776
  br i1 %i.qj, label %middle.block788, label %vector.body777, !llvm.loop !77

middle.block788:                                  ; preds = %vector.body777
  %rdx.minmax789 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qf, <8 x i32> %i.qg)
  %rdx.minmax790 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax789, <8 x i32> %i.qh)
  %rdx.minmax791 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax790, <8 x i32> %i.qi)
  %i.qk = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax791) ; 3 uses
  %cmp.n792 = icmp eq i64 %n.vec776, %wide.trip.count.i403
  br i1 %cmp.n792, label %_ZL4vmaxPKii.exit410, label %vec.epilog.iter.check794

vec.epilog.iter.check794:                         ; preds = %middle.block788
  %min.epilog.iters.check796 = icmp eq i64 %i.qa, 0
  br i1 %min.epilog.iters.check796, label %.lr.ph.i404.preheader, label %vec.epilog.ph797, !prof !89

vec.epilog.ph797:                                 ; preds = %vector.main.loop.iter.check773, %vec.epilog.iter.check794
  %vec.epilog.resume.val798 = phi i64 [ %n.vec776, %vec.epilog.iter.check794 ], [ 0, %vector.main.loop.iter.check773 ]
  %bc.merge.rdx799 = phi i32 [ %i.qk, %vec.epilog.iter.check794 ], [ 0, %vector.main.loop.iter.check773 ]
  %broadcast.splatinsert803 = insertelement <4 x i32> poison, i32 %bc.merge.rdx799, i64 0
  %broadcast.splat804 = shufflevector <4 x i32> %broadcast.splatinsert803, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec800 = and i64 %wide.trip.count.i403, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body801

vec.epilog.vector.body801:                        ; preds = %vec.epilog.vector.body801, %vec.epilog.ph797
  %index802 = phi i64 [ %vec.epilog.resume.val798, %vec.epilog.ph797 ], [ %index.next807, %vec.epilog.vector.body801 ] ; 2 uses
  %vec.phi805 = phi <4 x i32> [ %broadcast.splat804, %vec.epilog.ph797 ], [ %i.qm, %vec.epilog.vector.body801 ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index802
  %wide.load806 = load <4 x i32>, ptr %i.ql, align 4, !tbaa !9
  %i.qm = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load806, <4 x i32> %vec.phi805) ; 2 uses
  %index.next807 = add nuw i64 %index802, 4       ; 2 uses
  %i.qn = icmp eq i64 %index.next807, %n.vec800
  br i1 %i.qn, label %vec.epilog.middle.block808, label %vec.epilog.vector.body801, !llvm.loop !78

vec.epilog.middle.block808:                       ; preds = %vec.epilog.vector.body801
  %i.qo = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.qm) ; 2 uses
  %cmp.n809 = icmp eq i64 %n.vec800, %wide.trip.count.i403
  br i1 %cmp.n809, label %_ZL4vmaxPKii.exit410, label %.lr.ph.i404.preheader

.lr.ph.i404.preheader:                            ; preds = %iter.check793, %vec.epilog.iter.check794, %vec.epilog.middle.block808
  %indvars.iv.i405.ph = phi i64 [ 0, %iter.check793 ], [ %n.vec776, %vec.epilog.iter.check794 ], [ %n.vec800, %vec.epilog.middle.block808 ]
  %.011.i406.ph = phi i32 [ 0, %iter.check793 ], [ %i.qk, %vec.epilog.iter.check794 ], [ %i.qo, %vec.epilog.middle.block808 ]
  br label %.lr.ph.i404

.lr.ph.i404:                                      ; preds = %.lr.ph.i404.preheader, %.lr.ph.i404
  %indvars.iv.i405 = phi i64 [ %indvars.iv.next.i408, %.lr.ph.i404 ], [ %indvars.iv.i405.ph, %.lr.ph.i404.preheader ] ; 2 uses
  %.011.i406 = phi i32 [ %spec.select.i407, %.lr.ph.i404 ], [ %.011.i406.ph, %.lr.ph.i404.preheader ]
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i405
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !9
  %spec.select.i407 = call i32 @llvm.smax.i32(i32 %i.qq, i32 %.011.i406) ; 2 uses
  %indvars.iv.next.i408 = add nuw nsw i64 %indvars.iv.i405, 1 ; 2 uses
  %exitcond.not.i409 = icmp eq i64 %indvars.iv.next.i408, %wide.trip.count.i403
  br i1 %exitcond.not.i409, label %_ZL4vmaxPKii.exit410, label %.lr.ph.i404, !llvm.loop !79

_ZL4vmaxPKii.exit410:                             ; preds = %.lr.ph.i404, %middle.block788, %vec.epilog.middle.block808, %_ZL4vmaxPKii.exit400
  %.0.lcssa.i401 = phi i32 [ 0, %_ZL4vmaxPKii.exit400 ], [ %i.qo, %vec.epilog.middle.block808 ], [ %i.qk, %middle.block788 ], [ %spec.select.i407, %.lr.ph.i404 ] ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.0.lcssa.i401, ptr %i.qr, align 4, !tbaa !9
  %i.qs = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.id, ptr %i.qs, align 4, !tbaa !9
  %i.qt = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.if, ptr %i.qt, align 4, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.fr, ptr %14, align 4, !tbaa !9
  %i.qu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.0270, ptr %i.qu, align 4, !tbaa !9
  %i.qv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %2, ptr %i.qv, align 4, !tbaa !9
  %i.qw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bz, ptr %i.qw, align 16, !tbaa !19
  %i.qx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.cf, ptr %i.qx, align 16, !tbaa !19
  br i1 %.lcssa472, label %iter.check834, label %_ZL4vmaxPKii.exit420

iter.check834:                                    ; preds = %_ZL4vmaxPKii.exit410
  %wide.trip.count.i413 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check813 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check813, label %.lr.ph.i414.preheader, label %vector.main.loop.iter.check814

vector.main.loop.iter.check814:                   ; preds = %iter.check834
  %min.iters.check815 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check815, label %vec.epilog.ph838, label %vector.ph816

vector.ph816:                                     ; preds = %vector.main.loop.iter.check814
  %i.qy = and i64 %wide.trip.count.i413, 28
  %n.vec817 = and i64 %wide.trip.count.i413, 2147483616 ; 4 uses
  br label %vector.body818

vector.body818:                                   ; preds = %vector.ph816, %vector.body818
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next828, %vector.body818 ] ; 2 uses
  %vec.phi820 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rd, %vector.body818 ]
  %vec.phi821 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.re, %vector.body818 ]
  %vec.phi822 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rf, %vector.body818 ]
  %vec.phi823 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rg, %vector.body818 ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index819 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 96
  %wide.load824 = load <8 x i32>, ptr %i.qz, align 4, !tbaa !9
  %wide.load825 = load <8 x i32>, ptr %i.ra, align 4, !tbaa !9
  %wide.load826 = load <8 x i32>, ptr %i.rb, align 4, !tbaa !9
  %wide.load827 = load <8 x i32>, ptr %i.rc, align 4, !tbaa !9
  %i.rd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load824, <8 x i32> %vec.phi820) ; 2 uses
  %i.re = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load825, <8 x i32> %vec.phi821) ; 2 uses
  %i.rf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load826, <8 x i32> %vec.phi822) ; 2 uses
  %i.rg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load827, <8 x i32> %vec.phi823) ; 2 uses
  %index.next828 = add nuw i64 %index819, 32      ; 2 uses
  %i.rh = icmp eq i64 %index.next828, %n.vec817
  br i1 %i.rh, label %middle.block829, label %vector.body818, !llvm.loop !80

middle.block829:                                  ; preds = %vector.body818
  %rdx.minmax830 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rd, <8 x i32> %i.re)
  %rdx.minmax831 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax830, <8 x i32> %i.rf)
  %rdx.minmax832 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax831, <8 x i32> %i.rg)
  %i.ri = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax832) ; 3 uses
  %cmp.n833 = icmp eq i64 %n.vec817, %wide.trip.count.i413
  br i1 %cmp.n833, label %_ZL4vmaxPKii.exit420, label %vec.epilog.iter.check835

vec.epilog.iter.check835:                         ; preds = %middle.block829
  %min.epilog.iters.check837 = icmp eq i64 %i.qy, 0
  br i1 %min.epilog.iters.check837, label %.lr.ph.i414.preheader, label %vec.epilog.ph838, !prof !89

vec.epilog.ph838:                                 ; preds = %vector.main.loop.iter.check814, %vec.epilog.iter.check835
  %vec.epilog.resume.val839 = phi i64 [ %n.vec817, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check814 ]
  %bc.merge.rdx840 = phi i32 [ %i.ri, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check814 ]
  %broadcast.splatinsert844 = insertelement <4 x i32> poison, i32 %bc.merge.rdx840, i64 0
  %broadcast.splat845 = shufflevector <4 x i32> %broadcast.splatinsert844, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec841 = and i64 %wide.trip.count.i413, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body842

vec.epilog.vector.body842:                        ; preds = %vec.epilog.vector.body842, %vec.epilog.ph838
  %index843 = phi i64 [ %vec.epilog.resume.val839, %vec.epilog.ph838 ], [ %index.next848, %vec.epilog.vector.body842 ] ; 2 uses
  %vec.phi846 = phi <4 x i32> [ %broadcast.splat845, %vec.epilog.ph838 ], [ %i.rk, %vec.epilog.vector.body842 ]
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index843
  %wide.load847 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !9
  %i.rk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load847, <4 x i32> %vec.phi846) ; 2 uses
  %index.next848 = add nuw i64 %index843, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next848, %n.vec841
  br i1 %i.rl, label %vec.epilog.middle.block849, label %vec.epilog.vector.body842, !llvm.loop !81

vec.epilog.middle.block849:                       ; preds = %vec.epilog.vector.body842
  %i.rm = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.rk) ; 2 uses
  %cmp.n850 = icmp eq i64 %n.vec841, %wide.trip.count.i413
  br i1 %cmp.n850, label %_ZL4vmaxPKii.exit420, label %.lr.ph.i414.preheader

.lr.ph.i414.preheader:                            ; preds = %iter.check834, %vec.epilog.iter.check835, %vec.epilog.middle.block849
  %indvars.iv.i415.ph = phi i64 [ 0, %iter.check834 ], [ %n.vec817, %vec.epilog.iter.check835 ], [ %n.vec841, %vec.epilog.middle.block849 ]
  %.011.i416.ph = phi i32 [ 0, %iter.check834 ], [ %i.ri, %vec.epilog.iter.check835 ], [ %i.rm, %vec.epilog.middle.block849 ]
  br label %.lr.ph.i414

.lr.ph.i414:                                      ; preds = %.lr.ph.i414.preheader, %.lr.ph.i414
  %indvars.iv.i415 = phi i64 [ %indvars.iv.next.i418, %.lr.ph.i414 ], [ %indvars.iv.i415.ph, %.lr.ph.i414.preheader ] ; 2 uses
  %.011.i416 = phi i32 [ %spec.select.i417, %.lr.ph.i414 ], [ %.011.i416.ph, %.lr.ph.i414.preheader ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i415
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !9
  %spec.select.i417 = call i32 @llvm.smax.i32(i32 %i.ro, i32 %.011.i416) ; 2 uses
  %indvars.iv.next.i418 = add nuw nsw i64 %indvars.iv.i415, 1 ; 2 uses
  %exitcond.not.i419 = icmp eq i64 %indvars.iv.next.i418, %wide.trip.count.i413
  br i1 %exitcond.not.i419, label %_ZL4vmaxPKii.exit420, label %.lr.ph.i414, !llvm.loop !82

_ZL4vmaxPKii.exit420:                             ; preds = %.lr.ph.i414, %middle.block829, %vec.epilog.middle.block849, %_ZL4vmaxPKii.exit410
  %.0.lcssa.i411 = phi i32 [ 0, %_ZL4vmaxPKii.exit410 ], [ %i.rm, %vec.epilog.middle.block849 ], [ %i.ri, %middle.block829 ], [ %spec.select.i417, %.lr.ph.i414 ] ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.0.lcssa.i411, ptr %i.rp, align 4, !tbaa !9
  %i.rq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.ot, ptr %i.rq, align 4, !tbaa !9
  %i.rr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.py, ptr %i.rr, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check875, label %_ZL4vmaxPKii.exit430

iter.check875:                                    ; preds = %_ZL4vmaxPKii.exit420
  %wide.trip.count.i423 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check854 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check854, label %.lr.ph.i424.preheader, label %vector.main.loop.iter.check855

vector.main.loop.iter.check855:                   ; preds = %iter.check875
  %min.iters.check856 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check856, label %vec.epilog.ph879, label %vector.ph857

vector.ph857:                                     ; preds = %vector.main.loop.iter.check855
  %i.rs = and i64 %wide.trip.count.i423, 28
  %n.vec858 = and i64 %wide.trip.count.i423, 2147483616 ; 4 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.ph857, %vector.body859
  %index860 = phi i64 [ 0, %vector.ph857 ], [ %index.next869, %vector.body859 ] ; 2 uses
  %vec.phi861 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.rx, %vector.body859 ]
  %vec.phi862 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.ry, %vector.body859 ]
  %vec.phi863 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.rz, %vector.body859 ]
  %vec.phi864 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.sa, %vector.body859 ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index860 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 96
  %wide.load865 = load <8 x i32>, ptr %i.rt, align 4, !tbaa !9
  %wide.load866 = load <8 x i32>, ptr %i.ru, align 4, !tbaa !9
  %wide.load867 = load <8 x i32>, ptr %i.rv, align 4, !tbaa !9
  %wide.load868 = load <8 x i32>, ptr %i.rw, align 4, !tbaa !9
  %i.rx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load865, <8 x i32> %vec.phi861) ; 2 uses
  %i.ry = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load866, <8 x i32> %vec.phi862) ; 2 uses
  %i.rz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load867, <8 x i32> %vec.phi863) ; 2 uses
  %i.sa = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load868, <8 x i32> %vec.phi864) ; 2 uses
  %index.next869 = add nuw i64 %index860, 32      ; 2 uses
  %i.sb = icmp eq i64 %index.next869, %n.vec858
  br i1 %i.sb, label %middle.block870, label %vector.body859, !llvm.loop !83

middle.block870:                                  ; preds = %vector.body859
  %rdx.minmax871 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rx, <8 x i32> %i.ry)
  %rdx.minmax872 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax871, <8 x i32> %i.rz)
  %rdx.minmax873 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax872, <8 x i32> %i.sa)
  %i.sc = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax873) ; 3 uses
  %cmp.n874 = icmp eq i64 %n.vec858, %wide.trip.count.i423
  br i1 %cmp.n874, label %_ZL4vmaxPKii.exit430, label %vec.epilog.iter.check876

vec.epilog.iter.check876:                         ; preds = %middle.block870
  %min.epilog.iters.check878 = icmp eq i64 %i.rs, 0
  br i1 %min.epilog.iters.check878, label %.lr.ph.i424.preheader, label %vec.epilog.ph879, !prof !89

vec.epilog.ph879:                                 ; preds = %vector.main.loop.iter.check855, %vec.epilog.iter.check876
  %vec.epilog.resume.val880 = phi i64 [ %n.vec858, %vec.epilog.iter.check876 ], [ 0, %vector.main.loop.iter.check855 ]
  %bc.merge.rdx881 = phi i32 [ %i.sc, %vec.epilog.iter.check876 ], [ 0, %vector.main.loop.iter.check855 ]
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %bc.merge.rdx881, i64 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec882 = and i64 %wide.trip.count.i423, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body883

vec.epilog.vector.body883:                        ; preds = %vec.epilog.vector.body883, %vec.epilog.ph879
  %index884 = phi i64 [ %vec.epilog.resume.val880, %vec.epilog.ph879 ], [ %index.next889, %vec.epilog.vector.body883 ] ; 2 uses
  %vec.phi887 = phi <4 x i32> [ %broadcast.splat886, %vec.epilog.ph879 ], [ %i.se, %vec.epilog.vector.body883 ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index884
  %wide.load888 = load <4 x i32>, ptr %i.sd, align 4, !tbaa !9
  %i.se = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load888, <4 x i32> %vec.phi887) ; 2 uses
  %index.next889 = add nuw i64 %index884, 4       ; 2 uses
  %i.sf = icmp eq i64 %index.next889, %n.vec882
  br i1 %i.sf, label %vec.epilog.middle.block890, label %vec.epilog.vector.body883, !llvm.loop !84

vec.epilog.middle.block890:                       ; preds = %vec.epilog.vector.body883
  %i.sg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.se) ; 2 uses
  %cmp.n891 = icmp eq i64 %n.vec882, %wide.trip.count.i423
  br i1 %cmp.n891, label %_ZL4vmaxPKii.exit430, label %.lr.ph.i424.preheader

.lr.ph.i424.preheader:                            ; preds = %iter.check875, %vec.epilog.iter.check876, %vec.epilog.middle.block890
  %indvars.iv.i425.ph = phi i64 [ 0, %iter.check875 ], [ %n.vec858, %vec.epilog.iter.check876 ], [ %n.vec882, %vec.epilog.middle.block890 ]
  %.011.i426.ph = phi i32 [ 0, %iter.check875 ], [ %i.sc, %vec.epilog.iter.check876 ], [ %i.sg, %vec.epilog.middle.block890 ]
  br label %.lr.ph.i424

.lr.ph.i424:                                      ; preds = %.lr.ph.i424.preheader, %.lr.ph.i424
  %indvars.iv.i425 = phi i64 [ %indvars.iv.next.i428, %.lr.ph.i424 ], [ %indvars.iv.i425.ph, %.lr.ph.i424.preheader ] ; 2 uses
  %.011.i426 = phi i32 [ %spec.select.i427, %.lr.ph.i424 ], [ %.011.i426.ph, %.lr.ph.i424.preheader ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i425
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !9
  %spec.select.i427 = call i32 @llvm.smax.i32(i32 %i.si, i32 %.011.i426) ; 2 uses
  %indvars.iv.next.i428 = add nuw nsw i64 %indvars.iv.i425, 1 ; 2 uses
  %exitcond.not.i429 = icmp eq i64 %indvars.iv.next.i428, %wide.trip.count.i423
  br i1 %exitcond.not.i429, label %_ZL4vmaxPKii.exit430, label %.lr.ph.i424, !llvm.loop !85

_ZL4vmaxPKii.exit430:                             ; preds = %.lr.ph.i424, %middle.block870, %vec.epilog.middle.block890, %_ZL4vmaxPKii.exit420
  %.0.lcssa.i421 = phi i32 [ 0, %_ZL4vmaxPKii.exit420 ], [ %i.sg, %vec.epilog.middle.block890 ], [ %i.sc, %middle.block870 ], [ %spec.select.i427, %.lr.ph.i424 ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.0.lcssa.i421, ptr %i.sj, align 4, !tbaa !9
  %i.sk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.pp, ptr %i.sk, align 4, !tbaa !9
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ib
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %_ZL4vmaxPKii.exit430, %_ZL4vmaxPKii.exit370
  %.sink571.a = phi i32 [ %i.sm, %_ZL4vmaxPKii.exit430 ], [ %i.lp, %_ZL4vmaxPKii.exit370 ]
  %.sink570.a = phi ptr [ %i.bv, %_ZL4vmaxPKii.exit430 ], [ %i.bq, %_ZL4vmaxPKii.exit370 ]
  %.sink569.a = phi ptr [ %i.cb, %_ZL4vmaxPKii.exit430 ], [ %i.ca, %_ZL4vmaxPKii.exit370 ]
  %.sink568.a = phi ptr [ %i.by, %_ZL4vmaxPKii.exit430 ], [ %i.bx, %_ZL4vmaxPKii.exit370 ]
  %.sink567 = phi ptr [ %i.ce, %_ZL4vmaxPKii.exit430 ], [ %i.cd, %_ZL4vmaxPKii.exit370 ]
  %i.sn = phi i32 [ %.0270, %_ZL4vmaxPKii.exit430 ], [ %.0269, %_ZL4vmaxPKii.exit370 ]
  %i.so = phi i32 [ %.0.lcssa.i391, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i331, %_ZL4vmaxPKii.exit370 ]
  %i.sp = phi i32 [ %.0.lcssa.i371460, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i457, %_ZL4vmaxPKii.exit370 ]
  %i.sq = phi i32 [ %.0.lcssa.i411, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i351, %_ZL4vmaxPKii.exit370 ]
  %i.sr = phi i32 [ %i.ot, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i341, %_ZL4vmaxPKii.exit370 ]
  %i.ss = phi i32 [ %.0.lcssa.i381, %_ZL4vmaxPKii.exit430 ], [ %i.hx, %_ZL4vmaxPKii.exit370 ]
  %i.st = phi i32 [ %.0.lcssa.i421, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i361, %_ZL4vmaxPKii.exit370 ]
  %i.su = phi i32 [ %.0.lcssa.i401, %_ZL4vmaxPKii.exit430 ], [ %i.jq, %_ZL4vmaxPKii.exit370 ]
  %i.sv = phi i32 [ %i.id, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i321, %_ZL4vmaxPKii.exit370 ]
  %15 = phi i32 [ %.fr, %_ZL4vmaxPKii.exit430 ], [ %.fr492, %_ZL4vmaxPKii.exit370 ]
  %16 = phi i32 [ %.fr492, %_ZL4vmaxPKii.exit430 ], [ %.fr, %_ZL4vmaxPKii.exit370 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sink571.a, ptr %i.sw, align 4, !tbaa !9
  call void @free(ptr noundef nonnull %.sink570.a) #13
  call void @free(ptr noundef nonnull %.sink569.a) #13
  call void @free(ptr noundef nonnull %.sink568.a) #13
  call void @free(ptr noundef nonnull %.sink567) #13
  %i.sx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 -1, ptr %i.sx, align 4, !tbaa !9
  %i.sy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -1, ptr %i.sy, align 4, !tbaa !9
  %i.sz = mul nsw i32 %i.ss, %i.sp
  %i.ta = mul nsw i32 %i.sz, %i.sv
  %i.tb = mul nsw i32 %i.ta, %16
  %i.tc = mul nsw i32 %i.sr, %i.so
  %i.td = mul nsw i32 %i.tc, %i.su
  %i.te = mul nsw i32 %i.td, %15
  %i.tf = mul i32 %i.st, %i.sq
  %i.tg = mul i32 %i.tf, %i.sn
  %i.th = call i32 @llvm.smax.i32(i32 %i.te, i32 %i.tg)
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.tb, i32 %i.th) ; 2 uses
  %i.ti = and i32 %4, 64
  %.not295 = icmp eq i32 %i.ti, 0
  br i1 %.not295, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.tj = sext i32 %.sroa.speculated to i64       ; 4 uses
  %i.tk = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 438, i64 noundef range(i64 -2147483648, 2147483648) %i.tj, i64 noundef 8, i64 noundef 32) ; 3 uses
  %i.tl = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 440, i64 noundef range(i64 -2147483648, 2147483648) %i.tj, i64 noundef 8, i64 noundef 32) ; 3 uses
  %i.tm = icmp sgt i32 %9, 1
  br i1 %i.tm, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.tn = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 444, i64 noundef range(i64 -2147483648, 2147483648) %i.tj, i64 noundef 8, i64 noundef 32)
  %i.to = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 445, i64 noundef range(i64 -2147483648, 2147483648) %i.tj, i64 noundef 8, i64 noundef 32)
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.tp = load ptr, ptr %5, align 8, !tbaa !90    ; 3 uses
  %i.tq = load ptr, ptr %6, align 8, !tbaa !90    ; 3 uses
  %i.tr = icmp sgt i32 %9, 1
  br i1 %i.tr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ts = load ptr, ptr %7, align 8, !tbaa !90
  %i.tt = load ptr, ptr %8, align 8, !tbaa !90
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.v, %bb.y, %bb.w
  %.0455 = phi ptr [ %i.tl, %bb.w ], [ %i.tl, %bb.v ], [ %i.tq, %bb.y ], [ %i.tq, %bb.x ] ; 5 uses
  %.0454 = phi ptr [ %i.tn, %bb.w ], [ %i.tk, %bb.v ], [ %i.ts, %bb.y ], [ %i.tp, %bb.x ] ; 2 uses
  %.0453 = phi ptr [ %i.to, %bb.w ], [ %i.tl, %bb.v ], [ %i.tt, %bb.y ], [ %i.tq, %bb.x ] ; 2 uses
  %.0 = phi ptr [ %i.tk, %bb.w ], [ %i.tk, %bb.v ], [ %i.tp, %bb.y ], [ %i.tp, %bb.x ] ; 5 uses
  %i.tu = call noalias dereferenceable_or_null(336) ptr @calloc(i64 noundef 1, i64 noundef 336) #20 ; 3 uses
  store ptr %i.tu, ptr %i.s, align 8, !tbaa !22
  %i.tv = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not296 = icmp eq ptr %i.tv, null
  br i1 %.not296, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.tw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.tv, ptr noundef nonnull @.str.8, i32 noundef %9) #13 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.tx = and i32 %4, 32
  %i.ty = icmp eq i32 %i.tx, 0
  %i.tz = load i32, ptr %i.c, align 4
  %i.ua = icmp slt i32 %i.tz, 2
  %or.cond6.not301 = select i1 %i.ty, i1 %i.ua, i1 false
  %i.ub = load i32, ptr %i.br, align 4
  %i.uc = icmp slt i32 %i.ub, 2
  %or.cond9.not298 = select i1 %or.cond6.not301, i1 %i.uc, i1 false
  %i.ud = icmp eq i32 %9, 1
  %or.cond11 = and i1 %or.cond9.not298, %i.ud
  br i1 %or.cond11, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.ue = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull @_ZL14big_fftw_mutex) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.ue, 0
  br i1 %.not.i, label %_ZNSt5mutex4lockEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ue) #21
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.uf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ug = extractvalue { ptr, i32 } %i.uf, 1
  %i.uh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #13
  %i.ui = icmp eq i32 %i.ug, %i.uh
  br i1 %i.ui, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.uj = extractvalue { ptr, i32 } %i.uf, 0
  %i.uk = call ptr @__cxa_begin_catch(ptr %i.uj) #13
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.uk) #21
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ul = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.bb

_ZNSt5mutex4lockEv.exit:                          ; preds = %bb.ac
  %i.um = shl i32 %4, 2
  %i.un = and i32 %i.um, 64
  %i.uo = or disjoint i32 %i.un, 1                ; 3 uses
  %.pre524.a = and i32 %4, 2                      ; 2 uses
  %.not306 = icmp eq i32 %.pre524.a, 0            ; 2 uses
  br i1 %.not291, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt5mutex4lockEv.exit
  br i1 %.not306, label %.thread547, label %bb.aj

.thread547:                                       ; preds = %bb.ai
  %i.up = shl nsw i32 %.0268, 1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not294, label %.thread537.thread, label %.thread537.thread561

.thread537.thread:                                ; preds = %bb.aj
  %i.uq = shl nsw i32 %.0269, 1
  br label %bb.am

.thread537.thread561:                             ; preds = %bb.aj
  %i.ur = shl nsw i32 %.0270, 1
  br label %bb.an

bb.ak:                                            ; preds = %_ZNSt5mutex4lockEv.exit
  br i1 %.not306, label %bb.al, label %.thread537

bb.al:                                            ; preds = %.thread547, %bb.ak
  %.0265554 = phi i32 [ %i.up, %.thread547 ], [ %.0268, %bb.ak ] ; 2 uses
  store i32 %.0270, ptr %12, align 16, !tbaa !92
  %i.us = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.0269, ptr %i.us, align 4, !tbaa !92
  %i.ut = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %0, ptr %i.ut, align 8, !tbaa !92
  %i.uu = mul nsw i32 %.0265554, %.0269
  %i.uv = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !93
  %i.uw = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %.0265554, ptr %i.uw, align 16, !tbaa !93
  %i.ux = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 1, ptr %i.ux, align 4, !tbaa !93
  %i.uy = mul nsw i32 %.0268, %.0270
  %.sink509 = select i1 %.not294, i32 %.0269, i32 1
  %.sink = select i1 %.not294, i32 1, i32 %i.uy
  %i.uz = select i1 %.not294, i32 %.0269, i32 1
  %.0270.sink = mul nsw i32 %.0270, %i.uz
  %i.va = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink509, ptr %i.va, align 8, !tbaa !94
  %i.vb = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %.sink, ptr %i.vb, align 4, !tbaa !94
  %i.vc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 %.0270.sink, ptr %i.vc, align 16, !tbaa !94
  br i1 %.not291, label %.thread464, label %bb.ao

.thread537:                                       ; preds = %bb.ak
  br i1 %.not294, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread537.thread, %.thread537
  %.0264545558 = phi i32 [ %i.uq, %.thread537.thread ], [ %.0269, %.thread537 ] ; 2 uses
  %i.vd = mul nsw i32 %.0268, %.0269
  %i.ve = mul nsw i32 %.0264545558, %.0270
  br label %bb.ap

bb.an:                                            ; preds = %.thread537.thread561, %.thread537
  %.0263546565 = phi i32 [ %i.ur, %.thread537.thread561 ], [ %.0270, %.thread537 ] ; 2 uses
  %i.vf = mul nsw i32 %.0268, %.0269
  %i.vg = mul nsw i32 %.0263546565, %.0268
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.vh = call ptr @fftwf_plan_guru_dft_r2c(i32 noundef 3, ptr noundef nonnull %12, i32 noundef 0, ptr noundef null, ptr noundef %.0, ptr noundef %.0455, i32 noundef %i.uo)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.am, %bb.an
  %.0269.sink = phi i32 [ %.0268, %bb.am ], [ %.0269, %bb.an ]
  %.0268.sink514 = phi i32 [ %.0270, %bb.am ], [ %.0268, %bb.an ]
  %.sink513.a = phi i32 [ %1, %bb.am ], [ %2, %bb.an ]
  %.0268.sink = phi i32 [ 1, %bb.am ], [ %.0268, %bb.an ]
  %.sink512.a = phi i32 [ %i.vd, %bb.am ], [ 1, %bb.an ]
  %.sink511.a = phi i32 [ %.0268, %bb.am ], [ %i.vf, %bb.an ]
  %.sink510 = phi i32 [ %i.ve, %bb.am ], [ %i.vg, %bb.an ]
  %.0263.sink = phi i32 [ %.0264545558, %bb.am ], [ %.0263546565, %bb.an ]
  store i32 %.0269.sink, ptr %12, align 16, !tbaa !92
  %i.vi = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %.0268.sink514, ptr %i.vi, align 4, !tbaa !92
  %i.vj = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 %.sink513.a, ptr %i.vj, align 8, !tbaa !92
  %i.vk = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %.0268.sink, ptr %i.vk, align 4, !tbaa !93
  %i.vl = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %.sink512.a, ptr %i.vl, align 16, !tbaa !93
  %i.vm = getelementptr inbounds nuw i8, ptr %12, i64 28
  store i32 %.sink511.a, ptr %i.vm, align 4, !tbaa !93
  %i.vn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink510, ptr %i.vn, align 8, !tbaa !94
  %i.vo = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %.0263.sink, ptr %i.vo, align 4, !tbaa !94
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.vp, align 16, !tbaa !94
  br i1 %.not291, label %.thread464, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.vq = call ptr @fftwf_plan_guru_dft_c2r(i32 noundef 3, ptr noundef nonnull %12, i32 noundef 0, ptr noundef null, ptr noundef %.0, ptr noundef %.0455, i32 noundef %i.uo)
  br label %bb.ar

.thread464:                                       ; preds = %bb.al, %bb.ap
  %.pre-phi543 = phi i32 [ 0, %bb.al ], [ %.pre524.a, %bb.ap ]
  %i.vr = add nsw i32 %.pre-phi543, -1
  %i.vs = call ptr @fftwf_plan_guru_dft(i32 noundef 3, ptr noundef nonnull %12, i32 noundef 0, ptr noundef null, ptr noundef %.0, ptr noundef %.0455, i32 noundef %i.vr, i32 noundef %i.uo)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %.thread464, %bb.aq
  %.sink573 = phi ptr [ %i.vh, %bb.ao ], [ %i.vs, %.thread464 ], [ %i.vq, %bb.aq ]
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  store ptr %.sink573, ptr %i.vt, align 8, !tbaa !26
  %i.vu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZL14big_fftw_mutex) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.at

bb.as:                                            ; preds = %bb.ah, %bb.ae
  %.merged = phi { ptr, i32 } [ %i.ul, %bb.ah ], [ %i.uf, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  resume { ptr, i32 } %.merged

bb.at:                                            ; preds = %bb.ar, %bb.ab
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !26
  %.not314 = icmp eq ptr %i.vw, null
  br i1 %.not314, label %.preheader467, label %.loopexit

.preheader467:                                    ; preds = %bb.at
  store i32 0, ptr %i.t, align 4, !tbaa !9
  br label %bb.au

bb.au:                                            ; preds = %.preheader467, %bb.aw
  %storemerge489 = phi i32 [ 0, %.preheader467 ], [ %i.ws, %bb.aw ] ; 3 uses
  %i.vx = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not315 = icmp eq ptr %i.vx, null
  br i1 %.not315, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vy = sext i32 %storemerge489 to i64          ; 4 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !9
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.vy
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !9
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.vy
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !9
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.vy
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !9
  %i.wh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.vx, ptr noundef nonnull @.str.9, i32 noundef %storemerge489, i32 noundef %i.wa, i32 noundef %i.wc, i32 noundef %i.we, i32 noundef %i.wg, i32 noundef %.sroa.speculated) #13 ; 0 uses
  %.pre522 = load i32, ptr %i.t, align 4, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.wi = phi i32 [ %.pre522, %bb.av ], [ %storemerge489, %bb.au ]
  %i.wj = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = shl nsw i64 %i.wk, 3
  %i.wm = call noalias ptr @malloc(i64 noundef %i.wl) #19
  %i.wn = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = sext i32 %i.wi to i64
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.wo, i64 %i.wp
  store ptr %i.wm, ptr %i.wq, align 8, !tbaa !29
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.u, i32 %i.wj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE.omp_outlined, ptr nonnull %i.b, ptr nonnull %i.i, ptr nonnull %i.t, ptr nonnull %i.j, ptr nonnull %i.a, ptr nonnull %i.s, ptr nonnull %i.r, ptr nonnull %i.q)
  %i.wr = load i32, ptr %i.t, align 4, !tbaa !9   ; 2 uses
  %i.ws = add nsw i32 %i.wr, 1                    ; 2 uses
  store i32 %i.ws, ptr %i.t, align 4, !tbaa !9
  %i.wt = icmp slt i32 %i.wr, 2
  br i1 %i.wt, label %bb.au, label %.loopexit.loopexit, !llvm.loop !86

.loopexit.loopexit:                               ; preds = %bb.aw
  %.pre523 = load i32, ptr %i.a, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.at
  %i.wu = phi i32 [ %.pre523, %.loopexit.loopexit ], [ %4, %bb.at ]
  %i.wv = and i32 %i.wu, 1
  %.not316 = icmp eq i32 %i.wv, 0                 ; 2 uses
  %i.ww = load ptr, ptr %3, align 8, !tbaa !12
  %i.wx = load ptr, ptr %i.s, align 8, !tbaa !22  ; 29 uses
  %. = select i1 %.not316, i64 72, i64 64
  %.580 = select i1 %.not316, i64 64, i64 72
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %.
  store ptr %i.ww, ptr %i.wy, align 8, !tbaa !12
  %i.wz = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 %.580
  store ptr %i.wz, ptr %i.xa, align 8, !tbaa !12
  store ptr %.0, ptr %i.wx, align 8, !tbaa !30
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store ptr %.0455, ptr %i.xb, align 8, !tbaa !31
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store ptr %.0454, ptr %i.xc, align 8, !tbaa !32
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  store ptr %.0453, ptr %i.xd, align 8, !tbaa !33
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wx, i64 308
  store i32 %.0268, ptr %i.xe, align 4, !tbaa !95
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wx, i64 312
  store i32 %.0269, ptr %i.xf, align 8, !tbaa !96
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wx, i64 316
  store i32 %.0270, ptr %i.xg, align 4, !tbaa !97
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wx, i64 80
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wx, i64 92
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wx, i64 104
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wx, i64 116
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wx, i64 128
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wx, i64 140
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wx, i64 152
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wx, i64 164
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wx, i64 272
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wx, i64 284
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wx, i64 176
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wx, i64 200
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wx, i64 224
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wx, i64 248
  store i32 0, ptr %i.t, align 4, !tbaa !9
  br label %bb.ax

.preheader:                                       ; preds = %bb.ax
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wx, i64 296
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wx, i64 320
  store i32 0, ptr %i.t, align 4, !tbaa !9
  br label %bb.ay

bb.ax:                                            ; preds = %.loopexit, %bb.ax
  %storemerge317490 = phi i32 [ 0, %.loopexit ], [ %i.aai, %bb.ax ]
  %i.xx = sext i32 %storemerge317490 to i64       ; 2 uses
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !9
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xx
  store i32 %i.xz, ptr %i.ya, align 4, !tbaa !9
  %i.yb = load i32, ptr %i.t, align 4, !tbaa !9
  %i.yc = sext i32 %i.yb to i64                   ; 2 uses
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !9
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.xi, i64 %i.yc
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !9
  %i.yg = load i32, ptr %i.t, align 4, !tbaa !9
  %i.yh = sext i32 %i.yg to i64                   ; 2 uses
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !9
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.yh
  store i32 %i.yj, ptr %i.yk, align 4, !tbaa !9
  %i.yl = load i32, ptr %i.t, align 4, !tbaa !9
  %i.ym = sext i32 %i.yl to i64                   ; 2 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !9
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.ym
  store i32 %i.yo, ptr %i.yp, align 4, !tbaa !9
  %i.yq = load i32, ptr %i.t, align 4, !tbaa !9
  %i.yr = sext i32 %i.yq to i64                   ; 2 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.yr
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !9
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.yr
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !9
  %i.yv = load i32, ptr %i.t, align 4, !tbaa !9
  %i.yw = sext i32 %i.yv to i64                   ; 2 uses
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !9
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.yw
  store i32 %i.yy, ptr %i.yz, align 4, !tbaa !9
  %i.za = load i32, ptr %i.t, align 4, !tbaa !9
  %i.zb = sext i32 %i.za to i64                   ; 2 uses
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !9
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.xn, i64 %i.zb
  store i32 %i.zd, ptr %i.ze, align 4, !tbaa !9
  %i.zf = load i32, ptr %i.t, align 4, !tbaa !9
  %i.zg = sext i32 %i.zf to i64                   ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !9
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.zg
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !9
  %i.zk = load i32, ptr %i.t, align 4, !tbaa !9
  %i.zl = sext i32 %i.zk to i64                   ; 2 uses
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !9
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.zl
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !9
  %i.zp = load i32, ptr %i.t, align 4, !tbaa !9
  %i.zq = sext i32 %i.zp to i64                   ; 2 uses
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.zq
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !9
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.xq, i64 %i.zq
  store i32 %i.zs, ptr %i.zt, align 4, !tbaa !9
  %i.zu = load i32, ptr %i.t, align 4, !tbaa !9   ; 3 uses
  %i.zv = sext i32 %i.zu to i64                   ; 8 uses
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.zv
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !19
  %i.zy = getelementptr inbounds [8 x i8], ptr %i.xr, i64 %i.zv
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !19
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.zv
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !19
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.xs, i64 %i.zv
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !19
  %i.aac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.zv
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !19
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.xt, i64 %i.zv
  store ptr %i.aad, ptr %i.aae, align 8, !tbaa !19
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.zv
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !19
  %i.aah = getelementptr inbounds [8 x i8], ptr %i.xu, i64 %i.zv
  store ptr %i.aag, ptr %i.aah, align 8, !tbaa !19
  %i.aai = add nsw i32 %i.zu, 1                   ; 2 uses
  store i32 %i.aai, ptr %i.t, align 4, !tbaa !9
  %i.aaj = icmp slt i32 %i.zu, 2
  br i1 %i.aaj, label %bb.ax, label %.preheader, !llvm.loop !87

bb.ay:                                            ; preds = %.preheader, %bb.ay
  %storemerge318491 = phi i32 [ 0, %.preheader ], [ %i.aas, %bb.ay ]
  %i.aak = sext i32 %storemerge318491 to i64      ; 2 uses
  %17 = getelementptr inbounds [4 x i8], ptr %11, i64 %i.aak
  %18 = load i32, ptr %17, align 4, !tbaa !9
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %i.aak
  store i32 %18, ptr %i.aal, align 4, !tbaa !9
  %i.aam = load i32, ptr %i.t, align 4, !tbaa !9
  %i.aan = sext i32 %i.aam to i64                 ; 2 uses
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !9
  %i.aaq = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.aan
  store i32 %i.aap, ptr %i.aaq, align 4, !tbaa !9
  %i.aar = load i32, ptr %i.t, align 4, !tbaa !9  ; 2 uses
  %i.aas = add nsw i32 %i.aar, 1                  ; 2 uses
  store i32 %i.aas, ptr %i.t, align 4, !tbaa !9
  %i.aat = icmp slt i32 %i.aar, 1
  br i1 %i.aat, label %bb.ay, label %bb.az, !llvm.loop !88

bb.az:                                            ; preds = %bb.ay
  %i.aau = load i32, ptr %i.a, align 4, !tbaa !9
  %i.aav = getelementptr inbounds nuw i8, ptr %i.wx, i64 304
  store i32 %i.aau, ptr %i.aav, align 8, !tbaa !34
  %i.aaw = load i32, ptr %i.b, align 4, !tbaa !9
  %i.aax = getelementptr inbounds nuw i8, ptr %i.wx, i64 328
  store i32 %i.aaw, ptr %i.aax, align 8, !tbaa !35
  %i.aay = getelementptr inbounds nuw i8, ptr %i.wx, i64 332
  store i32 %10, ptr %i.aay, align 4, !tbaa !98
  store ptr %.0, ptr %5, align 8, !tbaa !90
  store ptr %.0455, ptr %6, align 8, !tbaa !90
  store ptr %.0454, ptr %7, align 8, !tbaa !90
  store ptr %.0453, ptr %8, align 8, !tbaa !90
  br label %bb.ba

bb.ba:                                            ; preds = %bb.j, %bb.k, %bb.az
  %.0267 = phi ptr [ %i.wx, %bb.az ], [ null, %bb.k ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret ptr %.0267

bb.bb:                                            ; preds = %bb.ah
  %i.aaz = landingpad { ptr, i32 }
          catch ptr null
  %i.aba = extractvalue { ptr, i32 } %i.aaz, 0
  call void @__clang_call_terminate(ptr %i.aba) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare ptr @fftwf_plan_guru_dft_r2c(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fftwf_plan_guru_dft_c2r(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fftwf_plan_guru_dft(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 7 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.h, i32 66, i32 0, i32 %i.g, i32 1, i32 1)
  %i.i = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not39 = icmp eq i32 %i.i, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph40

.loopexit:                                        ; preds = %bb.j, %.lr.ph40
  %i.j = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.h, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.b, %.loopexit
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !9
  %.not2937 = icmp sgt i32 %i.k, %i.l
  br i1 %.not2937, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph40
  %i.m = sext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  call void @__kmpc_ordered(ptr nonnull @1, i32 %i.h)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !9      ; 3 uses
  %i.o = sext i32 %i.n to i64                     ; 6 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = getelementptr inbounds [4 x i8], ptr %5, i64 %i.o
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = mul i32 %i.s, %i.q                       ; 2 uses
  %i.u = load i32, ptr %2, align 4, !tbaa !9
  %i.v = trunc nsw i64 %indvars.iv.next to i32
  %i.w = mul i32 %i.t, %i.v
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = mul i32 %i.t, %i.x
  %i.z = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %i.y, i64 1
  %i.ab = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.ac = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ad = sdiv <2 x i32> %i.aa, %i.ac             ; 2 uses
  %shift = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.ad, %shift
  %i.ae = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.af = load i32, ptr %6, align 4, !tbaa !9     ; 4 uses
  %i.ag = and i32 %i.af, 4
  %.not30 = icmp eq i32 %i.ag, 0
  br i1 %.not30, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ah = and i32 %i.af, 2                        ; 2 uses
  %i.ai = or i32 %i.ah, %i.n
  %or.cond = icmp eq i32 %i.ai, 0
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp ne i32 %i.ah, 0
  %i.aj = icmp eq i32 %i.n, 2
  %or.cond36 = and i1 %i.aj, %.not31
  br i1 %or.cond36, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = load ptr, ptr %7, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.o
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds [4 x i8], ptr %8, i64 %i.o
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = lshr i32 %i.af, 4
  %.lobit35 = and i32 %i.ar, 1
  %i.as = invoke noundef i32 @_Z25gmx_fft_init_many_1d_realPP7gmx_fftiii(ptr noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.ae, i32 noundef %.lobit35)
          to label %bb.j unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.au = extractvalue { ptr, i32 } %i.at, 0      ; 2 uses
  %i.av = extractvalue { ptr, i32 } %i.at, 1
  %i.aw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #13
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.au) #13
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #21
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.d, %.lr.ph
  %i.az = load ptr, ptr %7, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.o
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv
end_hunk_1
