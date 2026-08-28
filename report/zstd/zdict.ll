Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZDICT_params_t = type { i32, i32, i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ZDICT_legacy_params_t = type { i32, %struct.ZDICT_params_t }
%struct.ZDICT_fastCover_params_t = type { i32, i32, i32, i32, i32, double, i32, i32, i32, %struct.ZDICT_params_t }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"statistics ... \0A\00", align 1
@ZSTD_defaultCMem = internal constant %struct.ZSTD_customMem zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Not enough memory \0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Offset Code Frequencies : \0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%2u :%7u \0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" HUF_buildCTable error \0A\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"warning : pathological dataset : literals are not compressible : samples are noisy or too regular \0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"FSE_normalizeCount error with offcodeCount \0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"FSE_normalizeCount error with matchLengthCount \0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"FSE_normalizeCount error with litLengthCount \0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"HUF_writeCTable error \0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"FSE_writeNCount error with offcodeNCount \0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"FSE_writeNCount error with matchLengthNCount \0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"FSE_writeNCount error with litlengthNCount \0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"not enough space to write RepOffsets \0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"warning : ZSTD_compressBegin_usingCDict failed \0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"warning : could not compress sample size %u \0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\0A %u segments found, of total size %u \0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"list %u best segments \0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"%3u:%3u bytes at pos %8u, savings %7u bytes |\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"| \0A\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"!  warning : selected content significantly smaller than requested (%u < %u) \0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"!  consider increasing the number of samples (total size : %u MB)\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"!  consider increasing selectivity to produce larger dictionary (-s%u) \0A\00", align 1
@.str.25 = private unnamed_addr constant [91 x i8] c"!  note : larger dictionaries are not necessarily better, test its efficiency on samples \0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"!  note : calculated dictionary significantly larger than requested (%u > %u) \0A\00", align 1
@.str.27 = private unnamed_addr constant [78 x i8] c"!  consider increasing dictionary size, or produce denser dictionary (-s%u) \0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"!  always test dictionary efficiency on real samples \0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"sample set too large : reduced to %u MB ...\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"sorting %u files of total size %u MB ...\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"finding patterns ... \0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"minimum ratio : %u \0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"\0D%4.2f %% \0D\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"found %3u matches of length >= %i at pos %7u  \00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"Selected dict at position %u, of length %u : saves %u (ratio: %.2f)  \0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZDICT_isError(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @ZDICT_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = icmp ult i64 %0, -119
  %i.a = trunc nsw i64 %0 to i32
  %i.b = sub i32 0, %i.a
  %.0.i.i = select i1 %1, i32 0, i32 %i.b
  %i.c = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #16
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ZDICT_getDictID(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 8
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val3 = load i32, ptr %0, align 1, !tbaa !8
  %.not = icmp eq i32 %.val3, -332356553
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val = load i32, ptr %i.b, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %.val, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_getDictHeaderSize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %1, 9
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 1, !tbaa !8
  %.not = icmp eq i32 %.val, -332356553
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(5632) ptr @malloc(i64 noundef 5632) #17 ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(8704) ptr @malloc(i64 noundef 8704) #17 ; 3 uses
  %i.d = icmp ne ptr %i.b, null
  %i.e = icmp ne ptr %i.c, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ZSTD_reset_compressedBlockState(ptr noundef nonnull %i.b) #16
  %i.f = tail call i64 @ZSTD_loadCEntropy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %0, i64 noundef %1) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.f, %bb.d ], [ -64, %bb.c ]
  tail call void @free(ptr noundef %i.b) #16
  tail call void @free(ptr noundef %i.c) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e
  %.013 = phi i64 [ %.0, %bb.e ], [ -30, %bb.b ], [ -30, %bb.a ]
  ret i64 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @ZSTD_reset_compressedBlockState(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_loadCEntropy(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i64 @ZDICT_finalizeDictionary(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr %7, align 8, !tbaa !9      ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = select i1 %i.c, i32 3, i32 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11   ; 2 uses
  %i.g = icmp ult i64 %1, %3
  %i.h = icmp ult i64 %1, 256
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -332356553, ptr %i.a, align 16, !tbaa !8
  %i.i = tail call i64 @ZSTD_XXH64(ptr noundef captures(address) %2, i64 noundef %3, i64 noundef 0) #18
  %i.j = urem i64 %i.i, 2147450880
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, 32768
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not, i32 %i.l, i32 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !8
  %i.q = icmp ugt i32 %i.f, 1
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.u = tail call i32 @fflush(ptr noundef %i.t)  ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.v) #20 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.y = tail call i32 @fflush(ptr noundef %i.x)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.z, i64 noundef 248, i32 noundef %i.d, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %2, i64 noundef %3, i32 noundef %i.f) ; 4 uses
  %8 = icmp ult i64 %i.aa, -119
  %i.ab = add i64 %i.aa, 8                        ; 5 uses
  br i1 %8, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.critedge
  %i.ac = add i64 %i.ab, %3
  %i.ad = icmp ugt i64 %i.ac, %1
  %i.ae = sub i64 %1, %i.ab
  %spec.select = select i1 %i.ad, i64 %i.ae, i64 %3 ; 4 uses
  %i.af = icmp ult i64 %spec.select, 8
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = add nuw i64 %i.aa, 16
  %i.ah = icmp ugt i64 %i.ag, %1
  br i1 %i.ah, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nuw nsw i64 8, %spec.select
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.054 = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.d ]  ; 3 uses
  %i.aj = add i64 %spec.select, %i.ab
  %i.ak = add i64 %i.aj, %.054
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.054
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %2, i64 %spec.select, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 16 %i.a, i64 %i.ab, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %.054, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.a, %.critedge, %bb.g
  %.1 = phi i64 [ %i.aa, %.critedge ], [ -70, %bb.a ], [ -70, %bb.e ], [ %i.ak, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64(ptr noundef captures(address), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_analyzeEntropy(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 145 uses
  %i.b = alloca [257 x i64], align 16             ; 5 uses
  %i.c = alloca [31 x i32], align 16              ; 13 uses
  %i.d = alloca [31 x i16], align 16              ; 4 uses
  %i.e = alloca [53 x i32], align 16              ; 23 uses
  %i.f = alloca [53 x i16], align 16              ; 4 uses
  %i.g = alloca [36 x i32], align 16              ; 18 uses
  %i.h = alloca [36 x i16], align 16              ; 4 uses
  %i.i = alloca [1024 x i32], align 16            ; 8 uses
  %9 = alloca %struct.ZSTD_parameters, align 8    ; 5 uses
  %i.j = alloca [1216 x i32], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.k = trunc i64 %7 to i32
  %i.l = add i32 %i.k, 131072                     ; 3 uses
  %i.m = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.l, i1 true) ; 3 uses
  %i.n = xor i32 %i.m, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %.not.i = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %5 to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi346 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !16
  %wide.load347 = load <2 x i64>, ptr %i.p, align 8, !tbaa !16
  %i.q = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.r = add <2 x i64> %wide.load347, %vec.phi346 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.r, %i.q
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.t, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = add i64 %i.v, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !22

ZDICT_totalSampleSize.exit:                       ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.06.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %i.w, %.lr.ph.i ]
  %i.x = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %i.y = zext i32 %i.x to i64
  %i.z = udiv i64 %.06.lcssa.i, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aa = icmp eq i32 %i.m, 0
  br i1 %i.aa, label %.thread, label %vector.body350

vector.body350:                                   ; preds = %ZDICT_totalSampleSize.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ab, align 16, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ac, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ad, align 16, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 1), ptr %i.ae, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.af, align 16, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 1), ptr %i.ag, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ah, align 16, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> splat (i32 1), ptr %i.ai, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.aj, align 16, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> splat (i32 1), ptr %i.ak, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.al, align 16, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> splat (i32 1), ptr %i.am, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.an, align 16, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> splat (i32 1), ptr %i.ao, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ap, align 16, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <4 x i32> splat (i32 1), ptr %i.aq, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ar, align 16, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <4 x i32> splat (i32 1), ptr %i.as, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.at, align 16, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <4 x i32> splat (i32 1), ptr %i.au, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.av, align 16, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <4 x i32> splat (i32 1), ptr %i.aw, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ax, align 16, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <4 x i32> splat (i32 1), ptr %i.ay, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.az, align 16, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <4 x i32> splat (i32 1), ptr %i.ba, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bb, align 16, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> splat (i32 1), ptr %i.bc, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bd, align 16, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <4 x i32> splat (i32 1), ptr %i.be, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bf, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <4 x i32> splat (i32 1), ptr %i.bg, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bh, align 16, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <4 x i32> splat (i32 1), ptr %i.bi, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bj, align 16, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <4 x i32> splat (i32 1), ptr %i.bk, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bl, align 16, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store <4 x i32> splat (i32 1), ptr %i.bm, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bn, align 16, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store <4 x i32> splat (i32 1), ptr %i.bo, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bp, align 16, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store <4 x i32> splat (i32 1), ptr %i.bq, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.br, align 16, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store <4 x i32> splat (i32 1), ptr %i.bs, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bt, align 16, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  store <4 x i32> splat (i32 1), ptr %i.bu, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bv, align 16, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store <4 x i32> splat (i32 1), ptr %i.bw, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bx, align 16, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store <4 x i32> splat (i32 1), ptr %i.by, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.bz, align 16, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  store <4 x i32> splat (i32 1), ptr %i.ca, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.cb, align 16, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store <4 x i32> splat (i32 1), ptr %i.cc, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.cd, align 16, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  store <4 x i32> splat (i32 1), ptr %i.ce, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.cf, align 16, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store <4 x i32> splat (i32 1), ptr %i.cg, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.ch, align 16, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store <4 x i32> splat (i32 1), ptr %i.ci, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.cj, align 16, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store <4 x i32> splat (i32 1), ptr %i.ck, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.cl, align 16, !tbaa !8
  %i.cm = sub nuw nsw i32 32, %i.m
  %wide.trip.count = zext nneg i32 %i.cm to i64   ; 7 uses
  %min.iters.check355 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check355, label %.preheader261.preheader392, label %vector.ph356

vector.ph356:                                     ; preds = %vector.body350
  %n.vec357 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next360, %vector.body358 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index359 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cn, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.co, align 16, !tbaa !8
  %index.next360 = add nuw i64 %index359, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next360, %n.vec357
  br i1 %i.cp, label %middle.block361, label %vector.body358, !llvm.loop !23

middle.block361:                                  ; preds = %vector.body358
  %cmp.n362 = icmp eq i64 %n.vec357, %wide.trip.count
  br i1 %cmp.n362, label %.preheader260.preheader, label %.preheader261.preheader392

.preheader261.preheader392:                       ; preds = %vector.body350, %middle.block361
  %indvars.iv284.ph = phi i64 [ 0, %vector.body350 ], [ %n.vec357, %middle.block361 ]
  br label %.preheader261

