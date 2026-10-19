Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_zset?download=true
inline.NumInlined: 280
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, [8 x %struct.connListener], i32, %struct.connListener, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, [4 x %struct.pause_event], [256 x i8], ptr, i64, i32, i32, [128 x i32], i32, i32, %struct.pendingCommandPool, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, [128 x i64], [128 x i64], i64, i64, i64, i64, i64, [7 x %struct.anon], i64, i64, i64, i64, i64, i64, [4 x %struct.durationStats], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i64, i64, i32, i32, ptr, i64, i64, %struct.replDataBuf, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [11 x i32], ptr, ptr, i32, i64, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, %struct.aclInfo, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32, i32, ptr, i32, i32 }
%struct.connListener = type { [16 x i32], i32, ptr, i32, i32, ptr, ptr }
%struct.pause_event = type { i32, i64 }
%struct.pendingCommandPool = type { ptr, i32, i32, i32 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.durationStats = type { i64, i64, i64 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.replDataBuf = type { ptr, i64, i64, i64, i64, i64 }
%struct.aclInfo = type { i64, i64, i64, i64, i64 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.listpackEntry = type { ptr, i32, i64 }
%struct.zrangespec = type { double, double, i32, i32 }
%struct.zlexrangespec = type { ptr, ptr, i32, i32 }
%struct.zsetopval = type { i32, [32 x i8], ptr, ptr, i32, i64, double }
%struct.dictIterator = type { ptr, i64, i32, i32, ptr, ptr, i64 }
%struct.zrange_result_handler = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.zsetopsrc = type { ptr, i32, i32, double, i64, %union.anon }
%union.anon = type { %union._iterset }
%union._iterset = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@zsetDictType = dso_local global { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr } { ptr @dictSdsHash, ptr null, ptr null, ptr @dictSdsKeyCompare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, [7 x i8] zeroinitializer, ptr @zslGetNodeElementForDict, ptr null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"!isnan(score)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"t_zset.c\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"sptr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"*eptr != NULL && *sptr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"_sptr != NULL\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"_eptr != NULL\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"(eptr = lpPrev(zl,sptr)) != NULL\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"o->type == OBJ_ZSET\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Unknown target encoding\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"dictAdd(zs->dict, node, NULL) == DICT_OK\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"eptr != NULL\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"rank != 0\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Unknown zset encoding\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"resulting score is not a number (NaN)\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"XX and NX options at the same time are not compatible\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"GT, LT, and/or NX options at the same time are not compatible\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"INCR option supports a single increment-element pair\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"zincr\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"zadd\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"zrem\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"zremrangebyrank\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"zremrangebyscore\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"min or max is not a float\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"zremrangebylex\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"min or max not valid string range item\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"unknown rangetype %d\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"it->zl.sptr != NULL\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Unsupported type\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"at least 1 input key is needed for '%s' command\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"Insufficient memory, failed allocating transient memory, too many args.\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"weight value is not a float\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"aggregate\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"withscores\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"LIMIT can't be negative\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Unknown operator\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"zunionstore\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"zinterstore\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"zdiffstore\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"eptr != NULL && sptr != NULL\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"zslValueLteMax(score,&range)\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"zzlLexValueLteMax(eptr,&range)\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"bylex\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"byscore\00", align 1
@.str.59 = private unnamed_addr constant [82 x i8] c"syntax error, LIMIT is only supported in combination with either BYSCORE or BYLEX\00", align 1
@.str.60 = private unnamed_addr constant [65 x i8] c"syntax error, WITHSCORES not supported in combination with BYLEX\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"withscore\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"sdsEncodedObject(ele)\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"zln != NULL\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"zsetDel(zobj,ele)\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"zpopmin\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"zpopmax\00", align 1
@.str.67 = private unnamed_addr constant [65 x i8] c"lpRandomPairsUnique(zsetobj->ptr, count, keys, vals, 2) == count\00", align 1
@sdsReplyDictType = external global %struct.dictType, align 8
@.str.68 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"dictSize(d) == size\00", align 1
@hashDictType = external global %struct.dictType, align 8
@.str.70 = private unnamed_addr constant [22 x i8] c"value is out of range\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"numkeys should be greater than 0\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"count should be greater than 0\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"embedded_sds == (sds)((char*)zn + sds_offset)\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"x->level[0].forward == node\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"zrangestore\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@switch.table.zdiff = private unnamed_addr constant [5 x i8] c"\01\03\05\09\11", align 8

declare i64 @dictSdsHash(ptr noundef) #0

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @zslGetNodeElementForDict(ptr nofree noundef readonly captures(ret: address, provenance) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 2, !tbaa !22
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zslCompareWithNode(double noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %2, align 8, !tbaa !24  ; 2 uses
  %i.c = fcmp olt double %0, %i.b
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %0, %i.b
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !22
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = tail call i32 @sdscmp(ptr noundef %1, ptr noundef nonnull %i.h) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare i32 @sdscmp(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @zslGetNodeElement(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 2, !tbaa !22
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @zslCreate() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.b) #17 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !30
  %i.f = load i64, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = call ptr @zmalloc_usable(i64 noundef 528, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.h, i8 0, i64 528, i1 false)
  store i64 2162687, ptr %i.i, align 8, !tbaa !34
  %i.j = load i64, ptr %i.a, align 8, !tbaa !31
  %i.k = load i64, ptr %i.g, align 8, !tbaa !32
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr %i.h, ptr %i.c, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.c
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zslFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @zfree_usable(ptr noundef %i.c, ptr noundef nonnull %i.b) #17
  %i.f = load i64, ptr %i.b, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %i.i = sub i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !32
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.010, ptr noundef nonnull %i.a) #17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31
  %i.m = load i64, ptr %i.g, align 8, !tbaa !32
  %i.n = sub i64 %i.m, %i.l
  store i64 %i.n, ptr %i.g, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @zfree(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

declare void @zfree_usable(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @zfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @zslAllocSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zslInsert(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ord double %1, 0.000000e+00
  br i1 %i.a, label %.preheader, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  tail call void @abort() #18
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi i32 [ %i.d, %.preheader ], [ 1, %bb.a ] ; 2 uses
  %i.b = tail call i64 @random() #17
  %i.c = icmp slt i64 %i.b, 536870911
  %i.d = add nuw nsw i32 %.0.i, 1
  br i1 %i.c, label %.preheader, label %zslRandomLevel.exit, !llvm.loop !0

zslRandomLevel.exit:                              ; preds = %.preheader
  %i.e = tail call range(i32 0, 33) i32 @llvm.umin.i32(i32 %.0.i, i32 32)
  %i.f = tail call fastcc ptr @zslCreateNode(ptr noundef %0, i32 noundef %i.e, double noundef %1, ptr noundef %2) ; 2 uses
  tail call fastcc void @zslInsertNode(ptr noundef %0, ptr noundef %i.f)
  ret ptr %i.f
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @zslCreateNode(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr i8, ptr %3, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !41 ; 2 uses
end_hunk_0
begin_hunk_1_@zscanCommand:bb.a
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef 3) #17
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ]
  %i.q = load i64, ptr %i.a, align 8, !tbaa !66
  call void @scanGenericCommand(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !122
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = call i32 @getKeySlot(ptr noundef %i.y) #17
  %i.aa = call i64 @kvobjAllocSize(ptr noundef nonnull %i.l) #17
  call void @updateSlotAllocSize(ptr noundef %i.t, i32 noundef %i.z, ptr noundef nonnull %i.l, i64 noundef %.0, i64 noundef %i.aa) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare i32 @parseScanCursorOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @scanGenericCommand(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @genericZpopCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not199 = icmp slt i32 %2, 1
  br i1 %exitcond.not199, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !251

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv200 = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 10 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.j = tail call ptr @lookupKeyWrite(ptr noundef %i.i, ptr noundef %i.h) #17 ; 19 uses
  %.not151 = icmp eq ptr %i.j, null
  br i1 %.not151, label %bb.d, label %bb.e, !llvm.loop !251

bb.e:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 3) #17
  %.not152 = icmp eq i32 %i.k, 0
  br i1 %.not152, label %bb.h, label %bb.by

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.not154 = icmp eq i32 %7, 0
  br i1 %.not154, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @addReplyNullArray(ptr noundef %0) #17
  br label %bb.by

bb.g:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !156
  tail call void @addReply(ptr noundef %0, ptr noundef %i.l) #17
  br label %bb.by

bb.h:                                             ; preds = %bb.e
  %i.m = icmp eq i64 %5, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 192), align 8, !tbaa !156
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.n) #17
  br label %bb.by

bb.j:                                             ; preds = %bb.h
  %i.o = icmp eq i64 %5, -1
  %spec.store.select = select i1 %i.o, i64 1, i64 %5
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not155 = icmp eq i32 %i.p, 0
  br i1 %.not155, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.j) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0132.a = phi i64 [ %i.q, %bb.k ], [ 0, %bb.j ]
  %i.r = load i64, ptr %i.j, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 4
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %bb.o [
    i32 11, label %bb.m
    i32 7, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  %i.x = tail call i64 @lpLength(ptr noundef %i.w) #17
  %i.y = lshr i64 %i.x, 1
  %i.z = and i64 %i.y, 4294967295
  br label %zsetLength.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30
  br label %zsetLength.exit

bb.o:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1387, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

zsetLength.exit:                                  ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.z, %bb.m ], [ %i.af, %bb.n ] ; 3 uses
  %i.ag = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %.0.i) ; 7 uses
  %i.ah = icmp ne i32 %6, 0                       ; 4 uses
  %i.ai = icmp ne i32 %4, 0                       ; 3 uses
  %i.aj = or i32 %6, %4
  %or.cond.not = icmp eq i32 %i.aj, 0
  br i1 %or.cond.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %zsetLength.exit
  %i.ak = shl nsw i64 %i.ag, 1
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ak) #17
  br label %.peel.begin

bb.q:                                             ; preds = %zsetLength.exit
  %.not180 = xor i1 %i.ah, true                   ; 2 uses
  %or.cond3 = or i1 %i.ai, %.not180
  br i1 %or.cond3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ag) #17
  br label %.peel.begin

bb.s:                                             ; preds = %bb.q
  %or.cond5 = and i1 %i.ai, %.not180
  br i1 %or.cond5, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.al = shl nsw i64 %i.ag, 1
  %i.am = or disjoint i64 %i.al, 1
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.am) #17
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.h) #17
  br label %.peel.begin

bb.u:                                             ; preds = %bb.s
  %or.cond7 = and i1 %i.ai, %i.ah
  br i1 %or.cond7, label %bb.v, label %.peel.begin

bb.v:                                             ; preds = %bb.u
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.h) #17
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.ag) #17
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.r, %bb.u, %bb.v, %bb.t, %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.ao = icmp eq i32 %3, 1                       ; 5 uses
  %i.ap = select i1 %i.ao, i64 -2, i64 0          ; 2 uses
  %.sroa.speculated = select i1 %i.ao, ptr @.str.66, ptr @.str.65
  %i.aq = load i64, ptr %i.j, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = lshr i32 %i.ar, 4
  %i.at = and i32 %i.as, 15
  switch i32 %i.at, label %.loopexit [
    i32 11, label %bb.ab
    i32 7, label %bb.w
  ]

