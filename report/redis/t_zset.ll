inline.NumInlined: 283
inline.NumDeleted: 32
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
@__const.genericZpopCommand.events = private unnamed_addr constant [2 x ptr] [ptr @.str.65, ptr @.str.66], align 16
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
@switch.table.zdiff = private unnamed_addr constant [5 x i64] [i64 1, i64 3, i64 5, i64 9, i64 17], align 8

declare i64 @dictSdsHash(ptr noundef) #0

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @zslGetNodeElementForDict(ptr noundef readonly captures(ret: address, provenance) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 2, !tbaa !13
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
  %i.b = load double, ptr %2, align 8, !tbaa !16  ; 2 uses
  %i.c = fcmp olt double %0, %i.b
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %0, %i.b
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
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
define dso_local ptr @zslGetNodeElement(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 2, !tbaa !13
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
  store i32 1, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !23
  %i.f = load i64, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = call ptr @zmalloc_usable(i64 noundef 528, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.h, i8 0, i64 528, i1 false)
  store i64 2162687, ptr %i.i, align 8, !tbaa !26
  %i.j = load i64, ptr %i.a, align 8, !tbaa !24
  %i.k = load i64, ptr %i.g, align 8, !tbaa !25
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr %i.h, ptr %i.c, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret ptr %i.c
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zslFree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @zfree_usable(ptr noundef %i.c, ptr noundef nonnull %i.b) #17
  %i.f = load i64, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = sub i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !25
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.010, ptr noundef nonnull %i.a) #17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !24
  %i.m = load i64, ptr %i.g, align 8, !tbaa !25
  %i.n = sub i64 %i.m, %i.l
  store i64 %i.n, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @zfree(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

declare void @zfree_usable(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @zfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @zslAllocSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zslInsert(ptr noundef captures(none) %0, double noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp ord double %1, 0.000000e+00
  br i1 %i.a, label %.preheader, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 329) #17
  tail call void @abort() #18
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi i32 [ %i.d, %.preheader ], [ 1, %bb.a ] ; 2 uses
  %i.b = tail call i64 @random() #17
  %i.c = icmp slt i64 %i.b, 536870911
  %i.d = add nuw nsw i32 %.0.i, 1
  br i1 %i.c, label %.preheader, label %zslRandomLevel.exit, !llvm.loop !35

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
define internal fastcc noundef ptr @zslCreateNode(ptr noundef captures(none) %0, i32 noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr i8, ptr %3, i64 -1
  %.val.i = load i8, ptr %i.b, align 1, !tbaa !36 ; 2 uses
  %i.c = and i8 %.val.i, 7
  switch i8 %i.c, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %.val.i, 3
  %i.e = zext nneg i8 %i.d to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %3, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36
  %i.h = zext i8 %i.g to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %3, i64 -5
  %i.j = load i16, ptr %i.i, align 1, !tbaa !37
  %i.k = zext i16 %i.j to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %3, i64 -9
  %i.m = load i32, ptr %i.l, align 1, !tbaa !9
  %i.n = zext i32 %i.m to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %3, i64 -17
  %i.p = load i64, ptr %i.o, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.p, %bb.f ], [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.q = tail call signext i8 @sdsReqType(i64 noundef %.0.i) #17 ; 2 uses
  %i.r = and i8 %i.q, 7                           ; 2 uses
  %i.s = icmp samesign ult i8 %i.r, 5
  br i1 %i.s, label %switch.lookup, label %sdsHdrSize.exit

switch.lookup:                                    ; preds = %sdslen.exit
  %i.t = zext nneg i8 %i.r to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zdiff, i64 %i.t
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %sdsHdrSize.exit

sdsHdrSize.exit:                                  ; preds = %sdslen.exit, %switch.lookup
  %.0.i28 = phi i64 [ %switch.load, %switch.lookup ], [ 0, %sdslen.exit ] ; 2 uses
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = add nsw i64 %i.v, 16                     ; 3 uses
  %i.x = add i64 %.0.i, 1
  %i.y = add i64 %i.x, %.0.i28                    ; 2 uses
  %i.z = add i64 %i.y, %i.w
  %i.aa = call ptr @zmalloc_usable(i64 noundef %i.z, ptr noundef nonnull %i.a) #17 ; 6 uses
  store double %2, ptr %i.aa, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !29
  %i.ac = add nsw i64 %.0.i28, %i.w               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ae = call ptr @sdsnewplacement(ptr noundef nonnull %i.ad, i64 noundef %i.y, i8 noundef signext %i.q, ptr noundef nonnull %3, i64 noundef %.0.i) #17
  %i.af = shl i32 %1, 16
  %i.ag = and i32 %i.af, 16711680
  %.sroa.4.0.insert.shift.i = zext nneg i32 %i.ag to i64
  %.sroa.0.0.insert.ext.i = and i64 %i.ac, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.4.0.insert.shift.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.aj = icmp eq ptr %i.ae, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !34

bb.g:                                             ; preds = %sdsHdrSize.exit
  call void @_serverAssert(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 199) #17
  call void @abort() #18
  unreachable

bb.h:                                             ; preds = %sdsHdrSize.exit
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  %i.an = add i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.al, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.aa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zslInsertNode(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  %i.b = alloca [32 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load double, ptr %1, align 8, !tbaa !16  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !13
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.i = load i8, ptr %i.h, align 2, !tbaa !38    ; 8 uses
  %i.j = zext i8 %i.i to i32                      ; 5 uses
  %i.k = fcmp ord double %i.c, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 273) #17
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %.fr = freeze i32 %i.m                          ; 3 uses
  %i.n = icmp sgt i32 %.fr, 0
  br i1 %i.n, label %.lr.ph102.preheader, label %._crit_edge

.lr.ph102.preheader:                              ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !28
  %i.p = zext nneg i32 %.fr to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %zslCompareWithNode.exit.thread
  %indvars.iv = phi i64 [ %i.p, %.lr.ph102.preheader ], [ %indvars.iv.next, %zslCompareWithNode.exit.thread ] ; 8 uses
  %.0100 = phi ptr [ %i.o, %.lr.ph102.preheader ], [ %.1.lcssa, %zslCompareWithNode.exit.thread ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !18
  %i.r = zext i32 %i.q to i64
  %i.s = icmp eq i64 %indvars.iv, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph102
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph102, %bb.d
  %i.v = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph102 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr [16 x i8], ptr %.0100, i64 %indvars.iv ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %zslCompareWithNode.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.not89 = icmp eq i64 %indvars.iv, 1
  br i1 %.not89, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %zslCompareWithNode.exit.thread83.us
  %i.aa = phi i64 [ %i.aq, %zslCompareWithNode.exit.thread83.us ], [ %i.v, %.lr.ph ]
  %i.ab = phi ptr [ %i.as, %zslCompareWithNode.exit.thread83.us ], [ %i.y, %.lr.ph ] ; 4 uses
  %i.ac = phi ptr [ %i.ar, %zslCompareWithNode.exit.thread83.us ], [ %i.x, %.lr.ph ]
  %.192.us = phi ptr [ %i.an, %zslCompareWithNode.exit.thread83.us ], [ %.0100, %.lr.ph ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.192.us, i64 16
  %i.ae = load double, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.af = fcmp olt double %i.c, %i.ae
  br i1 %i.af, label %zslCompareWithNode.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ag = fcmp ogt double %i.c, %i.ae
  br i1 %i.ag, label %zslCompareWithNode.exit.thread83.us, label %zslCompareWithNode.exit.us

zslCompareWithNode.exit.us:                       ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !13
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj
  %i.al = tail call i32 @sdscmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ak) #17
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread83.us_crit_edge, label %zslCompareWithNode.exit.thread

zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread83.us_crit_edge: ; preds = %zslCompareWithNode.exit.us
  %.pre128 = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread83.us

zslCompareWithNode.exit.thread83.us:              ; preds = %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread83.us_crit_edge, %bb.f
  %i.an = phi ptr [ %.pre128, %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread83.us_crit_edge ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !31
  %.not.i.us = icmp ne ptr %i.ao, null
  %i.ap = zext i1 %.not.i.us to i64
  %i.aq = add i64 %i.aa, %i.ap                    ; 2 uses
  store i64 %i.aq, ptr %i.w, align 8, !tbaa !24
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %zslCompareWithNode.exit.thread, label %.lr.ph.split.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph, %zslCompareWithNode.exit.thread83
  %i.au = phi i64 [ %i.bk, %zslCompareWithNode.exit.thread83 ], [ %i.v, %.lr.ph ]
  %i.av = phi ptr [ %i.bm, %zslCompareWithNode.exit.thread83 ], [ %i.y, %.lr.ph ] ; 4 uses
  %i.aw = phi ptr [ %i.bl, %zslCompareWithNode.exit.thread83 ], [ %i.x, %.lr.ph ]
  %.192 = phi ptr [ %i.bg, %zslCompareWithNode.exit.thread83 ], [ %.0100, %.lr.ph ] ; 3 uses
  %i.ax = load double, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.ay = fcmp olt double %i.c, %i.ax
  br i1 %i.ay, label %zslCompareWithNode.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.az = fcmp ogt double %i.c, %i.ax
  br i1 %i.az, label %zslCompareWithNode.exit.thread83, label %zslCompareWithNode.exit

zslCompareWithNode.exit:                          ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !13
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  %i.be = tail call i32 @sdscmp(ptr noundef nonnull %i.g, ptr noundef nonnull %i.bd) #17
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread83_crit_edge, label %zslCompareWithNode.exit.thread

zslCompareWithNode.exit.zslCompareWithNode.exit.thread83_crit_edge: ; preds = %zslCompareWithNode.exit
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread83

zslCompareWithNode.exit.thread83:                 ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread83_crit_edge, %bb.g
  %i.bg = phi ptr [ %.pre, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread83_crit_edge ], [ %i.av, %bb.g ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.192, i64 %indvars.iv.next
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !26
  %i.bk = add i64 %i.au, %i.bj                    ; 2 uses
  store i64 %i.bk, ptr %i.w, align 8, !tbaa !24
  %i.bl = getelementptr [16 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %zslCompareWithNode.exit.thread, label %.lr.ph.split, !llvm.loop !39

zslCompareWithNode.exit.thread:                   ; preds = %zslCompareWithNode.exit, %zslCompareWithNode.exit.thread83, %.lr.ph.split, %zslCompareWithNode.exit.us, %zslCompareWithNode.exit.thread83.us, %.lr.ph.split.us, %bb.e
  %.1.lcssa = phi ptr [ %.0100, %bb.e ], [ %.192.us, %.lr.ph.split.us ], [ %i.an, %zslCompareWithNode.exit.thread83.us ], [ %.192.us, %zslCompareWithNode.exit.us ], [ %.192, %.lr.ph.split ], [ %i.bg, %zslCompareWithNode.exit.thread83 ], [ %.192, %zslCompareWithNode.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.bo, align 8, !tbaa !29
  %i.bp = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bp, label %.lr.ph102, label %._crit_edge.loopexit, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %zslCompareWithNode.exit.thread
  %.pre129 = load i32, ptr %i.l, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.bq = phi i32 [ %.pre129, %._crit_edge.loopexit ], [ %.fr, %bb.c ] ; 5 uses
  %i.br = icmp slt i32 %i.bq, %i.j
  br i1 %i.br, label %.preheader91, label %bb.k

.preheader91:                                     ; preds = %._crit_edge
  %i.bs = load ptr, ptr %0, align 8, !tbaa !28    ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bu = sext i32 %i.bq to i64                   ; 7 uses
  %i.bv = shl nsw i64 %i.bu, 3
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.bv
  %i.bw = xor i32 %i.bq, -1
  %i.bx = add i32 %i.bw, %i.j
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ca, i1 false), !tbaa !24
  %wide.trip.count = zext i8 %i.i to i64          ; 3 uses
  %i.cb = sub nsw i64 %wide.trip.count, %i.bu
  %xtraiter = and i64 %i.cb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader91
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bu
  store ptr %i.bs, ptr %i.cc, align 8, !tbaa !29
  %i.cd = icmp sgt i32 %i.bq, 0
  br i1 %i.cd, label %bb.h, label %zslSetNodeSpanAtLevel.exit.prol

bb.h:                                             ; preds = %.prol.preheader
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bu
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !26
  br label %zslSetNodeSpanAtLevel.exit.prol

zslSetNodeSpanAtLevel.exit.prol:                  ; preds = %bb.h, %.prol.preheader
  %indvars.iv.next115.prol = add nsw i64 %i.bu, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %zslSetNodeSpanAtLevel.exit.prol, %.preheader91
  %indvars.iv114.unr = phi i64 [ %i.bu, %.preheader91 ], [ %indvars.iv.next115.prol, %zslSetNodeSpanAtLevel.exit.prol ]
  %i.ch = add nsw i64 %wide.trip.count, -1
  %i.ci = icmp eq i64 %i.ch, %i.bu
  br i1 %i.ci, label %.unr-lcssa, label %.preheader91.new

.preheader91.new:                                 ; preds = %.prol.loopexit, %zslSetNodeSpanAtLevel.exit.1
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.1, %zslSetNodeSpanAtLevel.exit.1 ], [ %indvars.iv114.unr, %.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv114
  store ptr %i.bs, ptr %i.cj, align 8, !tbaa !29
  %i.ck = icmp sgt i64 %indvars.iv114, 0
  br i1 %i.ck, label %bb.i, label %zslSetNodeSpanAtLevel.exit

bb.i:                                             ; preds = %.preheader91.new
  %i.cl = load i64, ptr %i.bt, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %indvars.iv114
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !26
  br label %zslSetNodeSpanAtLevel.exit

zslSetNodeSpanAtLevel.exit:                       ; preds = %.preheader91.new, %bb.i
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next115
  store ptr %i.bs, ptr %i.co, align 8, !tbaa !29
  %i.cp = icmp sgt i64 %indvars.iv114, -1
  br i1 %i.cp, label %bb.j, label %zslSetNodeSpanAtLevel.exit.1

bb.j:                                             ; preds = %zslSetNodeSpanAtLevel.exit
  %i.cq = load i64, ptr %i.bt, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %indvars.iv.next115
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !26
  br label %zslSetNodeSpanAtLevel.exit.1

zslSetNodeSpanAtLevel.exit.1:                     ; preds = %bb.j, %zslSetNodeSpanAtLevel.exit
  %indvars.iv.next115.1 = add nsw i64 %indvars.iv114, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next115.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.unr-lcssa, label %.preheader91.new, !llvm.loop !41

.unr-lcssa:                                       ; preds = %zslSetNodeSpanAtLevel.exit.1, %.prol.loopexit
  store i32 %i.j, ptr %i.l, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 26
  store i8 %i.i, ptr %i.ct, align 2, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %._crit_edge
  %i.cu = phi i32 [ %i.j, %.unr-lcssa ], [ %i.bq, %._crit_edge ] ; 2 uses
  %.not110 = icmp eq i8 %i.i, 0
  br i1 %.not110, label %.preheader, label %zslSetNodeSpanAtLevel.exit81.peel

zslSetNodeSpanAtLevel.exit81.peel:                ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cw = load i64, ptr %i.b, align 16            ; 2 uses
  %i.cx = add i64 %i.cw, 1
  %wide.trip.count120 = zext i8 %i.i to i64
  %i.cy = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !31
  store ptr %1, ptr %i.cz, align 8, !tbaa !31
  %exitcond121.peel.not = icmp eq i8 %i.i, 1
  br i1 %exitcond121.peel.not, label %.preheader, label %zslSetNodeSpanAtLevel.exit81

.preheader:                                       ; preds = %zslSetNodeSpanAtLevel.exit81, %zslSetNodeSpanAtLevel.exit81.peel, %bb.k
  %i.db = icmp sgt i32 %i.cu, %i.j
  br i1 %i.db, label %.lr.ph108.preheader, label %._crit_edge109

.lr.ph108.preheader:                              ; preds = %.preheader
  %i.dc = zext i8 %i.i to i64                     ; 6 uses
  %wide.trip.count126 = zext i32 %i.cu to i64     ; 3 uses
  %i.dd = sub nsw i64 %wide.trip.count126, %i.dc
  %xtraiter146 = and i64 %i.dd, 1
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph108.prol.loopexit, label %.lr.ph108.prol

.lr.ph108.prol:                                   ; preds = %.lr.ph108.preheader
  %.not87.prol = icmp eq i8 %i.i, 0
  br i1 %.not87.prol, label %zslIncrNodeSpanAtLevel.exit.prol, label %bb.l

bb.l:                                             ; preds = %.lr.ph108.prol
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !26
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !26
  br label %zslIncrNodeSpanAtLevel.exit.prol

zslIncrNodeSpanAtLevel.exit.prol:                 ; preds = %bb.l, %.lr.ph108.prol
  %indvars.iv.next124.prol = add nuw nsw i64 %i.dc, 1
  br label %.lr.ph108.prol.loopexit

.lr.ph108.prol.loopexit:                          ; preds = %zslIncrNodeSpanAtLevel.exit.prol, %.lr.ph108.preheader
  %indvars.iv123.unr = phi i64 [ %i.dc, %.lr.ph108.preheader ], [ %indvars.iv.next124.prol, %zslIncrNodeSpanAtLevel.exit.prol ]
  %i.dk = add nsw i64 %wide.trip.count126, -1
  %i.dl = icmp eq i64 %i.dk, %i.dc
  br i1 %i.dl, label %._crit_edge109, label %.lr.ph108

zslSetNodeSpanAtLevel.exit81:                     ; preds = %zslSetNodeSpanAtLevel.exit81.peel, %zslSetNodeSpanAtLevel.exit81
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %zslSetNodeSpanAtLevel.exit81 ], [ 1, %zslSetNodeSpanAtLevel.exit81.peel ] ; 7 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv117
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %indvars.iv117 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %indvars.iv117
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !31
  store ptr %1, ptr %i.dp, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv117
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv117
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24 ; 2 uses
  %.neg86 = sub i64 %i.du, %i.cw
  %i.dx = add i64 %.neg86, %i.dw
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv117
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %i.dx, ptr %i.dz, align 8, !tbaa !26
  %i.ea = sub i64 %i.cx, %i.dw
  store i64 %i.ea, ptr %i.dt, align 8, !tbaa !26
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.preheader, label %zslSetNodeSpanAtLevel.exit81, !llvm.loop !42

.lr.ph108:                                        ; preds = %.lr.ph108.prol.loopexit, %zslIncrNodeSpanAtLevel.exit
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.1, %zslIncrNodeSpanAtLevel.exit ], [ %indvars.iv123.unr, %.lr.ph108.prol.loopexit ] ; 5 uses
end_hunk_0
begin_hunk_1_@zslNthInRange:bb.a
.critedge5:                                       ; preds = %zslGetNodeSpanAtLevel.exit139, %.lr.ph270.split, %zslGetNodeSpanAtLevel.exit139.us, %bb.r, %.preheader219
  %.6.lcssa = phi ptr [ %.5285, %.preheader219 ], [ %i.fh, %zslGetNodeSpanAtLevel.exit139.us ], [ %i.fh, %bb.r ], [ %i.fo, %zslGetNodeSpanAtLevel.exit139 ], [ %.6268, %.lr.ph270.split ] ; 2 uses
  %.4.lcssa = phi i64 [ %.3287, %.preheader219 ], [ %i.fl, %zslGetNodeSpanAtLevel.exit139.us ], [ %i.fl, %bb.r ], [ %i.fv, %zslGetNodeSpanAtLevel.exit139 ], [ %.4269, %.lr.ph270.split ] ; 2 uses
  %i.fy = icmp sgt i64 %indvars.iv, 1
  br i1 %i.fy, label %.preheader219, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph270.split.us, %.critedge5, %.preheader220
  %.5.lcssa = phi ptr [ %.098.lcssa, %.preheader220 ], [ %.5285, %.lr.ph270.split.us ], [ %.6.lcssa, %.critedge5 ] ; 2 uses
  %.3.lcssa = phi i64 [ %.0.lcssa246, %.preheader220 ], [ %.3287, %.lr.ph270.split.us ], [ %.4.lcssa, %.critedge5 ] ; 3 uses
  %i.fz = sub nsw i64 0, %2
  %i.ga = icmp slt i64 %.3.lcssa, %i.fz
  br i1 %i.ga, label %zslIsInRange.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.gb = icmp ugt i64 %2, -11
  br i1 %i.gb, label %.preheader217, label %bb.t

.preheader217:                                    ; preds = %bb.s
  %.not324 = icmp eq i64 %2, -1
  br i1 %.not324, label %zslGetElementByRankFromNode.exit171, label %.lr.ph293

.lr.ph293:                                        ; preds = %.preheader217, %.lr.ph293
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph293 ], [ 0, %.preheader217 ]
  %.7291 = phi ptr [ %i.gd, %.lr.ph293 ], [ %.5.lcssa, %.preheader217 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.7291, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !29 ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.ge = xor i64 %2, %indvars.iv.next365
  %exitcond.not = icmp eq i64 %i.ge, -1
  br i1 %exitcond.not, label %zslGetElementByRankFromNode.exit171, label %.lr.ph293, !llvm.loop !62

bb.t:                                             ; preds = %bb.s
  %i.gf = add nuw nsw i64 %2, 1
  %i.gg = sub i64 %i.gf, %.0.lcssa246
  %i.gh = add i64 %i.gg, %.3.lcssa                ; 7 uses
  br i1 %i.bg, label %.preheader.preheader.i141, label %zslIsInRange.exit.thread

.preheader.preheader.i141:                        ; preds = %bb.t
  %i.gi = zext nneg i32 %i.ac to i64
  br label %.preheader.i142

bb.u:                                             ; preds = %.critedge.i155
  %indvars.iv.next.i158 = add nsw i64 %indvars.iv.i143, -1
  %i.gj = icmp sgt i64 %indvars.iv.i143, 0
  br i1 %i.gj, label %.preheader.i142, label %zslIsInRange.exit.thread, !llvm.loop !55

.preheader.i142:                                  ; preds = %bb.u, %.preheader.preheader.i141
  %indvars.iv.i143 = phi i64 [ %i.gi, %.preheader.preheader.i141 ], [ %indvars.iv.next.i158, %bb.u ] ; 6 uses
  %.01845.i144 = phi i64 [ 0, %.preheader.preheader.i141 ], [ %.1.lcssa.i157, %bb.u ] ; 4 uses
  %.01944.i145 = phi ptr [ %.098.lcssa, %.preheader.preheader.i141 ], [ %.120.lcssa.i156, %bb.u ] ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01944.i145, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %indvars.iv.i143
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !31 ; 4 uses
  %.not29.i146 = icmp eq ptr %i.gm, null
  br i1 %.not29.i146, label %.critedge.i155, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.preheader.i142
  %.not28.i148 = icmp eq i64 %indvars.iv.i143, 0
  br i1 %.not28.i148, label %.lr.ph.split.us.i159, label %zslGetNodeSpanAtLevel.exit.i149

.lr.ph.split.us.i159:                             ; preds = %.lr.ph.i147
  %i.gn = load ptr, ptr %i.gk, align 8, !tbaa !31
  %.not.i.us40.i160 = icmp ne ptr %i.gn, null
  %i.go = zext i1 %.not.i.us40.i160 to i64
  %i.gp = add i64 %.01845.i144, %i.go             ; 4 uses
  %.not2227.us41.i161 = icmp ugt i64 %i.gp, %i.gh
  br i1 %.not2227.us41.i161, label %.critedge.thread.i169, label %.thread.us.i163.preheader

.thread.us.i163.preheader:                        ; preds = %.lr.ph.split.us.i159
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !31 ; 2 uses
  %.not.us.i166.peel = icmp eq ptr %i.gr, null
  %i.gs = add i64 %i.gp, 1
  %.not2227.us.i167.peel = icmp ugt i64 %i.gs, %i.gh
  %or.cond.i168.peel = select i1 %.not.us.i166.peel, i1 true, i1 %.not2227.us.i167.peel
  br i1 %or.cond.i168.peel, label %.critedge.i155.thread, label %.thread.us.i163

.thread.us.i163:                                  ; preds = %.thread.us.i163.preheader, %.thread.us.i163
  %.131.us42.i165 = phi i64 [ %i.gu, %.thread.us.i163 ], [ %i.gp, %.thread.us.i163.preheader ] ; 2 uses
  %i.gt = phi ptr [ %i.gw, %.thread.us.i163 ], [ %i.gr, %.thread.us.i163.preheader ] ; 2 uses
  %i.gu = add i64 %.131.us42.i165, 1              ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !31 ; 2 uses
  %.not.us.i166 = icmp eq ptr %i.gw, null
  %i.gx = add i64 %.131.us42.i165, 2
  %.not2227.us.i167 = icmp ugt i64 %i.gx, %i.gh
  %or.cond.i168 = select i1 %.not.us.i166, i1 true, i1 %.not2227.us.i167
  br i1 %or.cond.i168, label %.critedge.i155.thread, label %.thread.us.i163, !llvm.loop !63

zslGetNodeSpanAtLevel.exit.i149:                  ; preds = %.lr.ph.i147, %zslGetNodeSpanAtLevel.exit25.i153
  %i.gy = phi ptr [ %i.hf, %zslGetNodeSpanAtLevel.exit25.i153 ], [ %i.gm, %.lr.ph.i147 ] ; 3 uses
  %.131.i150 = phi i64 [ %i.hc, %zslGetNodeSpanAtLevel.exit25.i153 ], [ %.01845.i144, %.lr.ph.i147 ] ; 2 uses
  %.12030.i151 = phi ptr [ %i.gy, %zslGetNodeSpanAtLevel.exit25.i153 ], [ %.01944.i145, %.lr.ph.i147 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %.12030.i151, i64 %indvars.iv.i143
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hc = add i64 %i.hb, %.131.i150               ; 3 uses
  %.not22.i152 = icmp ugt i64 %i.hc, %i.gh
  br i1 %.not22.i152, label %.critedge.i155, label %zslGetNodeSpanAtLevel.exit25.i153

zslGetNodeSpanAtLevel.exit25.i153:                ; preds = %zslGetNodeSpanAtLevel.exit.i149
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv.i143
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !31 ; 2 uses
  %.not.i154 = icmp eq ptr %i.hf, null
  br i1 %.not.i154, label %.critedge.i155, label %zslGetNodeSpanAtLevel.exit.i149, !llvm.loop !57

.critedge.i155:                                   ; preds = %zslGetNodeSpanAtLevel.exit25.i153, %zslGetNodeSpanAtLevel.exit.i149, %.preheader.i142
  %.120.lcssa.i156 = phi ptr [ %.01944.i145, %.preheader.i142 ], [ %.12030.i151, %zslGetNodeSpanAtLevel.exit.i149 ], [ %i.gy, %zslGetNodeSpanAtLevel.exit25.i153 ] ; 2 uses
  %.1.lcssa.i157 = phi i64 [ %.01845.i144, %.preheader.i142 ], [ %.131.i150, %zslGetNodeSpanAtLevel.exit.i149 ], [ %i.hc, %zslGetNodeSpanAtLevel.exit25.i153 ] ; 2 uses
  %i.hg = icmp eq i64 %.1.lcssa.i157, %i.gh
  br i1 %i.hg, label %zslGetElementByRankFromNode.exit171.thread204, label %bb.u

.critedge.i155.thread:                            ; preds = %.thread.us.i163, %.thread.us.i163.preheader
  %.lcssa346 = phi ptr [ %i.gm, %.thread.us.i163.preheader ], [ %i.gt, %.thread.us.i163 ]
  %.lcssa345 = phi i64 [ %i.gp, %.thread.us.i163.preheader ], [ %i.gu, %.thread.us.i163 ]
  %i.hh = icmp eq i64 %.lcssa345, %i.gh
  br i1 %i.hh, label %zslGetElementByRankFromNode.exit171.thread204, label %zslIsInRange.exit.thread

.critedge.thread.i169:                            ; preds = %.lr.ph.split.us.i159
  %i.hi = icmp eq i64 %.01845.i144, %i.gh
  br i1 %i.hi, label %zslGetElementByRankFromNode.exit171.thread204, label %zslIsInRange.exit.thread

zslGetElementByRankFromNode.exit171:              ; preds = %.lr.ph293, %.preheader217
  %.7.lcssa = phi ptr [ %.5.lcssa, %.preheader217 ], [ %i.gd, %.lr.ph293 ] ; 2 uses
  %.not = icmp eq ptr %.7.lcssa, null
  br i1 %.not, label %zslIsInRange.exit.thread, label %zslGetElementByRankFromNode.exit171.thread204

zslGetElementByRankFromNode.exit171.thread204:    ; preds = %.critedge.i155, %.critedge.thread.i169, %.critedge.i155.thread, %zslGetElementByRankFromNode.exit171
  %.8206 = phi ptr [ %.7.lcssa, %zslGetElementByRankFromNode.exit171 ], [ %.lcssa346, %.critedge.i155.thread ], [ %.01944.i145, %.critedge.thread.i169 ], [ %.120.lcssa.i156, %.critedge.i155 ] ; 3 uses
  %i.hj = load double, ptr %.8206, align 8, !tbaa !16 ; 2 uses
  %i.hk = fcmp ule double %i.hj, %i.a
  %i.hl = fcmp ult double %i.hj, %i.a
  %.in.i173 = select i1 %.not.i.i, i1 %i.hl, i1 %i.hk
  br i1 %.in.i173, label %zslIsInRange.exit.thread, label %bb.v

bb.v:                                             ; preds = %zslGetElementByRankFromNode.exit171.thread204
  %.not211 = icmp eq ptr %3, null
  br i1 %.not211, label %zslIsInRange.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hm = add nsw i64 %2, 1
  %i.hn = add nsw i64 %i.hm, %.3.lcssa
  br label %zslIsInRange.exit.thread.sink.split

zslIsInRange.exit.thread.sink.split:              ; preds = %bb.w, %bb.q
  %.sink = phi i64 [ %i.ey, %bb.q ], [ %i.hn, %bb.w ]
  %.0103.ph = phi ptr [ %.4102188, %bb.q ], [ %.8206, %bb.w ]
  store i64 %.sink, ptr %3, align 8, !tbaa !24
  br label %zslIsInRange.exit.thread

zslIsInRange.exit.thread:                         ; preds = %bb.u, %bb.o, %zslIsInRange.exit.thread.sink.split, %.critedge.i155.thread, %.critedge.thread.i169, %bb.t, %zslGetElementByRankFromNode.exit171, %.critedge.i.thread, %.critedge.thread.i, %bb.n, %zslGetElementByRankFromNode.exit, %bb.f, %bb.c, %bb.d, %bb.e, %bb.a, %bb.g, %bb.p, %bb.v, %zslGetElementByRankFromNode.exit171.thread204, %._crit_edge, %zslGetElementByRankFromNode.exit.thread186, %._crit_edge315, %zslIsInRange.exit
  %.0103 = phi ptr [ null, %zslIsInRange.exit ], [ null, %zslGetElementByRankFromNode.exit171.thread204 ], [ null, %._crit_edge315 ], [ null, %zslGetElementByRankFromNode.exit.thread186 ], [ null, %._crit_edge ], [ %.0103.ph, %zslIsInRange.exit.thread.sink.split ], [ %.4102188, %bb.p ], [ null, %bb.o ], [ %.8206, %bb.v ], [ null, %.critedge.i.thread ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %zslGetElementByRankFromNode.exit ], [ null, %bb.n ], [ null, %.critedge.thread.i ], [ null, %.critedge.i155.thread ], [ null, %zslGetElementByRankFromNode.exit171 ], [ null, %bb.t ], [ null, %.critedge.thread.i169 ], [ null, %bb.u ]
  ret ptr %.0103
}

; Function Attrs: nounwind uwtable
define dso_local i64 @zslGetRank(ptr noundef readonly captures(none) %0, double noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %.fr = freeze i32 %i.b                          ; 2 uses
  %i.c = icmp sgt i32 %.fr, 0
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !28
  %i.e = zext nneg i32 %.fr to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %zslCompareWithNode.exit25.thread
  %indvars.iv = phi i64 [ %i.e, %.preheader.preheader ], [ %indvars.iv.next, %zslCompareWithNode.exit25.thread ] ; 6 uses
  %.01946 = phi i64 [ 0, %.preheader.preheader ], [ %.1.lcssa, %zslCompareWithNode.exit25.thread ] ; 3 uses
  %.02045 = phi ptr [ %i.d, %.preheader.preheader ], [ %.121.lcssa, %zslCompareWithNode.exit25.thread ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.f = getelementptr [16 x i8], ptr %.02045, i64 %indvars.iv ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %zslCompareWithNode.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not30 = icmp eq i64 %indvars.iv, 1
  br i1 %.not30, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %zslCompareWithNode.exit.thread27.us
  %i.i = phi ptr [ %i.z, %zslCompareWithNode.exit.thread27.us ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.j = phi ptr [ %i.y, %zslCompareWithNode.exit.thread27.us ], [ %i.f, %.lr.ph ]
  %.132.us = phi i64 [ %i.x, %zslCompareWithNode.exit.thread27.us ], [ %.01946, %.lr.ph ] ; 3 uses
  %.12131.us = phi ptr [ %i.u, %zslCompareWithNode.exit.thread27.us ], [ %.02045, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.12131.us, i64 16
  %i.l = load double, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %i.m = fcmp olt double %1, %i.l
  br i1 %i.m, label %zslCompareWithNode.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = fcmp ogt double %1, %i.l
  br i1 %i.n, label %zslCompareWithNode.exit.thread27.us, label %zslCompareWithNode.exit.us

zslCompareWithNode.exit.us:                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i16, ptr %i.o, align 2, !tbaa !13
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = tail call i32 @sdscmp(ptr noundef %2, ptr noundef nonnull %i.r) #17
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread27.us_crit_edge, label %zslCompareWithNode.exit.thread

zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread27.us_crit_edge: ; preds = %zslCompareWithNode.exit.us
  %.pre55 = load ptr, ptr %i.j, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread27.us

zslCompareWithNode.exit.thread27.us:              ; preds = %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread27.us_crit_edge, %bb.b
  %i.u = phi ptr [ %.pre55, %zslCompareWithNode.exit.us.zslCompareWithNode.exit.thread27.us_crit_edge ], [ %i.i, %bb.b ] ; 3 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !31
  %.not.i.us = icmp ne ptr %i.v, null
  %i.w = zext i1 %.not.i.us to i64
  %i.x = add i64 %.132.us, %i.w                   ; 2 uses
  %i.y = getelementptr [16 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %zslCompareWithNode.exit.thread, label %.lr.ph.split.us, !llvm.loop !64

.lr.ph.split:                                     ; preds = %.lr.ph, %zslCompareWithNode.exit.thread27
  %i.ab = phi ptr [ %i.as, %zslCompareWithNode.exit.thread27 ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.ac = phi ptr [ %i.ar, %zslCompareWithNode.exit.thread27 ], [ %i.f, %.lr.ph ]
  %.132 = phi i64 [ %i.aq, %zslCompareWithNode.exit.thread27 ], [ %.01946, %.lr.ph ] ; 3 uses
  %.12131 = phi ptr [ %i.am, %zslCompareWithNode.exit.thread27 ], [ %.02045, %.lr.ph ] ; 3 uses
  %i.ad = load double, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.ae = fcmp olt double %1, %i.ad
  br i1 %i.ae, label %zslCompareWithNode.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split
  %i.af = fcmp ogt double %1, %i.ad
  br i1 %i.af, label %zslCompareWithNode.exit.thread27, label %zslCompareWithNode.exit

zslCompareWithNode.exit:                          ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !13
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  %i.ak = tail call i32 @sdscmp(ptr noundef %2, ptr noundef nonnull %i.aj) #17
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %zslCompareWithNode.exit.zslCompareWithNode.exit.thread27_crit_edge, label %zslCompareWithNode.exit.thread

zslCompareWithNode.exit.zslCompareWithNode.exit.thread27_crit_edge: ; preds = %zslCompareWithNode.exit
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %zslCompareWithNode.exit.thread27

zslCompareWithNode.exit.thread27:                 ; preds = %zslCompareWithNode.exit.zslCompareWithNode.exit.thread27_crit_edge, %bb.c
  %i.am = phi ptr [ %.pre, %zslCompareWithNode.exit.zslCompareWithNode.exit.thread27_crit_edge ], [ %i.ab, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.12131, i64 %indvars.iv.next
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, %.132                    ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %zslCompareWithNode.exit.thread, label %.lr.ph.split, !llvm.loop !64

zslCompareWithNode.exit.thread:                   ; preds = %zslCompareWithNode.exit, %zslCompareWithNode.exit.thread27, %.lr.ph.split, %zslCompareWithNode.exit.us, %zslCompareWithNode.exit.thread27.us, %.lr.ph.split.us, %.preheader
  %.121.lcssa = phi ptr [ %.02045, %.preheader ], [ %.12131.us, %.lr.ph.split.us ], [ %i.u, %zslCompareWithNode.exit.thread27.us ], [ %.12131.us, %zslCompareWithNode.exit.us ], [ %.12131, %.lr.ph.split ], [ %i.am, %zslCompareWithNode.exit.thread27 ], [ %.12131, %zslCompareWithNode.exit ] ; 5 uses
  %.1.lcssa = phi i64 [ %.01946, %.preheader ], [ %.132.us, %.lr.ph.split.us ], [ %i.x, %zslCompareWithNode.exit.thread27.us ], [ %.132.us, %zslCompareWithNode.exit.us ], [ %.132, %.lr.ph.split ], [ %i.aq, %zslCompareWithNode.exit.thread27 ], [ %.132, %zslCompareWithNode.exit ] ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !28
  %.not = icmp eq ptr %.121.lcssa, %i.au
  br i1 %.not, label %zslCompareWithNode.exit25.thread, label %bb.d

bb.d:                                             ; preds = %zslCompareWithNode.exit.thread
  %i.av = load double, ptr %.121.lcssa, align 8, !tbaa !16
  %or.cond = fcmp ueq double %1, %i.av
  br i1 %or.cond, label %zslCompareWithNode.exit25, label %zslCompareWithNode.exit25.thread

zslCompareWithNode.exit25:                        ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.121.lcssa, i64 24
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !13
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.121.lcssa, i64 %i.ay
  %i.ba = tail call i32 @sdscmp(ptr noundef %2, ptr noundef nonnull %i.az) #17
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %._crit_edge, label %zslCompareWithNode.exit25.thread

zslCompareWithNode.exit25.thread:                 ; preds = %bb.d, %zslCompareWithNode.exit.thread, %zslCompareWithNode.exit25
  %i.bc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bc, label %.preheader, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %zslCompareWithNode.exit25, %zslCompareWithNode.exit25.thread, %bb.a
  %.022 = phi i64 [ 0, %bb.a ], [ 0, %zslCompareWithNode.exit25.thread ], [ %.1.lcssa, %zslCompareWithNode.exit25 ]
  ret i64 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @zslGetRankByNode(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %zslGetNodeSpanAtLevel.exit
  %.011 = phi ptr [ %i.q, %zslGetNodeSpanAtLevel.exit ], [ %1, %bb.a ] ; 4 uses
  %.0810 = phi i64 [ %i.m, %zslGetNodeSpanAtLevel.exit ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.011, i64 26
  %i.b = load i8, ptr %i.a, align 2, !tbaa !38    ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = icmp ugt i8 %i.b, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.011, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  br label %zslGetNodeSpanAtLevel.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %.not.i = icmp ne ptr %i.k, null
  %i.l = zext i1 %.not.i to i64
  br label %zslGetNodeSpanAtLevel.exit

zslGetNodeSpanAtLevel.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = add i64 %.0.i, %.0810                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.o = sext i32 %i.d to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %zslGetNodeSpanAtLevel.exit, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %zslGetNodeSpanAtLevel.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = sub i64 %i.s, %.08.lcssa
  ret i64 %i.t
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @zslGetElementByRank(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.preheader.i, label %zslGetElementByRankFromNode.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  %i.e = load ptr, ptr %0, align 8, !tbaa !28
  %i.f = zext nneg i32 %i.d to i64
  br label %.preheader.i

bb.b:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.g, label %.preheader.i, label %zslGetElementByRankFromNode.exit, !llvm.loop !55

.preheader.i:                                     ; preds = %bb.b, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.f, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 6 uses
  %.01845.i = phi i64 [ 0, %.preheader.preheader.i ], [ %.1.lcssa.i, %bb.b ] ; 4 uses
  %.01944.i = phi ptr [ %i.e, %.preheader.preheader.i ], [ %.120.lcssa.i, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01944.i, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 4 uses
  %.not29.i = icmp eq ptr %i.j, null
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.not28.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not28.i, label %.lr.ph.split.us.i, label %zslGetNodeSpanAtLevel.exit.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !31
  %.not.i.us40.i = icmp ne ptr %i.k, null
  %i.l = zext i1 %.not.i.us40.i to i64
  %i.m = add i64 %.01845.i, %i.l                  ; 4 uses
  %.not2227.us41.i = icmp ugt i64 %i.m, %1
  br i1 %.not2227.us41.i, label %.critedge.thread.i, label %.thread.us.i.preheader

.thread.us.i.preheader:                           ; preds = %.lr.ph.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %.not.us.i.peel = icmp eq ptr %i.o, null
  %i.p = add i64 %i.m, 1
  %.not2227.us.i.peel = icmp ugt i64 %i.p, %1
  %or.cond.i.peel = or i1 %.not.us.i.peel, %.not2227.us.i.peel
  br i1 %or.cond.i.peel, label %.critedge.i.thread, label %.thread.us.i

.thread.us.i:                                     ; preds = %.thread.us.i.preheader, %.thread.us.i
  %.131.us42.i = phi i64 [ %i.r, %.thread.us.i ], [ %i.m, %.thread.us.i.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.t, %.thread.us.i ], [ %i.o, %.thread.us.i.preheader ] ; 2 uses
  %i.r = add i64 %.131.us42.i, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %.not.us.i = icmp eq ptr %i.t, null
  %i.u = add i64 %.131.us42.i, 2
  %.not2227.us.i = icmp ugt i64 %i.u, %1
  %or.cond.i = select i1 %.not.us.i, i1 true, i1 %.not2227.us.i
  br i1 %or.cond.i, label %.critedge.i.thread, label %.thread.us.i, !llvm.loop !67

zslGetNodeSpanAtLevel.exit.i:                     ; preds = %.lr.ph.i, %zslGetNodeSpanAtLevel.exit25.i
  %i.v = phi ptr [ %i.ac, %zslGetNodeSpanAtLevel.exit25.i ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %.131.i = phi i64 [ %i.z, %zslGetNodeSpanAtLevel.exit25.i ], [ %.01845.i, %.lr.ph.i ] ; 2 uses
  %.12030.i = phi ptr [ %i.v, %zslGetNodeSpanAtLevel.exit25.i ], [ %.01944.i, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.12030.i, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !26
  %i.z = add i64 %i.y, %.131.i                    ; 3 uses
  %.not22.i = icmp ugt i64 %i.z, %1
  br i1 %.not22.i, label %.critedge.i, label %zslGetNodeSpanAtLevel.exit25.i

zslGetNodeSpanAtLevel.exit25.i:                   ; preds = %zslGetNodeSpanAtLevel.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %.critedge.i, label %zslGetNodeSpanAtLevel.exit.i, !llvm.loop !57

.critedge.i:                                      ; preds = %zslGetNodeSpanAtLevel.exit25.i, %zslGetNodeSpanAtLevel.exit.i, %.preheader.i
  %.120.lcssa.i = phi ptr [ %.01944.i, %.preheader.i ], [ %.12030.i, %zslGetNodeSpanAtLevel.exit.i ], [ %i.v, %zslGetNodeSpanAtLevel.exit25.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.01845.i, %.preheader.i ], [ %.131.i, %zslGetNodeSpanAtLevel.exit.i ], [ %i.z, %zslGetNodeSpanAtLevel.exit25.i ] ; 2 uses
  %i.ad = icmp eq i64 %.1.lcssa.i, %1
  br i1 %i.ad, label %zslGetElementByRankFromNode.exit, label %bb.b

.critedge.i.thread:                               ; preds = %.thread.us.i, %.thread.us.i.preheader
  %.lcssa16 = phi ptr [ %i.j, %.thread.us.i.preheader ], [ %i.q, %.thread.us.i ]
  %.lcssa = phi i64 [ %i.m, %.thread.us.i.preheader ], [ %i.r, %.thread.us.i ]
  %i.ae = icmp eq i64 %.lcssa, %1
  %spec.select = select i1 %i.ae, ptr %.lcssa16, ptr null
  br label %zslGetElementByRankFromNode.exit

.critedge.thread.i:                               ; preds = %.lr.ph.split.us.i
  %i.af = icmp eq i64 %.01845.i, %1
  %spec.select.i = select i1 %i.af, ptr %.01944.i, ptr null
  br label %zslGetElementByRankFromNode.exit

zslGetElementByRankFromNode.exit:                 ; preds = %bb.b, %.critedge.i, %.critedge.i.thread, %bb.a, %.critedge.thread.i
  %.021.i = phi ptr [ null, %bb.a ], [ %spec.select, %.critedge.i.thread ], [ %spec.select.i, %.critedge.thread.i ], [ null, %bb.b ], [ %.120.lcssa.i, %.critedge.i ]
  ret ptr %.021.i
}

; Function Attrs: nounwind uwtable
define dso_local void @zslFreeLexRange(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.a, %i.c
  %or.cond = select i1 %.not, i1 true, i1 %.not7
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @sdsfree(ptr noundef %i.a) #17
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71
  %.pre11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre11, %bb.b ], [ %i.c, %bb.a ]
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 3 uses
  %.not8 = icmp eq ptr %i.g, %i.e
  %.not9 = icmp eq ptr %i.g, %i.d
  %or.cond10 = select i1 %.not8, i1 true, i1 %.not9
  br i1 %or.cond10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @sdsfree(ptr noundef %i.g) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}
end_hunk_1
begin_hunk_2_@zslDeleteRangeByRank:bb.a
  %i.j = getelementptr [16 x i8], ptr %.068, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not44 = icmp eq i64 %indvars.iv, 1
  br i1 %.not44, label %.lr.ph.split.us, label %zslGetNodeSpanAtLevel.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i.us61 = icmp ne ptr %i.l, null
  %i.m = zext i1 %.not.i.us61 to i64
  %i.n = add i64 %.03466, %i.m
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %.thread.us, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.068, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge.loopexit

zslGetNodeSpanAtLevel.exit.thread.us:             ; preds = %.thread.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not.i.us = icmp ne ptr %i.r, null
  %i.s = zext i1 %.not.i.us to i64
  %i.t = add i64 %i.y, %i.s
  %i.u = icmp ult i64 %i.t, %i.g
  br i1 %i.u, label %.thread.us, label %.critedge, !llvm.loop !177

.thread.us:                                       ; preds = %.lr.ph.split.us, %zslGetNodeSpanAtLevel.exit.thread.us
  %i.v = phi ptr [ %i.r, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.l, %.lr.ph.split.us ]
  %.13546.us62 = phi i64 [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %.03466, %.lr.ph.split.us ]
  %i.w = phi ptr [ %i.aa, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.k, %.lr.ph.split.us ] ; 4 uses
  %.not.i37.us = icmp ne ptr %i.v, null
  %i.x = zext i1 %.not.i37.us to i64
  %i.y = add i64 %.13546.us62, %i.x               ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not.us = icmp eq ptr %i.aa, null
  br i1 %.not.us, label %.critedge, label %zslGetNodeSpanAtLevel.exit.thread.us, !llvm.loop !177

zslGetNodeSpanAtLevel.exit:                       ; preds = %.lr.ph, %zslGetNodeSpanAtLevel.exit39
  %i.ab = phi ptr [ %i.ai, %zslGetNodeSpanAtLevel.exit39 ], [ %i.k, %.lr.ph ] ; 3 uses
  %.147 = phi ptr [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.068, %.lr.ph ] ; 2 uses
  %.13546 = phi i64 [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.03466, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.147, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = add i64 %i.ae, %.13546                  ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.g
  br i1 %i.ag, label %zslGetNodeSpanAtLevel.exit39, label %.critedge

zslGetNodeSpanAtLevel.exit39:                     ; preds = %zslGetNodeSpanAtLevel.exit
  %i.ah = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.critedge, label %zslGetNodeSpanAtLevel.exit, !llvm.loop !177

.critedge:                                        ; preds = %zslGetNodeSpanAtLevel.exit, %zslGetNodeSpanAtLevel.exit39, %.thread.us, %zslGetNodeSpanAtLevel.exit.thread.us, %.preheader
  %.135.lcssa = phi i64 [ %.03466, %.preheader ], [ %i.y, %.thread.us ], [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.13546, %zslGetNodeSpanAtLevel.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.068, %.preheader ], [ %i.w, %.thread.us ], [ %i.w, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.147, %zslGetNodeSpanAtLevel.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %.critedge, %.critedge.thread
  %.1.lcssa96 = phi ptr [ %.068, %.critedge.thread ], [ %.1.lcssa, %.critedge ]
  %.135.lcssa95 = phi i64 [ %.03466, %.critedge.thread ], [ %.135.lcssa, %.critedge ]
  %i.al = add i64 %.135.lcssa95, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi i64 [ 1, %bb.a ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa96, %._crit_edge.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = zext i32 %2 to i64                      ; 2 uses
  %i.ap = icmp ne ptr %i.an, null
  %i.aq = icmp ule i64 %.034.lcssa, %i.ao
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %zslUnlinkNode.exit
  %.23675 = phi i64 [ %.034.lcssa, %.lr.ph77 ], [ %.236, %zslUnlinkNode.exit ] ; 2 uses
  %.274 = phi ptr [ %i.an, %.lr.ph77 ], [ %i.av, %zslUnlinkNode.exit ] ; 9 uses
  %.03373 = phi i64 [ 0, %.lr.ph77 ], [ %i.cx, %zslUnlinkNode.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.274, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 4 uses
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = icmp eq ptr %i.ba, %.274
  br i1 %i.bb, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.av, ptr %i.az, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.aw, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = icmp eq ptr %i.bg, %.274
  br i1 %i.bh, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.c

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.274, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.bp = add i64 %i.bl, %i.bo
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.c:                                             ; preds = %.peel.next.i
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.c, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.b
  %i.bw = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.av, %bb.b ] ; 2 uses
  %.not.i4042 = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %..i43 = select i1 %.not.i4042, ptr %0, ptr %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %..i43, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not.i40 = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %..i = select i1 %.not.i40, ptr %0, ptr %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !29
  %i.ce = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i
  %i.cf = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.cl, %bb.e ] ; 3 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr [16 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.e, label %zslUnlinkNode.exit

bb.e:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !26
  %i.cl = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.d, align 8, !tbaa !18
  %i.cm = icmp sgt i32 %i.cf, 2
  br i1 %i.cm, label %bb.d, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.d, %bb.e, %._crit_edge.i.thread
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !23
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.as, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.274, i64 24
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !13
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.274, i64 %i.cr
  %i.ct = call i32 @dictDelete(ptr noundef %3, ptr noundef nonnull %i.cs) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.274, ptr noundef nonnull %i.a) #17
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !25
  %i.cw = sub i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.at, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cx = add nuw nsw i64 %.03373, 1              ; 2 uses
  %.236 = add nuw nsw i64 %.23675, 1
  %i.cy = icmp ne ptr %i.av, null
  %i.cz = icmp ult i64 %.23675, %i.ao
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %bb.b, label %._crit_edge78, !llvm.loop !179

._crit_edge78:                                    ; preds = %zslUnlinkNode.exit, %._crit_edge
  %.033.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cx, %zslUnlinkNode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.033.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByScore(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.040 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1, %.critedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.040, %.preheader ] ; 4 uses
  %i.i = getelementptr [16 x i8], ptr %.1, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.j, align 8, !tbaa !16 ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load double, ptr %1, align 8, !tbaa !47  ; 2 uses
  %i.n = fcmp ule double %i.k, %i.m
  %i.o = fcmp ult double %i.k, %i.m
  %.in.i = select i1 %.not.i, i1 %i.o, i1 %i.n
  br i1 %.in.i, label %bb.b, label %.critedge, !llvm.loop !180

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1, ptr %i.p, align 8, !tbaa !29
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.preheader, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1, %.critedge ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %zslUnlinkNode.exit
  %.244 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %zslUnlinkNode.exit ] ; 10 uses
  %.02943 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %zslUnlinkNode.exit ] ; 2 uses
  %i.x = load double, ptr %.244, align 8, !tbaa !16 ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !48
  %.not.i34 = icmp eq i32 %i.y, 0
  %i.z = load double, ptr %i.u, align 8, !tbaa !49 ; 2 uses
  %i.aa = fcmp uge double %i.x, %i.z
  %i.ab = fcmp ugt double %i.x, %i.z
  %.in.i35 = select i1 %.not.i34, i1 %i.ab, i1 %i.aa
  br i1 %.in.i35, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.244, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = icmp eq ptr %i.ai, %.244
  br i1 %i.aj, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ae, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq ptr %i.ao, %.244
  br i1 %i.ap, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.f

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.244, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = add i64 %i.as, -1
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26
  %i.ax = add i64 %i.at, %i.aw
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  store ptr %i.az, ptr %i.an, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.f:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.f, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.e
  %i.be = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.ad, %bb.e ] ; 2 uses
  %.not.i3637 = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i38 = select i1 %.not.i3637, ptr %0, ptr %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %..i38, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %..i = select i1 %.not.i36, ptr %0, ptr %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !29
  %i.bm = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge.i
  %i.bn = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.h, label %zslUnlinkNode.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !26
  %i.bt = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.d, align 8, !tbaa !18
  %i.bu = icmp sgt i32 %i.bn, 2
  br i1 %i.bu, label %bb.g, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.g, %bb.h, %._crit_edge.i.thread
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !23
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.v, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %.244, i64 24
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !13
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.244, i64 %i.bz
  %i.cb = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.ca) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.244, ptr noundef nonnull %i.a) #17
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !25
  %i.ce = sub i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cf = add i64 %.02943, 1                      ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge2, label %bb.d, !llvm.loop !182

.critedge2:                                       ; preds = %bb.d, %zslUnlinkNode.exit, %._crit_edge
  %.029.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cf, %zslUnlinkNode.exit ], [ %.02943, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.029.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByLex(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.066 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %.066, i64 %indvars.iv ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not3251 = icmp eq ptr %i.j, null
  br i1 %.not3251, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %zslLexValueGteMin.exit.thread
  %i.k = phi ptr [ %i.ai, %zslLexValueGteMin.exit.thread ], [ %i.j, %.preheader ] ; 7 uses
  %i.l = phi ptr [ %i.ah, %zslLexValueGteMin.exit.thread ], [ %i.i, %.preheader ]
  %.152 = phi ptr [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.066, %.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i16, ptr %i.m, align 2, !tbaa !13
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 6 uses
  %i.q = load i32, ptr %i.g, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = load ptr, ptr %1, align 8, !tbaa !68     ; 6 uses
  %i.s = icmp eq ptr %i.p, %i.r                   ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %zslLexValueGteMin.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.u = icmp eq ptr %i.p, %i.t
  br i1 %i.u, label %zslLexValueGteMin.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.w = icmp eq ptr %i.r, %i.v
  br i1 %i.w, label %zslLexValueGteMin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.p, %i.v
  %i.y = icmp eq ptr %i.r, %i.t
  %or.cond.i.i = or i1 %i.y, %i.x
  br i1 %or.cond.i.i, label %.critedge, label %zslLexValueGteMin.exit

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.aa = icmp eq ptr %i.p, %i.z
  br i1 %i.aa, label %zslLexValueGteMin.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %zslLexValueGteMin.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq ptr %i.p, %i.ab
  %i.ae = icmp eq ptr %i.r, %i.z
  %or.cond.i5.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i5.i, label %.critedge, label %zslLexValueGteMin.exit

zslLexValueGteMin.exit:                           ; preds = %bb.e, %bb.i
  %.sink14.i = phi i32 [ 0, %bb.e ], [ -1, %bb.i ]
  %i.af = tail call i32 @sdscmp(ptr noundef nonnull %i.p, ptr noundef %i.r) #17
  %.not50 = icmp sgt i32 %i.af, %.sink14.i
  br i1 %.not50, label %.critedge, label %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge

zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge: ; preds = %zslLexValueGteMin.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !31
  br label %zslLexValueGteMin.exit.thread

zslLexValueGteMin.exit.thread:                    ; preds = %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge, %bb.g, %bb.d, %bb.c, %bb.b, %bb.h
  %i.ag = phi ptr [ %.pre, %zslLexValueGteMin.exit.zslLexValueGteMin.exit.thread_crit_edge ], [ %i.k, %bb.g ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.h ] ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not32 = icmp eq ptr %i.ai, null
  br i1 %.not32, label %.critedge, label %.lr.ph, !llvm.loop !183

.critedge:                                        ; preds = %zslLexValueGteMin.exit, %zslLexValueGteMin.exit.thread, %bb.e, %bb.i, %bb.f, %.preheader
  %.1.lcssa = phi ptr [ %.066, %.preheader ], [ %.152, %bb.f ], [ %.152, %bb.i ], [ %.152, %bb.e ], [ %i.ag, %zslLexValueGteMin.exit.thread ], [ %.152, %zslLexValueGteMin.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa, %.critedge ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %.not69 = icmp eq ptr %i.am, null
  br i1 %.not69, label %.critedge2, label %.lr.ph73

.lr.ph73:                                         ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph73, %zslUnlinkNode.exit
  %.271 = phi ptr [ %i.am, %.lr.ph73 ], [ %i.bp, %zslUnlinkNode.exit ] ; 10 uses
  %.02970 = phi i64 [ 0, %.lr.ph73 ], [ %i.dq, %zslUnlinkNode.exit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.271, i64 24 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !13
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.271, i64 %i.at ; 7 uses
  %i.av = load i32, ptr %i.an, align 4, !tbaa !80
  %.not.i34 = icmp eq i32 %i.av, 0
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !74 ; 7 uses
  %i.ax = icmp eq ptr %i.au, %i.aw                ; 2 uses
  br i1 %.not.i34, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.az = icmp eq ptr %i.au, %i.ay
  br i1 %i.az, label %zslLexValueLteMax.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bb = icmp eq ptr %i.aw, %i.ba
  br i1 %i.bb, label %zslLexValueLteMax.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp eq ptr %i.au, %i.ba
  %i.bd = icmp eq ptr %i.aw, %i.ay
  %or.cond.i.i35 = or i1 %i.bd, %i.bc
  br i1 %or.cond.i.i35, label %.critedge2, label %zslLexValueLteMax.exit

bb.o:                                             ; preds = %bb.j
  br i1 %i.ax, label %zslLexValueLteMax.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81920), align 8, !tbaa !71 ; 2 uses
  %i.bf = icmp eq ptr %i.au, %i.be
  br i1 %i.bf, label %zslLexValueLteMax.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 81928), align 8, !tbaa !77 ; 2 uses
  %i.bh = icmp eq ptr %i.aw, %i.bg
  br i1 %i.bh, label %zslLexValueLteMax.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq ptr %i.au, %i.bg
  %i.bj = icmp eq ptr %i.aw, %i.be
  %or.cond.i5.i36 = or i1 %i.bj, %i.bi
  br i1 %or.cond.i5.i36, label %.critedge2, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = call i32 @sdscmp(ptr noundef nonnull %i.au, ptr noundef %i.aw) #17
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit:                           ; preds = %bb.n
  %i.bm = call i32 @sdscmp(ptr noundef nonnull %i.au, ptr noundef %i.aw) #17
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %.critedge2, label %zslLexValueLteMax.exit.thread

zslLexValueLteMax.exit.thread:                    ; preds = %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %zslLexValueLteMax.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.271, i64 16 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 4 uses
  %i.bq = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %zslLexValueLteMax.exit.thread
  %wide.trip.count.i = zext nneg i32 %i.bq to i64
  %i.bs = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = icmp eq ptr %i.bu, %.271
  br i1 %i.bv, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.bp, ptr %i.bt, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.bq, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre83 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv.i ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = icmp eq ptr %i.ca, %.271
  br i1 %i.cb, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.t

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.271, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cf = add i64 %i.ce, -1
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.cj = add i64 %i.cf, %i.ci
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  store ptr %i.cl, ptr %i.bz, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.t:                                             ; preds = %.peel.next.i
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.cp = add i64 %i.co, -1
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.t, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %zslLexValueLteMax.exit.thread
  %i.cq = phi ptr [ %.pre83, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.bp, %zslLexValueLteMax.exit.thread ] ; 2 uses
  %.not.i3748 = icmp eq ptr %i.cq, null
  %i.cr = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29
  %..i49 = select i1 %.not.i3748, ptr %0, ptr %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %..i49, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not.i37 = icmp eq ptr %i.cu, null
  %i.cv = getelementptr inbounds nuw i8, ptr %.271, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !29
  %..i = select i1 %.not.i37, ptr %0, ptr %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !29
  %i.cy = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %i.cz = phi i32 [ %i.bq, %._crit_edge.i ], [ %i.df, %bb.v ] ; 3 uses
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr [16 x i8], ptr %i.cy, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.v, label %zslUnlinkNode.exit

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !26
  %i.df = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.df, ptr %i.d, align 8, !tbaa !18
  %i.dg = icmp sgt i32 %i.cz, 2
  br i1 %i.dg, label %bb.u, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.u, %bb.v, %._crit_edge.i.thread
  %i.dh = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.di = add i64 %i.dh, -1
  store i64 %i.di, ptr %i.ap, align 8, !tbaa !23
  %i.dj = load i16, ptr %i.ar, align 2, !tbaa !13
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.271, i64 %i.dk
  %i.dm = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.dl) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.271, ptr noundef nonnull %i.a) #17
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !24
  %i.do = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.dp = sub i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.aq, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dq = add i64 %.02970, 1                      ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %.critedge2, label %bb.j, !llvm.loop !185

.critedge2:                                       ; preds = %zslLexValueLteMax.exit, %zslUnlinkNode.exit, %bb.n, %bb.k, %bb.r, %bb.s, %._crit_edge
  %.029.lcssa = phi i64 [ 0, %._crit_edge ], [ %.02970, %bb.s ], [ %.02970, %bb.r ], [ %.02970, %bb.k ], [ %.02970, %bb.n ], [ %i.dq, %zslUnlinkNode.exit ], [ %.02970, %zslLexValueLteMax.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.029.lcssa
}

declare i32 @dictShrinkIfNeeded(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebyrankCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zremrangebylexCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @zremrangeGenericCommand(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zuiInitIterator(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186    ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !188
  switch i32 %i.d, label %bb.n [
    i32 2, label %bb.c
    i32 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !189
  switch i32 %i.g, label %bb.g [
    i32 6, label %bb.d
    i32 2, label %bb.e
    i32 11, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  store ptr %i.i, ptr %i.e, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.j, align 8, !tbaa !36
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !36
  %i.m = tail call ptr @dictGetIterator(ptr noundef %i.l) #17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !36
  %i.o = tail call ptr @dictNext(ptr noundef %i.m) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !36
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !36
  %i.s = tail call ptr @lpFirst(ptr noundef %i.r) #17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !36
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2379, ptr noundef nonnull @.str.34) #17
  tail call void @abort() #18
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189
  switch i32 %i.w, label %bb.m [
    i32 11, label %bb.i
    i32 7, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !36
  %i.z = tail call ptr @lpSeek(ptr noundef %i.y, i64 noundef -2) #17 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !36
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.ac = tail call ptr @lpNext(ptr noundef %i.ab, ptr noundef nonnull %i.z) #17 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !36
  %.not40 = icmp eq ptr %i.ac, null
  br i1 %.not40, label %bb.k, label %bb.o, !prof !91

bb.k:                                             ; preds = %bb.j
  tail call void @_serverAssert(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 2391) #17
  tail call void @abort() #18
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 2 uses
  store ptr %i.af, ptr %i.u, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !36
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2397, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2400, ptr noundef nonnull @.str.36) #17
  tail call void @abort() #18
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.d, %bb.f, %bb.e, %bb.a
  ret void
}

declare ptr @dictGetIterator(ptr noundef) local_unnamed_addr #0

declare ptr @dictNext(ptr noundef) local_unnamed_addr #0

declare ptr @lpFirst(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @zuiClearIterator(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !186
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !188
  switch i32 %i.d, label %bb.h [
    i32 2, label %bb.c
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !189
  switch i32 %i.f, label %bb.e [
    i32 6, label %bb.i
    i32 2, label %bb.d
    i32 11, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  tail call void @dictReleaseIterator(ptr noundef %i.h) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2417, ptr noundef nonnull @.str.34) #17
  tail call void @abort() #18
  unreachable
end_hunk_2
begin_hunk_3_@genericZrangebyscoreCommand:bb.a
.critedge.i103:                                   ; preds = %.lr.ph191
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1019) #17
  tail call void @abort() #18
  unreachable

.split.us:                                        ; preds = %bb.n
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  tail call void @abort() #18
  unreachable

.lr.ph199:                                        ; preds = %.lr.ph179.split.peel, %.lr.ph179.split, %zzlPrev.exit.us, %.lr.ph179.split.preheader, %.lr.ph179.split.us
  %.0144.lcssa = phi ptr [ %i.an, %zzlPrev.exit.us ], [ %i.ae, %.lr.ph179.split.us ], [ %i.af, %.lr.ph179.split.preheader ], [ %i.ak, %.lr.ph179.split.peel ], [ %i.ar, %.lr.ph179.split ]
  %.1140.lcssa = phi ptr [ %i.ao, %zzlPrev.exit.us ], [ %i.al, %.lr.ph179.split.us ], [ %i.ag, %.lr.ph179.split.preheader ], [ %i.aj, %.lr.ph179.split.peel ], [ %i.aq, %.lr.ph179.split ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not94298 = icmp eq i64 %4, 0
  br i1 %.not94298, label %.critedge2, label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph199, %zzlPrev.exit115
  %.in315 = phi i64 [ %i.ax, %zzlPrev.exit115 ], [ %4, %.lr.ph199 ]
  %.2146195301 = phi ptr [ %.3147, %zzlPrev.exit115 ], [ %.0144.lcssa, %.lr.ph199 ] ; 2 uses
  %.3142196300 = phi ptr [ %.4143, %zzlPrev.exit115 ], [ %.1140.lcssa, %.lr.ph199 ] ; 3 uses
  %.075197299 = phi i64 [ %i.bo, %zzlPrev.exit115 ], [ 0, %.lr.ph199 ] ; 3 uses
  %i.ax = add nsw i64 %.in315, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %.not.i104 = icmp eq ptr %.3142196300, null
  br i1 %.not.i104, label %bb.p, label %bb.q, !prof !91

bb.p:                                             ; preds = %.lr.ph302
  call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 962) #17
  call void @abort() #18
  unreachable

bb.q:                                             ; preds = %.lr.ph302
  %i.ay = call ptr @lpGetValue(ptr noundef nonnull %.3142196300, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.ay, null
  br i1 %.not7.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.az, i32 127)
  %i.ba = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.ay, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !36
  %i.bc = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !92
  %i.be = sitofp i64 %i.bd to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.r, %bb.s
  %.0.i105 = phi double [ %i.bc, %bb.r ], [ %i.be, %bb.s ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not89, label %bb.u, label %bb.t

bb.t:                                             ; preds = %zzlGetScore.exit
  %i.bf = load i32, ptr %i.as, align 8, !tbaa !45
  %.not.i106 = icmp eq i32 %i.bf, 0
  %i.bg = load double, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.bh = fcmp ule double %.0.i105, %i.bg
  %i.bi = fcmp ult double %.0.i105, %i.bg
  %.in.i = select i1 %.not.i106, i1 %i.bi, i1 %i.bh
  br i1 %.in.i, label %.critedge2, label %bb.v

bb.u:                                             ; preds = %zzlGetScore.exit
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !48
  %.not.i107 = icmp eq i32 %i.bj, 0
  %i.bk = load double, ptr %i.au, align 8, !tbaa !49 ; 2 uses
  %i.bl = fcmp uge double %.0.i105, %i.bk
  %i.bm = fcmp ugt double %.0.i105, %i.bk
  %.in.i108 = select i1 %.not.i107, i1 %i.bm, i1 %i.bl
  br i1 %.in.i108, label %.critedge2, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = call ptr @lpGetValue(ptr noundef nonnull %.2146195301, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.bo = add i64 %.075197299, 1                  ; 3 uses
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !228
  %i.br = load i64, ptr %i.e, align 8, !tbaa !92
  call void %i.bq(ptr noundef %0, i64 noundef %i.br, double noundef %.0.i105) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !229
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !9
  %i.bu = zext i32 %i.bt to i64
  call void %i.bs(ptr noundef %0, ptr noundef nonnull %i.bn, i64 noundef %i.bu, double noundef %.0.i105) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not89, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = call ptr @lpPrev(ptr noundef %i.ad, ptr noundef nonnull %.2146195301) #17 ; 3 uses
  %.not14.i111 = icmp eq ptr %i.bv, null
  br i1 %.not14.i111, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = call ptr @lpPrev(ptr noundef %i.ad, ptr noundef nonnull %i.bv) #17 ; 2 uses
  %.not15.i112 = icmp eq ptr %i.bw, null
  br i1 %.not15.i112, label %bb.ab, label %zzlPrev.exit115, !prof !91

bb.ab:                                            ; preds = %bb.aa
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1043) #17
  call void @abort() #18
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.bx = call ptr @lpNext(ptr noundef %i.ad, ptr noundef nonnull %.3142196300) #17 ; 3 uses
  %.not14.i118 = icmp eq ptr %i.bx, null
  br i1 %.not14.i118, label %.critedge2, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = call ptr @lpNext(ptr noundef %i.ad, ptr noundef nonnull %i.bx) #17 ; 2 uses
  %.not15.i119 = icmp eq ptr %i.by, null
  br i1 %.not15.i119, label %bb.ae, label %zzlPrev.exit115, !prof !91

bb.ae:                                            ; preds = %bb.ad
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1024) #17
  call void @abort() #18
  unreachable

zzlPrev.exit115:                                  ; preds = %bb.ad, %bb.aa
  %.3147 = phi ptr [ %i.bx, %bb.ad ], [ %i.bw, %bb.aa ]
  %.4143 = phi ptr [ %i.by, %bb.ad ], [ %i.bv, %bb.aa ]
  %.not94 = icmp eq i64 %i.ax, 0
  br i1 %.not94, label %.critedge2, label %.lr.ph302

.critedge2:                                       ; preds = %bb.k, %.lr.ph295.peel.newph, %bb.m, %bb.t, %bb.u, %zzlPrev.exit115, %bb.ac, %bb.z, %.lr.ph199, %bb.j, %.thread223
  %.075.lcssa = phi i64 [ 0, %.thread223 ], [ 0, %bb.j ], [ %i.bo, %bb.z ], [ 0, %bb.m ], [ %4, %.lr.ph199 ], [ %i.bo, %bb.ac ], [ %4, %zzlPrev.exit115 ], [ %.075197299, %bb.t ], [ %.075197299, %bb.u ], [ 0, %.lr.ph295.peel.newph ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %.critedge4

bb.af:                                            ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103 ; 2 uses
  %.not84 = icmp eq i32 %5, 0
  br i1 %.not84, label %bb.ag, label %.thread242

bb.ag:                                            ; preds = %bb.af
  %i.cd = tail call ptr @zslNthInRange(ptr noundef %i.cc, ptr noundef %1, i64 noundef %3, ptr noundef null) ; 2 uses
  %.not85163 = icmp eq ptr %i.cd, null
  br i1 %.not85163, label %.critedge4, label %.lr.ph.split.us.preheader

.thread242:                                       ; preds = %bb.af
  %i.ce = xor i64 %3, -1
  %i.cf = tail call ptr @zslNthInRange(ptr noundef %i.cc, ptr noundef %1, i64 noundef %i.ce, ptr noundef null) ; 2 uses
  %.not85163244 = icmp eq ptr %i.cf, null
  br i1 %.not85163244, label %.critedge4, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.thread242
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not86280 = icmp eq i64 %4, 0
  br i1 %.not86280, label %.critedge4, label %.lr.ph

.lr.ph.split.us.preheader:                        ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not86.us285 = icmp eq i64 %4, 0
  br i1 %.not86.us285, label %.critedge4, label %.lr.ph288

.lr.ph.split.us:                                  ; preds = %sdslen.exit.us
  %.not86.us = icmp eq i64 %i.cl, 0
  br i1 %.not86.us, label %.critedge4, label %.lr.ph288, !llvm.loop !239

.lr.ph288:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.in313 = phi i64 [ %i.cl, %.lr.ph.split.us ], [ %4, %.lr.ph.split.us.preheader ]
  %.3164.us287 = phi i64 [ %i.cr, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.1166.us286 = phi ptr [ %.2.us, %.lr.ph.split.us ], [ %i.cd, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.cl = add nsw i64 %.in313, -1                 ; 2 uses
  %i.cm = load double, ptr %.1166.us286, align 8, !tbaa !16 ; 3 uses
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !48
  %.not.i125.us = icmp eq i32 %i.cn, 0
  %i.co = load double, ptr %i.cj, align 8, !tbaa !49 ; 2 uses
  %i.cp = fcmp uge double %i.cm, %i.co
  %i.cq = fcmp ugt double %i.cm, %i.co
  %.in.i126.us = select i1 %.not.i125.us, i1 %i.cq, i1 %i.cp
  br i1 %.in.i126.us, label %.critedge4, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph288
  %i.cr = add i64 %.3164.us287, 1                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1166.us286, i64 24
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !13
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.1166.us286, i64 %i.cu ; 6 uses
  %i.cw = load ptr, ptr %i.ck, align 8, !tbaa !229
  %i.cx = getelementptr i8, ptr %i.cv, i64 -1
  %.val.i.us = load i8, ptr %i.cx, align 1, !tbaa !36 ; 2 uses
  %i.cy = and i8 %.val.i.us, 7
  switch i8 %i.cy, label %sdslen.exit.us [
    i8 0, label %bb.am
    i8 1, label %bb.al
    i8 2, label %bb.ak
    i8 3, label %bb.aj
    i8 4, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -17
  %i.da = load i64, ptr %i.cz, align 1, !tbaa !24
  br label %sdslen.exit.us

bb.aj:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds i8, ptr %i.cv, i64 -9
  %i.dc = load i32, ptr %i.db, align 1, !tbaa !9
  %i.dd = zext i32 %i.dc to i64
  br label %sdslen.exit.us

bb.ak:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds i8, ptr %i.cv, i64 -5
  %i.df = load i16, ptr %i.de, align 1, !tbaa !37
  %i.dg = zext i16 %i.df to i64
  br label %sdslen.exit.us

bb.al:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds i8, ptr %i.cv, i64 -3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.dj = zext i8 %i.di to i64
  br label %sdslen.exit.us

bb.am:                                            ; preds = %bb.ah
  %i.dk = lshr i8 %.val.i.us, 3
  %i.dl = zext nneg i8 %i.dk to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0.i127.us = phi i64 [ %i.da, %bb.ai ], [ %i.dl, %bb.am ], [ %i.dj, %bb.al ], [ %i.dg, %bb.ak ], [ %i.dd, %bb.aj ], [ 0, %bb.ah ]
  tail call void %i.cw(ptr noundef nonnull %0, ptr noundef nonnull %i.cv, i64 noundef %.0.i127.us, double noundef %i.cm) #17
  %.2.in.us = getelementptr inbounds nuw i8, ptr %.1166.us286, i64 16
  %.2.us = load ptr, ptr %.2.in.us, align 8, !tbaa !29 ; 2 uses
  %.not85.us = icmp eq ptr %.2.us, null
  br i1 %.not85.us, label %sdslen.exit.us..critedge4.loopexit_crit_edge, label %.lr.ph.split.us, !llvm.loop !239

.lr.ph.split:                                     ; preds = %sdslen.exit
  %.not86 = icmp eq i64 %i.dm, 0
  br i1 %.not86, label %.critedge4, label %.lr.ph, !llvm.loop !239

.lr.ph:                                           ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.in312 = phi i64 [ %i.dm, %.lr.ph.split ], [ %4, %.lr.ph.split.preheader ]
  %.3164282 = phi i64 [ %i.ds, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.1166281 = phi ptr [ %.2, %.lr.ph.split ], [ %i.cf, %.lr.ph.split.preheader ] ; 4 uses
  %i.dm = add nsw i64 %.in312, -1                 ; 2 uses
  %i.dn = load double, ptr %.1166281, align 8, !tbaa !16 ; 3 uses
  %i.do = load i32, ptr %i.cg, align 8, !tbaa !45
  %.not.i123 = icmp eq i32 %i.do, 0
  %i.dp = load double, ptr %1, align 8, !tbaa !47 ; 2 uses
  %i.dq = fcmp ule double %i.dn, %i.dp
  %i.dr = fcmp ult double %i.dn, %i.dp
  %.in.i124 = select i1 %.not.i123, i1 %i.dr, i1 %i.dq
  br i1 %.in.i124, label %.critedge4, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  %i.ds = add i64 %.3164282, 1                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1166281, i64 24
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !13
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.1166281, i64 %i.dv ; 6 uses
  %i.dx = load ptr, ptr %i.ch, align 8, !tbaa !229
  %i.dy = getelementptr i8, ptr %i.dw, i64 -1
  %.val.i = load i8, ptr %i.dy, align 1, !tbaa !36 ; 2 uses
  %i.dz = and i8 %.val.i, 7
  switch i8 %i.dz, label %sdslen.exit [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ea = lshr i8 %.val.i, 3
  %i.eb = zext nneg i8 %i.ea to i64
  br label %sdslen.exit

bb.ap:                                            ; preds = %bb.an
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 -3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !36
  %i.ee = zext i8 %i.ed to i64
  br label %sdslen.exit

bb.aq:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds i8, ptr %i.dw, i64 -5
  %i.eg = load i16, ptr %i.ef, align 1, !tbaa !37
  %i.eh = zext i16 %i.eg to i64
  br label %sdslen.exit

bb.ar:                                            ; preds = %bb.an
  %i.ei = getelementptr inbounds i8, ptr %i.dw, i64 -9
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !9
  %i.ek = zext i32 %i.ej to i64
  br label %sdslen.exit

bb.as:                                            ; preds = %bb.an
  %i.el = getelementptr inbounds i8, ptr %i.dw, i64 -17
  %i.em = load i64, ptr %i.el, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i127 = phi i64 [ %i.em, %bb.as ], [ %i.eb, %bb.ao ], [ %i.ee, %bb.ap ], [ %i.eh, %bb.aq ], [ %i.ek, %bb.ar ], [ 0, %bb.an ]
  tail call void %i.dx(ptr noundef nonnull %0, ptr noundef nonnull %i.dw, i64 noundef %.0.i127, double noundef %i.dn) #17
  %.2.in = getelementptr inbounds nuw i8, ptr %.1166281, i64 8
  %.2 = load ptr, ptr %.2.in, align 8, !tbaa !29  ; 2 uses
  %.not85 = icmp eq ptr %.2, null
  br i1 %.not85, label %sdslen.exit..critedge4.loopexit268_crit_edge, label %.lr.ph.split, !llvm.loop !239

bb.at:                                            ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 3604, ptr noundef nonnull @.str.7) #17
  tail call void @abort() #18
  unreachable

sdslen.exit.us..critedge4.loopexit_crit_edge:     ; preds = %sdslen.exit.us
  br label %.critedge4, !llvm.loop !239

sdslen.exit..critedge4.loopexit268_crit_edge:     ; preds = %sdslen.exit
  br label %.critedge4, !llvm.loop !239

.critedge4:                                       ; preds = %.lr.ph.split, %.lr.ph, %.lr.ph.split.us, %.lr.ph288, %.lr.ph.split.preheader, %sdslen.exit..critedge4.loopexit268_crit_edge, %.lr.ph.split.us.preheader, %sdslen.exit.us..critedge4.loopexit_crit_edge, %.thread242, %bb.ag, %.critedge2
  %.4 = phi i64 [ %.075.lcssa, %.critedge2 ], [ 0, %bb.ag ], [ 0, %.thread242 ], [ %i.ds, %sdslen.exit..critedge4.loopexit268_crit_edge ], [ %4, %.lr.ph.split.us.preheader ], [ %i.cr, %sdslen.exit.us..critedge4.loopexit_crit_edge ], [ %4, %.lr.ph.split.preheader ], [ %.3164.us287, %.lr.ph288 ], [ %4, %.lr.ph.split.us ], [ %4, %.lr.ph.split ], [ %.3164282, %.lr.ph ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !227
  call void %i.eo(ptr noundef %0, i64 noundef %.4) #17
  br label %bb.au

bb.au:                                            ; preds = %.critedge4, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zrevrangebyscoreCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.zrange_result_handler, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @zrangeResultBeginClient, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @zrangeResultFinalizeClient, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @zrangeResultEmitCBufferToClient, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @zrangeResultEmitLongLongToClient, ptr %i.e, align 8, !tbaa !228
  call void @zrangeGenericCommand(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zcountCommand(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.zrangespec, align 8         ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.p = call fastcc i32 @zslParseRange(ptr noundef %i.m, ptr noundef %i.o, ptr noundef %1)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #17
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  %i.r = tail call ptr @lookupKeyReadOrReply(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %i.q) #17 ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.r, i32 noundef 3) #17
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.r, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = lshr i32 %i.v, 4
  %i.x = and i32 %i.w, 15
  switch i32 %i.x, label %bb.v [
    i32 11, label %bb.f
    i32 7, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 4 uses
  %i.aa = call ptr @zzlFirstInRange(ptr noundef %i.z, ptr noundef nonnull %1) ; 2 uses
  %.not41 = icmp eq ptr %i.aa, null
  br i1 %.not41, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 24), align 8, !tbaa !173
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.ab) #17
  br label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call ptr @lpNext(ptr noundef %i.z, ptr noundef nonnull %i.aa) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 962) #17
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ad = call ptr @lpGetValue(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not7.i = icmp eq ptr %i.ad, null
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %i.ae, i32 127)
  %i.af = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull readonly align 1 %i.ad, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !36
end_hunk_3
