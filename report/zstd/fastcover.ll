Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fastcover?download=true
inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FASTCOVER_accel_t = type { i32, i32 }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.FASTCOVER_ctx_t = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i32, i32, %struct.FASTCOVER_accel_t, i32 }
%struct.ZDICT_cover_params_t = type { i32, i32, i32, i32, double, i32, i32, %struct.ZDICT_params_t }
%struct.COVER_best_s = type { %union.pthread_mutex_t, %union.pthread_cond_t, i64, ptr, i64, %struct.ZDICT_cover_params_t, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.COVER_dictSelection = type { ptr, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"FASTCOVER parameters incorrect\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"FASTCOVER must have at least one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dictBufferCapacity must be at least %u\0A\00", align 1
@FASTCOVER_defaultAccelParameters = internal unnamed_addr constant [11 x %struct.FASTCOVER_accel_t] [%struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 100, i32 0 }, %struct.FASTCOVER_accel_t { i32 50, i32 1 }, %struct.FASTCOVER_accel_t { i32 34, i32 2 }, %struct.FASTCOVER_accel_t { i32 25, i32 3 }, %struct.FASTCOVER_accel_t { i32 20, i32 4 }, %struct.FASTCOVER_accel_t { i32 17, i32 5 }, %struct.FASTCOVER_accel_t { i32 14, i32 6 }, %struct.FASTCOVER_accel_t { i32 13, i32 7 }, %struct.FASTCOVER_accel_t { i32 11, i32 8 }, %struct.FASTCOVER_accel_t { i32 10, i32 9 }], align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to initialize context\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Building dictionary\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Constructed dictionary of size %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Incorrect splitPoint\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Incorrect accel\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Incorrect k\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Trying %u different sets of parameters\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"d=%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"k=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to allocate parameters\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Total number of testing samples is %u and is invalid.\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed to allocate scratch buffers \0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Failed to allocate frequency table \0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly byval(%struct.ZDICT_fastCover_params_t) align 8 captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.FASTCOVER_ctx_t, align 8    ; 9 uses
  %7 = alloca %struct.ZDICT_cover_params_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, i32 20, i32 %i.d         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload44 = load i32, ptr %5, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 6 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.847.0.copyload = load i32, ptr %.sroa.847.0..sroa_idx, align 4
  store i32 %.sroa.0.0.copyload44, ptr %7, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.4.0.copyload, ptr %i.k, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load <2 x i32>, ptr %.sroa.545.0..sroa_idx, align 4
  store <2 x i32> %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.847.0.copyload, ptr %i.q, align 8, !tbaa !46
  %i.r = icmp eq i32 %.sroa.4.0.copyload, 0
  %i.s = icmp eq i32 %.sroa.0.0.copyload44, 0
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %FASTCOVER_checkParameters.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %.sroa.4.0.copyload, label %FASTCOVER_checkParameters.exit.thread [
    i32 8, label %bb.c
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.t = zext i32 %.sroa.0.0.copyload44 to i64
  %8 = icmp ult i64 %1, %i.t
  %9 = icmp ugt i32 %.sroa.4.0.copyload, %.sroa.0.0.copyload44
  %or.cond20.i = or i1 %9, %8
  %10 = add i32 %i.f, -32
  %or.cond7.i = icmp ult i32 %10, -31
  %or.cond21.i = or i1 %or.cond7.i, %or.cond20.i
  %or.cond12.i = icmp ugt i32 %i.h, 10
  %or.cond50 = select i1 %or.cond21.i, i1 true, i1 %or.cond12.i
  br i1 %or.cond50, label %FASTCOVER_checkParameters.exit.thread, label %bb.e

FASTCOVER_checkParameters.exit.thread:            ; preds = %bb.c, %bb.b, %bb.a
  %i.u = icmp sgt i32 %i.b, 0
  br i1 %i.u, label %bb.d, label %bb.r

bb.d:                                             ; preds = %FASTCOVER_checkParameters.exit.thread
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %i.v) #13 ; 0 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.x = tail call i32 @fflush(ptr noundef %i.w)  ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %4, 0
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = icmp sgt i32 %i.b, 0
  br i1 %i.z, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite42 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %i.aa) #13 ; 0 uses
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ac = tail call i32 @fflush(ptr noundef %i.ab) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp ult i64 %1, 256
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp sgt i32 %i.b, 0
  br i1 %i.ae, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.2, i32 noundef 256) #14 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ai = tail call i32 @fflush(ptr noundef %i.ah) ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.aj = zext nneg i32 %i.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @FASTCOVER_defaultAccelParameters, i64 %i.aj
  %.sroa.0.0.copyload = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.al = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %6, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.sroa.4.0.copyload, double noundef 1.000000e+00, i32 noundef %i.f, i64 %.sroa.0.0.copyload, i32 noundef %i.b) ; 3 uses
  %11 = icmp ult i64 %i.al, -119
  br i1 %11, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp sgt i32 %i.b, 0
  br i1 %i.am, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %i.an) #13 ; 0 uses
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ap = tail call i32 @fflush(ptr noundef %i.ao) ; 0 uses
  br label %bb.r