.preheader261:                                    ; preds = %.preheader261.preheader392, %.preheader261
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.preheader261 ], [ %indvars.iv284.ph, %.preheader261.preheader392 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv284
  store i32 1, ptr %i.cq, align 4, !tbaa !8
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count
  br i1 %exitcond287.not, label %.preheader260.preheader, label %.preheader261, !llvm.loop !24

.preheader260.preheader:                          ; preds = %.preheader261, %middle.block361
  store <4 x i32> splat (i32 1), ptr %i.e, align 16, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 16, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <4 x i32> splat (i32 1), ptr %i.cs, align 16, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x i32> splat (i32 1), ptr %i.ct, align 16, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <4 x i32> splat (i32 1), ptr %i.cu, align 16, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <4 x i32> splat (i32 1), ptr %i.cv, align 16, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store <4 x i32> splat (i32 1), ptr %i.cw, align 16, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store <4 x i32> splat (i32 1), ptr %i.cx, align 16, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.cy, align 16, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store <4 x i32> splat (i32 1), ptr %i.cz, align 16, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store <4 x i32> splat (i32 1), ptr %i.da, align 16, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store <4 x i32> splat (i32 1), ptr %i.db, align 16, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <4 x i32> splat (i32 1), ptr %i.dc, align 16, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  store i32 1, ptr %i.dd, align 16, !tbaa !8
  store <4 x i32> splat (i32 1), ptr %i.g, align 16, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.de, align 16, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x i32> splat (i32 1), ptr %i.df, align 16, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x i32> splat (i32 1), ptr %i.dg, align 16, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <4 x i32> splat (i32 1), ptr %i.dh, align 16, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> splat (i32 1), ptr %i.di, align 16, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store <4 x i32> splat (i32 1), ptr %i.dj, align 16, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store <4 x i32> splat (i32 1), ptr %i.dk, align 16, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.dl, align 16, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 1, ptr %i.dm, align 16, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 1, ptr %i.dn, align 16, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !8
  %i.dp = icmp eq i32 %2, 0
  %spec.store.select = select i1 %i.dp, i32 3, i32 %2
  call void @ZSTD_getParams(ptr dead_on_unwind nonnull writable sret(%struct.ZSTD_parameters) align 4 %9, i32 noundef %spec.store.select, i64 noundef %i.z, i64 noundef %7) #16
  %i.dq = call ptr @ZSTD_createCDict_advanced(ptr noundef %6, i64 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef nonnull byval(%struct.ZSTD_compressionParameters) align 8 %9, ptr noundef nonnull byval(%struct.ZSTD_customMem) align 8 @ZSTD_defaultCMem) #16 ; 23 uses
  %i.dr = call ptr @ZSTD_createCCtx() #16         ; 25 uses
  %i.ds = call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #17 ; 23 uses
  %i.dt = icmp ne ptr %i.dq, null
  %i.du = icmp ne ptr %i.dr, null
  %or.cond = select i1 %i.dt, i1 %i.du, i1 false
  %i.dv = icmp ne ptr %i.ds, null
  %or.cond5 = and i1 %or.cond, %i.dv
  br i1 %or.cond5, label %.preheader258, label %bb.b

.preheader258:                                    ; preds = %.preheader260.preheader
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader258
  %.val = load i32, ptr %9, align 8, !tbaa !25
  %i.dw = shl nuw i32 1, %.val
  %narrow.i = call i32 @llvm.smin.i32(i32 %i.dw, i32 131072)
  %spec.select.i = sext i32 %narrow.i to i64
  %.not63.i = icmp eq i32 %8, 0
  %10 = icmp ugt i32 %8, 2
  %wide.trip.count299 = zext i32 %5 to i64
  br label %bb.d

bb.b:                                             ; preds = %.preheader260.preheader
  %.not185 = icmp eq i32 %8, 0
  br i1 %.not185, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dy = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %i.dx) #20 ; 0 uses
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ea = call i32 @fflush(ptr noundef %i.dz)     ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %.lr.ph, %ZDICT_countEStats.exit
  %indvars.iv296 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next297, %ZDICT_countEStats.exit ] ; 2 uses
  %.0167268 = phi i64 [ 0, %.lr.ph ], [ %i.lj, %ZDICT_countEStats.exit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv296 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !16
  %.0.i = call i64 @llvm.umin.i64(i64 %i.ec, i64 %spec.select.i) ; 2 uses
  %i.ed = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %i.dr, ptr noundef %i.dq) #16
  %11 = icmp ult i64 %i.ed, -119
  br i1 %11, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not63.i, label %ZDICT_countEStats.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ef = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %i.ee) #20 ; 0 uses
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eh = call i32 @fflush(ptr noundef %i.eg)     ; 0 uses
  br label %ZDICT_countEStats.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 %.0167268
  %i.ej = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %i.dr, ptr noundef %i.ds, i64 noundef 131072, ptr noundef %i.ei, i64 noundef %.0.i) #16 ; 2 uses
  %12 = icmp ult i64 %i.ej, -119
  br i1 %12, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  br i1 %10, label %bb.h, label %ZDICT_countEStats.exit

bb.h:                                             ; preds = %bb.g
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.el = trunc i64 %.0.i to i32
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef nonnull @.str.17, i32 noundef %i.el) #19 ; 0 uses
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eo = call i32 @fflush(ptr noundef %i.en)     ; 0 uses
  br label %ZDICT_countEStats.exit

bb.i:                                             ; preds = %.critedge.i
  %.not65.i = icmp eq i64 %i.ej, 0
  br i1 %.not65.i, label %ZDICT_countEStats.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = call ptr @ZSTD_getSeqStore(ptr noundef %i.dr) #16 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !28 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !32 ; 3 uses
  %i.eu = icmp ult ptr %i.er, %i.et
  br i1 %i.eu, label %.lr.ph.i213.preheader, label %._crit_edge.i

.lr.ph.i213.preheader:                            ; preds = %bb.j
  %i.ev = ptrtoaddr ptr %i.et to i64              ; 2 uses
  %i.ew = ptrtoaddr ptr %i.er to i64              ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew
  %xtraiter = and i64 %i.ex, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.0571.i.prol = phi ptr [ %i.fd, %.lr.ph.i213.prol ], [ %i.er, %.lr.ph.i213.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.ey = load i8, ptr %.0571.i.prol, align 1, !tbaa !33
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0571.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !34

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.0571.i.unr = phi ptr [ %i.er, %.lr.ph.i213.preheader ], [ %i.fd, %.lr.ph.i213.prol ]
  %i.fe = sub i64 %i.ew, %i.ev
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %._crit_edge.i, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.0571.i = phi ptr [ %i.gd, %.lr.ph.i213 ], [ %.0571.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %i.fg = load i8, ptr %.0571.i, align 1, !tbaa !33
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !8
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0571.i, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !33
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0571.i, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !33
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %.0571.i, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !33
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.0571.i, i64 4 ; 2 uses
  %exitcond.not.i214.3 = icmp eq ptr %i.gd, %i.et
  br i1 %exitcond.not.i214.3, label %._crit_edge.i, label %.lr.ph.i213, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !37
  %i.gg = load ptr, ptr %i.ep, align 8, !tbaa !38
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = lshr i64 %i.gj, 3                       ; 8 uses
  %i.gl = trunc i64 %i.gk to i32                  ; 2 uses
  %i.gm = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %i.ep) #16 ; 0 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !39 ; 5 uses
  %.not.i209 = icmp eq i32 %i.gl, 0
  br i1 %.not.i209, label %ZDICT_countEStats.exit, label %.lr.ph4.preheader.i

.lr.ph4.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count.i210 = and i64 %i.gk, 4294967295
  %i.gp = add nsw i64 %wide.trip.count.i210, -1   ; 3 uses
  %xtraiter396 = and i64 %i.gk, 3                 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 3
  br i1 %i.gq, label %.lr.ph4.i.epil.preheader, label %.lr.ph4.preheader.i.new

.lr.ph4.preheader.i.new:                          ; preds = %.lr.ph4.preheader.i
  %unroll_iter = and i64 %i.gk, 4294967292
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i, %.lr.ph4.preheader.i.new
  %indvars.iv.i211 = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %indvars.iv.next.i212.3, %.lr.ph4.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %niter.next.3, %.lr.ph4.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i211
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !33
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i211
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !33
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = add i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i211
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !33
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hh ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 4, !tbaa !8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i211
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !33
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !8
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !8
  %indvars.iv.next.i212.3 = add nuw nsw i64 %indvars.iv.i211, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph8.preheader.i.unr-lcssa, label %.lr.ph4.i, !llvm.loop !40

.lr.ph8.preheader.i.unr-lcssa:                    ; preds = %.lr.ph4.i
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil.preheader

.lr.ph4.i.epil.preheader:                         ; preds = %.lr.ph8.preheader.i.unr-lcssa, %.lr.ph4.preheader.i
  %indvars.iv.i211.epil.init = phi i64 [ 0, %.lr.ph4.preheader.i ], [ %indvars.iv.next.i212.3, %.lr.ph8.preheader.i.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter396, 0
  call void @llvm.assume(i1 %lcmp.mod398)
  br label %.lr.ph4.i.epil

.lr.ph4.i.epil:                                   ; preds = %.lr.ph4.i.epil, %.lr.ph4.i.epil.preheader
  %indvars.iv.i211.epil = phi i64 [ %indvars.iv.i211.epil.init, %.lr.ph4.i.epil.preheader ], [ %indvars.iv.next.i212.epil, %.lr.ph4.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph4.i.epil.preheader ], [ %epil.iter.next, %.lr.ph4.i.epil ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv.i211.epil
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !33
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hu ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !8
  %indvars.iv.next.i212.epil = add nuw nsw i64 %indvars.iv.i211.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter396
  br i1 %epil.iter.cmp.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil, !llvm.loop !41

.lr.ph8.preheader.i:                              ; preds = %.lr.ph4.i.epil, %.lr.ph8.preheader.i.unr-lcssa
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !42 ; 5 uses
  %xtraiter399 = and i64 %i.gk, 3                 ; 3 uses
  %i.ia = icmp ult i64 %i.gp, 3
  br i1 %i.ia, label %.lr.ph8.i.epil.preheader, label %.lr.ph8.preheader.i.new

.lr.ph8.preheader.i.new:                          ; preds = %.lr.ph8.preheader.i
  %unroll_iter403 = and i64 %i.gk, 4294967292
  br label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i, %.lr.ph8.preheader.i.new
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %indvars.iv.next19.i.3, %.lr.ph8.i ] ; 5 uses
  %niter404 = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %niter404.next.3, %.lr.ph8.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv18.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !33
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv18.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !33
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv18.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !33
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !8
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv18.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !33
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !8
  %indvars.iv.next19.i.3 = add nuw nsw i64 %indvars.iv18.i, 4 ; 2 uses
  %niter404.next.3 = add i64 %niter404, 4         ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %.lr.ph12.preheader.i.unr-lcssa, label %.lr.ph8.i, !llvm.loop !43

.lr.ph12.preheader.i.unr-lcssa:                   ; preds = %.lr.ph8.i
  %lcmp.mod401.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod401.not, label %.lr.ph12.preheader.i, label %.lr.ph8.i.epil.preheader

.lr.ph8.i.epil.preheader:                         ; preds = %.lr.ph12.preheader.i.unr-lcssa, %.lr.ph8.preheader.i
  %indvars.iv18.i.epil.init = phi i64 [ 0, %.lr.ph8.preheader.i ], [ %indvars.iv.next19.i.3, %.lr.ph12.preheader.i.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter399, 0
  call void @llvm.assume(i1 %lcmp.mod402)
  br label %.lr.ph8.i.epil

.lr.ph8.i.epil:                                   ; preds = %.lr.ph8.i.epil, %.lr.ph8.i.epil.preheader
  %indvars.iv18.i.epil = phi i64 [ %indvars.iv18.i.epil.init, %.lr.ph8.i.epil.preheader ], [ %indvars.iv.next19.i.epil, %.lr.ph8.i.epil ] ; 2 uses
  %epil.iter400 = phi i64 [ 0, %.lr.ph8.i.epil.preheader ], [ %epil.iter400.next, %.lr.ph8.i.epil ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv18.i.epil
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !33
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.je ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !8
  %indvars.iv.next19.i.epil = add nuw nsw i64 %indvars.iv18.i.epil, 1
  %epil.iter400.next = add i64 %epil.iter400, 1   ; 2 uses
  %epil.iter400.cmp.not = icmp eq i64 %epil.iter400.next, %xtraiter399
  br i1 %epil.iter400.cmp.not, label %.lr.ph12.preheader.i, label %.lr.ph8.i.epil, !llvm.loop !44

.lr.ph12.preheader.i:                             ; preds = %.lr.ph8.i.epil, %.lr.ph12.preheader.i.unr-lcssa
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !45 ; 5 uses
  %xtraiter405 = and i64 %i.gk, 3                 ; 3 uses
  %i.jk = icmp ult i64 %i.gp, 3
  br i1 %i.jk, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter409 = and i64 %i.gk, 4294967292
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next24.i.3, %.lr.ph12.i ] ; 5 uses
  %niter410 = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter410.next.3, %.lr.ph12.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv23.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !33
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !8
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv23.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !33
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !8
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv23.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !33
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !8
  %i.ke = add i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv23.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !33
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !8
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !8
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter410.next.3 = add i64 %niter410, 4         ; 2 uses
  %niter410.ncmp.3 = icmp eq i64 %niter410.next.3, %unroll_iter409
  br i1 %niter410.ncmp.3, label %._crit_edge13.i.unr-lcssa, label %.lr.ph12.i, !llvm.loop !46

._crit_edge13.i.unr-lcssa:                        ; preds = %.lr.ph12.i
  %lcmp.mod407.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod407.not, label %._crit_edge13.i, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %._crit_edge13.i.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next24.i.3, %._crit_edge13.i.unr-lcssa ]
  %lcmp.mod408 = icmp ne i64 %xtraiter405, 0
  call void @llvm.assume(i1 %lcmp.mod408)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter406 = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter406.next, %.lr.ph12.i.epil ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv23.i.epil
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !33
  %i.ko = zext i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ko ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !8
  %i.kr = add i32 %i.kq, 1
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !8
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter406.next = add i64 %epil.iter406, 1   ; 2 uses
  %epil.iter406.cmp.not = icmp eq i64 %epil.iter406.next, %xtraiter405
  br i1 %epil.iter406.cmp.not, label %._crit_edge13.i, label %.lr.ph12.i.epil, !llvm.loop !47

._crit_edge13.i:                                  ; preds = %.lr.ph12.i.epil, %._crit_edge13.i.unr-lcssa
  %.not31.i = icmp eq i32 %i.gl, 1
  br i1 %.not31.i, label %ZDICT_countEStats.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge13.i
  %i.ks = load ptr, ptr %i.ep, align 8, !tbaa !38 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !48
  %i.ku = add i32 %i.kt, -3                       ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !48
  %i.kx = add i32 %i.kw, -3                       ; 2 uses
  %i.ky = icmp ugt i32 %i.ku, 1023
  %spec.store.select.i = select i1 %i.ky, i32 0, i32 %i.ku
  %i.kz = icmp ugt i32 %i.kx, 1023
  %spec.store.select1.i = select i1 %i.kz, i32 0, i32 %i.kx
  %i.la = zext i32 %spec.store.select.i to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.la ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !8
  %i.ld = add i32 %i.lc, 3
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !8
  %i.le = zext i32 %spec.store.select1.i to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !8
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !8
  br label %ZDICT_countEStats.exit

ZDICT_countEStats.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %._crit_edge.i, %._crit_edge13.i, %bb.k
  %i.li = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.lj = add i64 %i.li, %.0167268
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge, label %bb.d, !llvm.loop !51

._crit_edge:                                      ; preds = %ZDICT_countEStats.exit, %.preheader258
  %i.lk = icmp ugt i32 %8, 3
  br i1 %i.lk, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %._crit_edge
  %i.ll = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lm = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %i.ll) #20 ; 0 uses
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lo = call i32 @fflush(ptr noundef %i.ln)     ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %indvars.iv301 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next302, %bb.m ] ; 3 uses
  %i.lp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv301
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !8
  %i.ls = trunc nuw nsw i64 %indvars.iv301 to i32
  %i.lt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lp, ptr noundef nonnull @.str.5, i32 noundef %i.ls, i32 noundef %i.lr) #19 ; 0 uses
  %i.lu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lv = call i32 @fflush(ptr noundef %i.lu)     ; 0 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count
  br i1 %exitcond305.not, label %.loopexit, label %bb.m, !llvm.loop !52