bb.w:                                             ; preds = %.peel.begin
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ao, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.in.peel = phi ptr [ %i.az, %bb.y ], [ %i.ay, %bb.x ]
  %i.ba = load ptr, ptr %.in.peel, align 8, !tbaa !36 ; 4 uses
  %.not156.peel = icmp eq ptr %i.ba, null
  br i1 %.not156.peel, label %.loopexit175, label %bb.aa, !prof !64

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !22
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = tail call ptr @sdsdup(ptr noundef nonnull %i.be) #17
  %i.bg = load double, ptr %i.ba, align 8, !tbaa !24
  br label %bb.aj

bb.ab:                                            ; preds = %.peel.begin
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.bi = tail call ptr @lpSeek(ptr noundef %i.bh, i64 noundef %i.ap) #17 ; 3 uses
  %.not157.peel = icmp eq ptr %i.bi, null
  br i1 %.not157.peel, label %.loopexit176, label %bb.ac, !prof !64

bb.ac:                                            ; preds = %bb.ab
  %i.bj = call ptr @lpGetValue(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !19
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call ptr @sdsnewlen(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #17
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !66
  %i.bp = call ptr @sdsfromlonglong(i64 noundef %i.bo) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0134.peel = phi ptr [ %i.bp, %bb.ae ], [ %i.bn, %bb.ad ]
  %i.bq = call ptr @lpNext(ptr noundef %i.bh, ptr noundef nonnull %i.bi) #17 ; 2 uses
  %.not158.peel = icmp eq ptr %i.bq, null
  br i1 %.not158.peel, label %.loopexit177, label %bb.ag, !prof !64

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.br = call ptr @lpGetValue(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i.peel = icmp eq ptr %i.br, null
  br i1 %.not7.i.peel, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i.peel = call i32 @llvm.umin.i32(i32 %i.bs, i32 127)
  %i.bt = zext nneg i32 %spec.store.select.i.i.peel to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.br, i64 %i.bt, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !41
  %i.bv = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit.peel

bb.ai:                                            ; preds = %bb.ag
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !66
  %i.bx = sitofp i64 %i.bw to double
  br label %zzlGetScore.exit.peel

zzlGetScore.exit.peel:                            ; preds = %bb.ai, %bb.ah
  %.0.i162.peel = phi double [ %i.bv, %bb.ah ], [ %i.bx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.aj

bb.aj:                                            ; preds = %zzlGetScore.exit.peel, %bb.aa
  %.1.peel = phi ptr [ %.0134.peel, %zzlGetScore.exit.peel ], [ %i.bf, %bb.aa ] ; 8 uses
  %.0133.peel = phi double [ %.0.i162.peel, %zzlGetScore.exit.peel ], [ %i.bg, %bb.aa ]
  %i.by = call i32 @zsetDel(ptr noundef nonnull %i.j, ptr noundef %.1.peel)
  %.not159.peel = icmp eq i32 %i.by, 0
  br i1 %.not159.peel, label %.loopexit178, label %bb.ak, !prof !64

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  %i.ca = add nsw i64 %i.bz, 1
  store i64 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !122
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !127
  call void @notifyKeyspaceEvent(i32 noundef 128, ptr noundef nonnull %.sroa.speculated, ptr noundef %i.h, i32 noundef %i.cd) #17
  br i1 %i.ah, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ce = getelementptr i8, ptr %.1.peel, i64 -1
  %.val.i.peel = load i8, ptr %i.ce, align 1, !tbaa !41 ; 2 uses
  %i.cf = and i8 %.val.i.peel, 7
  switch i8 %i.cf, label %sdslen.exit.peel [
    i8 0, label %bb.ar
    i8 1, label %bb.aq
    i8 2, label %bb.ap
    i8 3, label %bb.ao
    i8 4, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds i8, ptr %.1.peel, i64 -17
  %i.ch = load i64, ptr %i.cg, align 1, !tbaa !31
  br label %sdslen.exit.peel

bb.ao:                                            ; preds = %bb.am
  %i.ci = getelementptr inbounds i8, ptr %.1.peel, i64 -9
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !19
  %i.ck = zext i32 %i.cj to i64
  br label %sdslen.exit.peel

bb.ap:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds i8, ptr %.1.peel, i64 -5
  %i.cm = load i16, ptr %i.cl, align 1, !tbaa !42
  %i.cn = zext i16 %i.cm to i64
  br label %sdslen.exit.peel

bb.aq:                                            ; preds = %bb.am
  %i.co = getelementptr inbounds i8, ptr %.1.peel, i64 -3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !41
  %i.cq = zext i8 %i.cp to i64
  br label %sdslen.exit.peel

bb.ar:                                            ; preds = %bb.am
  %i.cr = lshr i8 %.val.i.peel, 3
  %i.cs = zext nneg i8 %i.cr to i64
  br label %sdslen.exit.peel

sdslen.exit.peel:                                 ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i163.peel = phi i64 [ %i.ch, %bb.an ], [ %i.cs, %bb.ar ], [ %i.cq, %bb.aq ], [ %i.cn, %bb.ap ], [ %i.ck, %bb.ao ], [ 0, %bb.am ]
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef nonnull %.1.peel, i64 noundef %.0.i163.peel) #17
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %.0133.peel) #17
  call void @sdsfree(ptr noundef nonnull %.1.peel) #17
  %i.ct = add nsw i64 %i.ag, -1                   ; 2 uses
  %.not160.peel = icmp eq i64 %i.ct, 0
  br i1 %.not160.peel, label %.loopexit179, label %.peel.next

.peel.next:                                       ; preds = %sdslen.exit.peel, %sdslen.exit
  %.0130 = phi i64 [ %i.eu, %sdslen.exit ], [ %i.ct, %sdslen.exit.peel ]
  %i.cu = load i64, ptr %i.j, align 8
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i32 %i.cv, 4
  %i.cx = and i32 %i.cw, 15
  switch i32 %i.cx, label %.loopexit [
    i32 11, label %bb.as
    i32 7, label %bb.ba
  ]

bb.as:                                            ; preds = %.peel.next
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.cz = call ptr @lpSeek(ptr noundef %i.cy, i64 noundef %i.ap) #17 ; 3 uses
  %.not157 = icmp eq ptr %i.cz, null
  br i1 %.not157, label %.loopexit176, label %bb.at, !prof !64

.loopexit176:                                     ; preds = %bb.as, %bb.ab
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 4280) #17
  call void @abort() #18
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.da = call ptr @lpGetValue(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dc = load i64, ptr %i.e, align 8, !tbaa !66
  %i.dd = call ptr @sdsfromlonglong(i64 noundef %i.dc) #17
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.de = load i32, ptr %i.d, align 4, !tbaa !19
  %i.df = zext i32 %i.de to i64
  %i.dg = call ptr @sdsnewlen(ptr noundef nonnull %i.da, i64 noundef %i.df) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0134 = phi ptr [ %i.dd, %bb.au ], [ %i.dg, %bb.av ]
  %i.dh = call ptr @lpNext(ptr noundef %i.cy, ptr noundef nonnull %i.cz) #17 ; 2 uses
  %.not158 = icmp eq ptr %i.dh, null
  br i1 %.not158, label %.loopexit177, label %bb.ax, !prof !64

.loopexit177:                                     ; preds = %bb.aw, %bb.af
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 4289) #17
  call void @abort() #18
  unreachable

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.di = call ptr @lpGetValue(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.di, null
  br i1 %.not7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.dj, i32 127)
  %i.dk = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.di, i64 %i.dk, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  store i8 0, ptr %i.dl, align 1, !tbaa !41
  %i.dm = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.az:                                            ; preds = %bb.ax
  %i.dn = load i64, ptr %i.c, align 8, !tbaa !66
  %i.do = sitofp i64 %i.dn to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.ay, %bb.az
  %.0.i162 = phi double [ %i.dm, %bb.ay ], [ %i.do, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.bf

bb.ba:                                            ; preds = %.peel.next
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !74 ; 2 uses
  br i1 %i.ao, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.in = phi ptr [ %i.ds, %bb.bb ], [ %i.du, %bb.bc ]
  %i.dv = load ptr, ptr %.in, align 8, !tbaa !36  ; 4 uses
  %.not156 = icmp eq ptr %i.dv, null
  br i1 %.not156, label %.loopexit175, label %bb.be, !prof !64

.loopexit175:                                     ; preds = %bb.bd, %bb.z
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 4301) #17
  call void @abort() #18
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !22
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.ea = call ptr @sdsdup(ptr noundef nonnull %i.dz) #17
  %i.eb = load double, ptr %i.dv, align 8, !tbaa !24
  br label %bb.bf

.loopexit:                                        ; preds = %.peel.next, %.peel.begin
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 4305, ptr noundef nonnull @.str.7) #17
  call void @abort() #18
  unreachable

bb.bf:                                            ; preds = %bb.be, %zzlGetScore.exit
  %.1 = phi ptr [ %.0134, %zzlGetScore.exit ], [ %i.ea, %bb.be ] ; 8 uses
  %.0133 = phi double [ %.0.i162, %zzlGetScore.exit ], [ %i.eb, %bb.be ]
  %i.ec = call i32 @zsetDel(ptr noundef nonnull %i.j, ptr noundef %.1)
  %.not159 = icmp eq i32 %i.ec, 0
  br i1 %.not159, label %.loopexit178, label %bb.bg, !prof !64

.loopexit178:                                     ; preds = %bb.bf, %bb.aj
  call void @_serverAssertWithInfo(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 4308) #17
  call void @abort() #18
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  %i.ee = add nsw i64 %i.ed, 1
  store i64 %i.ee, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !124
  br i1 %i.ah, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 2) #17
  br label %bb.bi

end_hunk_1