.critedge:                                        ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  tail call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %i.ar, i32 noundef %i.b) #12
  %i.as = icmp sgt i32 %i.b, 1                    ; 2 uses
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite41 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %i.at) #13 ; 0 uses
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.av = tail call i32 @fflush(ptr noundef %i.au) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.aw = zext nneg i32 %i.f to i64
  %i.ax = shl nuw nsw i64 1, %i.aw
  %i.ay = tail call noalias ptr @calloc(i64 noundef %i.ax, i64 noundef 2) #15 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %i.bb = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %6, ptr noundef %i.ba, ptr noundef %0, i64 noundef %1, i32 %.sroa.0.0.copyload44, i32 %.sroa.4.0.copyload, ptr noundef %i.ay) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !29
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.bd, %i.bg
  %i.bi = udiv i64 %i.bh, 100
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bl = sub i64 %1, %i.bb
  %i.bm = tail call i64 @ZDICT_finalizeDictionary(ptr noundef %0, i64 noundef %1, ptr noundef %i.bk, i64 noundef %i.bl, ptr noundef %2, ptr noundef %3, i32 noundef %i.bj, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %i.o) #12 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, -119
  %or.cond = and i1 %i.as, %i.bn
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bp = trunc i64 %i.bm to i32
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.5, i32 noundef %i.bp) #14 ; 0 uses
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bs = tail call i32 @fflush(ptr noundef %i.br) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @free(ptr noundef %i.ba) #12
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.bu) #12
  tail call void @free(ptr noundef %i.ay) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.j, %bb.f, %bb.g, %FASTCOVER_checkParameters.exit.thread, %bb.d, %bb.q
  %.1 = phi i64 [ -42, %FASTCOVER_checkParameters.exit.thread ], [ -72, %bb.f ], [ %i.bm, %bb.q ], [ -70, %bb.i ], [ -42, %bb.d ], [ -72, %bb.g ], [ -70, %bb.j ], [ %i.al, %bb.l ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -72, 1) i64 @FASTCOVER_ctx_init(ptr nofree noundef nonnull captures(none) initializes((80, 84)) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %3) #12 ; 5 uses
  %i.b = fcmp olt double %5, 1.000000e+00         ; 3 uses
  %i.c = uitofp i32 %3 to double
  %i.d = fmul double %5, %i.c
  %i.e = fptoui double %i.d to i32                ; 4 uses
  %i.f = select i1 %i.b, i32 %i.e, i32 0          ; 2 uses
  %i.g = select i1 %i.b, i32 %i.e, i32 %3         ; 4 uses
  %i.h = sub i32 %3, %i.f                         ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @COVER_sum(ptr noundef %2, i32 noundef %i.e) #12
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = tail call i64 @COVER_sum(ptr noundef %i.k, i32 noundef %i.h) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.l, %bb.b ], [ %i.a, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %8, ptr %i.o, align 8, !tbaa !31
  %i.p = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp ult i64 %i.a, %i.q
  %i.s = icmp ugt i64 %i.a, 4294967294
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp sgt i32 %8, 0
  br i1 %i.t, label %bb.e, label %FASTCOVER_computeFrequency.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.v = lshr i64 %i.a, 20
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.16, i32 noundef %i.w, i32 noundef 4095) #14 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  br label %FASTCOVER_computeFrequency.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %i.g, 5
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i32 %8, 0
  br i1 %i.ab, label %bb.h, label %FASTCOVER_computeFrequency.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.17, i32 noundef %i.g) #14 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.af = tail call i32 @fflush(ptr noundef %i.ae) ; 0 uses
  br label %FASTCOVER_computeFrequency.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = icmp eq i32 %3, %i.f
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp sgt i32 %8, 0
  br i1 %i.ah, label %bb.k, label %FASTCOVER_computeFrequency.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.al = tail call i32 @fflush(ptr noundef %i.ak) ; 0 uses
  br label %FASTCOVER_computeFrequency.exit

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %i.am = icmp sgt i32 %8, 1                      ; 2 uses
  br i1 %i.am, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ao = trunc i64 %i.m to i32
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.19, i32 noundef %i.g, i32 noundef %i.ao) #14 ; 0 uses
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ar = tail call i32 @fflush(ptr noundef %i.aq) ; 0 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.at = trunc i64 %i.n to i32
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.20, i32 noundef %i.h, i32 noundef %i.at) #14 ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.m
  store ptr %1, ptr %0, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.ax, align 8, !tbaa !33
  %i.ay = zext i32 %3 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !34
  %i.ba = zext i32 %i.g to i64                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !28
  %i.bc = zext i32 %i.h to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !51
  %reass.sub = sub i64 %i.m, %i.q
  %i.be = add i64 %reass.sub, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %4, ptr %i.bg, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %6, ptr %i.bh, align 4, !tbaa !35
end_hunk_0
begin_hunk_1_@FASTCOVER_ctx_init:bb.a
  %i.cs = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.cw, %bb.s ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.s ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.ct = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !36
  %i.cw = add i64 %i.cv, %i.cs                    ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.epil
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !36
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !48

.epilog-lcssa:                                    ; preds = %bb.s, %.unr-lcssa
  %i.cy = zext nneg i32 %6 to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = tail call noalias ptr @calloc(i64 noundef %i.cz, i64 noundef 4) #15 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !27
  %i.dc = icmp eq ptr %i.da, null
  br i1 %i.dc, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.epilog-lcssa
  %i.dd = icmp sgt i32 %8, 0
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite91 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.de) #13 ; 0 uses
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dg = tail call i32 @fflush(ptr noundef %i.df) ; 0 uses
  %.pre96 = load ptr, ptr %i.db, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dh = phi ptr [ %.pre96, %bb.u ], [ null, %bb.t ]
  tail call void @free(ptr noundef %i.dh) #12
  store ptr null, ptr %i.db, align 8, !tbaa !27
  %i.di = load ptr, ptr %i.bm, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.di) #12
  store ptr null, ptr %i.bm, align 8, !tbaa !30
  br label %FASTCOVER_computeFrequency.exit

