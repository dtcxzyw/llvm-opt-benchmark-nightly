Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/fastcover?download=true
inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_zstd::FASTCOVER_accel_t" = type { i32, i32 }
%"struct.duckdb_zstd::ZDICT_fastCover_params_t" = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %"struct.duckdb_zstd::ZDICT_params_t" }
%"struct.duckdb_zstd::ZDICT_params_t" = type { i32, i32, i32 }
%"struct.duckdb_zstd::FASTCOVER_ctx_t" = type { ptr, ptr, ptr, i64, i64, i64, i64, ptr, i32, i32, %"struct.duckdb_zstd::FASTCOVER_accel_t" }
%"struct.duckdb_zstd::ZDICT_cover_params_t" = type { i32, i32, i32, i32, double, i32, i32, %"struct.duckdb_zstd::ZDICT_params_t" }
%"struct.duckdb_zstd::COVER_best_s" = type { i32, i32, i64, ptr, i64, %"struct.duckdb_zstd::ZDICT_cover_params_t", i64 }
%"struct.duckdb_zstd::COVER_dictSelection" = type { ptr, i64, i64 }

@_ZN11duckdb_zstdL14g_displayLevelE = internal unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"FASTCOVER parameters incorrect\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"FASTCOVER must have at least one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"dictBufferCapacity must be at least %u\0A\00", align 1
@_ZN11duckdb_zstdL32FASTCOVER_defaultAccelParametersE = internal unnamed_addr constant [11 x %"struct.duckdb_zstd::FASTCOVER_accel_t"] [%"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 100, i32 0 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 100, i32 0 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 50, i32 1 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 34, i32 2 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 25, i32 3 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 20, i32 4 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 17, i32 5 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 14, i32 6 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 13, i32 7 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 11, i32 8 }, %"struct.duckdb_zstd::FASTCOVER_accel_t" { i32 10, i32 9 }], align 16
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
@_ZN11duckdb_zstdL6g_timeE = internal unnamed_addr global i64 0, align 8
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

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd31ZDICT_trainFromBuffer_fastCoverEPvmPKvPKmjNS_24ZDICT_fastCover_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly byval(%"struct.duckdb_zstd::ZDICT_fastCover_params_t") align 8 captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"struct.duckdb_zstd::FASTCOVER_ctx_t", align 8 ; 9 uses
  %.sroa.16.sroa.4 = alloca [12 x i8], align 4    ; 4 uses
  %7 = alloca %"struct.duckdb_zstd::ZDICT_cover_params_t", align 8 ; 9 uses
  %8 = alloca %"struct.duckdb_zstd::ZDICT_params_t", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  store i32 %i.b, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, i32 20, i32 %i.d         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.sroa.048.0.copyload = load i32, ptr %5, align 8, !tbaa !3 ; 4 uses
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.249.0.copyload = load i32, ptr %.sroa.249.0..sroa_idx, align 4, !tbaa !3 ; 5 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %9 = load <2 x i32>, ptr %.sroa.450.0..sroa_idx, align 4, !tbaa !3
  %.sroa.955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.955.0.copyload = load i32, ptr %.sroa.955.0..sroa_idx, align 4, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.k = icmp eq i32 %.sroa.249.0.copyload, 0
  %i.l = icmp eq i32 %.sroa.048.0.copyload, 0
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %.sroa.249.0.copyload, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread [
    i32 8, label %bb.c
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = zext i32 %.sroa.048.0.copyload to i64
  %i.n = icmp ult i64 %1, %i.m
  %i.o = icmp ugt i32 %.sroa.249.0.copyload, %.sroa.048.0.copyload
  %or.cond20.i = or i1 %i.o, %i.n
  %i.p = add i32 %i.f, -32
  %or.cond7.i = icmp ult i32 %i.p, -31
  %or.cond21.i = or i1 %or.cond7.i, %or.cond20.i
  %or.cond12.i = icmp ugt i32 %i.h, 10
  %or.cond58 = select i1 %or.cond21.i, i1 true, i1 %or.cond12.i
  br i1 %or.cond58, label %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, label %bb.e

_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread: ; preds = %bb.c, %bb.b, %bb.a
  %i.q = icmp sgt i32 %i.b, 0
  br i1 %i.q, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.s = tail call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %i.r) #13 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %4, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp sgt i32 %i.b, 0
  br i1 %i.w, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %i.x) #13 ; 0 uses
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aa = tail call i32 @fflush(ptr noundef %i.z) ; 0 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %1, 256
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp sgt i32 %i.b, 0
  br i1 %i.ac, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.2, i32 noundef 256) #14 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ah = zext nneg i32 %i.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN11duckdb_zstdL32FASTCOVER_defaultAccelParametersE, i64 %i.ah
  %.sroa.011.0.copyload = load i64, ptr %i.ai, align 8
  %i.aj = call fastcc noundef i64 @_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE(ptr noundef %6, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.sroa.249.0.copyload, double noundef 1.000000e+00, i32 noundef %i.f, i64 %.sroa.011.0.copyload) ; 3 uses
  %i.ak = icmp ult i64 %i.aj, -119
  br i1 %i.ak, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ao = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %i.an) #13 ; 0 uses
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aq = tail call i32 @fflush(ptr noundef %i.ap) ; 0 uses
  br label %bb.r

