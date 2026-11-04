Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_rolz_kernel?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@ZS_experimentalDecoder = external local_unnamed_addr constant %struct.ZS_decoder, align 8
@ZL_rolzDecompress.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 18, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unconditional failure: Generic: %s\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/rolz/decode_rolz_kernel.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ZL_rolzDecompress\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZL_rolzDecompress.__zl_static_error_info.6 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, [4 x i8] zeroinitializer }, align 8
@ZS_fastDecoder = external local_unnamed_addr constant %struct.ZS_decoder, align 8
@ZS_fastLzDecompress.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.7, i32 37, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"ZS_fastLzDecompress\00", align 1
@ZS_fastLzDecompress.__zl_static_error_info.8 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.7, i32 43, [4 x i8] zeroinitializer }, align 8
@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@__func__.printUsesHist = private unnamed_addr constant [14 x i8] c"printUsesHist\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"LZ usage\00", align 1
@usesHist = local_unnamed_addr global [257 x i32] zeroinitializer, align 16
@__func__.printIndexHist = private unnamed_addr constant [15 x i8] c"printIndexHist\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"RZ usage\00", align 1
@indexHist = local_unnamed_addr global [257 x i32] zeroinitializer, align 16
@__func__.printAgeHist = private unnamed_addr constant [13 x i8] c"printAgeHist\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Log age of evicted (higher is better)\0AAGE: COUNT\00", align 1
@ageHist = local_unnamed_addr global [257 x i32] zeroinitializer, align 16
@ZS_RolzDTable2_init.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.12, i32 169, [4 x i8] zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"ZS_RolzDTable2_init\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%2u: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@__func__.printRunningFraction = private unnamed_addr constant [21 x i8] c"printRunningFraction\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%u: %u\09(%u / %u)\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_rolzDecompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %4, align 8, !tbaa !19
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_experimentalDecoder, i64 8), align 8, !tbaa !21
  %i.d = tail call ptr %i.c() #9                  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_rolzDecompress.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 18, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_experimentalDecoder, i64 32), align 8, !tbaa !22
  %i.h = tail call { i32, i64 } %i.g(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_experimentalDecoder, i64 16), align 8, !tbaa !23
  tail call void %i.j(ptr noundef nonnull %i.d) #9
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_rolzDecompress.__zl_static_error_info.6, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi { i32, ptr } [ %i.k, %bb.d ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = extractvalue { i32, ptr } %.sink, 0      ; 2 uses
  %i.m = extractvalue { i32, ptr } %.sink, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.5) #9
  %i.n = ptrtoint ptr %i.m to i64
  %5 = insertvalue { i32, i64 } poison, i32 %i.l, 0
  %6 = insertvalue { i32, i64 } %5, i64 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.h, %bb.c ], [ %6, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_fastLzDecompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #10
  store ptr %i.b, ptr %4, align 8, !tbaa !19
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_fastDecoder, i64 8), align 8, !tbaa !21
  %i.d = tail call ptr %i.c() #9                  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastLzDecompress.__zl_static_error_info, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 37, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_fastDecoder, i64 32), align 8, !tbaa !22
  %i.h = tail call { i32, i64 } %i.g(ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ZS_fastDecoder, i64 16), align 8, !tbaa !23
  tail call void %i.j(ptr noundef nonnull %i.d) #9
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastLzDecompress.__zl_static_error_info.8, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 43, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi { i32, ptr } [ %i.k, %bb.d ], [ %i.f, %bb.b ] ; 2 uses
  %i.l = extractvalue { i32, ptr } %.sink, 0      ; 2 uses
  %i.m = extractvalue { i32, ptr } %.sink, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.l, ptr %i.m, ptr noundef nonnull @.str.5) #9
  %i.n = ptrtoint ptr %i.m to i64
  %5 = insertvalue { i32, i64 } poison, i32 %i.l, 0
  %6 = insertvalue { i32, i64 } %5, i64 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.h, %bb.c ], [ %6, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: nounwind uwtable
define void @printUsesHist() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !24
  %i.b = icmp sgt i32 %i.a, 15
  br i1 %i.b, label %bb.b, label %total.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.printUsesHist, i32 noundef 86, ptr noundef nonnull @.str.9) #9
  br label %total.exit.i