bb.w:                                             ; preds = %.epilog-lcssa
  br i1 %i.am, label %bb.x, label %.lr.ph26.i

bb.x:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.dj) #13 ; 0 uses
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dl = tail call i32 @fflush(ptr noundef %i.dk) ; 0 uses
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !27
  %.pre95 = load i64, ptr %i.bb, align 8, !tbaa !28 ; 2 uses
  %.not27.i = icmp eq i64 %.pre95, 0
  br i1 %.not27.i, label %FASTCOVER_computeFrequency.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.w, %bb.x
  %i.dm = phi ptr [ %.pre, %bb.x ], [ %i.da, %bb.w ]
  %i.dn = phi i64 [ %.pre95, %bb.x ], [ %i.ba, %bb.w ]
  %i.do = load i32, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %i.dp = tail call i32 @llvm.umax.i32(i32 %i.do, i32 8)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !53
  %i.ds = load i32, ptr %i.bh, align 4, !tbaa !35
  %i.dt = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.du = zext i32 %i.dp to i64                   ; 2 uses
  %i.dv = icmp eq i32 %i.do, 6
  %i.dw = sub i32 64, %i.ds
  %i.dx = zext nneg i32 %i.dw to i64
  %..i.i = select i1 %i.dv, i64 -3523014627193847808, i64 -3523014627327384477
  %i.dy = zext i32 %i.dr to i64
  %i.dz = add nuw nsw i64 %i.dy, 1
  %.pre.i = load i64, ptr %i.dt, align 8, !tbaa !36
  br label %bb.y

.loopexit.i:                                      ; preds = %bb.z, %bb.y
  %exitcond.not.i = icmp eq i64 %i.eb, %i.dn
  br i1 %exitcond.not.i, label %FASTCOVER_computeFrequency.exit, label %bb.y, !llvm.loop !49