.loopexit:                                        ; preds = %bb.m, %._crit_edge
  %i.lw = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %i.j, i64 noundef 4864) #16 ; 5 uses
  %13 = icmp ult i64 %i.lw, -119
  br i1 %13, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %.not188 = icmp eq i32 %8, 0
  br i1 %.not188, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ly = call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr %i.lx) #20 ; 0 uses
  %i.lz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ma = call i32 @fflush(ptr noundef %i.lz)     ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %.loopexit
  %i.mb = icmp eq i64 %i.lw, 8
  br i1 %i.mb, label %bb.q, label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %i.mc = icmp ugt i32 %8, 1
  br i1 %i.mc, label %bb.r, label %vector.body366

bb.r:                                             ; preds = %bb.q
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.me = call i64 @fwrite(ptr nonnull @.str.7, i64 99, i64 1, ptr %i.md) #20 ; 0 uses
  %i.mf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mg = call i32 @fflush(ptr noundef %i.mf)     ; 0 uses
  br label %vector.body366

vector.body366:                                   ; preds = %bb.r, %bb.q
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store <4 x i32> splat (i32 2), ptr %i.mh, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mi, align 4, !tbaa !8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.mk = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store <4 x i32> splat (i32 2), ptr %i.mj, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mk, align 4, !tbaa !8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store <4 x i32> splat (i32 2), ptr %i.ml, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mm, align 4, !tbaa !8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store <4 x i32> splat (i32 2), ptr %i.mn, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mo, align 4, !tbaa !8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store <4 x i32> splat (i32 2), ptr %i.mp, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mq, align 4, !tbaa !8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x i32> splat (i32 2), ptr %i.mr, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ms, align 4, !tbaa !8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <4 x i32> splat (i32 2), ptr %i.mt, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mu, align 4, !tbaa !8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store <4 x i32> splat (i32 2), ptr %i.mv, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mw, align 4, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store <4 x i32> splat (i32 2), ptr %i.mx, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.my, align 4, !tbaa !8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  store <4 x i32> splat (i32 2), ptr %i.mz, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.na, align 4, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  store <4 x i32> splat (i32 2), ptr %i.nb, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nc, align 4, !tbaa !8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store <4 x i32> splat (i32 2), ptr %i.nd, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ne, align 4, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 388
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  store <4 x i32> splat (i32 2), ptr %i.nf, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ng, align 4, !tbaa !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  store <4 x i32> splat (i32 2), ptr %i.nh, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ni, align 4, !tbaa !8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  store <4 x i32> splat (i32 2), ptr %i.nj, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nk, align 4, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 484
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store <4 x i32> splat (i32 2), ptr %i.nl, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nm, align 4, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 516
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  store <4 x i32> splat (i32 2), ptr %i.nn, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.no, align 4, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 548
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 564
  store <4 x i32> splat (i32 2), ptr %i.np, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nq, align 4, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 580
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  store <4 x i32> splat (i32 2), ptr %i.nr, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ns, align 4, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store <4 x i32> splat (i32 2), ptr %i.nt, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nu, align 4, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 660
  store <4 x i32> splat (i32 2), ptr %i.nv, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nw, align 4, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 676
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 692
  store <4 x i32> splat (i32 2), ptr %i.nx, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ny, align 4, !tbaa !8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 708
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 724
  store <4 x i32> splat (i32 2), ptr %i.nz, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oa, align 4, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 756
  store <4 x i32> splat (i32 2), ptr %i.ob, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oc, align 4, !tbaa !8
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 772
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 788
  store <4 x i32> splat (i32 2), ptr %i.od, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oe, align 4, !tbaa !8
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 804
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 820
  store <4 x i32> splat (i32 2), ptr %i.of, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.og, align 4, !tbaa !8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 836
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 852
  store <4 x i32> splat (i32 2), ptr %i.oh, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oi, align 4, !tbaa !8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.a, i64 868
  %i.ok = getelementptr inbounds nuw i8, ptr %i.a, i64 884
  store <4 x i32> splat (i32 2), ptr %i.oj, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ok, align 4, !tbaa !8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 900
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 916
  store <4 x i32> splat (i32 2), ptr %i.ol, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.om, align 4, !tbaa !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.a, i64 932
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 948
  store <4 x i32> splat (i32 2), ptr %i.on, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oo, align 4, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 964
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 980
  store <4 x i32> splat (i32 2), ptr %i.op, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.oq, align 4, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 996
  store i32 2, ptr %i.or, align 4, !tbaa !8
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i32 2, ptr %i.os, align 8, !tbaa !8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 1004
  store i32 2, ptr %i.ot, align 4, !tbaa !8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store i32 2, ptr %i.ou, align 16, !tbaa !8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 2, ptr %i.ov, align 4, !tbaa !8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 2, ptr %i.ow, align 8, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  store i32 2, ptr %i.ox, align 4, !tbaa !8
  store i32 4, ptr %i.a, align 16, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 1, ptr %i.oy, align 4, !tbaa !8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store i32 1, ptr %i.oz, align 8, !tbaa !8
  %i.pa = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %i.j, i64 noundef 4864) #16
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p, %vector.body366
  %.0157 = phi i64 [ %i.pa, %vector.body366 ], [ %i.lw, %bb.p ]
  %min.iters.check371 = icmp ult i32 %i.l, 128
  br i1 %min.iters.check371, label %.preheader.preheader388, label %vector.ph372

vector.ph372:                                     ; preds = %.preheader.preheader
  %n.vec373 = and i64 %wide.trip.count, 56        ; 3 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %vec.phi376 = phi <4 x i32> [ zeroinitializer, %vector.ph372 ], [ %i.pd, %vector.body374 ]
  %vec.phi377 = phi <4 x i32> [ zeroinitializer, %vector.ph372 ], [ %i.pe, %vector.body374 ]
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index375 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load378 = load <4 x i32>, ptr %i.pb, align 16, !tbaa !8
  %wide.load379 = load <4 x i32>, ptr %i.pc, align 16, !tbaa !8
  %i.pd = add <4 x i32> %wide.load378, %vec.phi376 ; 2 uses
  %i.pe = add <4 x i32> %wide.load379, %vec.phi377 ; 2 uses
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.pf = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.pf, label %middle.block381, label %vector.body374, !llvm.loop !53

middle.block381:                                  ; preds = %vector.body374
  %bin.rdx382 = add <4 x i32> %i.pe, %i.pd
  %i.pg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx382) ; 2 uses
  %cmp.n383 = icmp eq i64 %n.vec373, %wide.trip.count
  br i1 %cmp.n383, label %.loopexit386, label %.preheader.preheader388