total.exit.i:                                     ; preds = %bb.b, %bb.a
  %wide.load2.31 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 1008), align 16, !tbaa !24
  %wide.load2.30 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 976), align 16, !tbaa !24
  %wide.load2.29 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 944), align 16, !tbaa !24
  %wide.load2.28 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 912), align 16, !tbaa !24
  %wide.load2.27 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 880), align 16, !tbaa !24
  %wide.load2.26 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 848), align 16, !tbaa !24
  %wide.load2.25 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 816), align 16, !tbaa !24
  %wide.load2.24 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 784), align 16, !tbaa !24
  %wide.load2.23 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 752), align 16, !tbaa !24
  %wide.load2.22 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 720), align 16, !tbaa !24
  %wide.load2.21 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 688), align 16, !tbaa !24
  %wide.load2.20 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 656), align 16, !tbaa !24
  %wide.load2.19 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 624), align 16, !tbaa !24
  %wide.load2.18 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 592), align 16, !tbaa !24
  %wide.load2.17 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 560), align 16, !tbaa !24
  %wide.load2.16 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 528), align 16, !tbaa !24
  %wide.load2.15 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 496), align 16, !tbaa !24
  %wide.load2.14 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 464), align 16, !tbaa !24
  %wide.load2.13 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 432), align 16, !tbaa !24
  %wide.load2.12 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 400), align 16, !tbaa !24
  %wide.load2.11 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 368), align 16, !tbaa !24
  %wide.load2.10 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 336), align 16, !tbaa !24
  %wide.load2.9 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 304), align 16, !tbaa !24
  %wide.load2.8 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 272), align 16, !tbaa !24
  %wide.load2.7 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 240), align 16, !tbaa !24
  %wide.load2.6 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 208), align 16, !tbaa !24
  %wide.load2.5 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 176), align 16, !tbaa !24
  %wide.load2.4 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 144), align 16, !tbaa !24
  %wide.load2.3 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 112), align 16, !tbaa !24
  %wide.load2.2 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 80), align 16, !tbaa !24
  %wide.load2.1 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 48), align 16, !tbaa !24
  %wide.load2 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 16), align 16, !tbaa !24
  %i.c = add <4 x i32> %wide.load2.1, %wide.load2
  %i.d = add <4 x i32> %wide.load2.2, %i.c
  %i.e = add <4 x i32> %wide.load2.3, %i.d
  %i.f = add <4 x i32> %wide.load2.4, %i.e
  %i.g = add <4 x i32> %wide.load2.5, %i.f
  %i.h = add <4 x i32> %wide.load2.6, %i.g
  %i.i = add <4 x i32> %wide.load2.7, %i.h
  %i.j = add <4 x i32> %wide.load2.8, %i.i
  %i.k = add <4 x i32> %wide.load2.9, %i.j
  %i.l = add <4 x i32> %wide.load2.10, %i.k
  %i.m = add <4 x i32> %wide.load2.11, %i.l
  %i.n = add <4 x i32> %wide.load2.12, %i.m
  %i.o = add <4 x i32> %wide.load2.13, %i.n
  %i.p = add <4 x i32> %wide.load2.14, %i.o
  %i.q = add <4 x i32> %wide.load2.15, %i.p
  %i.r = add <4 x i32> %wide.load2.16, %i.q
  %i.s = add <4 x i32> %wide.load2.17, %i.r
  %i.t = add <4 x i32> %wide.load2.18, %i.s
  %i.u = add <4 x i32> %wide.load2.19, %i.t
  %i.v = add <4 x i32> %wide.load2.20, %i.u
  %i.w = add <4 x i32> %wide.load2.21, %i.v
  %i.x = add <4 x i32> %wide.load2.22, %i.w
  %i.y = add <4 x i32> %wide.load2.23, %i.x
  %i.z = add <4 x i32> %wide.load2.24, %i.y
  %i.aa = add <4 x i32> %wide.load2.25, %i.z
  %i.ab = add <4 x i32> %wide.load2.26, %i.aa
  %i.ac = add <4 x i32> %wide.load2.27, %i.ab
  %i.ad = add <4 x i32> %wide.load2.28, %i.ac
  %i.ae = add <4 x i32> %wide.load2.29, %i.ad
  %i.af = add <4 x i32> %wide.load2.30, %i.ae
  %i.ag = add <4 x i32> %wide.load2.31, %i.af
  %wide.load.31 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 992), align 16, !tbaa !24
  %wide.load.30 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 960), align 16, !tbaa !24
  %wide.load.29 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 928), align 16, !tbaa !24
  %wide.load.28 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 896), align 16, !tbaa !24
  %wide.load.27 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 864), align 16, !tbaa !24
  %wide.load.26 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 832), align 16, !tbaa !24
  %wide.load.25 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 800), align 16, !tbaa !24
  %wide.load.24 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 768), align 16, !tbaa !24
  %wide.load.23 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 736), align 16, !tbaa !24
  %wide.load.22 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 704), align 16, !tbaa !24
  %wide.load.21 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 672), align 16, !tbaa !24
  %wide.load.20 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 640), align 16, !tbaa !24
  %wide.load.19 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 608), align 16, !tbaa !24
  %wide.load.18 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 576), align 16, !tbaa !24
  %wide.load.17 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 544), align 16, !tbaa !24
  %wide.load.16 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 512), align 16, !tbaa !24
  %wide.load.15 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 480), align 16, !tbaa !24
  %wide.load.14 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 448), align 16, !tbaa !24
  %wide.load.13 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 416), align 16, !tbaa !24
  %wide.load.12 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 384), align 16, !tbaa !24
  %wide.load.11 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 352), align 16, !tbaa !24
  %wide.load.10 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 320), align 16, !tbaa !24
  %wide.load.9 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 288), align 16, !tbaa !24
  %wide.load.8 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 256), align 16, !tbaa !24
  %wide.load.7 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 224), align 16, !tbaa !24
  %wide.load.6 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 192), align 16, !tbaa !24
  %wide.load.5 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 160), align 16, !tbaa !24
  %wide.load.4 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 128), align 16, !tbaa !24
  %wide.load.3 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 96), align 16, !tbaa !24
  %wide.load.2 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 64), align 16, !tbaa !24
  %wide.load.1 = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 32), align 16, !tbaa !24
  %wide.load = load <4 x i32>, ptr @usesHist, align 16, !tbaa !24
  %i.ah = add <4 x i32> %wide.load.1, %wide.load
  %i.ai = add <4 x i32> %wide.load.2, %i.ah
  %i.aj = add <4 x i32> %wide.load.3, %i.ai
  %i.ak = add <4 x i32> %wide.load.4, %i.aj
  %i.al = add <4 x i32> %wide.load.5, %i.ak
  %i.am = add <4 x i32> %wide.load.6, %i.al
  %i.an = add <4 x i32> %wide.load.7, %i.am
  %i.ao = add <4 x i32> %wide.load.8, %i.an
  %i.ap = add <4 x i32> %wide.load.9, %i.ao
  %i.aq = add <4 x i32> %wide.load.10, %i.ap
  %i.ar = add <4 x i32> %wide.load.11, %i.aq
  %i.as = add <4 x i32> %wide.load.12, %i.ar
  %i.at = add <4 x i32> %wide.load.13, %i.as
  %i.au = add <4 x i32> %wide.load.14, %i.at
  %i.av = add <4 x i32> %wide.load.15, %i.au
  %i.aw = add <4 x i32> %wide.load.16, %i.av
  %i.ax = add <4 x i32> %wide.load.17, %i.aw
  %i.ay = add <4 x i32> %wide.load.18, %i.ax
  %i.az = add <4 x i32> %wide.load.19, %i.ay
  %i.ba = add <4 x i32> %wide.load.20, %i.az
  %i.bb = add <4 x i32> %wide.load.21, %i.ba
  %i.bc = add <4 x i32> %wide.load.22, %i.bb
  %i.bd = add <4 x i32> %wide.load.23, %i.bc
  %i.be = add <4 x i32> %wide.load.24, %i.bd
  %i.bf = add <4 x i32> %wide.load.25, %i.be
  %i.bg = add <4 x i32> %wide.load.26, %i.bf
  %i.bh = add <4 x i32> %wide.load.27, %i.bg
  %i.bi = add <4 x i32> %wide.load.28, %i.bh
  %i.bj = add <4 x i32> %wide.load.29, %i.bi
  %i.bk = add <4 x i32> %wide.load.30, %i.bj
  %i.bl = add <4 x i32> %wide.load.31, %i.bk
  %bin.rdx = add <4 x i32> %i.ag, %i.bl
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @usesHist, i64 1024), align 16, !tbaa !24
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = tail call range(i32 1, 0) i32 @llvm.umax.i32(i32 %i.bo, i32 1)
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %total.exit.i
  %.01012.i = phi i64 [ 0, %total.exit.i ], [ %i.cb, %._crit_edge.i ] ; 3 uses
  %i.br = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !24
  %i.bs = icmp sgt i32 %i.br, 15
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = trunc nuw nsw i64 %.01012.i to i32
  tail call void (ptr, ...) @ZL_RLOG_func(ptr noundef nonnull @.str.13, i32 noundef %i.bt) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @usesHist, i64 %.01012.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !24
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 9                ; 2 uses
  %i.by = udiv i64 %i.bx, %i.bq
  %.not.i = icmp samesign ult i64 %i.bx, %i.bq
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ca = tail call i32 @putc(i32 noundef 10, ptr noundef %i.bz) ; 0 uses
  %i.cb = add nuw nsw i64 %.01012.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, 24
  br i1 %exitcond.not.i, label %stars.exit, label %bb.c, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.011.i = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.e ]
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.cd = tail call i32 @putc(i32 noundef 42, ptr noundef %i.cc) ; 0 uses
  %i.ce = add nuw nsw i64 %.011.i, 1              ; 2 uses
  %i.cf = icmp samesign ult i64 %i.ce, %i.by
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

stars.exit:                                       ; preds = %._crit_edge.i
  ret void
}

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @printIndexHist() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !24
  %i.b = icmp sgt i32 %i.a, 15
  br i1 %i.b, label %bb.b, label %total.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.printIndexHist, i32 noundef 96, ptr noundef nonnull @.str.10) #9
  br label %total.exit.i

end_hunk_0