bb.y:                                             ; preds = %.loopexit.i, %.lr.ph26.i
  %i.ea = phi i64 [ %.pre.i, %.lr.ph26.i ], [ %i.ed, %.loopexit.i ] ; 2 uses
  %.02225.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.eb, %.loopexit.i ]
  %i.eb = add nuw i64 %.02225.i, 1                ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !36 ; 3 uses
  %i.ee = add i64 %i.ea, %i.du
  %.not23.i = icmp ugt i64 %i.ee, %i.ed
  br i1 %.not23.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.ef = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i
  %.024.i = phi i64 [ %i.ea, %.lr.ph.i ], [ %i.em, %bb.z ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.024.i
  %.val.i.i = load i64, ptr %i.eg, align 1, !tbaa !36
  %i.eh = mul i64 %.val.i.i, %..i.i
  %i.ei = lshr i64 %i.eh, %i.dx
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !16
  %i.em = add i64 %i.dz, %.024.i                  ; 2 uses
  %i.en = add i64 %i.em, %i.du
  %.not.i = icmp ugt i64 %i.en, %i.ed
  br i1 %.not.i, label %.loopexit.i, label %bb.z, !llvm.loop !50

FASTCOVER_computeFrequency.exit:                  ; preds = %.loopexit.i, %bb.x, %bb.j, %bb.k, %bb.g, %bb.h, %bb.d, %bb.e, %bb.v, %bb.p
  %.084 = phi i64 [ -72, %bb.j ], [ -72, %bb.d ], [ -72, %bb.g ], [ -64, %bb.p ], [ -64, %bb.v ], [ -72, %bb.e ], [ -72, %bb.h ], [ -72, %bb.k ], [ 0, %bb.x ], [ 0, %.loopexit.i ]
  ret i64 %.084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @COVER_warnOnSmallCorpus(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i64 @FASTCOVER_buildDictionary(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i32 %.0.val, i32 %.4.val, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call i64 @COVER_computeEpochs(i32 noundef %i.a, i32 noundef %i.d, i32 noundef %.0.val, i32 noundef 1) #12 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.e, 32    ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 1                     ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.024.0.extract.trunc = trunc i64 %i.e to i32
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.24, i32 noundef %.sroa.024.0.extract.trunc, i32 noundef %.sroa.5.0.extract.trunc) #14 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.l = tail call i32 @fflush(ptr noundef %i.k)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq i64 %3, 0
  br i1 %.not8, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = icmp eq i32 %.4.val, 6
  %..i.i = select i1 %i.n, i64 -3523014627193847808, i64 -3523014627327384477 ; 10 uses
  %i.o = add i32 %.0.val, 2
  %i.p = sub i32 %i.o, %.4.val
  %i.q = add i32 %.4.val, -1
  %i.r = zext i32 %.4.val to i64
  %i.s = icmp samesign ugt i32 %i.g, 3
  %i.t = and i64 %i.e, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %.04612 = phi i64 [ %3, %.lr.ph ], [ %.1.ph, %bb.q ] ; 5 uses
  %.04711 = phi i64 [ 0, %.lr.ph ], [ %i.el, %bb.q ] ; 2 uses
  %.04810 = phi i64 [ 0, %.lr.ph ], [ %.3.ph, %bb.q ] ; 4 uses
  %.0519 = phi i64 [ 0, %.lr.ph ], [ %.152.ph, %bb.q ]
  %i.u = mul i64 %.04711, %.sroa.5.0.extract.shift ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 4 uses
  %i.w = add i32 %i.v, %.sroa.5.0.extract.trunc   ; 4 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !35   ; 3 uses
  %i.y = icmp ugt i32 %i.w, %i.v
  br i1 %i.y, label %.lr.ph.i, label %.preheader1.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.aa = sub i32 64, %i.x
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = and i64 %i.u, 4294967295
  %wide.trip.count.i = zext i32 %i.w to i64
  br label %bb.e

.preheader1.i.loopexit:                           ; preds = %bb.k
  %i.ad = icmp eq i32 %.sroa.6.1.i, 0
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.i.loopexit, %bb.d
  %.sroa.011.0.lcssa.i = phi i32 [ %i.v, %bb.d ], [ %.sroa.011.1.i, %.preheader1.i.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa.i = phi i1 [ true, %bb.d ], [ %i.ad, %.preheader1.i.loopexit ]
  %.sroa.049.sroa.4.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %.sroa.049.sroa.4.1.i, %.preheader1.i.loopexit ] ; 5 uses
  %.sroa.049.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %.sroa.049.sroa.0.1.i, %.preheader1.i.loopexit ] ; 7 uses
  %i.ae = icmp ult i32 %.sroa.011.0.lcssa.i, %i.w
  br i1 %i.ae, label %.lr.ph12.i, label %.preheader.i

.lr.ph12.i:                                       ; preds = %.preheader1.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.ag = sub i32 64, %i.x
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = zext i32 %.sroa.011.0.lcssa.i to i64    ; 5 uses
  %wide.trip.count21.i = zext i32 %i.w to i64     ; 3 uses
  %i.aj = sub nsw i64 %wide.trip.count21.i, %i.ai
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph12.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %.val.i56.i.prol = load i64, ptr %i.ak, align 1, !tbaa !36
  %i.al = mul i64 %.val.i56.i.prol, %..i.i
  %i.am = lshr i64 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !60
  %i.ap = add i16 %i.ao, -1
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !60
  %indvars.iv.next18.i.prol = add nuw nsw i64 %i.ai, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph12.i
  %indvars.iv17.i.unr = phi i64 [ %i.ai, %.lr.ph12.i ], [ %indvars.iv.next18.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aq = add nsw i64 %wide.trip.count21.i, -1
  %i.ar = icmp eq i64 %i.aq, %i.ai
  br i1 %i.ar, label %.preheader.i, label %.lr.ph12.i.new

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.sroa.049.sroa.0.07.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.049.sroa.0.1.i, %bb.k ]
  %.sroa.049.sroa.4.06.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.049.sroa.4.1.i, %bb.k ]
  %.sroa.6.05.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.6.1.i, %bb.k ] ; 2 uses
  %.sroa.011.04.i = phi i32 [ %i.v, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.k ] ; 4 uses
  %.sroa.18.02.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.18.3.i, %bb.k ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i
  %.val.i.i = load i64, ptr %i.as, align 1, !tbaa !36
  %i.at = mul i64 %.val.i.i, %..i.i
  %i.au = lshr i64 %i.at, %i.ab                   ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !60 ; 2 uses
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.au
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = add i32 %i.az, %.sroa.18.02.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.18.1.i = phi i32 [ %i.ba, %bb.f ], [ %.sroa.18.02.i, %bb.e ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.bb = add i16 %i.aw, 1
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !60
  %i.bc = sub i32 %indvars.i, %.sroa.011.04.i
  %i.bd = icmp eq i32 %i.bc, %i.p
  br i1 %i.bd, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.be = zext i32 %.sroa.011.04.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.be
  %.val.i54.i = load i64, ptr %i.bf, align 1, !tbaa !36
  %i.bg = mul i64 %.val.i54.i, %..i.i
  %i.bh = lshr i64 %i.bg, %i.ab                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !60
  %i.bk = add i16 %i.bj, -1                       ; 2 uses
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !60
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = sub i32 %.sroa.18.1.i, %i.bn
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.18.2.i = phi i32 [ %i.bo, %bb.i ], [ %.sroa.18.1.i, %bb.h ]
  %i.bp = add i32 %.sroa.011.04.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.18.3.i = phi i32 [ %.sroa.18.2.i, %bb.j ], [ %.sroa.18.1.i, %bb.g ] ; 3 uses
  %.sroa.011.1.i = phi i32 [ %i.bp, %bb.j ], [ %.sroa.011.04.i, %bb.g ] ; 3 uses
  %i.bq = icmp ugt i32 %.sroa.18.3.i, %.sroa.6.05.i ; 2 uses
  %.sroa.6.1.i = tail call i32 @llvm.umax.i32(i32 %.sroa.18.3.i, i32 %.sroa.6.05.i) ; 2 uses
  %.sroa.049.sroa.4.1.i = select i1 %i.bq, i32 %indvars.i, i32 %.sroa.049.sroa.4.06.i ; 2 uses
  %.sroa.049.sroa.0.1.i = select i1 %i.bq, i32 %.sroa.011.1.i, i32 %.sroa.049.sroa.0.07.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader1.i.loopexit, label %bb.e, !llvm.loop !54

.preheader.i:                                     ; preds = %.prol.loopexit, %.lr.ph12.i.new, %.preheader1.i
  %.not13.i = icmp eq i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not13.i, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.br = load ptr, ptr %0, align 8, !tbaa !32    ; 5 uses
  %i.bs = sub i32 64, %i.x
  %i.bt = zext nneg i32 %i.bs to i64              ; 5 uses
  %i.bu = sub i32 %.sroa.049.sroa.4.0.lcssa.i, %.sroa.049.sroa.0.0.lcssa.i
  %xtraiter23 = and i32 %i.bu, 3                  ; 2 uses
  %lcmp.mod24.not = icmp eq i32 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.prol.loopexit22, label %.prol.preheader21

.prol.preheader21:                                ; preds = %.lr.ph15.i, %.prol.preheader21
  %.014.i.prol = phi i32 [ %i.ca, %.prol.preheader21 ], [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader21 ], [ 0, %.lr.ph15.i ]
  %i.bv = zext i32 %.014.i.prol to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bv
  %.val.i58.i.prol = load i64, ptr %i.bw, align 1, !tbaa !36
  %i.bx = mul i64 %.val.i58.i.prol, %..i.i
  %i.by = lshr i64 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  store i32 0, ptr %i.bz, align 4, !tbaa !16
  %i.ca = add i32 %.014.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter23
  br i1 %prol.iter.cmp.not, label %.prol.loopexit22, label %.prol.preheader21, !llvm.loop !55

.prol.loopexit22:                                 ; preds = %.prol.preheader21, %.lr.ph15.i
  %.014.i.unr = phi i32 [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ], [ %i.ca, %.prol.preheader21 ]
  %i.cb = sub i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  %i.cc = icmp ugt i32 %i.cb, -4
  br i1 %i.cc, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i.new

.lr.ph12.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph12.i.new
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i.1, %.lr.ph12.i.new ], [ %indvars.iv17.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv17.i
  %.val.i56.i = load i64, ptr %i.cd, align 1, !tbaa !36
  %i.ce = mul i64 %.val.i56.i, %..i.i
  %i.cf = lshr i64 %i.ce, %i.ah
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !60
  %i.ci = add i16 %i.ch, -1
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv17.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %.val.i56.i.1 = load i64, ptr %i.ck, align 1, !tbaa !36
  %i.cl = mul i64 %.val.i56.i.1, %..i.i
  %i.cm = lshr i64 %i.cl, %i.ah
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cm ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !60
  %i.cp = add i16 %i.co, -1
  store i16 %i.cp, ptr %i.cn, align 2, !tbaa !60
  %indvars.iv.next18.i.1 = add nuw nsw i64 %indvars.iv17.i, 2 ; 2 uses
  %exitcond22.not.i.1 = icmp eq i64 %indvars.iv.next18.i.1, %wide.trip.count21.i
  br i1 %exitcond22.not.i.1, label %.preheader.i, label %.lr.ph12.i.new, !llvm.loop !56

.lr.ph15.i.new:                                   ; preds = %.prol.loopexit22, %.lr.ph15.i.new
  %.014.i = phi i32 [ %i.dn, %.lr.ph15.i.new ], [ %.014.i.unr, %.prol.loopexit22 ] ; 5 uses
  %i.cq = zext i32 %.014.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cq
  %.val.i58.i = load i64, ptr %i.cr, align 1, !tbaa !36
  %i.cs = mul i64 %.val.i58.i, %..i.i
  %i.ct = lshr i64 %i.cs, %i.bt
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  store i32 0, ptr %i.cu, align 4, !tbaa !16
  %i.cv = add i32 %.014.i, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cw
  %.val.i58.i.1 = load i64, ptr %i.cx, align 1, !tbaa !36
  %i.cy = mul i64 %.val.i58.i.1, %..i.i
  %i.cz = lshr i64 %i.cy, %i.bt
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  store i32 0, ptr %i.da, align 4, !tbaa !16
  %i.db = add i32 %.014.i, 2
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.dc
  %.val.i58.i.2 = load i64, ptr %i.dd, align 1, !tbaa !36
  %i.de = mul i64 %.val.i58.i.2, %..i.i
  %i.df = lshr i64 %i.de, %i.bt
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  store i32 0, ptr %i.dg, align 4, !tbaa !16
  %i.dh = add i32 %.014.i, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.di
  %.val.i58.i.3 = load i64, ptr %i.dj, align 1, !tbaa !36
  %i.dk = mul i64 %.val.i58.i.3, %..i.i
  %i.dl = lshr i64 %i.dk, %i.bt
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  store i32 0, ptr %i.dm, align 4, !tbaa !16
  %i.dn = add i32 %.014.i, 4                      ; 2 uses
  %.not.i.3 = icmp eq i32 %i.dn, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not.i.3, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i.new, !llvm.loop !57

FASTCOVER_selectSegment.exit:                     ; preds = %.prol.loopexit22, %.lr.ph15.i.new, %.preheader.i
  %.sroa.049.sroa.0.0.insert.ext.i = zext i32 %.sroa.049.sroa.0.0.lcssa.i to i64
  br i1 %.sroa.6.0.lcssa.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %FASTCOVER_selectSegment.exit
  %i.do = add i64 %.0519, 1                       ; 2 uses
  %i.dp = icmp ugt i64 %i.do, 9
  br i1 %i.dp, label %select.unfold, label %bb.q

bb.m:                                             ; preds = %FASTCOVER_selectSegment.exit
  %i.dq = add i32 %i.q, %.sroa.049.sroa.4.0.lcssa.i
  %i.dr = sub i32 %i.dq, %.sroa.049.sroa.0.0.lcssa.i
  %i.ds = zext i32 %i.dr to i64
  %..046 = tail call i64 @llvm.umin.i64(i64 %.04612, i64 %i.ds) ; 3 uses
  %i.dt = icmp samesign ult i64 %..046, %i.r
  br i1 %i.dt, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = sub nuw i64 %.04612, %..046             ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %i.du
  %i.dw = load ptr, ptr %0, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@FASTCOVER_buildDictionary:bb.a
  %i.en = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.eo = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ep = tail call i32 @fflush(ptr noundef %i.eo) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %select.unfold
  ret i64 %.046.lcssa
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.10.sroa.4 = alloca [12 x i8], align 4    ; 4 uses
  %6 = alloca %struct.COVER_best_s, align 8       ; 18 uses
  %7 = alloca %struct.FASTCOVER_ctx_t, align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !64 ; 2 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  %i.f = select i1 %i.e, double %i.d, double 7.500000e-01 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 3 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.j = select i1 %i.i, i32 6, i32 %i.h          ; 2 uses
  %i.k = select i1 %i.i, i32 8, i32 %i.h          ; 3 uses
  %i.l = load i32, ptr %5, align 8, !tbaa !66     ; 3 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 3 uses
  %i.n = select i1 %i.m, i32 50, i32 %i.l         ; 3 uses
  %i.o = select i1 %i.m, i32 2000, i32 %i.l       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !67   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = select i1 %i.r, i32 40, i32 %i.q         ; 2 uses
  %i.t = select i1 %i.m, i32 1950, i32 0          ; 2 uses
  %i.u = udiv i32 %i.t, %i.s
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.t to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.v to i16
  %i.w = udiv i16 %.lhs.trunc, %.rhs.trunc
  %narrow = add nuw nsw i16 %i.w, 1
  %i.x = zext nneg i16 %narrow to i32
  %i.y = zext i1 %i.i to i32
  %i.z = shl nuw nsw i32 %i.x, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i32 20, i32 %i.ab      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !11 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.aj = fcmp ogt double %i.f, 1.000000e+00
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %bb.c, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite185 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %i.al) #13 ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  %i.ao = icmp ugt i32 %i.af, 10
  br i1 %i.ao, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp sgt i32 %i.ai, 0
  br i1 %i.ap, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %i.aq) #13 ; 0 uses
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.as = tail call i32 @fflush(ptr noundef %i.ar) ; 0 uses
  br label %bb.aw