.preheader.preheader388:                          ; preds = %.preheader.preheader, %middle.block381
  %indvars.iv309.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec373, %middle.block381 ]
  %.0168275.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.pg, %middle.block381 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader388, %.preheader
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.preheader ], [ %indvars.iv309.ph, %.preheader.preheader388 ] ; 2 uses
  %.0168275 = phi i32 [ %i.pj, %.preheader ], [ %.0168275.ph, %.preheader.preheader388 ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv309
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !8
  %i.pj = add i32 %i.pi, %.0168275                ; 2 uses
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count
  br i1 %exitcond313.not, label %.loopexit386, label %.preheader, !llvm.loop !54

.loopexit386:                                     ; preds = %.preheader, %middle.block381
  %.lcssa = phi i32 [ %i.pg, %middle.block381 ], [ %i.pj, %.preheader ]
  %i.pk = trunc i64 %.0157 to i32
  %i.pl = zext i32 %.lcssa to i64
  %i.pm = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef nonnull %i.c, i64 noundef %i.pl, i32 noundef %i.n, i32 noundef 1) #16 ; 4 uses
  %14 = icmp ult i64 %i.pm, -119
  br i1 %14, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.loopexit386
  %.not204 = icmp eq i32 %8, 0
  br i1 %.not204, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.pn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.po = call i64 @fwrite(ptr nonnull @.str.8, i64 44, i64 1, ptr %i.pn) #20 ; 0 uses
  %i.pp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.pq = call i32 @fflush(ptr noundef %i.pp)     ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %.loopexit386
  %i.pr = load <32 x i32>, ptr %i.e, align 16, !tbaa !8 ; 2 uses
  %i.ps = load <20 x i32>, ptr %i.cy, align 16, !tbaa !8
  %i.pt = load i32, ptr %i.dd, align 16, !tbaa !8
  %i.pu = shufflevector <20 x i32> %i.ps, <20 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pv = add <32 x i32> %i.pr, %i.pu
  %i.pw = shufflevector <32 x i32> %i.pv, <32 x i32> %i.pr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.px = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.pw)
  %op.rdx = add i32 %i.px, %i.pt
  %i.py = trunc i64 %i.pm to i32
  %i.pz = zext i32 %op.rdx to i64
  %i.qa = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.f, i32 noundef 9, ptr noundef nonnull %i.e, i64 noundef %i.pz, i32 noundef 52, i32 noundef 1) #16 ; 4 uses
  %15 = icmp ult i64 %i.qa, -119
  br i1 %15, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not203 = icmp eq i32 %8, 0
  br i1 %.not203, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qc = call i64 @fwrite(ptr nonnull @.str.9, i64 48, i64 1, ptr %i.qb) #20 ; 0 uses
  %i.qd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qe = call i32 @fflush(ptr noundef %i.qd)     ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %i.qf = load <32 x i32>, ptr %i.g, align 16, !tbaa !8 ; 2 uses
  %i.qg = load <4 x i32>, ptr %i.dl, align 16, !tbaa !8
  %i.qh = shufflevector <32 x i32> %i.qf, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %i.qh, %i.qg
  %i.qi = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qj = shufflevector <32 x i32> %i.qi, <32 x i32> %i.qf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qk = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.qj)
  %i.ql = trunc i64 %i.qa to i32
  %i.qm = zext i32 %i.qk to i64
  %i.qn = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.h, i32 noundef 9, ptr noundef nonnull %i.g, i64 noundef %i.qm, i32 noundef 35, i32 noundef 1) #16 ; 4 uses
  %16 = icmp ult i64 %i.qn, -119
  br i1 %16, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not202 = icmp eq i32 %8, 0
  br i1 %.not202, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qp = call i64 @fwrite(ptr nonnull @.str.10, i64 46, i64 1, ptr %i.qo) #20 ; 0 uses
  %i.qq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qr = call i32 @fflush(ptr noundef %i.qq)     ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.x
  %i.qs = trunc i64 %i.qn to i32
  %i.qt = call i64 @HUF_writeCTable_wksp(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i32 noundef 255, i32 noundef %i.pk, ptr noundef nonnull %i.j, i64 noundef 4864) #16 ; 6 uses
  %17 = icmp ult i64 %i.qt, -119
  br i1 %17, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not194 = icmp eq i32 %8, 0
  br i1 %.not194, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qv = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.qu) #20 ; 0 uses
  %i.qw = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.qx = call i32 @fflush(ptr noundef %i.qw)     ; 0 uses
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 %i.qt ; 2 uses
  %i.qz = sub i64 %1, %i.qt                       ; 2 uses
  %i.ra = call i64 @FSE_writeNCount(ptr noundef %i.qy, i64 noundef %i.qz, ptr noundef nonnull %i.d, i32 noundef 30, i32 noundef %i.py) #16 ; 6 uses
  %18 = icmp ult i64 %i.ra, -119
  br i1 %18, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not196 = icmp eq i32 %8, 0
  br i1 %.not196, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rc = call i64 @fwrite(ptr nonnull @.str.12, i64 42, i64 1, ptr %i.rb) #20 ; 0 uses
  %i.rd = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.re = call i32 @fflush(ptr noundef %i.rd)     ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.ra ; 2 uses
  %i.rg = sub i64 %i.qz, %i.ra                    ; 2 uses
  %i.rh = call i64 @FSE_writeNCount(ptr noundef %i.rf, i64 noundef %i.rg, ptr noundef nonnull %i.f, i32 noundef 52, i32 noundef %i.ql) #16 ; 6 uses
  %19 = icmp ult i64 %i.rh, -119
  br i1 %19, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not198 = icmp eq i32 %8, 0
  br i1 %.not198, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ri = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rj = call i64 @fwrite(ptr nonnull @.str.13, i64 46, i64 1, ptr %i.ri) #20 ; 0 uses
  %i.rk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rl = call i32 @fflush(ptr noundef %i.rk)     ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ag
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rh ; 2 uses
  %i.rn = sub i64 %i.rg, %i.rh                    ; 2 uses
  %i.ro = call i64 @FSE_writeNCount(ptr noundef %i.rm, i64 noundef %i.rn, ptr noundef nonnull %i.h, i32 noundef 35, i32 noundef %i.qs) #16 ; 6 uses
  %20 = icmp ult i64 %i.ro, -119
  br i1 %20, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not200 = icmp eq i32 %8, 0
  br i1 %.not200, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.rp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rq = call i64 @fwrite(ptr nonnull @.str.14, i64 44, i64 1, ptr %i.rp) #20 ; 0 uses
  %i.rr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rs = call i32 @fflush(ptr noundef %i.rr)     ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.aj
  %i.rt = sub i64 %i.rn, %i.ro
  %i.ru = icmp ult i64 %i.rt, 12
  br i1 %i.ru, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %.not201 = icmp eq i32 %8, 0
  br i1 %.not201, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rw = call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %i.rv) #20 ; 0 uses
  %i.rx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ry = call i32 @fflush(ptr noundef %i.rx)     ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %bb.am
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.ro ; 3 uses
  store i32 1, ptr %i.rz, align 1, !tbaa !8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  store i32 4, ptr %i.sa, align 1, !tbaa !8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i32 8, ptr %i.sb, align 1, !tbaa !8
  %i.sc = add nuw i64 %i.qt, 12
  %i.sd = add i64 %i.sc, %i.ra
  %i.se = add i64 %i.sd, %i.rh
  %i.sf = add i64 %i.se, %i.ro
  br label %.thread

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ab, %bb.ac, %bb.n, %bb.o, %ZDICT_totalSampleSize.exit, %bb.an, %bb.ao, %bb.y, %bb.z, %bb.v, %bb.w, %bb.s, %bb.t, %bb.b, %bb.c, %bb.ap
  %.sroa.0.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dq, %bb.an ], [ %i.dq, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dq, %bb.ah ], [ %i.dq, %bb.ae ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.n ], [ %i.dq, %bb.y ], [ %i.dq, %bb.z ], [ %i.dq, %bb.v ], [ %i.dq, %bb.w ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ], [ %i.dq, %bb.c ], [ %i.dq, %bb.b ], [ %i.dq, %bb.o ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.af ], [ %i.dq, %bb.ai ], [ %i.dq, %bb.al ], [ %i.dq, %bb.ak ]
  %.sroa.7.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dr, %bb.ap ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.ae ], [ %i.dr, %bb.ab ], [ %i.dr, %bb.n ], [ %i.dr, %bb.y ], [ %i.dr, %bb.z ], [ %i.dr, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.s ], [ %i.dr, %bb.t ], [ %i.dr, %bb.c ], [ %i.dr, %bb.b ], [ %i.dr, %bb.o ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.al ], [ %i.dr, %bb.ak ]
  %.sroa.9.0 = phi ptr [ null, %ZDICT_totalSampleSize.exit ], [ %i.ds, %bb.an ], [ %i.ds, %bb.ao ], [ %i.ds, %bb.ap ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ae ], [ %i.ds, %bb.ab ], [ %i.ds, %bb.n ], [ %i.ds, %bb.y ], [ %i.ds, %bb.z ], [ %i.ds, %bb.v ], [ %i.ds, %bb.w ], [ %i.ds, %bb.s ], [ %i.ds, %bb.t ], [ %i.ds, %bb.c ], [ %i.ds, %bb.b ], [ %i.ds, %bb.o ], [ %i.ds, %bb.ac ], [ %i.ds, %bb.af ], [ %i.ds, %bb.ai ], [ %i.ds, %bb.al ], [ %i.ds, %bb.ak ]
  %.5 = phi i64 [ -34, %ZDICT_totalSampleSize.exit ], [ -70, %bb.an ], [ -70, %bb.ao ], [ %i.sf, %bb.ap ], [ %i.rh, %bb.ah ], [ %i.ra, %bb.ae ], [ %i.qt, %bb.ab ], [ %i.lw, %bb.n ], [ %i.qn, %bb.y ], [ %i.qn, %bb.z ], [ %i.qa, %bb.v ], [ %i.qa, %bb.w ], [ %i.pm, %bb.s ], [ %i.pm, %bb.t ], [ -64, %bb.c ], [ -64, %bb.b ], [ %i.lw, %bb.o ], [ %i.qt, %bb.ac ], [ %i.ra, %bb.af ], [ %i.rh, %bb.ai ], [ %i.ro, %bb.al ], [ %i.ro, %bb.ak ]
  %i.sg = call i64 @ZSTD_freeCDict(ptr noundef %.sroa.0.0) #16 ; 0 uses
  %i.sh = call i64 @ZSTD_freeCCtx(ptr noundef %.sroa.7.0) #16 ; 0 uses
  call void @free(ptr noundef %.sroa.9.0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer_legacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly byval(%struct.ZDICT_legacy_params_t) align 8 captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 13 uses
  %i.b = alloca [64 x i32], align 16              ; 64 uses
  %i.c = alloca [64 x i32], align 16              ; 10 uses
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 5 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %4 to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi129 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !16
  %wide.load130 = load <2 x i64>, ptr %i.e, align 8, !tbaa !16
  %i.f = add <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.g = add <2 x i64> %wide.load130, %vec.phi129 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = add i64 %i.k, %.067.i                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ZDICT_totalSampleSize.exit, label %.lr.ph.i, !llvm.loop !56

ZDICT_totalSampleSize.exit:                       ; preds = %.lr.ph.i, %middle.block
  %.lcssa128 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult i64 %.lcssa128, 512
  br i1 %i.m, label %ZDICT_totalSampleSize.exit.thread, label %bb.b

bb.b:                                             ; preds = %ZDICT_totalSampleSize.exit
  %i.n = add i64 %.lcssa128, 32
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #17 ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %ZDICT_totalSampleSize.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %2, i64 %.lcssa128, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa128 ; 2 uses
  store <16 x i8> <i8 -30, i8 51, i8 -9, i8 105, i8 -35, i8 -31, i8 -119, i8 112, i8 5, i8 -68, i8 15, i8 79, i8 -73, i8 -13, i8 110, i8 -47>, ptr %i.p, align 1, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> <i8 14, i8 -34, i8 95, i8 14, i8 -114, i8 -50, i8 31, i8 67, i8 -40, i8 -37, i8 31, i8 -102, i8 88, i8 -72, i8 -78, i8 0>, ptr %i.q, align 1, !tbaa !33
  %.sroa.0.0.copyload = load i32, ptr %5, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.r = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.s = lshr i64 %1, 4
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 @llvm.umax.i32(i32 %4, i32 %i.t)
  %..i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 10000) ; 2 uses
  %i.v = zext i32 %..i to i64
  %i.w = mul nuw nsw i64 %i.v, 12
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #17 ; 34 uses
  %min.iters.check132 = icmp ult i32 %4, 4
  br i1 %min.iters.check132, label %.lr.ph.i.i.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec134 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph133 ], [ %i.aa, %vector.body135 ]
  %vec.phi138 = phi <2 x i64> [ zeroinitializer, %vector.ph133 ], [ %i.ab, %vector.body135 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load139 = load <2 x i64>, ptr %i.y, align 8, !tbaa !16
  %wide.load140 = load <2 x i64>, ptr %i.z, align 8, !tbaa !16
  %i.aa = add <2 x i64> %wide.load139, %vec.phi137 ; 2 uses
  %i.ab = add <2 x i64> %wide.load140, %vec.phi138 ; 2 uses
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.ac, label %middle.block142, label %vector.body135, !llvm.loop !57

middle.block142:                                  ; preds = %vector.body135
  %bin.rdx143 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx143) ; 2 uses
  %cmp.n144 = icmp eq i64 %n.vec134, %wide.trip.count.i
  br i1 %cmp.n144, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block142
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec134, %middle.block142 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ad, %middle.block142 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add i64 %i.af, %.067.i.i                ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %ZDICT_totalSampleSize.exit.i, label %.lr.ph.i.i, !llvm.loop !58

