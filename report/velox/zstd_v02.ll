Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v02?download=true
inline.NumInlined: 356
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.algo_time_t = type { i32, i32 }
%struct.ZSTDv02_Dctx_s = type { [1025 x i32], [513 x i32], [1025 x i32], ptr, ptr, i64, i32, i32, ptr, i64, [131080 x i8] }
%struct.BIT_DStream_t = type { i64, i32, ptr, ptr }
%struct.sortedSymbol_t = type { i8, i8 }
%union.HUF_DSeqX6 = type { i32 }

@HUF_decompress.decompress = internal unnamed_addr constant [3 x ptr] [ptr @HUF_decompress4X2, ptr @HUF_decompress4X4, ptr @HUF_decompress4X6], align 16
@algoTime = internal unnamed_addr constant [16 x [3 x %struct.algo_time_t]] [[3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t zeroinitializer, %struct.algo_time_t { i32 1, i32 1 }, %struct.algo_time_t { i32 2, i32 2 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 38, i32 130 }, %struct.algo_time_t { i32 1313, i32 74 }, %struct.algo_time_t { i32 2151, i32 38 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 448, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 41 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 556, i32 128 }, %struct.algo_time_t { i32 1353, i32 74 }, %struct.algo_time_t { i32 2238, i32 47 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 714, i32 128 }, %struct.algo_time_t { i32 1418, i32 74 }, %struct.algo_time_t { i32 2436, i32 53 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 883, i32 128 }, %struct.algo_time_t { i32 1437, i32 74 }, %struct.algo_time_t { i32 2464, i32 61 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 897, i32 128 }, %struct.algo_time_t { i32 1515, i32 75 }, %struct.algo_time_t { i32 2622, i32 68 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 926, i32 128 }, %struct.algo_time_t { i32 1613, i32 75 }, %struct.algo_time_t { i32 2730, i32 75 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 947, i32 128 }, %struct.algo_time_t { i32 1729, i32 77 }, %struct.algo_time_t { i32 3359, i32 77 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1107, i32 128 }, %struct.algo_time_t { i32 2083, i32 81 }, %struct.algo_time_t { i32 4006, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1177, i32 128 }, %struct.algo_time_t { i32 2379, i32 87 }, %struct.algo_time_t { i32 4785, i32 88 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1242, i32 128 }, %struct.algo_time_t { i32 2415, i32 93 }, %struct.algo_time_t { i32 5155, i32 84 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1349, i32 128 }, %struct.algo_time_t { i32 2644, i32 106 }, %struct.algo_time_t { i32 5260, i32 106 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 1455, i32 128 }, %struct.algo_time_t { i32 2422, i32 124 }, %struct.algo_time_t { i32 4174, i32 124 }], [3 x %struct.algo_time_t] [%struct.algo_time_t { i32 722, i32 128 }, %struct.algo_time_t { i32 1891, i32 145 }, %struct.algo_time_t { i32 1936, i32 146 }]], align 16
@HUF_readStats.l = internal unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 7, i32 8, i32 15, i32 16, i32 31, i32 32, i32 63, i32 64, i32 127, i32 128], align 16
@ZSTD_decodeSequence.offsetPrefix = internal unnamed_addr constant [32 x i64] [i64 1, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@ZSTD_execSequence.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZSTD_execSequence.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv02_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -72, ptr %2, align 8, !tbaa !14
  br label %.thread51

bb.c:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1
  %.not = icmp eq i32 %.val, -47205086
  br i1 %.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -10, ptr %2, align 8, !tbaa !14
  br label %.thread51

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.b = add i64 %1, -4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread89
  %.03474 = phi i64 [ %i.u, %.thread89 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03573 = phi i64 [ %i.t, %.thread89 ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.03772 = phi ptr [ %i.s, %.thread89 ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = load i8, ptr %.03772, align 1, !tbaa !15
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = lshr i32 %i.e, 6
  switch i32 %i.f, label %bb.e [
    i32 3, label %.loopexit
    i32 2, label %.thread
  ]

._crit_edge:                                      ; preds = %.thread89
  store i64 -72, ptr %2, align 8, !tbaa !14
  br label %.thread51

bb.e:                                             ; preds = %.lr.ph
  %i.g = shl nuw nsw i32 %i.e, 16
  %i.h = and i32 %i.g, 458752
  %4 = getelementptr inbounds nuw i8, ptr %.03772, i64 2
  %5 = load i8, ptr %4, align 1, !tbaa !15
  %6 = zext i8 %5 to i32
  %7 = or disjoint i32 %i.h, %6
  %i.i = getelementptr inbounds nuw i8, ptr %.03772, i64 1
  %8 = load i8, ptr %i.i, align 1, !tbaa !15
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %i.j = or disjoint i32 %10, %7                  ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = add i64 %.03573, -3                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %bb.f, label %bb.g

.thread:                                          ; preds = %.lr.ph
  %i.n = add i64 %.03573, -3                      ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %.thread89

bb.f:                                             ; preds = %.thread, %bb.e
  store i64 -72, ptr %2, align 8, !tbaa !14
  br label %.thread51

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.j, 0
  br i1 %i.p, label %.loopexit, label %.thread89

.thread89:                                        ; preds = %.thread, %bb.g
  %.0.i.ph8891 = phi i64 [ %i.k, %bb.g ], [ 1, %.thread ] ; 2 uses
  %i.q = phi i64 [ %i.l, %bb.g ], [ %i.n, %.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %.03772, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0.i.ph8891
  %i.t = sub nuw i64 %i.q, %.0.i.ph8891           ; 2 uses
  %i.u = add i64 %.03474, 1
  %i.v = icmp ult i64 %i.t, 3
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %.lr.ph
  %.138.ph = getelementptr inbounds nuw i8, ptr %.03772, i64 3
  %i.w = ptrtoint ptr %.138.ph to i64
  %i.x = ptrtoint ptr %0 to i64
  %i.y = sub i64 %i.w, %i.x
  store i64 %i.y, ptr %2, align 8, !tbaa !14
  %i.z = shl i64 %.03474, 17
  br label %.thread51

.thread51:                                        ; preds = %bb.f, %._crit_edge, %.loopexit, %bb.d, %bb.b
  %.sink = phi i64 [ -2, %bb.f ], [ -2, %._crit_edge ], [ %i.z, %.loopexit ], [ -2, %bb.d ], [ -2, %bb.b ]
  store i64 %.sink, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZSTDv02_isError(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv02_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.ZSTDv02_Dctx_s, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10264
  store ptr %0, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = icmp ult i64 %3, 7
  br i1 %i.d, label %ZSTD_decompress.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %2, align 1
  %.not.i.i = icmp eq i32 %.val.i.i, -47205086
  br i1 %.not.i.i, label %.lr.ph.i.i, label %ZSTD_decompress.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = ptrtoint ptr %i.b to i64
  %gepdiff.i.i = add i64 %3, -4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.047108.i.i = phi i64 [ %gepdiff.i.i, %.lr.ph.i.i ], [ %i.ac, %bb.i ] ; 2 uses
  %.048107.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.aa, %bb.i ] ; 6 uses
  %.050106.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 4 uses
  %i.h = load i8, ptr %.050106.i.i, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 3, label %.thread71.i.i
    i32 2, label %bb.e
  ]

.thread71.i.i:                                    ; preds = %bb.c
  %.not59.i.i = icmp eq i64 %.047108.i.i, 3
  br i1 %.not59.i.i, label %.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i, label %ZSTD_decompress.exit

.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i: ; preds = %.thread71.i.i
  %.pre.i = ptrtoint ptr %.048107.i.i to i64
  br label %ZSTD_copyUncompressedBlock.exit.thread78.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.i, 16
  %i.l = and i32 %i.k, 458752
  %5 = getelementptr inbounds nuw i8, ptr %.050106.i.i, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %i.l, %7
  %i.m = getelementptr inbounds nuw i8, ptr %.050106.i.i, i64 1
  %9 = load i8, ptr %i.m, align 1, !tbaa !15
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %i.n = or disjoint i32 %11, %8
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.ph.i.i = phi i64 [ %i.o, %bb.d ], [ 1, %bb.c ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.050106.i.i, i64 3 ; 3 uses
  %i.q = add i64 %.047108.i.i, -3                 ; 2 uses
  %i.r = icmp ugt i64 %.0.i.ph.i.i, %i.q
  br i1 %i.r, label %ZSTD_decompress.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.j, label %ZSTD_decompress.exit [
    i32 0, label %ZSTD_copyUncompressedBlock.exit.i.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %.048107.i.i to i64         ; 2 uses
  %i.t = sub i64 %i.g, %i.s
  %i.u = icmp ugt i64 %.0.i.ph.i.i, %i.t
  br i1 %i.u, label %ZSTD_decompress.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i64 %.0.i.ph.i.i, 0
  br i1 %.not.i.i.i, label %ZSTD_copyUncompressedBlock.exit.thread78.i.i, label %ZSTD_copyUncompressedBlock.exit.thread.thread.i.i

ZSTD_copyUncompressedBlock.exit.thread.thread.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.048107.i.i, ptr nonnull readonly align 1 %i.p, i64 %.0.i.ph.i.i, i1 false)
  br label %bb.i

ZSTD_copyUncompressedBlock.exit.i.i:              ; preds = %bb.f
  %i.v = ptrtoint ptr %.048107.i.i to i64         ; 2 uses
  %i.w = sub i64 %i.g, %i.v
  %i.x = call fastcc i64 @ZSTD_decompressBlock(ptr noundef nonnull %4, ptr noundef %.048107.i.i, i64 noundef %i.w, ptr noundef nonnull %i.p, i64 noundef %.0.i.ph.i.i) ; 3 uses
  %i.y = icmp eq i64 %.0.i.ph.i.i, 0
  br i1 %i.y, label %ZSTD_copyUncompressedBlock.exit.thread78.i.i, label %ZSTD_copyUncompressedBlock.exit.thread.i.i

ZSTD_copyUncompressedBlock.exit.thread.i.i:       ; preds = %ZSTD_copyUncompressedBlock.exit.i.i
  %i.z = icmp ult i64 %i.x, -119
  br i1 %i.z, label %bb.i, label %ZSTD_decompress.exit

bb.i:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.thread.i.i, %ZSTD_copyUncompressedBlock.exit.thread.thread.i.i
  %.07799.i.i = phi i64 [ %.0.i.ph.i.i, %ZSTD_copyUncompressedBlock.exit.thread.thread.i.i ], [ %i.x, %ZSTD_copyUncompressedBlock.exit.thread.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.048107.i.i, i64 %.07799.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0.i.ph.i.i ; 2 uses
  %i.ac = sub nuw i64 %i.q, %.0.i.ph.i.i
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.e, %i.ad
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %ZSTD_decompress.exit, label %bb.c

ZSTD_copyUncompressedBlock.exit.thread78.i.i:     ; preds = %ZSTD_copyUncompressedBlock.exit.i.i, %bb.h, %.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i
  %.pre-phi.i.i = phi i64 [ %.pre.i, %.thread71.i.ZSTD_copyUncompressedBlock.exit.ZSTD_copyUncompressedBlock.exit.thread78_crit_edge.i_crit_edge.i ], [ %i.v, %ZSTD_copyUncompressedBlock.exit.i.i ], [ %i.s, %bb.h ]
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %.pre-phi.i.i, %i.ag
  br label %ZSTD_decompress.exit

ZSTD_decompress.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %ZSTD_copyUncompressedBlock.exit.thread.i.i, %bb.i, %bb.a, %bb.b, %.thread71.i.i, %ZSTD_copyUncompressedBlock.exit.thread78.i.i
  %.2.i.i = phi i64 [ %i.ah, %ZSTD_copyUncompressedBlock.exit.thread78.i.i ], [ -72, %bb.a ], [ -10, %bb.b ], [ -72, %.thread71.i.i ], [ -70, %bb.g ], [ %i.x, %ZSTD_copyUncompressedBlock.exit.thread.i.i ], [ -72, %bb.e ], [ -1, %bb.f ], [ -72, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %.2.i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTDv02_createDCtx() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(141384) ptr @malloc(i64 noundef 141384) #21 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %ZSTD_createDCtx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10272
  store i64 4, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10284
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %ZSTD_createDCtx.exit

ZSTD_createDCtx.exit:                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv02_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  tail call void @free(ptr noundef %0) #20
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv02_resetDCtx(ptr nofree noundef writeonly captures(none) initializes((10256, 10280), (10284, 10288)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272
  store i64 4, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10284
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv02_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10272
  %.val = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv02_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq i64 %4, %i.b
  br i1 %.not.i, label %bb.b, label %ZSTD_decompressContinue.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %.not43.i = icmp eq ptr %1, %i.d
  br i1 %.not43.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10264
  store ptr %1, ptr %i.e, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10284 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load i32, ptr %3, align 1
  %.not46.i = icmp eq i32 %.val.i, -47205086
  br i1 %.not46.i, label %bb.f, label %ZSTD_decompressContinue.exit

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.f, align 4, !tbaa !21
  store i64 3, ptr %i.a, align 8, !tbaa !20
  br label %ZSTD_decompressContinue.exit

bb.g:                                             ; preds = %bb.d
  %i.h = load i8, ptr %3, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 6                         ; 2 uses
  switch i32 %i.j, label %bb.h [
    i32 3, label %ZSTD_getcBlockSize.exit.i
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.k = shl nuw nsw i32 %i.i, 16
  %i.l = and i32 %i.k, 458752
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %i.l, %7
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  %9 = load i8, ptr %i.m, align 1, !tbaa !15
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %i.n = or disjoint i32 %11, %8
  %i.o = zext nneg i32 %i.n to i64
  br label %bb.i

ZSTD_getcBlockSize.exit.i:                        ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.ph.i = phi i64 [ %i.o, %bb.h ], [ 1, %bb.g ]
  store i64 %.0.i.ph.i, ptr %i.a, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10280
  store i32 %i.j, ptr %i.p, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ZSTD_getcBlockSize.exit.i
  %storemerge.i = phi i32 [ 2, %bb.i ], [ 0, %ZSTD_getcBlockSize.exit.i ]
  store i32 %storemerge.i, ptr %i.f, align 4, !tbaa !21
  br label %ZSTD_decompressContinue.exit

bb.k:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10280
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  switch i32 %i.r, label %ZSTD_decompressContinue.exit [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 3, label %ZSTD_copyUncompressedBlock.exit.thread.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.s = tail call fastcc i64 @ZSTD_decompressBlock(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %ZSTD_copyUncompressedBlock.exit.i

bb.m:                                             ; preds = %bb.k
  %i.t = icmp ugt i64 %4, %2
  br i1 %i.t, label %ZSTD_copyUncompressedBlock.exit.thread54.i, label %bb.n

ZSTD_copyUncompressedBlock.exit.thread54.i:       ; preds = %bb.m
  store i32 1, ptr %i.f, align 4, !tbaa !21
  store i64 3, ptr %i.a, align 8, !tbaa !20
  br label %ZSTD_decompressContinue.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %ZSTD_copyUncompressedBlock.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %3, i64 %4, i1 false)
  br label %ZSTD_copyUncompressedBlock.exit.i

ZSTD_copyUncompressedBlock.exit.thread.i:         ; preds = %bb.n, %bb.k
  store i32 1, ptr %i.f, align 4, !tbaa !21
  store i64 3, ptr %i.a, align 8, !tbaa !20
  br label %bb.p

ZSTD_copyUncompressedBlock.exit.i:                ; preds = %bb.o, %bb.l
  %.0.i = phi i64 [ %i.s, %bb.l ], [ %4, %bb.o ]  ; 3 uses
  store i32 1, ptr %i.f, align 4, !tbaa !21
  store i64 3, ptr %i.a, align 8, !tbaa !20
  %i.u = icmp ult i64 %.0.i, -119
  br i1 %i.u, label %bb.p, label %ZSTD_decompressContinue.exit

bb.p:                                             ; preds = %ZSTD_copyUncompressedBlock.exit.i, %ZSTD_copyUncompressedBlock.exit.thread.i
  %.053.i = phi i64 [ 0, %ZSTD_copyUncompressedBlock.exit.thread.i ], [ %.0.i, %ZSTD_copyUncompressedBlock.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.053.i
  store ptr %i.v, ptr %i.c, align 8, !tbaa !45
  br label %ZSTD_decompressContinue.exit

ZSTD_decompressContinue.exit:                     ; preds = %bb.a, %bb.e, %bb.f, %bb.j, %bb.k, %ZSTD_copyUncompressedBlock.exit.thread54.i, %ZSTD_copyUncompressedBlock.exit.i, %bb.p
  %.3.i = phi i64 [ -10, %bb.e ], [ -72, %bb.a ], [ 0, %bb.j ], [ 0, %bb.f ], [ %.053.i, %bb.p ], [ -1, %bb.k ], [ %.0.i, %ZSTD_copyUncompressedBlock.exit.i ], [ -70, %ZSTD_copyUncompressedBlock.exit.thread54.i ]
  ret i64 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_decompressBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [256 x i16], align 16             ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca [128 x i16], align 16             ; 12 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = icmp ult i64 %4, 11
  br i1 %i.j, label %ZSTD_decompressSequences.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %3, align 1, !tbaa !15
  %i.l = and i8 %i.k, 3
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.j
    i8 2, label %bb.n
    i8 3, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 7 uses
  %.val16.i.i = load i32, ptr %3, align 1
  %i.n = lshr i32 %.val16.i.i, 2
  %i.o = and i32 %i.n, 524287                     ; 7 uses
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val.i.i = load i32, ptr %i.q, align 1         ; 2 uses
  %i.r = lshr i32 %.val.i.i, 5
  %i.s = and i32 %i.r, 524287                     ; 5 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp samesign ugt i32 %i.o, 131072
  %i.v = lshr i32 %.val.i.i, 24
  %i.w = trunc nuw i32 %i.v to i8
  br i1 %i.u, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = add nuw nsw i64 %i.t, 5                  ; 2 uses
  %i.y = icmp ugt i64 %i.x, %4
  br i1 %i.y, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.aa = lshr i32 %i.o, 8                        ; 3 uses
  %i.ab = icmp eq i32 %i.o, 0
  %i.ac = icmp samesign ugt i32 %i.s, %i.o
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %ZSTD_decodeLiteralsBlock.exit.thread25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.s, %i.o
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.z, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.s, 1
  br i1 %i.ae, label %bb.i, label %HUF_decompress.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 %i.w, i64 range(i64 0, 524288) %i.p, i1 false)
  br label %ZSTD_decodeLiteralsBlock.exit

HUF_decompress.exit.i.i:                          ; preds = %bb.h
  %.lhs.trunc.i.i.i = shl nuw nsw i32 %i.s, 4
  %i.af = udiv i32 %.lhs.trunc.i.i.i, %i.o
  %.zext.i.i.i = zext nneg i32 %i.af to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr @algoTime, i64 %.zext.i.i.i ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !55
  %i.ak = mul i32 %i.aj, %i.aa
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !55
  %i.aq = mul i32 %i.ap, %i.aa
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !55
  %i.aw = mul i32 %i.av, %i.aa
  %i.ax = add i32 %i.aw, %i.at                    ; 2 uses
  %i.ay = lshr i32 %i.ar, 4
  %i.az = add i32 %i.ay, %i.ar                    ; 2 uses
  %i.ba = lshr i32 %i.ax, 3
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = icmp ult i32 %i.az, %i.al
  %spec.select.i.i.i = zext i1 %i.bc to i64
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.al)
  %i.bd = icmp ult i32 %i.bb, %.sroa.speculated.i.i.i
  %spec.store.select.i.i.i = select i1 %i.bd, i64 2, i64 %spec.select.i.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @HUF_decompress.decompress, i64 %spec.store.select.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56
  %i.bg = tail call i64 %i.bf(ptr noundef nonnull %i.m, i64 noundef range(i64 0, 524288) %i.p, ptr noundef nonnull %i.z, i64 noundef range(i64 0, 524288) %i.t) #20, !inline_history !47
  %i.bh = icmp ult i64 %i.bg, -119
  br i1 %i.bh, label %ZSTD_decodeLiteralsBlock.exit, label %ZSTD_decodeLiteralsBlock.exit.thread25

bb.j:                                             ; preds = %bb.b
  %.val47.i = load i32, ptr %3, align 1
  %i.bi = lshr i32 %.val47.i, 2
  %i.bj = and i32 %i.bi, 4194303                  ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 10 uses
  %i.bl = add i64 %4, -11
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp samesign ugt i32 %i.bj, 131072
  %i.bo = add nsw i64 %4, -3
  %i.bp = icmp samesign ult i64 %i.bo, %i.bk
  %or.cond.i = or i1 %i.bn, %i.bp
  br i1 %or.cond.i, label %ZSTD_decompressSequences.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 1 %3, i64 %i.bk, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bk, ptr %i.bs, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i64 0, ptr %i.bt, align 1
  %i.bu = add nuw nsw i64 %i.bk, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.m:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.bk, ptr %i.bx, align 8, !tbaa !58
  %i.by = add nuw nsw i64 %i.bk, 3
  br label %ZSTD_decodeLiteralsBlock.exit.thread

bb.n:                                             ; preds = %bb.b
  %.val.i = load i32, ptr %3, align 1             ; 2 uses
  %i.bz = lshr i32 %.val.i, 2
  %i.ca = and i32 %i.bz, 4194303                  ; 2 uses
  %i.cb = icmp samesign ugt i32 %i.ca, 131072
  br i1 %i.cb, label %ZSTD_decompressSequences.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = lshr i32 %.val.i, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 10304 ; 3 uses
  %i.cg = add nuw nsw i64 %i.ce, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 %i.cd, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.ce, ptr %i.ci, align 8, !tbaa !58
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread25:           ; preds = %bb.c, %bb.d, %bb.e, %HUF_decompress.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.cj, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 131072, ptr %i.ck, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 141376
  store i64 0, ptr %i.cl, align 8
  br label %ZSTD_decompressSequences.exit

ZSTD_decodeLiteralsBlock.exit:                    ; preds = %bb.g, %bb.i, %HUF_decompress.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 10288
  store ptr %i.m, ptr %i.cm, align 8, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10296
  store i64 %i.p, ptr %i.cn, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  store i64 0, ptr %i.co, align 1
  br label %ZSTD_decodeLiteralsBlock.exit.thread

ZSTD_decodeLiteralsBlock.exit.thread:             ; preds = %bb.o, %bb.l, %bb.m, %ZSTD_decodeLiteralsBlock.exit
  %i.cp = phi i64 [ %i.p, %ZSTD_decodeLiteralsBlock.exit ], [ %i.ce, %bb.o ], [ %i.bk, %bb.l ], [ %i.bk, %bb.m ]
  %i.cq = phi ptr [ %i.m, %ZSTD_decodeLiteralsBlock.exit ], [ %i.cf, %bb.o ], [ %i.bq, %bb.l ], [ %i.bv, %bb.m ] ; 2 uses
  %.2.i19 = phi i64 [ %i.x, %ZSTD_decodeLiteralsBlock.exit ], [ 4, %bb.o ], [ %i.bu, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 %.2.i19 ; 8 uses
  %i.cs = sub i64 %4, %.2.i19                     ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6152 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4100 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19 ; 2 uses
  %i.cz = getelementptr i8, ptr %3, i64 %4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.da = icmp ult i64 %i.cs, 5
  br i1 %i.da, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %ZSTD_decodeLiteralsBlock.exit.thread
  %.val.i.i15 = load i16, ptr %i.cr, align 1
  %i.db = zext i16 %.val.i.i15 to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = zext i8 %i.dd to i32                    ; 5 uses
  %i.df = lshr i32 %i.de, 6
  %i.dg = lshr i32 %i.de, 4
  %i.dh = and i32 %i.dg, 3
  %i.di = lshr i32 %i.de, 2
  %i.dj = and i32 %i.di, 3
  %i.dk = and i32 %i.de, 2
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %5 = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %i.dl = zext i8 %9 to i64
  %10 = shl nuw nsw i64 %i.dl, 8
  %11 = or disjoint i64 %10, %7
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %12 = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.dm = load i8, ptr %12, align 1, !tbaa !15
  %i.dn = shl nuw nsw i32 %i.de, 8
  %i.do = and i32 %i.dn, 256
  %i.dp = zext i8 %i.dm to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i64 [ 4, %bb.r ], [ 5, %bb.q ] ; 2 uses
  %.074.i.i = phi i64 [ %i.dr, %bb.r ], [ %11, %bb.q ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sink.i.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.074.i.i ; 12 uses
  %i.du = add nuw nsw i64 %.074.i.i, %.sink.i.i   ; 2 uses
  %i.dv = add nsw i64 %i.cs, -3
  %i.dw = icmp sgt i64 %i.du, %i.dv
  br i1 %i.dw, label %ZSTD_decodeSeqHeaders.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  switch i32 %i.df, label %bb.x [
    i32 2, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.c, align 4, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %0, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.ea, align 2, !tbaa !61
  store i16 0, ptr %i.dz, align 4, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dy, ptr %i.eb, align 2, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 0, ptr %i.ec, align 1, !tbaa !27
  br label %FSE_buildDTable_raw.exit.i.i

bb.v:                                             ; preds = %bb.t
  store i32 6, ptr %i.c, align 4, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i16 6, ptr %0, align 8, !tbaa !60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1, ptr %i.ee, align 2, !tbaa !61
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i.i.i.3, %bb.w ] ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i ; 3 uses
  store i16 0, ptr %i.ef, align 2, !tbaa !25
  %i.eg = trunc i64 %indvars.iv.i.i.i to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.eg, ptr %i.eh, align 2, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 6, ptr %i.ei, align 1, !tbaa !27
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i16 0, ptr %i.ej, align 2, !tbaa !25
  %i.ek = trunc i64 %indvars.iv.next.i.i.i to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i8 %i.ek, ptr %i.el, align 2, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  store i8 6, ptr %i.em, align 1, !tbaa !27
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i.1 ; 3 uses
  store i16 0, ptr %i.en, align 2, !tbaa !25
  %i.eo = trunc i64 %indvars.iv.next.i.i.i.1 to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i8 %i.eo, ptr %i.ep, align 2, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 6, ptr %i.eq, align 1, !tbaa !27
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i.2 ; 3 uses
  store i16 0, ptr %i.er, align 2, !tbaa !25
  %i.es = trunc i64 %indvars.iv.next.i.i.i.2 to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i8 %i.es, ptr %i.et, align 2, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  store i8 6, ptr %i.eu, align 1, !tbaa !27
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %FSE_buildDTable_raw.exit.i.i, label %bb.w, !llvm.loop !48

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i32 63, ptr %i.g, align 4, !tbaa !22
  %gepdiff.i.i = sub nsw i64 %i.cs, %i.du
  %i.ev = call fastcc i64 @FSE_readNCount(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.c, ptr noundef nonnull %i.dt, i64 noundef %gepdiff.i.i) ; 2 uses
  %i.ew = icmp ult i64 %i.ev, -119
  br i1 %i.ew, label %bb.y, label %.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.ex = load i32, ptr %i.c, align 4, !tbaa !22  ; 5 uses
  %i.ey = icmp ugt i32 %i.ex, 10
  br i1 %i.ey, label %.thread.i.i, label %bb.z

.thread.i.i:                                      ; preds = %bb.y, %bb.x
  %.079.ph.i.i = phi i64 [ -20, %bb.y ], [ -1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %ZSTD_decodeSeqHeaders.exit.thread.sink.split.i

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ev
  %i.fa = load i32, ptr %i.g, align 4, !tbaa !22  ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.fc = shl nuw nsw i32 1, %i.ex                ; 5 uses
  %i.fd = add nsw i32 %i.fc, -1                   ; 5 uses
  %i.fe = lshr i32 %i.fc, 1
  %i.ff = lshr i32 %i.fc, 3
  %i.fg = add nuw nsw i32 %i.ff, 3
  %i.fh = add nuw nsw i32 %i.fg, %i.fe            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fi = icmp ugt i32 %i.fa, 255
  br i1 %i.fi, label %FSE_buildDTable.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %sext.i.i = shl nuw nsw i32 32768, %i.ex
  %i.fj = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.fk = add nuw nsw i32 %i.fa, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fk to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.fl = icmp eq i32 %i.fa, 0
  br i1 %i.fl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.ah ] ; 5 uses
  %.06582.i.i = phi i16 [ 1, %.new ], [ %.2.i104.i.1, %bb.ah ] ; 2 uses
  %.06781.i.i = phi i32 [ %i.fd, %.new ], [ %.168.i.i.1, %bb.ah ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.ah ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !29 ; 3 uses
  %i.fo = icmp eq i16 %i.fn, -1
  br i1 %i.fo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fp = trunc i64 %indvars.iv.i.i to i8
  %i.fq = add i32 %.06781.i.i, -1
  %i.fr = zext i32 %.06781.i.i to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 %i.fp, ptr %i.ft, align 2, !tbaa !26
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fu = sext i16 %i.fn to i32
  %.not78.i101.i = icmp sgt i32 %i.fj, %i.fu
  %spec.select.i102.i = select i1 %.not78.i101.i, i16 %.06582.i.i, i16 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i103.i = phi i16 [ 1, %bb.ac ], [ %i.fn, %bb.ad ]
  %.168.i.i = phi i32 [ %i.fq, %bb.ac ], [ %.06781.i.i, %bb.ad ] ; 3 uses
  %.2.i104.i = phi i16 [ %.06582.i.i, %bb.ac ], [ %spec.select.i102.i, %bb.ad ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i16 %.sink.i103.i, ptr %i.fv, align 4, !tbaa !29
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next.i.i
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !29 ; 3 uses
  %i.fy = icmp eq i16 %i.fx, -1
  br i1 %i.fy, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = sext i16 %i.fx to i32
  %.not78.i101.i.1 = icmp sgt i32 %i.fj, %i.fz
  %spec.select.i102.i.1 = select i1 %.not78.i101.i.1, i16 %.2.i104.i, i16 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ga = trunc i64 %indvars.iv.next.i.i to i8
  %i.gb = add i32 %.168.i.i, -1
  %i.gc = zext i32 %.168.i.i to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store i8 %i.ga, ptr %i.ge, align 2, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i103.i.1 = phi i16 [ 1, %bb.ag ], [ %i.fx, %bb.af ]
  %.168.i.i.1 = phi i32 [ %i.gb, %bb.ag ], [ %.168.i.i, %bb.af ] ; 3 uses
  %.2.i104.i.1 = phi i16 [ %.2.i104.i, %bb.ag ], [ %spec.select.i102.i.1, %bb.af ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  store i16 %.sink.i103.i.1, ptr %i.gf, align 2, !tbaa !29
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.ab, !llvm.loop !0

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.aa
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06582.i.i.epil.init = phi i16 [ 1, %bb.aa ], [ %.2.i104.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.06781.i.i.epil.init = phi i32 [ %i.fd, %bb.aa ], [ %.168.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod123 = trunc i32 %i.fk to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i.i.epil.init
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29 ; 3 uses
  %i.gi = icmp eq i16 %i.gh, -1
  br i1 %i.gi, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.epil.preheader
  %i.gj = sext i16 %i.gh to i32
  %.not78.i101.i.epil = icmp sgt i32 %i.fj, %i.gj
  %spec.select.i102.i.epil = select i1 %.not78.i101.i.epil, i16 %.06582.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.aj:                                            ; preds = %.epil.preheader
  %i.gk = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.gl = add i32 %.06781.i.i.epil.init, -1
  %i.gm = zext i32 %.06781.i.i.epil.init to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  store i8 %i.gk, ptr %i.go, align 2, !tbaa !26
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.aj, %bb.ai
  %.sink.i103.i.epil = phi i16 [ 1, %bb.aj ], [ %i.gh, %bb.ai ]
  %.168.i.i.epil = phi i32 [ %i.gl, %bb.aj ], [ %.06781.i.i.epil.init, %bb.ai ]
  %.2.i104.i.epil = phi i16 [ %.06582.i.i.epil.init, %bb.aj ], [ %spec.select.i102.i.epil, %bb.ai ]
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i103.i.epil, ptr %i.gp, align 2, !tbaa !29
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.168.i.i.lcssa = phi i32 [ %.168.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.168.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.2.i104.i.lcssa = phi i16 [ %.2.i104.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.2.i104.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ]
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
  %indvars.iv90.i.i = phi i64 [ %indvars.iv.next91.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %.06986.i.i = phi i32 [ %.170.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.preheader79.i.i.preheader ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv90.i.i
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !29 ; 5 uses
  %i.gs = icmp sgt i16 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i109.i, label %._crit_edge.i.i

.lr.ph.i109.i:                                    ; preds = %.preheader79.i.i
  %i.gt = trunc i64 %indvars.iv90.i.i to i8       ; 3 uses
  %i.gu = icmp eq i16 %i.gr, 1
  br i1 %i.gu, label %.epil.preheader124, label %.lr.ph.i109.i.new

.lr.ph.i109.i.new:                                ; preds = %.lr.ph.i109.i
  %i.gv = and i16 %i.gr, 32766
  %unroll_iter129 = zext nneg i16 %i.gv to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %.lr.ph.i109.i.new
  %.17084.i.i = phi i32 [ %.06986.i.i, %.lr.ph.i109.i.new ], [ %.271.i.i.1, %bb.ao ] ; 2 uses
  %niter130 = phi i32 [ 0, %.lr.ph.i109.i.new ], [ %niter130.next.1, %bb.ao ]
  %i.gw = zext nneg i32 %.17084.i.i to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store i8 %i.gt, ptr %i.gy, align 2, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.170.pn.i.i = phi i32 [ %.17084.i.i, %bb.ak ], [ %.271.i.i, %bb.al ]
  %.pn.i.i = add nuw nsw i32 %i.fh, %.170.pn.i.i
  %.271.i.i = and i32 %.pn.i.i, %i.fd             ; 4 uses
  %i.gz = icmp ugt i32 %.271.i.i, %.168.i.i.lcssa
  br i1 %i.gz, label %bb.al, label %bb.am, !llvm.loop !1

bb.am:                                            ; preds = %bb.al
  %i.ha = zext nneg i32 %.271.i.i to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store i8 %i.gt, ptr %i.hc, align 2, !tbaa !26
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.170.pn.i.i.1 = phi i32 [ %.271.i.i, %bb.am ], [ %.271.i.i.1, %bb.an ]
  %.pn.i.i.1 = add nuw nsw i32 %i.fh, %.170.pn.i.i.1
  %.271.i.i.1 = and i32 %.pn.i.i.1, %i.fd         ; 5 uses
  %i.hd = icmp ugt i32 %.271.i.i.1, %.168.i.i.lcssa
  br i1 %i.hd, label %bb.an, label %bb.ao, !llvm.loop !1

bb.ao:                                            ; preds = %bb.an
  %niter130.next.1 = add i32 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i32 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !2

end_hunk_0
begin_hunk_1_@HUF_decodeStreamX6:bb.a
  %i.cr = load i32, ptr %i.f, align 8, !tbaa !37
  %i.cs = add i32 %i.cr, %i.cq                    ; 4 uses
  store i32 %i.cs, ptr %i.f, align 8, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt i32 %i.cs, 64
  br i1 %i.cx, label %.preheader86, label %.lr.ph5, !llvm.loop !141

.lr.ph13:                                         ; preds = %.preheader86, %bb.i
  %.312 = phi ptr [ %i.em, %bb.i ], [ %.0.lcssa, %.preheader86 ] ; 5 uses
  %i.cy = phi i32 [ %i.ei, %bb.i ], [ %.val9.i119, %.preheader86 ] ; 5 uses
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !35  ; 6 uses
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !34  ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i69 = icmp ult ptr %i.cz, %i.db
  br i1 %.not.i69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph13
  %i.dc = lshr i32 %i.cy, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.cz, i64 %i.de ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !35
  %i.dg = and i32 %i.cy, 7
  br label %BIT_reloadDStream.exit77

bb.g:                                             ; preds = %.lr.ph13
  %i.dh = icmp eq ptr %i.cz, %i.da
  br i1 %i.dh, label %.preheader85, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = lshr i32 %i.cy, 3                       ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk
  %i.dm = icmp uge ptr %i.dl, %i.da               ; 2 uses
  %i.dn = ptrtoint ptr %i.cz to i64
  %i.do = ptrtoint ptr %i.da to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %.024.i72 = select i1 %i.dm, i32 %i.di, i32 %i.dq ; 2 uses
  %i.dr = zext i32 %.024.i72 to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.cz, i64 %i.ds ; 2 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !35
  %i.du = shl i32 %.024.i72, 3
  %i.dv = sub i32 %i.cy, %i.du
  br label %BIT_reloadDStream.exit77

BIT_reloadDStream.exit77:                         ; preds = %bb.f, %bb.h
  %.val30.i70.sink.in = phi ptr [ %i.df, %bb.f ], [ %i.dt, %bb.h ]
  %.val9.i79 = phi i32 [ %i.dg, %bb.f ], [ %i.dv, %bb.h ] ; 3 uses
  %.025.i71 = phi i1 [ true, %bb.f ], [ %i.dm, %bb.h ]
  store i32 %.val9.i79, ptr %i.f, align 8, !tbaa !37
  %.val30.i70.sink = load i64, ptr %.val30.i70.sink.in, align 1
  store i64 %.val30.i70.sink, ptr %1, align 8, !tbaa !36
  %i.dw = icmp ule ptr %.312, %i.an
  %i.dx = select i1 %.025.i71, i1 %i.dw, i1 false
  br i1 %i.dx, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %BIT_reloadDStream.exit77, %bb.i, %bb.g, %.preheader86
  %.3.lcssa = phi ptr [ %.0.lcssa, %.preheader86 ], [ %.312, %BIT_reloadDStream.exit77 ], [ %i.em, %bb.i ], [ %.312, %bb.g ] ; 3 uses
  %.val9.i79122 = phi i32 [ %.val9.i119, %.preheader86 ], [ %.val9.i79, %BIT_reloadDStream.exit77 ], [ %i.ei, %bb.i ], [ %i.cy, %bb.g ] ; 2 uses
  %.not88 = icmp ugt ptr %.3.lcssa, %i.an
  br i1 %.not88, label %.preheader, label %.lr.ph

bb.i:                                             ; preds = %BIT_reloadDStream.exit77
  %.val.i78 = load i64, ptr %1, align 8, !tbaa !36
  %i.dy = and i32 %.val9.i79, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl i64 %.val.i78, %i.dz
  %i.eb = lshr i64 %i.ea, %i.l                    ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  store i32 %i.ed, ptr %.312, align 1
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !39
  %i.eg = zext i8 %i.ef to i32
  %i.eh = load i32, ptr %i.f, align 8, !tbaa !37
  %i.ei = add i32 %i.eh, %i.eg                    ; 4 uses
  store i32 %i.ei, ptr %i.f, align 8, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !40
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.312, i64 %i.el ; 2 uses
  %i.en = icmp ugt i32 %i.ei, 64
  br i1 %i.en, label %.preheader85, label %.lr.ph13, !llvm.loop !142

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.val27.i99 = phi i32 [ %.val9.i79122, %.preheader85 ], [ %i.fa, %.lr.ph ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader85 ], [ %i.fe, %.lr.ph ] ; 2 uses
  %i.eo = icmp ult ptr %.4.lcssa, %2
  br i1 %i.eo, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %.preheader
  %i.ep = ptrtoint ptr %2 to i64
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader85, %.lr.ph
  %.val9.i81 = phi i32 [ %i.fa, %.lr.ph ], [ %.val9.i79122, %.preheader85 ]
  %.489 = phi ptr [ %i.fe, %.lr.ph ], [ %.3.lcssa, %.preheader85 ] ; 2 uses
  %.val.i80 = load i64, ptr %1, align 8, !tbaa !36
  %i.eq = and i32 %.val9.i81, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %.val.i80, %i.er
  %i.et = lshr i64 %i.es, %i.l                    ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  store i32 %i.ev, ptr %.489, align 1
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.et ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !39
  %i.ey = zext i8 %i.ex to i32
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !37
  %i.fa = add i32 %i.ez, %i.ey                    ; 3 uses
  store i32 %i.fa, ptr %i.f, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !40
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.489, i64 %i.fd ; 3 uses
  %.not = icmp ugt ptr %i.fe, %i.an
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !143

bb.j:                                             ; preds = %.lr.ph92, %HUF_decodeLastSymbolsX6.exit
  %.val27.i = phi i32 [ %.val27.i99, %.lr.ph92 ], [ %.val27.i98, %HUF_decodeLastSymbolsX6.exit ]
  %.590 = phi ptr [ %.4.lcssa, %.lr.ph92 ], [ %i.gd, %HUF_decodeLastSymbolsX6.exit ] ; 4 uses
  %i.ff = ptrtoint ptr %.590 to i64
  %i.fg = sub i64 %i.ep, %i.ff                    ; 2 uses
  %i.fh = trunc i64 %i.fg to i32                  ; 3 uses
  %.val.i82 = load i64, ptr %1, align 8, !tbaa !36
  %i.fi = and i32 %.val27.i, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl i64 %.val.i82, %i.fj
  %i.fl = lshr i64 %i.fk, %i.l                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !40  ; 2 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %.not.i83 = icmp ult i32 %i.fh, %i.fp
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fl ; 2 uses
  br i1 %.not.i83, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fr = zext i8 %i.fo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.590, ptr nonnull readonly align 4 %i.fq, i64 %i.fr, i1 false)
  %i.fs = load i8, ptr %i.fm, align 1, !tbaa !39
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load i32, ptr %i.f, align 8, !tbaa !37
  %i.fv = add i32 %i.fu, %i.ft
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.fw = and i64 %i.fg, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.590, ptr nonnull readonly align 4 %i.fq, i64 %i.fw, i1 false)
  %i.fx = load i32, ptr %i.f, align 8, !tbaa !37  ; 3 uses
  %i.fy = icmp ult i32 %i.fx, 64
  br i1 %i.fy, label %bb.m, label %HUF_decodeLastSymbolsX6.exit

bb.m:                                             ; preds = %bb.l
  %i.fz = load i8, ptr %i.fm, align 1, !tbaa !39
  %i.ga = zext i8 %i.fz to i32
  %i.gb = add nuw nsw i32 %i.fx, %i.ga
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.gb, i32 64)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.k
  %spec.store.select.sink.i = phi i32 [ %spec.store.select.i, %bb.m ], [ %i.fv, %bb.k ] ; 2 uses
  %.0.ph.i = phi i32 [ %i.fh, %bb.m ], [ %i.fp, %bb.k ]
  store i32 %spec.store.select.sink.i, ptr %i.f, align 8
  br label %HUF_decodeLastSymbolsX6.exit

HUF_decodeLastSymbolsX6.exit:                     ; preds = %bb.l, %.sink.split.i
  %.val27.i98 = phi i32 [ %i.fx, %bb.l ], [ %spec.store.select.sink.i, %.sink.split.i ]
  %.0.i84 = phi i32 [ %i.fh, %bb.l ], [ %.0.ph.i, %.sink.split.i ]
  %i.gc = zext nneg i32 %.0.i84 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.590, i64 %i.gc ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %2
  br i1 %i.ge, label %bb.j, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %HUF_decodeLastSymbolsX6.exit, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"ZSTDv02_Dctx_s", !9, i64 0, !9, i64 4100, !9, i64 6152, !16, i64 10256, !16, i64 10264, !13, i64 10272, !10, i64 10280, !10, i64 10284, !17, i64 10288, !13, i64 10296, !9, i64 10304}
!19 = !{!18, !16, i64 10264}
!20 = !{!18, !13, i64 10272}
!21 = !{!18, !10, i64 10284}
!22 = !{!10, !10, i64 0}
!23 = !{!"short", !9, i64 0}
!24 = !{!"", !23, i64 0, !9, i64 2, !9, i64 3}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !9, i64 2}
!27 = !{!24, !9, i64 3}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!23, !23, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!"", !13, i64 0, !10, i64 8, !17, i64 16, !17, i64 24}
!34 = !{!33, !17, i64 24}
!35 = !{!33, !17, i64 16}
!36 = !{!33, !13, i64 0}
!37 = !{!33, !10, i64 8}
!38 = !{!"", !9, i64 0, !9, i64 1}
!39 = !{!38, !9, i64 0}
!40 = !{!38, !9, i64 1}
!41 = !{!17, !17, i64 0}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!"long long", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!18, !16, i64 10256}
!46 = !{!18, !10, i64 10280}
!47 = distinct !{null, null, null}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28, !30, !31}
!51 = distinct !{!51, !28, !30, !31}
!52 = distinct !{!52, !28, !30}
!53 = !{!"", !10, i64 0, !10, i64 4}
!54 = !{!53, !10, i64 0}
!55 = !{!53, !10, i64 4}
!56 = !{!16, !16, i64 0}
!57 = !{!18, !17, i64 10288}
!58 = !{!18, !13, i64 10296}
!59 = !{!"", !23, i64 0, !23, i64 2}
!60 = !{!59, !23, i64 0}
!61 = !{!59, !23, i64 2}
!62 = !{!"branch_weights", i32 8, i32 24}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28, !30, !31}
!65 = distinct !{!65, !28, !30, !31}
!66 = distinct !{!66, !28, !31, !30}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28, !30, !31}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !28, !30}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28, !30, !31}
!79 = distinct !{!79, !28, !31, !30}
!80 = distinct !{!80, !28, !30, !31}
!81 = distinct !{!81, !28, !30}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28, !30, !31}
!84 = distinct !{!84, !28, !31, !30}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !42}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28, !30, !31}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !28, !30}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !28, !30, !31}
!101 = distinct !{!101, !28, !30}
!102 = distinct !{!102, !28}
!103 = distinct !{!103, !28}
!104 = !{!98}
!105 = !{!99}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = distinct !{!116, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !28, !30, !31}
!120 = distinct !{!120, !42}
!121 = distinct !{!121, !28, !30}
!122 = distinct !{!122, !28, !30}
!123 = distinct !{!123, !28}
!124 = distinct !{!124, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !28, !30, !31}
!128 = distinct !{!128, !42}
!129 = distinct !{!129, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !28, !30, !31}
!133 = distinct !{!133, !42}
!134 = distinct !{!134, !28, !30}
!135 = !{!117}
!136 = !{!118}
!137 = !{!125}
!138 = !{!126}
!139 = !{!130}
!140 = !{!131}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !28}
end_hunk_1