bb.g:                                             ; preds = %bb.d
  %i.at = icmp ult i32 %i.n, %i.k
  %i.au = icmp ult i32 %i.o, %i.n
  %or.cond = or i1 %i.at, %i.au
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.av = icmp sgt i32 %i.ai, 0
  br i1 %i.av, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite183 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %i.aw) #13 ; 0 uses
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ay = tail call i32 @fflush(ptr noundef %i.ax) ; 0 uses
  br label %bb.aw

bb.j:                                             ; preds = %bb.g
  %i.az = icmp eq i32 %4, 0
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp sgt i32 %i.ai, 0
  br i1 %i.ba, label %bb.l, label %bb.aw

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite182 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %i.bb) #13 ; 0 uses
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bd = tail call i32 @fflush(ptr noundef %i.bc) ; 0 uses
  br label %bb.aw

bb.m:                                             ; preds = %bb.j
  %i.be = icmp ult i64 %1, 256
  br i1 %i.be, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp sgt i32 %i.ai, 0
  br i1 %i.bf, label %bb.o, label %bb.aw

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.2, i32 noundef 256) #14 ; 0 uses
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bj = tail call i32 @fflush(ptr noundef %i.bi) ; 0 uses
  br label %bb.aw

bb.p:                                             ; preds = %bb.m
  %i.bk = icmp ugt i32 %i.b, 1
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = zext i32 %i.b to i64
  %i.bm = tail call ptr @POOL_create(i64 noundef %i.bl, i64 noundef 1) #12 ; 2 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.aw, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0145 = phi ptr [ %i.bm, %bb.q ], [ null, %bb.p ] ; 5 uses
  call void @COVER_best_init(ptr noundef nonnull %6) #12
  %.sroa.6190.0.copyload = load i32, ptr %i.a, align 8
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false)
  %i.bo = zext nneg i32 %i.ag to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @FASTCOVER_defaultAccelParameters, i64 %i.bo
  %.sroa.0.0.copyload = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.bq = icmp sgt i32 %i.ai, 1                   ; 3 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.9, i32 noundef %i.z) #14 ; 0 uses
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bu = call i32 @fflush(ptr noundef %i.bt)     ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not172238 = icmp ugt i32 %i.j, %i.k
  br i1 %.not172238, label %._crit_edge245, label %.lr.ph244.split.preheader