ZDICT_totalSampleSize.exit.i:                     ; preds = %.lr.ph.i.i, %middle.block142
  %.lcssa127 = phi i64 [ %i.ad, %middle.block142 ], [ %i.ag, %.lr.ph.i.i ] ; 10 uses
  %i.ah = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.ai = select i1 %i.ah, i32 9, i32 %.sroa.0.0.copyload ; 5 uses
  %i.aj = icmp ugt i32 %i.ai, 30
  %i.ak = lshr i32 %4, %i.ai
  %i.al = select i1 %i.aj, i32 4, i32 %i.ak       ; 2 uses
  %.not.i19 = icmp eq ptr %i.x, null
  br i1 %.not.i19, label %ZDICT_trainFromBuffer_unsafe_legacy.exit, label %bb.c

bb.c:                                             ; preds = %ZDICT_totalSampleSize.exit.i
  %i.am = icmp ult i64 %1, 256
  br i1 %i.am, label %.thread233.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = icmp ult i64 %.lcssa127, 512
  br i1 %i.an, label %.thread233.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.x, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !12
  %i.aq = shl i64 %.lcssa127, 2                   ; 2 uses
  %i.ar = add i64 %i.aq, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #17 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 22 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.aq) #17 ; 8 uses
  %i.av = add i64 %.lcssa127, 16                  ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #17 ; 11 uses
  %i.ax = icmp ugt i32 %.sroa.5.0.copyload, 1     ; 6 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = icmp ne ptr %i.as, null
  %i.bd = icmp ne ptr %i.au, null
  %or.cond.i.i = and i1 %i.bc, %i.bd
  %i.be = icmp ne ptr %i.aw, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.be
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  %.val252.i.i.i = load i16, ptr %i.gr, align 1, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0226.i.i.i = phi i32 [ 6, %bb.t ], [ %i.gv, %bb.u ] ; 4 uses
  %i.gs = zext i32 %.0226.i.i.i to i64            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %.val.i.i.i = load i16, ptr %i.gt, align 1      ; 2 uses
  %i.gu = icmp eq i16 %.val.i.i.i, %.val252.i.i.i
  %i.gv = add i32 %.0226.i.i.i, 2
  br i1 %i.gu, label %bb.u, label %bb.v, !llvm.loop !64

bb.v:                                             ; preds = %bb.u
  %.not359.i.i.i = icmp eq i32 %.0226.i.i.i, 0
  br i1 %.not359.i.i.i, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph357.preheader.i.i.i

.lr.ph357.preheader.i.i.i:                        ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !33
  %i.gz = trunc i16 %.val.i.i.i to i8
  %i.ha = icmp eq i8 %i.gy, %i.gz
  %i.hb = zext i1 %i.ha to i32
  %scevgep394.i.i.i = getelementptr i8, ptr %i.gh, i64 1
  %i.hc = or disjoint i32 %.0226.i.i.i, %i.hb
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.hc, i32 2)
  %i.hd = add i32 %umax.i.i.i, -1
  %i.he = zext i32 %i.hd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep394.i.i.i, i8 1, i64 %i.he, i1 false), !tbaa !33
  br label %ZDICT_analyzePos.exit.thread.i.i

bb.w:                                             ; preds = %ZDICT_count.exit.i.i.i, %.preheader315.i.i.i
  %indvars.iv391.in.i.i.i = phi i32 [ %i.gc, %.preheader315.i.i.i ], [ %indvars.iv391.i.i.i, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %indvars.iv391.i.i.i = add i32 %indvars.iv391.in.i.i.i, 1 ; 6 uses
  %i.hf = zext i32 %indvars.iv391.i.i.i to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hi ; 2 uses
  %.011.val21.i.i.i.i = load i64, ptr %i.hj, align 1, !tbaa !16 ; 2 uses
  %.not23.i.i.i.i = icmp eq i64 %.011.val21.i.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.01125.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i ], [ %i.hj, %bb.w ]
  %.01224.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i ], [ %i.gi, %bb.w ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.01224.i.i.i.i, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01125.i.i.i.i, i64 8 ; 2 uses
  %.011.val.i.i.i.i = load i64, ptr %i.hl, align 1, !tbaa !16 ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %i.hk, align 1, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.011.val.i.i.i.i, %.012.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

ZDICT_count.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %bb.w
  %.012.lcssa.i.i.i.i = phi ptr [ %i.gi, %bb.w ], [ %i.hk, %.lr.ph.i.i.i.i ]
  %.011.val.lcssa.i.i.i.i = phi i64 [ %.011.val21.i.i.i.i, %bb.w ], [ %.011.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.012.val.lcssa.i.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %bb.w ], [ %.012.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hm = xor i64 %.012.val.lcssa.i.i.i.i, %.011.val.lcssa.i.i.i.i
  %i.hn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hm, i1 true)
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.lcssa.i.i.i.i, i64 %i.ho
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.gq
  %i.hs = icmp ugt i64 %i.hr, 6
  br i1 %i.hs, label %bb.w, label %.preheader314.i.i.i, !llvm.loop !65

.preheader314.i.i.i:                              ; preds = %ZDICT_count.exit.i.i.i, %ZDICT_count.exit271.i.i.i
  %indvar = phi i32 [ %indvar.next, %ZDICT_count.exit271.i.i.i ], [ 0, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ii, %ZDICT_count.exit271.i.i.i ], [ %i.gc, %ZDICT_count.exit.i.i.i ] ; 5 uses
  %i.ht = zext i32 %.0231.i.i.i to i64            ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hx ; 2 uses
  %.011.val21.i259.i.i.i = load i64, ptr %i.hy, align 1, !tbaa !16 ; 2 uses
  %.not23.i261.i.i.i = icmp eq i64 %.011.val21.i259.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i261.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

.lr.ph.i265.i.i.i:                                ; preds = %.preheader314.i.i.i, %.lr.ph.i265.i.i.i
  %.01125.i266.i.i.i = phi ptr [ %i.ia, %.lr.ph.i265.i.i.i ], [ %i.hy, %.preheader314.i.i.i ]
  %.01224.i267.i.i.i = phi ptr [ %i.hz, %.lr.ph.i265.i.i.i ], [ %i.gi, %.preheader314.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.01224.i267.i.i.i, i64 8 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01125.i266.i.i.i, i64 8 ; 2 uses
  %.011.val.i268.i.i.i = load i64, ptr %i.ia, align 1, !tbaa !16 ; 2 uses
  %.012.val.i269.i.i.i = load i64, ptr %i.hz, align 1, !tbaa !16 ; 2 uses
  %.not.i270.i.i.i = icmp eq i64 %.011.val.i268.i.i.i, %.012.val.i269.i.i.i
  br i1 %.not.i270.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

ZDICT_count.exit271.i.i.i:                        ; preds = %.lr.ph.i265.i.i.i, %.preheader314.i.i.i
  %.012.lcssa.i262.i.i.i = phi ptr [ %i.gi, %.preheader314.i.i.i ], [ %i.hz, %.lr.ph.i265.i.i.i ]
  %.011.val.lcssa.i263.i.i.i = phi i64 [ %.011.val21.i259.i.i.i, %.preheader314.i.i.i ], [ %.011.val.i268.i.i.i, %.lr.ph.i265.i.i.i ]
  %.012.val.lcssa.i264.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %.preheader314.i.i.i ], [ %.012.val.i269.i.i.i, %.lr.ph.i265.i.i.i ]
  %i.ib = xor i64 %.012.val.lcssa.i264.i.i.i, %.011.val.lcssa.i263.i.i.i
  %i.ic = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ib, i1 true)
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.lcssa.i262.i.i.i, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gq
  %i.ih = icmp ugt i64 %i.ig, 6
  %i.ii = add i32 %.0231.i.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ih, label %.preheader314.i.i.i, label %bb.x, !llvm.loop !66

bb.x:                                             ; preds = %ZDICT_count.exit271.i.i.i
  %i.ij = sub i32 %indvars.iv391.i.i.i, %.0231.i.i.i ; 3 uses
  %i.ik = icmp ult i32 %i.ij, %spec.store.select.i.i
  br i1 %i.ik, label %.preheader.i.i.i, label %bb.y

.preheader.i.i.i:                                 ; preds = %bb.x
  %i.il = icmp ult i32 %.0231.i.i.i, %indvars.iv391.i.i.i
  br i1 %i.il, label %.lr.ph354.i.i.i.preheader, label %ZDICT_analyzePos.exit.thread.i.i

.lr.ph354.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  %i.im = sub i32 %indvars.iv391.in.i.i.i, %i.gc
  %i.in = add i32 %indvar, %i.im
  %xtraiter187 = and i32 %i.ij, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol

.lr.ph354.i.i.i.prol:                             ; preds = %.lr.ph354.i.i.i.preheader, %.lr.ph354.i.i.i.prol
  %indvars.iv388.i.i.i.prol = phi i64 [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ], [ %i.ht, %.lr.ph354.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph354.i.i.i.prol ], [ 0, %.lr.ph354.i.i.i.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  store i8 1, ptr %i.ir, align 1, !tbaa !33
  %indvars.iv.next389.i.i.i.prol = add nuw nsw i64 %indvars.iv388.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol, !llvm.loop !67

.lr.ph354.i.i.i.prol.loopexit:                    ; preds = %.lr.ph354.i.i.i.prol, %.lr.ph354.i.i.i.preheader
  %indvars.iv388.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph354.i.i.i.preheader ], [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ]
  %i.is = icmp ult i32 %i.in, 3
  br i1 %i.is, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i
  %indvars.iv388.i.i.i = phi i64 [ %indvars.iv.next389.i.i.i.3, %.lr.ph354.i.i.i ], [ %indvars.iv388.i.i.i.unr, %.lr.ph354.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iv
  store i8 1, ptr %i.iw, align 1, !tbaa !33
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ja
  store i8 1, ptr %i.jb, align 1, !tbaa !33
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jf
  store i8 1, ptr %i.jg, align 1, !tbaa !33
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jk
  store i8 1, ptr %i.jl, align 1, !tbaa !33
  %indvars.iv.next389.i.i.i.3 = add nuw nsw i64 %indvars.iv388.i.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.i.3 = trunc i64 %indvars.iv.next389.i.i.i.3 to i32
  %exitcond393.not.i.i.i.3 = icmp eq i32 %indvars.iv391.i.i.i, %lftr.wideiv.i.i.i.3
  br i1 %exitcond393.not.i.i.i.3, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i, !llvm.loop !68

bb.y:                                             ; preds = %bb.x
  br i1 %i.dn, label %.critedge.i.i.i, label %.critedge245.i.i.i.preheader

.critedge.i.i.i:                                  ; preds = %bb.y
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jm) ; 0 uses
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jo = tail call i32 @fflush(ptr noundef %i.jn) ; 0 uses
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jp, ptr noundef nonnull @.str.35, i32 noundef %i.ij, i32 noundef 7, i32 noundef %i.gf) #19 ; 0 uses
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.js = tail call i32 @fflush(ptr noundef %i.jr) ; 0 uses
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc241.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jt) ; 0 uses
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jv = tail call i32 @fflush(ptr noundef %i.ju) ; 0 uses
  br label %.critedge245.i.i.i.preheader

.critedge245.i.i.i.preheader:                     ; preds = %.critedge.i.i.i, %bb.y
  br label %.critedge245.i.i.i