.critedge:                                        ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  tail call void @_ZN11duckdb_zstd23COVER_warnOnSmallCorpusEmmi(i64 noundef %1, i64 noundef %i.as, i32 noundef %i.at)
  %i.au = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %i.aw) #13 ; 0 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.az = tail call i32 @fflush(ptr noundef %i.ay) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.ba = zext nneg i32 %i.f to i64
  %i.bb = shl nuw nsw i64 1, %i.ba
  %i.bc = tail call noalias ptr @calloc(i64 noundef %i.bb, i64 noundef 2) #15 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  store i32 %.sroa.048.0.copyload, ptr %7, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.249.0.copyload, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x i32> %9, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 1.000000e+00, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.955.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !3
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !3
  %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.16.sroa.4.0..sroa.16.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.sroa.4, i64 12, i1 false), !tbaa.struct !25
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store i32 0, ptr %.sroa.18.0..sroa_idx, align 4
  %i.bf = call fastcc noundef i64 @_ZN11duckdb_zstdL25FASTCOVER_buildDictionaryEPKNS_15FASTCOVER_ctx_tEPjPvmNS_20ZDICT_cover_params_tEPt(ptr noundef nonnull %6, ptr noundef %i.be, ptr noundef %0, i64 noundef %1, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_cover_params_t") align 8 %7, ptr noundef %i.bc) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !27
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul i64 %i.bh, %i.bk
  %i.bm = udiv i64 %i.bl, 100
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bp = sub i64 %1, %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.bq = tail call noundef i64 @_ZN11duckdb_zstd24ZDICT_finalizeDictionaryEPvmPKvmS2_PKmjNS_14ZDICT_params_tE(ptr noundef %0, i64 noundef %1, ptr noundef %i.bo, i64 noundef %i.bp, ptr noundef %2, ptr noundef %3, i32 noundef %i.bn, ptr noundef nonnull byval(%"struct.duckdb_zstd::ZDICT_params_t") align 8 %8) ; 3 uses
  %i.br = icmp ult i64 %i.bq, -119
  %i.bs = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4
  %i.bt = icmp sgt i32 %i.bs, 1
  %or.cond = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bv = trunc i64 %i.bq to i32
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.5, i32 noundef %i.bv) #14 ; 0 uses
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.by = tail call i32 @fflush(ptr noundef %i.bx) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @free(ptr noundef %i.be) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.ca) #12
  tail call void @free(ptr noundef %i.bc) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.j, %bb.f, %bb.g, %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread, %bb.d, %bb.q
  %.1 = phi i64 [ -42, %_ZN11duckdb_zstdL25FASTCOVER_checkParametersENS_20ZDICT_cover_params_tEmjj.exit.thread ], [ -72, %bb.f ], [ %i.bq, %bb.q ], [ -70, %bb.i ], [ -42, %bb.d ], [ -72, %bb.g ], [ -70, %bb.j ], [ %i.aj, %bb.l ], [ %i.aj, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -72, 1) i64 @_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, double noundef %5, i32 noundef %6, i64 %7) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %2, i32 noundef %3) ; 5 uses
  %i.b = fcmp olt double %5, 1.000000e+00         ; 3 uses
  %i.c = uitofp i32 %3 to double
  %i.d = fmul double %5, %i.c
  %i.e = fptoui double %i.d to i32                ; 4 uses
  %i.f = select i1 %i.b, i32 %i.e, i32 0          ; 2 uses
  %i.g = select i1 %i.b, i32 %i.e, i32 %3         ; 4 uses
  %i.h = sub i32 %3, %i.f                         ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %2, i32 noundef %i.e)
  %i.j = zext i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.l = tail call noundef i64 @_ZN11duckdb_zstd9COVER_sumEPKmj(ptr noundef %i.k, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.n = phi i64 [ %i.l, %bb.b ], [ %i.a, %bb.a ]
  %i.o = tail call i32 @llvm.umax.i32(i32 %4, i32 8)
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i64 %i.a, %i.p
  %i.r = icmp ugt i64 %i.a, 4294967294
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.v = lshr i64 %i.a, 20
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.16, i32 noundef %i.w, i32 noundef 4095) #14 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = icmp ult i32 %i.g, 5
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.17, i32 noundef %i.g) #14 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = icmp eq i32 %3, %i.f
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.an = tail call i32 @fflush(ptr noundef %i.am) ; 0 uses
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.ao = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %.thread81

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ar = trunc i64 %i.m to i32
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.19, i32 noundef %i.g, i32 noundef %i.ar) #14 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  %.pr = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
  %i.av = icmp sgt i32 %.pr, 1
  br i1 %i.av, label %bb.n, label %.thread81

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ax = trunc i64 %i.n to i32
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.20, i32 noundef %i.h, i32 noundef %i.ax) #14 ; 0 uses
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  br label %.thread81

.thread81:                                        ; preds = %bb.l, %bb.n, %bb.m
  store ptr %1, ptr %0, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.bb, align 8, !tbaa !30
  %i.bc = zext i32 %3 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !31
  %i.be = zext i32 %i.g to i64                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !26
  %i.bg = zext i32 %i.h to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !32
  %reass.sub = sub i64 %i.m, %i.p
  %i.bi = add i64 %reass.sub, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %4, ptr %i.bk, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %6, ptr %i.bl, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %7, ptr %i.bm, align 8
  %i.bn = add i32 %3, 1                           ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 8) #15 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !28
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.thread81
  %i.bs = load i32, ptr @_ZN11duckdb_zstdL14g_displayLevelE, align 4, !tbaa !3
end_hunk_0