.lr.ph244.split.preheader:                        ; preds = %bb.t
  %i.bv = icmp sgt i32 %i.ai, 2                   ; 2 uses
  %i.bw = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.not181 = icmp eq ptr %.0145, null
  %i.ca = icmp samesign ugt i32 %i.ai, 3
  %i.cb = icmp sgt i32 %i.ai, 0                   ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.lr.ph244.split

.lr.ph244.split:                                  ; preds = %.lr.ph244.split.preheader, %._crit_edge
  %.0136242 = phi i64 [ %.4140.ph, %._crit_edge ], [ 0, %.lr.ph244.split.preheader ]
  %.not175241 = phi i1 [ false, %._crit_edge ], [ true, %.lr.ph244.split.preheader ]
  %.0147240 = phi i32 [ %i.ea, %._crit_edge ], [ %i.j, %.lr.ph244.split.preheader ] ; 7 uses
  %.0148239 = phi i32 [ %.2150.ph, %._crit_edge ], [ 1, %.lr.ph244.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph244.split
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.10, i32 noundef %.0147240) #14 ; 0 uses
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ch = call i32 @fflush(ptr noundef %i.cg)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph244.split
  %i.ci = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.0147240, double noundef %i.f, i32 noundef %i.ad, i64 %.sroa.0.0.copyload, i32 noundef %i.bw) ; 2 uses
  %8 = icmp ult i64 %i.ci, -119
  br i1 %8, label %bb.y, label %.split.us