.critedge245.i.i.i:                               ; preds = %.critedge245.i.i.i.preheader, %bb.ad
  %.0221.i.i.i = phi i32 [ %i.lf, %bb.ad ], [ 7, %.critedge245.i.i.i.preheader ] ; 4 uses
  %.0219.i.i.i = phi i32 [ %spec.select249.i.i.i, %bb.ad ], [ %.0231.i.i.i, %.critedge245.i.i.i.preheader ] ; 12 uses
  %.0217.i.i.i = phi i32 [ %i.le, %bb.ad ], [ %indvars.iv391.i.i.i, %.critedge245.i.i.i.preheader ] ; 2 uses
  %i.jw = icmp ult i32 %.0219.i.i.i, %.0217.i.i.i
  br i1 %i.jw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.critedge245.i.i.i
  %i.jx = zext i32 %.0219.i.i.i to i64            ; 4 uses
  %wide.trip.count.i.i.i = zext i32 %.0217.i.i.i to i64 ; 2 uses
  %i.jy = sub nsw i64 %wide.trip.count.i.i.i, %i.jx ; 3 uses
  %xtraiter171 = and i64 %i.jy, 1
  %i.jz = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.ka = icmp eq i64 %i.jz, %i.jx
  br i1 %i.ka, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter179 = and i64 %i.jy, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.ab ] ; 4 uses
  %.0205332.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.2.i.i.i.1, %bb.ab ] ; 2 uses
  %.0206331.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.2208.i.i.i.1, %bb.ab ] ; 3 uses
  %.0211329.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.1212.i.i.i.1, %bb.ab ] ; 2 uses
  %.0213328.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ks, %bb.ab ] ; 3 uses
  %.0215327.i.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.1216.i.i.i.1, %bb.ab ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter180.next.1, %bb.ab ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !8
  %i.kd = add i32 %i.kc, %.0221.i.i.i
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !33  ; 2 uses
  %.not243.i.i.i = icmp eq i8 %i.kg, %.0215327.i.i.i
  br i1 %.not243.i.i.i, label %.lr.ph.i.i.i.1, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.kh = icmp ugt i32 %.0213328.i.i.i, %.0206331.i.i.i
  %spec.select246.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i, i32 %.0206331.i.i.i)
  %spec.select247.i.i.i = select i1 %i.kh, i32 %.0211329.i.i.i, i32 %.0205332.i.i.i
  %i.ki = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.z, %.lr.ph.i.i.i
  %.1216.i.i.i = phi i8 [ %i.kg, %bb.z ], [ %.0215327.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.1214.i.i.i = phi i32 [ 0, %bb.z ], [ %.0213328.i.i.i, %.lr.ph.i.i.i ]
  %.1212.i.i.i = phi i32 [ %i.ki, %bb.z ], [ %.0211329.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.2208.i.i.i = phi i32 [ %spec.select246.i.i.i, %bb.z ], [ %.0206331.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.2.i.i.i = phi i32 [ %spec.select247.i.i.i, %bb.z ], [ %.0205332.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.kj = add i32 %.1214.i.i.i, 1                 ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = add i32 %i.kl, %.0221.i.i.i
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !33  ; 2 uses
  %.not243.i.i.i.1 = icmp eq i8 %i.kp, %.1216.i.i.i
  br i1 %.not243.i.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.1
  %i.kq = icmp ugt i32 %i.kj, %.2208.i.i.i
  %spec.select246.i.i.i.1 = tail call i32 @llvm.umax.i32(i32 %i.kj, i32 %.2208.i.i.i)
  %spec.select247.i.i.i.1 = select i1 %i.kq, i32 %.1212.i.i.i, i32 %.2.i.i.i
  %i.kr = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.1
  %.1216.i.i.i.1 = phi i8 [ %i.kp, %bb.aa ], [ %.1216.i.i.i, %.lr.ph.i.i.i.1 ] ; 2 uses
  %.1214.i.i.i.1 = phi i32 [ 0, %bb.aa ], [ %i.kj, %.lr.ph.i.i.i.1 ]
  %.1212.i.i.i.1 = phi i32 [ %i.kr, %bb.aa ], [ %.1212.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2208.i.i.i.1 = phi i32 [ %spec.select246.i.i.i.1, %bb.aa ], [ %.2208.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2.i.i.i.1 = phi i32 [ %spec.select247.i.i.i.1, %bb.aa ], [ %.2.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.ks = add i32 %.1214.i.i.i.1, 1               ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !69

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ab
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0205332.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0206331.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0211329.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0213328.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0215327.i.i.i.epil.init = phi i8 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1216.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod178 = trunc i64 %i.jy to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8
  %i.kv = add i32 %i.ku, %.0221.i.i.i
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !33
  %.not243.i.i.i.epil = icmp eq i8 %i.ky, %.0215327.i.i.i.epil.init
  br i1 %.not243.i.i.i.epil, label %._crit_edge.i.i.i.loopexit.epilog-lcssa, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.kz = icmp ugt i32 %.0213328.i.i.i.epil.init, %.0206331.i.i.i.epil.init
  %spec.select246.i.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i.epil.init, i32 %.0206331.i.i.i.epil.init)
  %spec.select247.i.i.i.epil = select i1 %i.kz, i32 %.0211329.i.i.i.epil.init, i32 %.0205332.i.i.i.epil.init
  %i.la = trunc nuw i64 %indvars.iv.i.i.i.epil.init to i32
  br label %._crit_edge.i.i.i.loopexit.epilog-lcssa

._crit_edge.i.i.i.loopexit.epilog-lcssa:          ; preds = %bb.ac, %.lr.ph.i.i.i.epil.preheader
  %.1214.i.i.i.epil = phi i32 [ 0, %bb.ac ], [ %.0213328.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.1212.i.i.i.epil = phi i32 [ %i.la, %bb.ac ], [ %.0211329.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2208.i.i.i.epil = phi i32 [ %spec.select246.i.i.i.epil, %bb.ac ], [ %.0206331.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2.i.i.i.epil = phi i32 [ %spec.select247.i.i.i.epil, %bb.ac ], [ %.0205332.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %i.lb = add i32 %.1214.i.i.i.epil, 1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.critedge245.i.i.i
  %.0213.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.lb, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0211.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.1212.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %.0206.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2208.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0205.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %spec.select248.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213.lcssa.i.i.i, i32 %.0206.lcssa.i.i.i) ; 2 uses
  %i.lc = icmp ult i32 %spec.select248.i.i.i, %spec.store.select.i.i
  br i1 %i.lc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.ld = icmp ugt i32 %.0213.lcssa.i.i.i, %.0206.lcssa.i.i.i
  %spec.select249.i.i.i = select i1 %i.ld, i32 %.0211.lcssa.i.i.i, i32 %.0205.lcssa.i.i.i ; 2 uses
  %i.le = add i32 %spec.select249.i.i.i, %spec.select248.i.i.i
  %i.lf = add i32 %.0221.i.i.i, 1
  br label %.critedge245.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.lg = zext i32 %.0219.i.i.i to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8  ; 3 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lj ; 11 uses
  %.012.val22.i273.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !16 ; 4 uses
  %i.ll = ptrtoint ptr %i.lk to i64               ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %ZDICT_count.exit284.i.i.i, %bb.ae
  %indvars.iv383.in.i.i.i = phi i32 [ %indvars.iv383.i.i.i, %ZDICT_count.exit284.i.i.i ], [ %.0219.i.i.i, %bb.ae ]
  %indvars.iv383.i.i.i = add i32 %indvars.iv383.in.i.i.i, 1 ; 3 uses
  %i.lm = zext i32 %indvars.iv383.i.i.i to i64    ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lp ; 2 uses
  %.011.val21.i272.i.i.i = load i64, ptr %i.lq, align 1, !tbaa !16 ; 2 uses
  %.not23.i274.i.i.i = icmp eq i64 %.011.val21.i272.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i274.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

.lr.ph.i278.i.i.i:                                ; preds = %bb.af, %.lr.ph.i278.i.i.i
  %.01125.i279.i.i.i = phi ptr [ %i.ls, %.lr.ph.i278.i.i.i ], [ %i.lq, %bb.af ]
  %.01224.i280.i.i.i = phi ptr [ %i.lr, %.lr.ph.i278.i.i.i ], [ %i.lk, %bb.af ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.01224.i280.i.i.i, i64 8 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.01125.i279.i.i.i, i64 8 ; 2 uses
  %.011.val.i281.i.i.i = load i64, ptr %i.ls, align 1, !tbaa !16 ; 2 uses
  %.012.val.i282.i.i.i = load i64, ptr %i.lr, align 1, !tbaa !16 ; 2 uses
  %.not.i283.i.i.i = icmp eq i64 %.011.val.i281.i.i.i, %.012.val.i282.i.i.i
  br i1 %.not.i283.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

ZDICT_count.exit284.i.i.i:                        ; preds = %.lr.ph.i278.i.i.i, %bb.af
  %.012.lcssa.i275.i.i.i = phi ptr [ %i.lk, %bb.af ], [ %i.lr, %.lr.ph.i278.i.i.i ]
  %.011.val.lcssa.i276.i.i.i = phi i64 [ %.011.val21.i272.i.i.i, %bb.af ], [ %.011.val.i281.i.i.i, %.lr.ph.i278.i.i.i ]
  %.012.val.lcssa.i277.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %bb.af ], [ %.012.val.i282.i.i.i, %.lr.ph.i278.i.i.i ]
  %i.lt = xor i64 %.012.val.lcssa.i277.i.i.i, %.011.val.lcssa.i276.i.i.i
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lt, i1 true)
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.lcssa.i275.i.i.i, i64 %i.lv
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.ll                    ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ly, i64 63)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select.i.i.i ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !8
  %i.mb = add i32 %i.ma, 1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !8
  %i.mc = icmp ugt i64 %i.ly, 6
  br i1 %i.mc, label %bb.af, label %.preheader313.i.i.i, !llvm.loop !70

.preheader313.i.i.i:                              ; preds = %ZDICT_count.exit284.i.i.i
  %.not358.i.i.i = icmp eq i32 %.0219.i.i.i, 0
  br i1 %.not358.i.i.i, label %._crit_edge340.i.i.i, label %.lr.ph339.i.i.i

.lr.ph339.i.i.i:                                  ; preds = %.preheader313.i.i.i, %ZDICT_count.exit297.i.i.i
  %.2233338.i.i.i = phi i32 [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ], [ %.0219.i.i.i, %.preheader313.i.i.i ] ; 2 uses
  %i.md = add i32 %.2233338.i.i.i, -1             ; 2 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !8
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.mh ; 2 uses
  %.011.val21.i285.i.i.i = load i64, ptr %i.mi, align 1, !tbaa !16 ; 2 uses
  %.not23.i287.i.i.i = icmp eq i64 %.011.val21.i285.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i287.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

.lr.ph.i291.i.i.i:                                ; preds = %.lr.ph339.i.i.i, %.lr.ph.i291.i.i.i
  %.01125.i292.i.i.i = phi ptr [ %i.mk, %.lr.ph.i291.i.i.i ], [ %i.mi, %.lr.ph339.i.i.i ]
  %.01224.i293.i.i.i = phi ptr [ %i.mj, %.lr.ph.i291.i.i.i ], [ %i.lk, %.lr.ph339.i.i.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.01224.i293.i.i.i, i64 8 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.01125.i292.i.i.i, i64 8 ; 2 uses
  %.011.val.i294.i.i.i = load i64, ptr %i.mk, align 1, !tbaa !16 ; 2 uses
  %.012.val.i295.i.i.i = load i64, ptr %i.mj, align 1, !tbaa !16 ; 2 uses
  %.not.i296.i.i.i = icmp eq i64 %.011.val.i294.i.i.i, %.012.val.i295.i.i.i
  br i1 %.not.i296.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

ZDICT_count.exit297.i.i.i:                        ; preds = %.lr.ph.i291.i.i.i, %.lr.ph339.i.i.i
  %.012.lcssa.i288.i.i.i = phi ptr [ %i.lk, %.lr.ph339.i.i.i ], [ %i.mj, %.lr.ph.i291.i.i.i ]
  %.011.val.lcssa.i289.i.i.i = phi i64 [ %.011.val21.i285.i.i.i, %.lr.ph339.i.i.i ], [ %.011.val.i294.i.i.i, %.lr.ph.i291.i.i.i ]
  %.012.val.lcssa.i290.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %.lr.ph339.i.i.i ], [ %.012.val.i295.i.i.i, %.lr.ph.i291.i.i.i ]
  %i.ml = xor i64 %.012.val.lcssa.i290.i.i.i, %.011.val.lcssa.i289.i.i.i
  %i.mm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ml, i1 true)
  %i.mn = lshr i64 %i.mm, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.lcssa.i288.i.i.i, i64 %i.mn
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = sub i64 %i.mp, %i.ll                    ; 2 uses
  %spec.store.select1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.mq, i64 63)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select1.i.i.i ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  %i.mu = icmp ugt i64 %i.mq, 6                   ; 2 uses
  %spec.select250.i.i.i = select i1 %i.mu, i32 %i.md, i32 %.2233338.i.i.i ; 3 uses
  %i.mv = icmp ne i32 %spec.select250.i.i.i, 0
  %i.mw = and i1 %i.mu, %i.mv
  br i1 %i.mw, label %.lr.ph339.i.i.i, label %._crit_edge340.i.i.i, !llvm.loop !71

._crit_edge340.i.i.i:                             ; preds = %ZDICT_count.exit297.i.i.i, %.preheader313.i.i.i
  %.2233.lcssa.i.i.i = phi i32 [ 0, %.preheader313.i.i.i ], [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.mx = load i32, ptr %i.do, align 4, !tbaa !8  ; 2 uses
  store i32 %i.mx, ptr %i.dp, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %._crit_edge340.i.i.i
  %store_forwarded = phi i32 [ %i.mx, %._crit_edge340.i.i.i ], [ %i.nj, %bb.ag ]
  %indvars.iv370.i.i.i = phi i64 [ 62, %._crit_edge340.i.i.i ], [ %indvars.iv.next371.i.i.i.2, %bb.ag ] ; 5 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv370.i.i.i
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv370.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = add i32 %i.na, %store_forwarded         ; 2 uses
  store i32 %i.nb, ptr %i.my, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i = add nsw i64 %indvars.iv370.i.i.i, -1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8
  %i.nf = add i32 %i.ne, %i.nb                    ; 2 uses
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.1 = add nsw i64 %indvars.iv370.i.i.i, -2 ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i.1
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i.1
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8
  %i.nj = add i32 %i.ni, %i.nf                    ; 2 uses
  store i32 %i.nj, ptr %i.ng, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.2 = add nsw i64 %indvars.iv370.i.i.i, -3
  %.not406.i.i.i.2 = icmp eq i64 %indvars.iv.next371.i.i.i.1, 0
  br i1 %.not406.i.i.i.2, label %.preheader312.preheader.i.i.i, label %bb.ag, !llvm.loop !72

.preheader312.preheader.i.i.i:                    ; preds = %bb.ag
  %i.nk = load i32, ptr %i.dp, align 4, !tbaa !8
  %.not.i.i.i = icmp ult i32 %i.nk, %spec.store.select.i.i
  br i1 %.not.i.i.i, label %.preheader312.1.i.i.i, label %bb.ah

.preheader312.1.i.i.i:                            ; preds = %.preheader312.preheader.i.i.i
  %i.nl = load i32, ptr %i.dq, align 8, !tbaa !8
  %.not.1.i.i.i = icmp ult i32 %i.nl, %spec.store.select.i.i
  br i1 %.not.1.i.i.i, label %.preheader312.2.i.i.i, label %bb.ah

.preheader312.2.i.i.i:                            ; preds = %.preheader312.1.i.i.i
  %i.nm = load i32, ptr %i.dr, align 4, !tbaa !8
  %.not.2.i.i.i = icmp ult i32 %i.nm, %spec.store.select.i.i
  br i1 %.not.2.i.i.i, label %.preheader312.3.i.i.i, label %bb.ah

.preheader312.3.i.i.i:                            ; preds = %.preheader312.2.i.i.i
  %i.nn = load i32, ptr %i.ds, align 16, !tbaa !8
  %.not.3.i.i.i = icmp ult i32 %i.nn, %spec.store.select.i.i
  br i1 %.not.3.i.i.i, label %.preheader312.4.i.i.i, label %bb.ah

.preheader312.4.i.i.i:                            ; preds = %.preheader312.3.i.i.i
end_hunk_1
begin_hunk_2_@ZDICT_trainFromBuffer_legacy:bb.a
.preheader312.19.i.i.i:                           ; preds = %.preheader312.18.i.i.i
  %i.od = load i32, ptr %i.ei, align 16, !tbaa !8
  %.not.19.i.i.i = icmp ult i32 %i.od, %spec.store.select.i.i
  br i1 %.not.19.i.i.i, label %.preheader312.20.i.i.i, label %bb.ah

.preheader312.20.i.i.i:                           ; preds = %.preheader312.19.i.i.i
  %i.oe = load i32, ptr %i.ej, align 4, !tbaa !8
  %.not.20.i.i.i = icmp ult i32 %i.oe, %spec.store.select.i.i
  br i1 %.not.20.i.i.i, label %.preheader312.21.i.i.i, label %bb.ah

.preheader312.21.i.i.i:                           ; preds = %.preheader312.20.i.i.i
  %i.of = load i32, ptr %i.ek, align 8, !tbaa !8
  %.not.21.i.i.i = icmp ult i32 %i.of, %spec.store.select.i.i
  br i1 %.not.21.i.i.i, label %.preheader312.22.i.i.i, label %bb.ah

.preheader312.22.i.i.i:                           ; preds = %.preheader312.21.i.i.i
  %i.og = load i32, ptr %i.el, align 4, !tbaa !8
  %.not.22.i.i.i = icmp ult i32 %i.og, %spec.store.select.i.i
  br i1 %.not.22.i.i.i, label %.preheader312.23.i.i.i, label %bb.ah

.preheader312.23.i.i.i:                           ; preds = %.preheader312.22.i.i.i
  %i.oh = load i32, ptr %i.em, align 16, !tbaa !8
  %.not.23.i.i.i = icmp ult i32 %i.oh, %spec.store.select.i.i
  br i1 %.not.23.i.i.i, label %.preheader312.24.i.i.i, label %bb.ah

.preheader312.24.i.i.i:                           ; preds = %.preheader312.23.i.i.i
  %i.oi = load i32, ptr %i.en, align 4, !tbaa !8
  %.not.24.i.i.i = icmp ult i32 %i.oi, %spec.store.select.i.i
  br i1 %.not.24.i.i.i, label %.preheader312.25.i.i.i, label %bb.ah

.preheader312.25.i.i.i:                           ; preds = %.preheader312.24.i.i.i
  %i.oj = load i32, ptr %i.eo, align 8, !tbaa !8
  %.not.25.i.i.i = icmp ult i32 %i.oj, %spec.store.select.i.i
  br i1 %.not.25.i.i.i, label %.preheader312.26.i.i.i, label %bb.ah

.preheader312.26.i.i.i:                           ; preds = %.preheader312.25.i.i.i
  %i.ok = load i32, ptr %i.ep, align 4, !tbaa !8
  %.not.26.i.i.i = icmp ult i32 %i.ok, %spec.store.select.i.i
  br i1 %.not.26.i.i.i, label %.preheader312.27.i.i.i, label %bb.ah

.preheader312.27.i.i.i:                           ; preds = %.preheader312.26.i.i.i
  %i.ol = load i32, ptr %i.eq, align 16, !tbaa !8
  %.not.27.i.i.i = icmp ult i32 %i.ol, %spec.store.select.i.i
  br i1 %.not.27.i.i.i, label %.preheader312.28.i.i.i, label %bb.ah

.preheader312.28.i.i.i:                           ; preds = %.preheader312.27.i.i.i
  %i.om = load i32, ptr %i.er, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.on = load i32, ptr %i.es, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.op = load i32, ptr %i.eu, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.oq = load i32, ptr %i.ev, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.or = load i32, ptr %i.ew, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.os = load i32, ptr %i.ex, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.ot = load i32, ptr %i.ey, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ou = load i32, ptr %i.ez, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ov = load i32, ptr %i.fa, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ow = load i32, ptr %i.fb, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ox = load i32, ptr %i.fc, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.oy = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oz = load i32, ptr %i.fe, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.pa = load i32, ptr %i.ff, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pb = load i32, ptr %i.fg, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pc = load i32, ptr %i.fh, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pd = load i32, ptr %i.fi, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pe = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pf = load i32, ptr %i.fk, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pg = load i32, ptr %i.fl, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.ph = load i32, ptr %i.fm, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.pi = load i32, ptr %i.fn, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pj = load i32, ptr %i.fo, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pk = load i32, ptr %i.fp, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pl = load i32, ptr %i.fq, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 2 uses
  %i.pp = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0202.i.i.i = phi i32 [ %.0203.lcssa.i.i.i, %bb.ah ], [ %i.py, %bb.ai ] ; 10 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 6 uses
  %i.pu = getelementptr i8, ptr %i.lk, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !33
  %i.px = icmp eq i8 %i.pw, %i.ps
  %i.py = add i32 %.0202.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !8
  %xtraiter181 = and i64 %i.pt, 1
  %i.qa = icmp eq i32 %.0202.i.i.i, 7
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %i.qb = and i64 %i.pt, 4294967294
  %i.qc = add nsw i64 %i.qb, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qd = phi i32 [ 0, %.new ], [ %i.qq, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter186 = phi i64 [ 0, %.new ], [ %niter186.next.1, %bb.al ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qg = trunc nuw i64 %indvars.iv373.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qh, %i.qf
  %i.qj = add i32 %i.qi, %i.qd                    ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !8
  %i.qn = trunc nuw i64 %indvars.iv.next374.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qo, %i.qm
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2
  %niter186.ncmp.1 = icmp eq i64 %niter186, %i.qc
  br i1 %niter186.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %bb.am, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qq, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %.0202.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = trunc nuw i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qv, %i.qt
  %i.qx = add i32 %i.qw, %.epil.init
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dn, label %bb.an, label %._crit_edge398.i.i.i

._crit_edge398.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert399.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre400.i.i.i = load i32, ptr %.phi.trans.insert399.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !8  ; 3 uses
  %i.rc = uitofp i32 %i.rb to double
  %i.rd = uitofp i32 %.0202.i.i.i to double
  %i.re = fdiv double %i.rc, %i.rd
  %i.rf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.rb, double noundef %i.re) #19 ; 0 uses
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rh = tail call i32 @fflush(ptr noundef %i.rg) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge398.i.i.i
  %i.ri = phi i32 [ %.pre400.i.i.i, %._crit_edge398.i.i.i ], [ %i.rb, %bb.an ] ; 4 uses
  %i.rj = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv383.i.i.i
  br i1 %i.rj, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.rk = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv379.i.i.i = phi i64 [ %i.rk, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next380.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv379.i.i.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !8  ; 5 uses
  %i.rn = icmp eq i32 %i.rm, %i.li
  br i1 %i.rn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.ro = zext i32 %i.rm to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ro ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !16 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !16 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rr, %.lr.ph.i304.i.i.i ], [ %i.rp, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.rq, %.lr.ph.i304.i.i.i ], [ %i.lk, %bb.ap ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rr, align 1, !tbaa !16 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !16 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lk, %bb.ap ], [ %i.rq, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rs = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rs, i1 true)
  %i.ru = lshr i64 %i.rt, 3
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.ru
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.ll
  %i.ry = trunc i64 %i.rx to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.ry)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rz = add i32 %.0.i.i.i, %i.rm
  %i.sa = icmp ult i32 %i.rm, %i.rz
  br i1 %i.sa, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.sb = zext i32 %i.rm to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.sb
  %i.sc = add i32 %.0.i.i.i, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = add nuw nsw i64 %i.sd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.se, i1 false), !tbaa !33
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next380.i.i.i = add nuw nsw i64 %indvars.iv379.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next380.i.i.i, %i.lm
  br i1 %exitcond386.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sf = add i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !62

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.sg = shl nuw nsw i64 %i.pt, 32
  %i.sh = or disjoint i64 %i.sg, %i.lj            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.si = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sh, i32 %i.ri, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.si, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sj ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.sk, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sl = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.si, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sm = phi i32 [ %i.sy, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sl, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sn = phi i64 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sm, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.so = load i32, ptr %i.x, align 4, !tbaa !9   ; 2 uses
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  %i.sq = icmp ult i32 %.03544.i146.i.i, %i.sp
  br i1 %i.sq, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sr = mul nuw nsw i64 %i.sn, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sr ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.so, %.03544.i146.i.i
  %i.ss = add i32 %reass.sub, -2
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = add nuw nsw i64 %i.su, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.sv, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !9
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sp, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !9
  %i.sw = zext i32 %i.sm to i64                   ; 2 uses
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sw ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sx, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sy = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sm, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sz = load i32, ptr %i.x, align 4, !tbaa !9
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sz, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.ta = zext i32 %.03445.i.i.i to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !12
  %i.te = icmp ult i32 %i.td, %i.ri
  br i1 %i.te, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.tf = phi ptr [ %i.tj, %.lr.ph.i115.i.i ], [ %i.tb, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.tg = zext i32 %.034.in46.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.th, ptr noundef nonnull align 4 dereferenceable(12) %i.tf, i64 12, i1 false), !tbaa.struct !77
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.ti = zext i32 %.034.i.i.i to i64
  %i.tj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !12
  %i.tm = icmp ult i32 %i.tl, %i.ri
  br i1 %i.tm, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !78

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tn = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.to = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tn ; 2 uses
  store i64 %i.sh, ptr %i.to, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i32 %i.ri, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tp = add nuw i32 %spec.select.i113.i.i, 1
end_hunk_2
begin_hunk_3_@ZDICT_trainFromBuffer_legacy:bb.a
  %i.yk = tail call i32 @fflush(ptr noundef %i.yj) ; 0 uses
  %i.yl = mul i64 %1, 10
  %i.ym = icmp ult i64 %.lcssa127, %i.yl
  br i1 %i.ym, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yo = lshr i64 %.lcssa127, 20
  %i.yp = trunc i64 %i.yo to i32
  %i.yq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yn, ptr noundef nonnull @.str.23, i32 noundef %i.yp) #19 ; 0 uses
  %i.yr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ys = tail call i32 @fflush(ptr noundef %i.yr) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.yt = icmp ugt i32 %i.al, 4
  br i1 %i.yt, label %bb.bd, label %.critedge181.i

bb.bd:                                            ; preds = %bb.bc
  %i.yu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yv = add i32 %i.ai, 1
  %i.yw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yu, ptr noundef nonnull @.str.24, i32 noundef %i.yv) #19 ; 0 uses
  %i.yx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.yy = tail call i32 @fflush(ptr noundef %i.yx) ; 0 uses
  %i.yz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.za = tail call i64 @fwrite(ptr nonnull @.str.25, i64 90, i64 1, ptr %i.yz) #20 ; 0 uses
  %i.zb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zc = tail call i32 @fflush(ptr noundef %i.zb) ; 0 uses
  br label %.critedge181.i

.critedge181.i:                                   ; preds = %bb.bd, %bb.bc, %bb.az
  %i.zd = mul i64 %1, 3
  %i.ze = icmp ult i64 %i.zd, %i.yd
  %i.zf = icmp ugt i32 %4, 8
  %or.cond.i = and i1 %i.zf, %i.ze
  %i.zg = icmp ugt i32 %i.ai, 1
  %or.cond7.i = select i1 %or.cond.i, i1 %i.zg, i1 false
  br i1 %or.cond7.i, label %.preheader.i, label %.lr.ph261.i.preheader

.preheader.i:                                     ; preds = %.critedge181.i, %.preheader.i
  %.0147.in.i = phi i32 [ %.0147.i, %.preheader.i ], [ %i.ai, %.critedge181.i ]
  %.0147.i = add i32 %.0147.in.i, -1              ; 3 uses
  %i.zh = lshr i32 %4, %.0147.i
  %i.zi = icmp ult i32 %i.zh, 5
  br i1 %i.zi, label %.preheader.i, label %bb.be, !llvm.loop !84

bb.be:                                            ; preds = %.preheader.i
  br i1 %i.ax, label %.critedge183.i, label %.lr.ph261.i.preheader

.critedge183.i:                                   ; preds = %bb.be
  %i.zj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zk = trunc i64 %1 to i32
  %i.zl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zj, ptr noundef nonnull @.str.26, i32 noundef %.lcssa, i32 noundef %i.zk) #19 ; 0 uses
  %i.zm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zn = tail call i32 @fflush(ptr noundef %i.zm) ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zo, ptr noundef nonnull @.str.27, i32 noundef %.0147.i) #19 ; 0 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zr = tail call i32 @fflush(ptr noundef %i.zq) ; 0 uses
  %i.zs = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zt = tail call i64 @fwrite(ptr nonnull @.str.28, i64 54, i64 1, ptr %i.zs) #20 ; 0 uses
  %i.zu = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.zv = tail call i32 @fflush(ptr noundef %i.zu) ; 0 uses
  br label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.critedge183.i, %bb.be, %.critedge181.i
  br label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.preheader, %bb.bf
  %indvars.iv287.i = phi i64 [ %indvars.iv.next288.i, %bb.bf ], [ 1, %.lr.ph261.i.preheader ] ; 4 uses
  %.0146259.i = phi i32 [ %i.zz, %bb.bf ], [ 0, %.lr.ph261.i.preheader ] ; 3 uses
  %i.zw = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv287.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !11
  %i.zz = add i32 %i.zy, %.0146259.i              ; 3 uses
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = icmp ult i64 %1, %i.aaa
  br i1 %i.aab, label %._crit_edge.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph261.i
  %indvars.iv.next288.i = add nuw nsw i64 %indvars.iv287.i, 1 ; 2 uses
  %exitcond291.not.i = icmp eq i64 %indvars.iv.next288.i, %wide.trip.count.i218.i
  br i1 %exitcond291.not.i, label %.lr.ph270.preheader.i, label %.lr.ph261.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph261.i
  %.not170266.i = icmp samesign ugt i64 %indvars.iv287.i, 1
  br i1 %.not170266.i, label %.lr.ph270.preheader.i, label %._crit_edge271.i

.lr.ph270.preheader.i:                            ; preds = %bb.bf, %._crit_edge.i
  %wide.trip.count295.i.pre-phi = phi i64 [ %indvars.iv287.i, %._crit_edge.i ], [ %wide.trip.count.i218.i, %bb.bf ]
  %.0146.lcssa.ph323.i = phi i32 [ %.0146259.i, %._crit_edge.i ], [ %i.zz, %bb.bf ]
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %bb.bg, %.lr.ph270.preheader.i
  %indvars.iv292.i = phi i64 [ 1, %.lr.ph270.preheader.i ], [ %indvars.iv.next293.i, %bb.bg ] ; 2 uses
  %.0268.i = phi ptr [ %i.aac, %.lr.ph270.preheader.i ], [ %i.aai, %bb.bg ]
  %i.aad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv292.i ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !11
  %i.aag = zext i32 %i.aaf to i64                 ; 2 uses
  %i.aah = sub nsw i64 0, %i.aag
  %i.aai = getelementptr inbounds i8, ptr %.0268.i, i64 %i.aah ; 3 uses
  %.not169.i = icmp ult ptr %i.aai, %0
  br i1 %.not169.i, label %.thread233.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph270.i
  %i.aaj = load i32, ptr %i.aad, align 4, !tbaa !9
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aai, ptr nonnull align 1 %i.aal, i64 %i.aag, i1 false)
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1 ; 2 uses
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next293.i, %wide.trip.count295.i.pre-phi
  br i1 %exitcond296.not.i, label %._crit_edge271.i, label %.lr.ph270.i, !llvm.loop !86

._crit_edge271.i:                                 ; preds = %bb.bg, %._crit_edge.i
  %.0146.lcssa.ph322.i = phi i32 [ %.0146259.i, %._crit_edge.i ], [ %.0146.lcssa.ph323.i, %bb.bg ]
  %i.aam = zext i32 %.0146.lcssa.ph322.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !8
  %.sroa.6.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.4..sroa_idx, align 8, !tbaa !8
  %i.aan = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %i.aam, i64 noundef %1, ptr noundef nonnull %i.o, ptr noundef readonly %3, i32 noundef %4, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread233.sink.split.i

.thread233.sink.split.i:                          ; preds = %.lr.ph.i22, %.lr.ph270.i, %._crit_edge271.i, %ZDICT_dictSize.exit224.thread.critedge.i, %ZDICT_dictSize.exit224.i, %.critedge179.i, %bb.d, %bb.c
  %.8.ph.i = phi i64 [ -1, %.lr.ph270.i ], [ -34, %ZDICT_dictSize.exit224.i ], [ -34, %bb.d ], [ %i.aan, %._crit_edge271.i ], [ -70, %bb.c ], [ -34, %ZDICT_dictSize.exit224.thread.critedge.i ], [ -34, %.critedge179.i ], [ -1, %.lr.ph.i22 ]
  tail call void @free(ptr noundef nonnull %i.x) #16
  br label %ZDICT_trainFromBuffer_unsafe_legacy.exit

ZDICT_trainFromBuffer_unsafe_legacy.exit:         ; preds = %ZDICT_totalSampleSize.exit.i, %.thread233.sink.split.i
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread233.sink.split.i ]
  tail call void @free(ptr noundef %i.o) #16
  br label %ZDICT_totalSampleSize.exit.thread