.split.us:                                        ; preds = %bb.v
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split.us
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %i.cj) #13 ; 0 uses
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cl = call i32 @fflush(ptr noundef %i.ck)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.split.us, %bb.w
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  br label %.thread222

bb.y:                                             ; preds = %bb.v
  br i1 %.not175241, label %bb.z, label %.lr.ph

bb.z:                                             ; preds = %bb.y
  %i.cm = load i64, ptr %i.bx, align 8, !tbaa !26
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %i.cm, i32 noundef %i.ai) #12
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.y
  %i.cn = icmp eq i32 %.0147240, 0
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ar
  %.1137236 = phi i64 [ %.0136242, %.lr.ph ], [ %.4140.ph, %bb.ar ] ; 4 uses
  %.0146234 = phi i32 [ %i.n, %.lr.ph ], [ %i.dx, %bb.ar ] ; 6 uses
  %.1149233 = phi i32 [ %.0148239, %.lr.ph ], [ %.2150.ph, %bb.ar ] ; 3 uses
  %i.co = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #16 ; 17 uses
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.11, i32 noundef %.0146234) #14 ; 0 uses
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cs = call i32 @fflush(ptr noundef %i.cr)     ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not177 = icmp eq ptr %i.co, null
  br i1 %.not177, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cb, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite178 = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %i.ct) #13 ; 0 uses
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cv = call i32 @fflush(ptr noundef %i.cu)     ; 0 uses
  br label %bb.aq

bb.af:                                            ; preds = %bb.ac
  store ptr %7, ptr %i.co, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %6, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %1, ptr %i.cx, align 8, !tbaa !43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 36
  store i32 %.sroa.6190.0.copyload, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !16
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, i64 12, i1 false), !tbaa.struct !68
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 68
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  store i32 %.0146234, ptr %i.cy, align 8, !tbaa !69
  store i32 %.0147240, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !70
  store double %i.f, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !73
  %i.cz = load i32, ptr %i.by, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 60
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !74
  %i.db = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.dc = icmp eq i32 %.0146234, 0
  %or.cond.i = or i1 %i.dc, %i.cn
  br i1 %or.cond.i, label %FASTCOVER_checkParameters.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %.0147240, label %FASTCOVER_checkParameters.exit.thread [
    i32 8, label %bb.ah
    i32 6, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.dd = zext i32 %.0146234 to i64
  %i.de = icmp ult i64 %1, %i.dd
  %i.df = icmp ugt i32 %.0147240, %.0146234
  %or.cond20.i = or i1 %i.de, %i.df
  %i.dg = add i32 %i.db, -32
  %or.cond7.i = icmp ult i32 %i.dg, -31
  %or.cond21.i = or i1 %or.cond7.i, %or.cond20.i
  br i1 %or.cond21.i, label %FASTCOVER_checkParameters.exit.thread, label %FASTCOVER_checkParameters.exit

FASTCOVER_checkParameters.exit.thread:            ; preds = %bb.ah, %bb.ag, %bb.af
  br i1 %i.cb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %FASTCOVER_checkParameters.exit.thread
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite180 = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %i.dh) #13 ; 0 uses
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dj = call i32 @fflush(ptr noundef %i.di)     ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %FASTCOVER_checkParameters.exit.thread
  call void @free(ptr noundef nonnull %i.co) #12
  br label %bb.ar

FASTCOVER_checkParameters.exit:                   ; preds = %bb.ah
  call void @COVER_best_start(ptr noundef nonnull %6) #12
  br i1 %.not181, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %FASTCOVER_checkParameters.exit
  call void @POOL_add(ptr noundef nonnull %.0145, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %i.co) #12
  br label %bb.am

bb.al:                                            ; preds = %FASTCOVER_checkParameters.exit
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %i.co)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.bq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dk = call i64 @clock() #12
  %i.dl = sub nsw i64 %i.dk, %.1137236
  %i.dm = icmp sgt i64 %i.dl, 150000
  %or.cond6 = select i1 %i.dm, i1 true, i1 %i.ca
  br i1 %or.cond6, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dn = call i64 @clock() #12
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dp = mul i32 %.1149233, 100
  %i.dq = udiv i32 %i.dp, %i.z
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.13, i32 noundef %i.dq) #14 ; 0 uses
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dt = call i32 @fflush(ptr noundef %i.ds)     ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.3139 = phi i64 [ %.1137236, %bb.am ], [ %i.dn, %bb.ao ], [ %.1137236, %bb.an ]
  %i.du = add i32 %.1149233, 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ad, %bb.ae
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !27
  call void @free(ptr noundef %i.dv) #12
  store ptr null, ptr %i.cc, align 8, !tbaa !27
  %i.dw = load ptr, ptr %i.cd, align 8, !tbaa !30
  call void @free(ptr noundef %i.dw) #12
  store ptr null, ptr %i.cd, align 8, !tbaa !30
  br label %.thread222

bb.ar:                                            ; preds = %bb.ap, %bb.aj
  %.2150.ph = phi i32 [ %.1149233, %bb.aj ], [ %i.du, %bb.ap ] ; 2 uses
  %.4140.ph = phi i64 [ %.1137236, %bb.aj ], [ %.3139, %bb.ap ] ; 2 uses
  %i.dx = add i32 %.0146234, %i.v                 ; 2 uses
  %.not176 = icmp ugt i32 %i.dx, %i.o
  br i1 %.not176, label %._crit_edge, label %bb.aa, !llvm.loop !61

.thread222:                                       ; preds = %bb.aq, %bb.x
  %.4.ph = phi i64 [ %i.ci, %bb.x ], [ -64, %bb.aq ]
  call void @POOL_free(ptr noundef %.0145) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.ar
  call void @COVER_best_wait(ptr noundef nonnull %6) #12
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !27
  call void @free(ptr noundef %i.dy) #12
  store ptr null, ptr %i.cc, align 8, !tbaa !27
  %i.dz = load ptr, ptr %i.cd, align 8, !tbaa !30
  call void @free(ptr noundef %i.dz) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ea = add i32 %.0147240, 2                    ; 2 uses
  %.not172 = icmp ugt i32 %i.ea, %i.k
  br i1 %.not172, label %._crit_edge245, label %.lr.ph244.split, !llvm.loop !62

._crit_edge245:                                   ; preds = %._crit_edge, %bb.t
  br i1 %i.bq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge245
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ee = call i32 @fflush(ptr noundef %i.ed)     ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge245
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !76 ; 2 uses
  %9 = icmp ult i64 %i.eg, -119
  br i1 %9, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  call void @POOL_free(ptr noundef %.0145) #12
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.sroa.7205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.7205.0.copyload = load double, ptr %.sroa.7205.0..sroa_idx, align 8
  %.sroa.8206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 136
  %.sroa.8206.0.copyload = load i32, ptr %.sroa.8206.0..sroa_idx, align 8
  %i.ek = load <2 x i32>, ptr %i.ej, align 8
  store <2 x i32> %i.ek, ptr %5, align 8, !tbaa !16
  %i.el = load <2 x i32>, ptr %.sroa.5203.0..sroa_idx, align 8
  store <2 x i32> %i.el, ptr %i.p, align 4, !tbaa !16
  store double %.sroa.7205.0.copyload, ptr %i.c, align 8, !tbaa !64
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !12
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.em, ptr noundef nonnull align 8 dereferenceable(12) %i.en, i64 12, i1 false)
  store i32 %.sroa.8206.0.copyload, ptr %.sroa.8194.0..sroa_idx, align 4, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.ep, i64 %i.ei, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  call void @POOL_free(ptr noundef %.0145) #12
  br label %bb.aw

bb.aw:                                            ; preds = %.thread222, %bb.au, %bb.av, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c
  %.6 = phi i64 [ -70, %bb.n ], [ -42, %bb.b ], [ -42, %bb.e ], [ -42, %bb.h ], [ -72, %bb.k ], [ %.4.ph, %.thread222 ], [ -64, %bb.q ], [ -42, %bb.c ], [ -42, %bb.f ], [ -42, %bb.i ], [ -72, %bb.l ], [ -70, %bb.o ], [ %i.eg, %bb.au ], [ %i.ei, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.4)
  ret i64 %.6
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @COVER_best_init(ptr noundef) local_unnamed_addr #4

declare void @COVER_best_destroy(ptr noundef) local_unnamed_addr #4

declare void @POOL_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @COVER_best_start(ptr noundef) local_unnamed_addr #4

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_tryParameters(ptr noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.ZDICT_cover_params_t, align 8 ; 7 uses
  %2 = alloca %struct.COVER_dictSelection, align 8 ; 7 uses
  %3 = alloca %struct.COVER_dictSelection, align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 2) #15 ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.d) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %2, i64 noundef -1) #12
  %i.k = load i32, ptr %i.e, align 4, !tbaa !35
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 4, %i.l                          ; 2 uses
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = icmp ne ptr %i.i, null
  %i.r = icmp ne ptr %i.j, null
  %or.cond = and i1 %i.q, %i.r
  %i.s = icmp ne ptr %i.n, null
  %or.cond3 = and i1 %or.cond, %i.s
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.p, 0
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %i.u) #13 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  %.val = load i32, ptr %1, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val46 = load i32, ptr %i.x, align 4
  %i.y = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, i64 noundef %i.d, i32 %.val, i32 %.val46, ptr noundef nonnull %i.i) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul i64 %i.aa, %i.ad
  %i.af = udiv i64 %i.ae, 100
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.ai = sub i64 %i.d, %i.y
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, ptr noundef nonnull %i.ah, i64 noundef %i.d, i64 noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.ag, i64 noundef %i.aa, i64 noundef %i.an, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %1, ptr noundef %i.ap, i64 noundef -1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.aq = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  %.not = icmp ne i32 %i.aq, 0
  %i.ar = icmp sgt i32 %i.p, 0
  %or.cond45 = select i1 %.not, i1 %i.ar, i1 false
  br i1 %or.cond45, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %i.as) #13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.au = call i32 @fflush(ptr noundef %i.at)     ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.b
  call void @free(ptr noundef %i.j) #12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  call void @COVER_best_finish(ptr noundef %i.aw, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %1, ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef %i.i) #12
  call void @COVER_dictSelectionFree(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  call void @free(ptr noundef %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #8

declare void @COVER_best_wait(ptr noundef) local_unnamed_addr #4

declare i64 @COVER_sum(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @COVER_dictSelectionError(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, i64 noundef) local_unnamed_addr #4

declare void @COVER_selectDict(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