ZDICT_totalSampleSize.exit.thread:                ; preds = %bb.a, %bb.b, %ZDICT_totalSampleSize.exit, %ZDICT_trainFromBuffer_unsafe_legacy.exit
  %.0 = phi i64 [ 0, %ZDICT_totalSampleSize.exit ], [ %.8.i, %ZDICT_trainFromBuffer_unsafe_legacy.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ZDICT_fastCover_params_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !91
  %i.d = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !9      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = add i64 %2, -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.r = sub i64 0, %1
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 3 uses
  %i.t = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.s, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %7 = icmp ult i64 %i.t, -119
  %i.u = add nuw i64 %i.t, 8                      ; 2 uses
  br i1 %7, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.v = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.s, i64 noundef %1, i64 noundef 0) #18
  %i.w = urem i64 %i.v, 2147450880
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 32768
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %.not46 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not46, i32 %i.y, i32 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = add i64 %i.u, %1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.s, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ag, %bb.e ], [ %i.t, %.critedge ]
  ret i64 %.1
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph197:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count231 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !9
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !12
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph203, label %.critedge

.lr.ph203:                                        ; preds = %bb.c, %bb.d
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 3 uses
  %i.y = and i64 %indvars.iv.next225, 4294967295
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = icmp ult i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.d, label %.critedge.loopexit.split.loop.exit269

bb.d:                                             ; preds = %.lr.ph203
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !77
  %i.ae = and i64 %indvars.iv.next225, 4294967294
  %.not248.a = icmp eq i64 %i.ae, 0
  br i1 %.not248.a, label %.critedge, label %.lr.ph203, !llvm.loop !92

.critedge.loopexit.split.loop.exit269:            ; preds = %.lr.ph203
  %i.af = trunc nuw i64 %indvars.iv224 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit269, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.af, %.critedge.loopexit.split.loop.exit269 ], [ 1, %bb.d ] ; 2 uses
  %i.ag = zext i32 %.1.lcssa to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ag ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph197, label %.lr.ph, !llvm.loop !93

bb.f:                                             ; preds = %.lr.ph197, %isIncluded.exit
  %indvars.iv227 = phi i64 [ 1, %.lr.ph197 ], [ %indvars.iv.next228, %isIncluded.exit ] ; 6 uses
  %i.ai = icmp eq i64 %indvars.iv227, %i.h
  br i1 %i.ai, label %isIncluded.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv227 ; 8 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11 ; 6 uses
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %.not = icmp uge i32 %i.an, %.sroa.0102.sroa.0.0.extract.trunc
  %i.ao = icmp ult i32 %i.ak, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.ao, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.b, %i.an                 ; 3 uses
  %i.aq = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = add i32 %i.as, %i.aq                    ; 3 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !12
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.aw = add i32 %i.ap, %i.am
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !11
  %i.ax = mul i32 %i.ap, %2
  %i.ay = udiv i32 %i.ax, %.sroa.0102.sroa.14.0.extract.trunc
  %i.az = add i32 %i.ay, %i.at                    ; 2 uses
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.az, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.aj, align 4
end_hunk_3
